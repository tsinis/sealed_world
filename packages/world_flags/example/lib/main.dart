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
              final country = WorldCountry.list[index];
              final isFull = fullFlags.contains(country);

              return ListTile(
                leading: Icon(
                  isFull
                      ? Icons.open_in_full_rounded
                      : Icons.close_fullscreen_rounded,
                ),
                title: Text(
                  country.internationalName,
                  style: TextStyle(
                    color: isFull ? null : Theme.of(context).disabledColor,
                  ),
                ),
                trailing: ValueListenableBuilder(
                  valueListenable: aspectRatio,
                  builder: (_, ratio, __) => CountryFlag.simplified(
                    country,
                    height: height,
                    aspectRatio: ratio,
                  ),
                ),
                onTap: isFull
                    ? () => SettingsDialog.show(context, country, aspectRatio)
                    : null,
              );
            },
            separatorBuilder: (_, __) => const Divider(
              height: 1,
              color: Color.fromARGB(33, 133, 133, 133),
            ),
            itemCount: WorldCountry.list.length,
            clipBehavior: Clip.none,
          ),
        ),
      );
}
