import "dart:async";

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

class SettingsDialog extends StatefulWidget {
  const SettingsDialog(this.aspectRatio, this.country, {super.key});

  static void show(
    ValueNotifier<double?> aspectRatio,
    BuildContext context,
    WorldCountry country,
  ) => unawaited(
    showDialog(
      context: context,
      builder: (_) => SettingsDialog(aspectRatio, country),
    ),
  );

  final WorldCountry country;
  final ValueNotifier<double?> aspectRatio;

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  final _opacity = ValueNotifier<double>(1 / 2);

  WorldCountry get _country => widget.country;

  String get _opacityLabel => switch (_opacity.value) {
    0 => "Original bitmap flag",
    1 => "Flag from the package",
    _ => " ${(_opacity.value * 100).round()}% opacity ",
  };

  @override
  void dispose() {
    _opacity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Dialog(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: ValueListenableBuilder(
        valueListenable: widget.aspectRatio,
        builder: (_, ratio, _) => ValueListenableBuilder(
          valueListenable: _opacity,
          builder: (bc, opacityValue, flag) => Scaffold(
            appBar: AppBar(
              leading: const SizedBox.shrink(),
              actions: [
                IconButton(
                  icon: const Text(
                    "✕", // ignore: avoid-non-ascii-symbols, it's example.
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: Navigator.of(bc).pop,
                ),
              ],
              title: SelectableText(
                "${_country.internationalName} (${_country.code}) "
                "Settings",
                textAlign: TextAlign.center,
              ),
            ),
            body: Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(_country.flagPngUrl()),
                  ),
                ),
                child: AspectRatio(
                  aspectRatio:
                      ratio ??
                      _country.flagProperties?.aspectRatio ??
                      FlagConstants.defaultAspectRatio,
                  child: Opacity(opacity: opacityValue, child: flag),
                ),
              ),
            ),
            bottomNavigationBar: SliderTheme(
              data: SliderTheme.of(bc).copyWith(year2023: false),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text(
                      """${ratio == null ? "(Original) " : ""}Aspect Ratio:""",
                    ),
                    subtitle: Slider(
                      value:
                          ratio ??
                          _country.flagProperties?.aspectRatio ??
                          FlagConstants.minAspectRatio,
                      onChanged: (newRatio) =>
                          widget.aspectRatio.value = newRatio,
                      min: FlagConstants.minAspectRatio,
                      max: FlagConstants.maxAspectRatio,
                    ),
                  ),
                  ListTile(
                    title: const Text("Opacity:"),
                    subtitle: Slider(
                      value: opacityValue,
                      onChanged: (newOpacity) => _opacity.value = newOpacity,
                      divisions: 10,
                      label: _opacityLabel,
                    ),
                  ),
                ],
              ),
            ),
          ),
          child: CountryFlag.simplified(_country, aspectRatio: ratio),
        ),
      ),
    ),
  );
}
