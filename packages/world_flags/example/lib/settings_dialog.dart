import "dart:async";

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

class SettingsDialog extends StatefulWidget {
  const SettingsDialog(this.country, this.aspectRatio, {super.key});

  static void show(
    BuildContext context,
    WorldCountry country,
    ValueNotifier<double?> aspectRatio,
  ) =>
      unawaited(
        showDialog(
          context: context,
          builder: (_) => SettingsDialog(country, aspectRatio),
        ),
      );

  final WorldCountry country;
  final ValueNotifier<double?> aspectRatio;

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  static const minRatio = 0.8; // TODO! Use Nepal value.
  final opacity = ValueNotifier(1 / 2);

  WorldCountry get country => widget.country;

  String opacityLabelBuilder() => switch (opacity.value) {
        1 => "Original bitmap flag",
        0 => "Flag from the package",
        _ => " ${(opacity.value * 100).round()}% opacity ",
      };

  @override
  void dispose() {
    opacity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ValueListenableBuilder(
            valueListenable: widget.aspectRatio,
            builder: (_, ratio, __) => ValueListenableBuilder(
              valueListenable: opacity,
              builder: (_, opacityValue, flag) => Scaffold(
                appBar: AppBar(
                  title: SelectableText(
                    "${country.internationalName} (${country.code}) Settings",
                    textAlign: TextAlign.center,
                  ),
                ),
                body: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(country.flagPngUrl(), scale: 0.1),
                      ),
                    ),
                    child: Opacity(opacity: opacityValue, child: flag),
                  ),
                ),
                bottomNavigationBar: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(
                        "${ratio == null ? "(Original) " : ""}Aspect Ratio:",
                      ),
                      subtitle: Slider(
                        value: ratio ??
                            flagPropertiesMap[country]?.aspectRatio ??
                            minRatio,
                        onChanged: (newRatio) =>
                            widget.aspectRatio.value = newRatio,
                        min: minRatio,
                        max: 2.2,
                      ),
                    ),
                    ListTile(
                      title: const Text("Opacity:"),
                      subtitle: Slider(
                        value: opacityValue,
                        onChanged: (newOpacity) => opacity.value = newOpacity,
                        divisions: 10,
                        label: opacityLabelBuilder(),
                      ),
                    ),
                  ],
                ),
              ),
              child: CountryFlag.simplified(country, aspectRatio: ratio),
            ),
          ),
        ),
      );
}
