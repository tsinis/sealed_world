// ignore_for_file: avoid-long-files, prefer-class-destructuring
// ignore_for_file: prefer-single-widget-per-file

import "package:flutter/foundation.dart" show kDebugMode;
import "package:flutter/material.dart";
import "package:flutter/services.dart" show Clipboard, ClipboardData;
import "package:meta/meta.dart"; //ignore:depend_on_referenced_packages, it's ok
import "package:world_flags/world_flags.dart";

/// A full-screen page for configuring and previewing flag shader options.
class FlagSettingsPage extends StatefulWidget {
  const FlagSettingsPage({
    required this.aspectRatio,
    required this.country,
    super.key,
  });

  /// Shows the settings page as a full-screen route.
  @awaitNotRequired
  static Future<void> show(
    ValueNotifier<double?> aspectRatio,
    BuildContext context,
    IsoStandardized iso,
  ) async {
    if (iso is! WorldCountry) return;

    return Navigator.of(context).push<void>(
      MaterialPageRoute(
        builder: (_) =>
            FlagSettingsPage(aspectRatio: aspectRatio, country: iso),
      ),
    );
  }

  /// The country to display the flag for.
  final WorldCountry country;

  /// The aspect ratio notifier (passed back to main).
  final ValueNotifier<double?> aspectRatio;

  @override
  State<FlagSettingsPage> createState() => _FlagSettingsPageState();
}

class _FlagSettingsPageState extends State<FlagSettingsPage> {
  final _options = ValueNotifier<FlagShaderOptions>(const FlagShaderOptions());
  final _debugCompareMode = ValueNotifier<bool>(false);
  final _opacity = ValueNotifier<double>(1);

  WorldCountry get _country => widget.country;

  @override
  void dispose() {
    _options.dispose();
    _debugCompareMode.dispose();
    _opacity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
      title: Text("${_country.internationalName} (${_country.code})"),
      actions: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: Navigator.of(context).pop,
        ),
      ],
    ),
    body: Column(
      children: [
        // Fixed flag preview at top (not scrollable).
        _FlagPreview(
          country: _country,
          aspectRatio: widget.aspectRatio,
          options: _options,
          debugCompareMode: _debugCompareMode,
          opacity: _opacity,
        ),
        // Scrollable settings below.
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _SettingsPanel(
                options: _options,
                aspectRatio: widget.aspectRatio,
                debugCompareMode: _debugCompareMode,
                opacity: _opacity,
                country: _country,
              ),
              _CodeSnippetSection(
                options: _options,
                aspectRatio: widget.aspectRatio,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _FlagPreview extends StatelessWidget {
  const _FlagPreview({
    required this.country,
    required this.aspectRatio,
    required this.options,
    required this.debugCompareMode,
    required this.opacity,
  });

  final WorldCountry country;
  final ValueNotifier<double?> aspectRatio;
  final ValueNotifier<FlagShaderOptions> options;
  final ValueNotifier<bool> debugCompareMode;
  final ValueNotifier<double> opacity;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: debugCompareMode,
    builder: (_, isCompareMode, _) => AnimatedCrossFade(
      firstChild: _ShaderPreview(
        country: country,
        aspectRatio: aspectRatio,
        options: options,
      ),
      secondChild: _ComparisonPreview(
        country: country,
        aspectRatio: aspectRatio,
        opacity: opacity,
      ),
      crossFadeState: isCompareMode
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 400),
      firstCurve: Curves.easeInOut,
      secondCurve: Curves.easeInOut,
    ),
  );
}

class _ShaderPreview extends StatelessWidget {
  const _ShaderPreview({
    required this.country,
    required this.aspectRatio,
    required this.options,
  });

  final WorldCountry country;
  final ValueNotifier<double?> aspectRatio;
  final ValueNotifier<FlagShaderOptions> options;

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: ValueListenableBuilder(
        valueListenable: aspectRatio,
        builder: (_, ratio, _) => ValueListenableBuilder(
          valueListenable: options,
          builder: (_, opts, _) =>
              FlagShaderSurface(country, aspectRatio: ratio, options: opts),
        ),
      ),
    ),
  );
}

class _ComparisonPreview extends StatelessWidget {
  const _ComparisonPreview({
    required this.country,
    required this.aspectRatio,
    required this.opacity,
  });

