import "dart:async";

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

class SettingsDialog extends StatefulWidget {
  const SettingsDialog(this.aspectRatio, this.country, {super.key});

  static void show(
    ValueNotifier<double?> aspectRatio,
    BuildContext context,
    WorldCountry country,
  ) =>
      unawaited(
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
  final _opacity = ValueNotifier(1 / 2);

  WorldCountry get _country => widget.country;

  String get _opacityLabel => switch (_opacity.value) {
        1 => "Original bitmap flag",
        0 => "Flag from the package",
        _ => " ${(_opacity.value * 100).round()}% opacity ",
      };

  @override
  void dispose() {
    _opacity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ValueListenableBuilder(
            valueListenable: widget.aspectRatio,
            builder: (_, ratio, __) => ValueListenableBuilder(
              valueListenable: _opacity,
              builder: (_, opacityValue, flag) => Scaffold(
                appBar: AppBar(
                  title: SelectableText(
                    "${_country.internationalName} (${_country.code}) Settings",
                    textAlign: TextAlign.center,
                  ),
                ),
                body: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(_country.flagPngUrl(), scale: 0.1),
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
              child: CountryFlag.simplified(_country, aspectRatio: ratio),
            ),
          ),
        ),
      );
}
