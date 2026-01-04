import "package:flutter/material.dart";
import "package:meta/meta.dart"; // ignore: depend_on_referenced_packages, example app.
import "package:world_flags/world_flags.dart";

class SettingsDialog extends StatefulWidget {
  const SettingsDialog(this.aspectRatio, this.country, {super.key});

  @awaitNotRequired
  static Future<void> show(
    ValueNotifier<double?> aspectRatio,
    BuildContext context,
    WorldCountry country,
  ) => showDialog<void>(
    context: context,
    builder: (_) => SettingsDialog(aspectRatio, country),
  );

  final WorldCountry country;
  final ValueNotifier<double?> aspectRatio;

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog>
    with SingleTickerProviderStateMixin {
  final _opacity = ValueNotifier<double>(1 / 2);
  // ignore: avoid-late-keyword, free lazy initialization.
  late final _shader = WavedFlagShaderDelegate(vsync: this);

  WorldCountry get _country => widget.country;

  String get _opacityLabel => switch (_opacity.value) {
    0 => "Original bitmap flag",
    1 => "Flag from the package",
    _ => " ${(_opacity.value * 100).round()}% opacity ",
  };

  @override
  void dispose() {
    _opacity.dispose();
    _shader.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Dialog(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: ValueListenableBuilder(
        valueListenable: widget.aspectRatio,
        child: SelectableText(
          "${_country.internationalName} (${_country.code}) "
          "Settings",
          textAlign: TextAlign.center,
        ),
        builder: (_, ratio, title) => ValueListenableBuilder(
          valueListenable: _opacity,
          builder: (bc, opacityValue, flag) => Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              forceMaterialTransparency: true,
              actions: [
                IconButton(
                  icon: const Text(
                    "✕", // ignore: avoid-non-ascii-symbols, it's example.
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: Navigator.of(bc).pop,
                ),
              ],
              title: title,
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
          child: CountryFlag.simplified(
            _country,
            aspectRatio: ratio,
            shader: _shader,
          ),
        ),
      ),
    ),
  );
}