  final WorldCountry country;
  final ValueNotifier<double?> aspectRatio;
  final ValueNotifier<double> opacity;

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: ValueListenableBuilder(
        valueListenable: aspectRatio,
        builder: (_, ratio, _) => ValueListenableBuilder(
          valueListenable: opacity,
          builder: (_, opacityValue, _) => DecoratedBox(
            decoration: opacityValue == 1
                ? const BoxDecoration()
                : BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(country.flagPngUrl()),
                    ),
                  ),
            child: Opacity(
              opacity: opacityValue,
              child: CountryFlag.simplified(country, aspectRatio: ratio),
            ),
          ),
        ),
      ),
    ),
  );
}

class _SettingsPanel extends StatelessWidget {
  const _SettingsPanel({
    required this.options,
    required this.aspectRatio,
    required this.debugCompareMode,
    required this.opacity,
    required this.country,
  });

  final ValueNotifier<FlagShaderOptions> options;
  final ValueNotifier<double?> aspectRatio;
  final ValueNotifier<bool> debugCompareMode;
  final ValueNotifier<double> opacity;
  final WorldCountry country;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ValueListenableBuilder(
      valueListenable: options,
      builder: (_, opts, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (kDebugMode) ...[
            _SectionHeader(title: "Debug", theme: theme),
            _DebugCompareSection(
              debugCompareMode: debugCompareMode,
              opacity: opacity,
            ),
            const Divider(),
          ],
          _SectionHeader(title: "Aspect Ratio", theme: theme),
          _AspectRatioSlider(aspectRatio: aspectRatio, country: country),
          const Divider(),
          _SectionHeader(title: "Animation", theme: theme),
          ..._AnimationControls(options: options, opts: opts).build(),
          const Divider(),
          _SectionHeader(title: "Wave", theme: theme),
          ..._WaveControls(options: options, opts: opts).build(),
          const Divider(),
          _SectionHeader(title: "Wave Direction", theme: theme),
          ..._WaveDirectionControls(options: options, opts: opts).build(),
          const Divider(),
          _SectionHeader(title: "Edge Pinning", theme: theme),
          ..._EdgePinningControls(options: options, opts: opts).build(),
          const Divider(),
          _SectionHeader(title: "Shading", theme: theme),
          ..._ShadingControls(options: options, opts: opts).build(),
          const Divider(),
          _SectionHeader(title: "Other", theme: theme),
          ..._OtherControls(options: options, opts: opts).build(),
        ],
      ),
    );
  }
}

class _AnimationControls {
  const _AnimationControls({required this.options, required this.opts});

  final ValueNotifier<FlagShaderOptions> options;
  final FlagShaderOptions opts;

  List<Widget> build() => [
    _OptionSwitch(
      name: "animate",
      description: "Enable or disable the waving animation.",
      value: opts.animate,
      onChanged: (val) => options.value = opts.copyWith(animate: val),
    ),
    _OptionSlider(
      name: "animationSpeed",
      description: "Speed multiplier for the waving animation.",
      value: opts.animationSpeed,
      defaultValue: 1,
      min: 0,
      max: 5,
      onChanged: (val) => options.value = opts.copyWith(animationSpeed: val),
    ),
    _OptionSlider(
      name: "frozenPhase",
      description: "Phase position when animation is disabled.",
      value: opts.frozenPhase,
      defaultValue: 0.25,
      min: 0,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(frozenPhase: val),
    ),
  ];
}

class _WaveControls {
  const _WaveControls({required this.options, required this.opts});

  final ValueNotifier<FlagShaderOptions> options;
  final FlagShaderOptions opts;

  List<Widget> build() => [
    _OptionSlider(
      name: "waveAmplitude",
      description: "Height of the primary wave displacement.",
      value: opts.waveAmplitude,
      defaultValue: 0.03,
      min: 0,
      max: 0.2,
      onChanged: (val) => options.value = opts.copyWith(waveAmplitude: val),
    ),
    _OptionSlider(
      name: "waveFrequency",
      description: "Number of wave cycles across the flag.",
      value: opts.waveFrequency,
      defaultValue: 2,
      min: 0,
      max: 5,
      onChanged: (val) => options.value = opts.copyWith(waveFrequency: val),
    ),
    _OptionSlider(
      name: "wavePhaseShift",
      description: "Horizontal offset of the wave pattern (radians).",
      value: opts.wavePhaseShift,
      defaultValue: 0,
      min: 0,
      max: 6.28,
      onChanged: (val) => options.value = opts.copyWith(wavePhaseShift: val),
    ),
    _OptionSlider(
      name: "secondaryAmplitude",
      description: "Height of the secondary ripple wave.",
      value: opts.secondaryAmplitude,
      defaultValue: 0.02,
      min: 0,
      max: 0.2,
      onChanged: (val) =>
          options.value = opts.copyWith(secondaryAmplitude: val),
    ),
    _OptionSlider(
      name: "secondaryFrequency",
      description: "Frequency of the secondary ripple wave.",
      value: opts.secondaryFrequency,
      defaultValue: 1.8,
      min: 0,
      max: 5,
      onChanged: (val) =>
          options.value = opts.copyWith(secondaryFrequency: val),
    ),
  ];
}

