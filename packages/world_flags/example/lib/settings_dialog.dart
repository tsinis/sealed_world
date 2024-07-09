import "dart:async";

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

class SettingsDialog extends StatefulWidget {
  const SettingsDialog(this.country, {super.key});

  static void show(BuildContext context, WorldCountry country) => unawaited(
        showDialog(
          context: context,
          builder: (_) => SettingsDialog(country),
        ),
      );

  final WorldCountry country;

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  double opacity = 1 / 2;

  WorldCountry get country => widget.country;

  void incrementIndex() => setState(() => opacity = 1 / 2);

  String labelBuilder() => switch (opacity) {
        1 => "Original flag",
        0 => "Flag from the package",
        _ => " ${(opacity * 100).round()}% opacity ",
      };

  @override
  Widget build(BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Scaffold(
            appBar: AppBar(
              title: SelectableText(
                "${country.internationalName} (${country.code})",
                textAlign: TextAlign.center,
              ),
            ),
            body: GestureDetector(
              onTap: incrementIndex,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    CountryFlag.simplified(country),
                    Opacity(
                      opacity: opacity,
                      child: Image.network(country.flagPngUrl(), scale: 0.1),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 40,
              child: Slider(
                value: opacity,
                onChanged: (newOpacity) => setState(() => opacity = newOpacity),
                divisions: 10,
                label: labelBuilder(),
                autofocus: true,
              ),
            ),
          ),
        ),
      );
}
