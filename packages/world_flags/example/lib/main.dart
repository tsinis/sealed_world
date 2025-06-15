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
  static const _items = <IsoTranslated, BasicFlag>{
    CountryAfg(): BasicFlag(
      flagAfgPropertiesAlt,
      elementsBuilder: ShahadaPainter.afg,
    ),
    ...uniqueSimplifiedFlagsMap,
    CountryGuf(): StarFlag(flagGufPropertiesAlt),
    FiatEur(): StarFlag(flagEurProperties),
    ...smallSimplifiedLanguageFlagsMap,
  };

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
          final item = _items.keys.elementAt(index);
          final isFull = fullFlags.contains(item);
          final style = TextStyle(
            color: isFull ? null : Theme.of(bc).disabledColor,
          );
          final firstNative = item.namesNative?.firstOrNull;
          final nativeName = firstNative is CountryName
              ? firstNative.name
              : firstNative?.toString();

          return ListTile(
            title: Text(item.internationalName, style: style),
            leading: Text(item.code, style: style.copyWith(fontSize: 16)),
            subtitle: Text.rich(TextSpan(text: nativeName), style: style),
            trailing: ValueListenableBuilder(
              valueListenable: _aspectRatio,
              builder: (_, ratio, _) =>
                  IsoFlag(item, _items, height: _size, aspectRatio: ratio),
            ),
            onTap: isFull && item is WorldCountry
                ? () => SettingsDialog.show(_aspectRatio, bc, item)
                : null,
            minLeadingWidth: _size * 1.5,
          );
        },
        separatorBuilder: (_, _) =>
            const Divider(height: 1, color: Color.fromARGB(33, 133, 133, 133)),
        itemCount: _items.length,
        clipBehavior: Clip.none,
      ),
    ),
  );
}