class _WaveDirectionControls {
  const _WaveDirectionControls({required this.options, required this.opts});

  final ValueNotifier<FlagShaderOptions> options;
  final FlagShaderOptions opts;

  List<Widget> build() => [
    _OptionSlider(
      name: "waveDirection.dx",
      description: "Horizontal component of wave propagation direction.",
      value: opts.waveDirection.dx,
      defaultValue: 0.8,
      min: -1,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(
        waveDirection: Offset(val, opts.waveDirection.dy),
      ),
    ),
    _OptionSlider(
      name: "waveDirection.dy",
      description: "Vertical component of wave propagation direction.",
      value: opts.waveDirection.dy,
      defaultValue: 0.3,
      min: -1,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(
        waveDirection: Offset(opts.waveDirection.dx, val),
      ),
    ),
    _OptionSlider(
      name: "turbulence",
      description: "Amount of random noise added to the wave.",
      value: opts.turbulence,
      defaultValue: 0.8,
      min: 0,
      max: 2,
      onChanged: (val) => options.value = opts.copyWith(turbulence: val),
    ),
  ];
}

class _EdgePinningControls {
  const _EdgePinningControls({required this.options, required this.opts});

  final ValueNotifier<FlagShaderOptions> options;
  final FlagShaderOptions opts;

  List<Widget> build() => [
    _OptionSwitch(
      name: "leftEdgePinned",
      description: "Pin the left edge of the flag (pole side).",
      value: opts.leftEdgePinned,
      onChanged: (val) => options.value = opts.copyWith(leftEdgePinned: val),
    ),
    _OptionSwitch(
      name: "rightEdgePinned",
      description: "Pin the right edge of the flag.",
      value: opts.rightEdgePinned,
      onChanged: (val) => options.value = opts.copyWith(rightEdgePinned: val),
    ),
    _OptionSlider(
      name: "pinSoftness",
      description: "How gradually the pinned edge transitions to movement.",
      value: opts.pinSoftness,
      defaultValue: 0.15,
      min: 0,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(pinSoftness: val),
    ),
    _OptionSlider(
      name: "poleMargin",
      description: "Width of the fixed area near the pole.",
      value: opts.poleMargin,
      defaultValue: 0.02,
      min: 0,
      max: 0.2,
      onChanged: (val) => options.value = opts.copyWith(poleMargin: val),
    ),
  ];
}

class _ShadingControls {
  const _ShadingControls({required this.options, required this.opts});

  final ValueNotifier<FlagShaderOptions> options;
  final FlagShaderOptions opts;

  List<Widget> build() => [
    _OptionSwitch(
      name: "shadingEnabled",
      description: "Enable fabric lighting and shadow effects.",
      value: opts.shadingEnabled,
      onChanged: (val) => options.value = opts.copyWith(shadingEnabled: val),
    ),
    _OptionSlider(
      name: "foldStrength",
      description: "Intensity of fabric fold shadows.",
      value: opts.foldStrength,
      defaultValue: 0.4,
      min: 0,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(foldStrength: val),
    ),
    _OptionSlider(
      name: "highlightStrength",
      description: "Brightness of fabric highlights.",
      value: opts.highlightStrength,
      defaultValue: 0.3,
      min: 0,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(highlightStrength: val),
    ),
    _OptionSlider(
      name: "shadowStrength",
      description: "Darkness of fabric shadows.",
      value: opts.shadowStrength,
      defaultValue: 0.3,
      min: 0,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(shadowStrength: val),
    ),
    _OptionSlider(
      name: "sheenStrength",
      description: "Intensity of fabric sheen effect.",
      value: opts.sheenStrength,
      defaultValue: 0.1,
      min: 0,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(sheenStrength: val),
    ),
    _OptionSlider(
      name: "sheenFrequency",
      description: "Number of sheen bands across the flag.",
      value: opts.sheenFrequency,
      defaultValue: 4,
      min: 0,
      max: 10,
      onChanged: (val) => options.value = opts.copyWith(sheenFrequency: val),
    ),
  ];
}

