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

          return InkWell(
            onTap: isFull && item is WorldCountry
                ? () => SettingsDialog.show(_aspectRatio, bc, item)
                : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Text(item.internationalName, style: style)),
                ValueListenableBuilder(
                  valueListenable: _aspectRatio,
                  builder: (_, aspectRatio, flag) => flag is IsoFlag
                      ? flag.copyWith(aspectRatio: aspectRatio)
                      : const SizedBox.shrink(),
                  child: IsoFlag(
                    item,
                    _items,
                    height: _size,
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              ],
            ),
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
