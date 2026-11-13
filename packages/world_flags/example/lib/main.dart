import "package:flutter/widgets.dart";
import "package:world_flags/world_flags.dart";

import "cupertino_emoji_shader_delegate.dart";
import "flag_settings_page.dart";
import "theme/app_colors.dart";
import "theme/app_page_route.dart";
import "theme/app_scroll_behavior.dart";
import "theme/app_text.dart";
import "widgets/line_divider.dart";
import "widgets/list_row.dart";

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
  const flagTheme = DecoratedFlagData(
    decoration: BoxDecoration(borderRadius: .all(.circular(4))),
  );

  runApp(
    FlagTheme(
      data: flagTheme,
      // The example uses only the widgets layer, no design library.
      child: WidgetsApp(
        color: AppColors.primary,
        textStyle: AppText.bodyMedium,
        pageRouteBuilder: <T>(settings, builder) =>
            AppPageRoute<T>(settings: settings, builder: builder),
        builder: (_, child) => MaybeWidget(
          child,
          (page) => ScrollConfiguration(
            behavior: const AppScrollBehavior(),
            child: page,
          ),
        ),
        home: const Main(isSimpleExample: !isComplexExample),
      ),
    ),
  );
}

class Main extends StatefulWidget {
  const new({required this.isSimpleExample, super.key});

  final bool isSimpleExample;

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  static const _size = 24.0; // Half of the minimal interactive dimension.
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
    _aspectRatio.dispose(); // ignore: avoid-disposing-late-fields, its example.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: AppColors.surface,
    child: ListView.separated(
      itemBuilder: (bc, index) {
        final item = _items.keys.elementAt(index);
        final isSimplified = _items[item]?.properties.isSimplified ?? true;

        return ListRow(
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
            // You can also use [CountryFlag], [CurrencyFlag] or [LanguageFlag].
            child: IsoFlag(item, _items, height: _size),
          ),
        );
      },
      separatorBuilder: (_, _) =>
          const LineDivider(height: 1, color: AppColors.separator),
      itemCount: _items.length,
      clipBehavior: Clip.none,
    ),
  );
}