class _OtherControls {
  const _OtherControls({required this.options, required this.opts});

  final ValueNotifier<FlagShaderOptions> options;
  final FlagShaderOptions opts;

  List<Widget> build() => [
    _OptionSlider(
      name: "perspective",
      description: "Amount of 3D perspective distortion.",
      value: opts.perspective,
      defaultValue: 0.12,
      min: 0,
      max: 0.5,
      onChanged: (val) => options.value = opts.copyWith(perspective: val),
    ),
    _OptionSlider(
      name: "seed",
      description: "Random seed for noise variation.",
      value: opts.seed,
      defaultValue: 1,
      min: 0,
      max: 10,
      onChanged: (val) => options.value = opts.copyWith(seed: val),
    ),
    _OptionSlider(
      name: "fabricVisibility",
      description: "Visibility of fabric texture overlay.",
      value: opts.fabricVisibility,
      defaultValue: 0,
      min: 0,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(fabricVisibility: val),
    ),
    _OptionSwitch(
      name: "clipContent",
      description: "Clip the flag to its original bounds.",
      value: opts.clipContent,
      onChanged: (val) => options.value = opts.copyWith(clipContent: val),
    ),
    _OptionSlider(
      name: "overflowScale",
      description: "Scale factor when content is not clipped.",
      value: opts.overflowScale,
      defaultValue: 0.9,
      min: 0.5,
      max: 1,
      onChanged: (val) => options.value = opts.copyWith(overflowScale: val),
    ),
  ];
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title, required this.theme});

  final String title;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 12, bottom: 4, left: 16),
    child: Text(
      title,
      style: theme.textTheme.titleSmall?.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

class _DebugCompareSection extends StatelessWidget {
  const _DebugCompareSection({
    required this.debugCompareMode,
    required this.opacity,
  });

  final ValueNotifier<bool> debugCompareMode;
  final ValueNotifier<double> opacity;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: debugCompareMode,
    builder: (_, isCompareMode, _) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SwitchListTile(
          title: const Text("Compare with PNG Original"),
          subtitle: const Text("Shows BasicFlag over original PNG."),
          value: isCompareMode,
          onChanged: (val) => debugCompareMode.value = val,
          dense: true,
        ),
        if (isCompareMode)
          ValueListenableBuilder(
            valueListenable: opacity,
            builder: (_, opacityValue, _) => _OptionSlider(
              name: "opacity",
              description: "Blend between original PNG and package flag.",
              value: opacityValue,
              defaultValue: 1,
              min: 0,
              max: 1,
              onChanged: (val) => opacity.value = val,
            ),
          ),
      ],
    ),
  );
}

class _AspectRatioSlider extends StatelessWidget {
  const _AspectRatioSlider({required this.aspectRatio, required this.country});

  static String _formatValue(double value) => value.toStringAsFixed(3);

  final ValueNotifier<double?> aspectRatio;
  final WorldCountry country;

  double get _originalRatio =>
      country.flagProperties?.aspectRatio ?? FlagConstants.defaultAspectRatio;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: aspectRatio,
    builder: (_, ratio, _) => ListTile(
      title: Text("aspectRatio: ${_formatValue(ratio ?? _originalRatio)}"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Width to height ratio of the flag."),
          Slider(
            value: ratio ?? _originalRatio,
            secondaryTrackValue: _originalRatio,
            onChanged: (newRatio) => aspectRatio.value = newRatio,
            min: FlagConstants.minAspectRatio,
            max: FlagConstants.maxAspectRatio,
          ),
        ],
      ),
      trailing: ratio == null
          ? null
          : IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: "Reset to original",
              onPressed: () => aspectRatio.value = null,
            ),
      dense: true,
    ),
  );
}

class _OptionSlider extends StatelessWidget {
  const _OptionSlider({
    required this.name,
    required this.description,
    required this.value,
    required this.defaultValue,
    required this.min,
    required this.max,
    required this.onChanged,
  });

  final String name;
  final String description;
  final double value;
  final double defaultValue;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text("$name: ${value.toStringAsFixed(3)}"),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(description),
        Slider(
          value: value.clamp(min, max),
          secondaryTrackValue: defaultValue,
          onChanged: onChanged,
          min: min,
          max: max,
        ),
      ],
    ),
    dense: true,
  );
}

class _OptionSwitch extends StatelessWidget {
  const _OptionSwitch({
    required this.name,
    required this.description,
    required this.value,
    required this.onChanged,
  });

