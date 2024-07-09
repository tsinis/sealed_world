import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "settings_dialog.dart";

void main() => runApp(
      MaterialApp(
        home: const Main(),
        theme: ThemeData(
          /// Provide flag decorations globally.
          extensions: const [
            FlagThemeData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
          ],
          brightness: Brightness.dark,
        ),
      ),
    );

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  static const height = 18.0;

  final aspectRatio = ValueNotifier<double>(1);

  late final countries = List<WorldCountry>.unmodifiable(
    WorldCountry.list.where((country) => !notReadyYet.contains(country)),
  );

  @override
  void dispose() {
    aspectRatio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          minimum: const EdgeInsets.all(height / 2),
          child: Scaffold(
            body: LayoutBuilder(
              builder: (_, constraints) => ValueListenableBuilder<double>(
                valueListenable: aspectRatio,
                builder: (_, ratio, __) => Scaffold(
                  body: ListView.builder(
                    itemBuilder: (_, i) {
                      final country = countries[i];

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          title: Text(country.internationalName),
                          trailing: CountryFlag.simplified(
                            country,
                            height: height,
                            aspectRatio: ratio,
                          ),
                          onTap: () => SettingsDialog.show(context, country),
                        ),
                      );
                    },
                    itemCount: countries.length,
                  ),
                  bottomNavigationBar: SizedBox(
                    height: height,
                    child: Slider(
                      value: ratio,
                      onChanged: (newRatio) => aspectRatio.value = newRatio,
                      min: 1,
                      max: 2.2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
