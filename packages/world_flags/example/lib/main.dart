import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "settings_dialog.dart";

void main() {
  /// Provide flag decorations globally.
  const extensions = [
    FlagThemeData(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
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
  // ignore: specify_nonobvious_property_types, a double as it's divided by 2.0.
  static const _size = kMinInteractiveDimension / 2.0;
  final _aspectRatio = ValueNotifier<double?>(null);

  @override
  void dispose() {
    _aspectRatio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Material(
    color: Theme.of(context).scaffoldBackgroundColor,
    child: SafeArea(
      minimum: const EdgeInsets.all(_size / 2),
      child: ListView.separated(
        itemBuilder: (bc, index) {
          final country = WorldCountry.list[index];
          final isFull = fullFlags.contains(country);
          final style = TextStyle(
            color: isFull ? null : Theme.of(bc).disabledColor,
          );

          return ListTile(
            leading: Text(country.code, style: style.copyWith(fontSize: 16)),
            title: Text(country.internationalName, style: style),
            subtitle: Text(country.namesNative.first.common, style: style),
            trailing: ValueListenableBuilder(
              valueListenable: _aspectRatio,
              builder: (_, ratio, _) => CountryFlag.simplified(
                country,
                height: _size,
                aspectRatio: ratio,
              ),
            ),
            onTap: isFull
                ? () => SettingsDialog.show(_aspectRatio, bc, country)
                : null,
            minLeadingWidth: _size * 1.5,
          );
        },
        separatorBuilder: (_, _) =>
            const Divider(height: 1, color: Color.fromARGB(33, 133, 133, 133)),
        itemCount: WorldCountry.list.length,
        clipBehavior: Clip.none,
      ),
    ),
  );
}
