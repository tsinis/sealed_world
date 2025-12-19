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
    child: ListView.separated(
      itemBuilder: (bc, index) {
        final item = _items.keys.elementAt(index);
        final isSimplified = _items[item]?.properties.isSimplified ?? true;

        return ListTile(
          enabled: !isSimplified,
          title: Text(item.internationalName),
          subtitle: Text("${item.namesNative?.first}"),
          onTap: item is WorldCountry
              ? () => SettingsDialog.show(_aspectRatio, bc, item)
              : null,
          trailing: ValueListenableBuilder(
            valueListenable: _aspectRatio,
            builder: (_, aspectRatio, flag) => flag is IsoFlag
                ? flag.copyWith(aspectRatio: aspectRatio)
                : const SizedBox.shrink(),
            child: IsoFlag(item, _items, height: _size),
          ),
        );
      },
      separatorBuilder: (bc, _) => Divider(
        color: Theme.of(bc).disabledColor.withValues(alpha: 0.1),
        height: 1,
      ),
      itemCount: _items.length,
      clipBehavior: Clip.none,
    ),
  );
}
