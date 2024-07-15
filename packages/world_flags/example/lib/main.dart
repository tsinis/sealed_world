import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "settings_dialog.dart";

void main() {
  /// Provide flag decorations globally.
  const extensions = [
    FlagThemeData(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4))),
    ),
  ];

  runApp(
    MaterialApp(
      home: const Main(),
      theme: ThemeData(extensions: extensions, brightness: Brightness.light),
      darkTheme: ThemeData(extensions: extensions, brightness: Brightness.dark),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  static const height = 18.0;
  final aspectRatio = ValueNotifier<double?>(null);
  late final countries = List<WorldCountry>.unmodifiable(
    WorldCountry.list.where(
      (country) => const [CountryNpl(), CountryVir()].contains(country),
    ),
  );

  @override
  void dispose() {
    aspectRatio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          minimum: const EdgeInsets.all(height / 2),
          child: ListView.separated(
            itemBuilder: (_, index) {
              final country = countries[index];

              return ListTile(
                title: Text(country.internationalName),
                trailing: ValueListenableBuilder(
                  valueListenable: aspectRatio,
                  builder: (_, ratio, __) => CountryFlag.simplified(
                    country,
                    height: height,
                    aspectRatio: ratio,
                  ),
                ),
                onTap: () => SettingsDialog.show(context, country, aspectRatio),
              );
            },
            separatorBuilder: (_, __) => const Divider(
              height: 1,
              color: Color.fromARGB(33, 133, 133, 133),
            ),
            itemCount: countries.length,
            clipBehavior: Clip.none,
          ),
        ),
      );
}