  final String name;
  final String description;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => SwitchListTile(
    title: Text(name),
    subtitle: Text(description),
    value: value,
    onChanged: onChanged,
    dense: true,
  );
}

class _CodeSnippetSection extends StatelessWidget {
  const _CodeSnippetSection({required this.options, required this.aspectRatio});

  final ValueNotifier<FlagShaderOptions> options;
  final ValueNotifier<double?> aspectRatio;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ValueListenableBuilder(
        valueListenable: options,
        builder: (_, opts, _) => ValueListenableBuilder(
          valueListenable: aspectRatio,
          builder: (bc, ratio, _) {
            final snippet = _SnippetGenerator.generate(opts, ratio);

            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainerLow,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: theme.dividerColor),
                  ),
                  child: SelectableText(
                    snippet,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontFamily: "monospace",
                      fontSize: 11,
                    ),
                  ),
                ),
                Positioned(
                  top: 4,
                  right: 4,
                  child: IconButton(
                    icon: const Icon(Icons.copy, size: 18),
                    tooltip: "Copy to clipboard",
                    // ignore: prefer-extracting-callbacks, for simplicity.
                    onPressed: () {
                      // ignore: avoid-future-ignore, we don't care if it fails.
                      Clipboard.setData(ClipboardData(text: snippet)).ignore();

                      ScaffoldMessenger.of(bc).showSnackBar(
                        const SnackBar(
                          content: Text("Options copied to clipboard"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

/// Generates the FlagShaderOptions code snippet for copy-paste.
abstract final class _SnippetGenerator {
  static String generate(FlagShaderOptions opts, double? ratio) {
    final buffer = StringBuffer();
    if (ratio != null) buffer.writeln("// aspectRatio: ${_fmt(ratio)}");
    buffer
      ..writeln("FlagShaderOptions(")
      ..writeln("  animate: ${opts.animate},")
      ..writeln("  animationSpeed: ${_fmt(opts.animationSpeed)},")
      ..writeln("  frozenPhase: ${_fmt(opts.frozenPhase)},")
      ..writeln("  waveAmplitude: ${_fmt(opts.waveAmplitude)},")
      ..writeln("  waveFrequency: ${_fmt(opts.waveFrequency)},")
      ..writeln("  wavePhaseShift: ${_fmt(opts.wavePhaseShift)},")
      ..writeln("  secondaryAmplitude: ${_fmt(opts.secondaryAmplitude)},")
      ..writeln("  secondaryFrequency: ${_fmt(opts.secondaryFrequency)},")
      ..writeln("  leftEdgePinned: ${opts.leftEdgePinned},")
      ..writeln("  rightEdgePinned: ${opts.rightEdgePinned},")
      ..writeln("  pinSoftness: ${_fmt(opts.pinSoftness)},")
      ..writeln("  poleMargin: ${_fmt(opts.poleMargin)},")
      ..writeln("  shadingEnabled: ${opts.shadingEnabled},")
      ..writeln("  foldStrength: ${_fmt(opts.foldStrength)},")
      ..writeln("  highlightStrength: ${_fmt(opts.highlightStrength)},")
      ..writeln("  shadowStrength: ${_fmt(opts.shadowStrength)},")
      ..writeln("  sheenStrength: ${_fmt(opts.sheenStrength)},")
      ..writeln("  sheenFrequency: ${_fmt(opts.sheenFrequency)},")
      ..writeln("  perspective: ${_fmt(opts.perspective)},")
      ..writeln("  seed: ${_fmt(opts.seed)},")
      ..writeln("  turbulence: ${_fmt(opts.turbulence)},")
      ..writeln(
        "  waveDirection: Offset(${_fmt(opts.waveDirection.dx)}, "
        "${_fmt(opts.waveDirection.dy)}),",
      )
      ..writeln("  fabricVisibility: ${_fmt(opts.fabricVisibility)},")
      ..writeln("  clipContent: ${opts.clipContent},")
      ..writeln("  overflowScale: ${_fmt(opts.overflowScale)},")
      ..write(");");

    return buffer.toString();
  }

  static String _fmt(double value) {
    final formatted = value.toStringAsFixed(3);
    // Remove trailing zeros after decimal point.
    if (formatted.contains(".")) {
      final trimmed = formatted
          .replaceAll(RegExp(r"0+$"), "")
          .replaceAll(RegExp(r"\.$"), "");

      return trimmed.isEmpty ? "0" : trimmed;
    }

    return formatted;
  }
}
