import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "cupertino_emoji_shader_delegate.dart";
import "flag_settings_page.dart";

/// Run `flutter run` for the simple list, or add `--dart-define=isComplex=true`
/// to enable shader previews. `isComplex` defaults to `false` when omitted.
// ignore: do_not_use_environment, prefer-static-class, it's just an example app
const isComplexExample = bool.fromEnvironment("isComplex");

void main() async {
  if (isComplexExample) {
    WidgetsFlutterBinding.ensureInitialized();
    await CupertinoEmojiShaderDelegate.warmUp();
    await WavedFlagShaderDelegate.warmUp();
  }
  const extensions = [
    FlagThemeData(decoration: BoxDecoration(borderRadius: .all(.circular(4)))),
  ];

  runApp(
    MaterialApp(
      home: const Main(isSimpleExample: !isComplexExample),
      theme: ThemeData(extensions: extensions, brightness: Brightness.light),
      darkTheme: ThemeData(extensions: extensions, brightness: Brightness.dark),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({required this.isSimpleExample, super.key});

  final bool isSimpleExample;

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  // ignore: specify_nonobvious_property_types, a double as it's divided by 2.0.
  static const _size = kMinInteractiveDimension / 2.0;
  static const _items = <IsoTranslated, BasicFlag>{
    ...smallSimplifiedFlagsMap,
    ...smallSimplifiedCurrencyFlagsMap,
    ...smallSimplifiedLanguageFlagsMap,
  };

  final _shaderDelegate = CupertinoEmojiShaderDelegate(); // Custom shader flag.
  // ignore: avoid-late-keyword, just an example app.
  late final _aspectRatio = ValueNotifier<double?>(
    widget.isSimpleExample ? null : 7 / 5,
  );

  @override
  void dispose() {
    _shaderDelegate.dispose();
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
          onTap: () => FlagSettingsPage.show(_aspectRatio, bc, item),
          trailing: ValueListenableBuilder(
            valueListenable: _aspectRatio,
            builder: (_, aspectRatio, flag) =>
                widget.isSimpleExample && flag is IsoFlag
                ? flag.copyWith(aspectRatio: aspectRatio)
                : FlagShaderSurface(
                    item,
                    height: _size,
                    aspectRatio: aspectRatio,
                    shader: _shaderDelegate,
                  ),
            child: IsoFlag(item, _items, height: _size), // Or [CountryFlag].
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
