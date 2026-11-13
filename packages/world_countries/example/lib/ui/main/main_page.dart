// ignore_for_file: avoid_futureor_void, it's just an example app.

import "dart:async" show FutureOr;
import "dart:math" show max;

import "package:flutter/foundation.dart";
import "package:flutter/rendering.dart" show ItemExtentBuilder;
import "package:material_ui/material_ui.dart";
import "package:world_countries/world_countries.dart";

import "../../assets/assets.gen.dart";
import "../../model/parsed_data.dart";
import "../../model/world_data.dart";
import "../../notifications/notifications_center.dart";
import "../../theme/theme_provider.dart";
import "abstractions/world_data_tab.dart";
import "tabs/country_tab.dart";
import "tabs/currency_tab.dart";
import "tabs/language_tab.dart";
import "tabs/tabs_data_controller.dart";
import "widgets/floating_button.dart";
import "widgets/menu_button.dart";

class MainPage extends StatefulWidget {
  new(this._data, {AsyncValueSetter<String>? go, super.key})
    : _country = CountryTab(_data.country, go),
      _currency = CurrencyTab(_data.currency, go),
      _lang = LanguageTab(_data.language, go);

  final ParsedData _data;
  final WorldDataTab<WorldCountry> _country;
  final WorldDataTab<FiatCurrency> _currency;
  final WorldDataTab<NaturalLanguage> _lang;

  BasicPicker _mapPickers(WorldData data) =>
      // ignore: avoid-type-casts, it's a simple example app.
      data.map(country: _country, currency: _currency, language: _lang).picker
          as BasicPicker;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  /// The height of a line of text in the [style], scaled by the [textScaler].
  static double _lineHeight(TextStyle? style, TextScaler textScaler) {
    final painter = TextPainter(
      text: TextSpan(text: " ", style: style),
      textDirection: TextDirection.ltr,
      textScaler: textScaler,
      maxLines: 1,
    )..layout();
    final height = painter.height;
    painter.dispose();

    return height;
  }

  // ignore: avoid-late-keyword, we need lazy data value first.
  late final _controller = TabsDataController(widget._data.value, vsync: this);

  // ignore: avoid-returning-widgets, it's just shorthand in the example app.
  BasicPicker get _picker => widget
      ._mapPickers(_controller.currentData)
      .copyWith(itemExtentBuilder: _itemExtent);

  /// Every item of the pickers here is a two-line Material 3 `ListTile` with
  /// one line of title and one of subtitle, so the list can get the extents
  /// of its items without laying out each one (e.g. when it jumps far).
  ItemExtentBuilder get _itemExtent {
    final theme = Theme.of(context);
    final textScaler = MediaQuery.textScalerOf(context);
    // Such a tile is 72 points tall (with the visual density, e.g. 64 points
    // on desktop), or as tall as its lines with 8 points above and below them.
    // The larger of both is never shorter than a tile, a tile in some other
    // script (e.g. Arabic) can be a few points shorter and gets that extent.
    final tileHeight = max(
      theme.visualDensity.baseSizeAdjustment.dy + 72,
      _lineHeight(theme.textTheme.bodyLarge, textScaler) +
          _lineHeight(theme.textTheme.bodyMedium, textScaler) +
          2 * 8,
    );

    // Tiles are on even indexes, separators (`Divider(height: 1)`) on odd ones.
    return (index, _) => index.isEven ? tileHeight : 1;
  }

  @override
  void initState() {
    super.initState();
    _postFrameCallback(_showLongPressHint);
  }

  void _postFrameCallback(VoidCallback callback) => WidgetsBinding.instance
      .addPostFrameCallback((_) => mounted ? callback() : null);

  FutureOr<void> _handleFab({bool isLong = false}) => isLong
      ? _picker.showInDialog(context)
      : _picker.showInModalBottomSheet(context);

  FutureOr<void> _handleAppBarSearch() => _picker.showInSearch(context);

  void _showLongPressHint() {
    final notificationsCenter = NotificationsCenter.instance;
    final messenger = mounted ? ScaffoldMessenger.maybeOf(context) : null;
    if (notificationsCenter.longPressHintShown || messenger == null) return;

    notificationsCenter.markLongPressHintShown();
    messenger.showSnackBar(
      const SnackBar(
        showCloseIcon: true,
        duration: Duration(seconds: 30),
        content: Text("Long-press the icon buttons to view alternative inputs"),
      ),
    );
  }

  @override
  void didUpdateWidget(MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _postFrameCallback(
      () =>
          ThemeProvider.maybeOf(context)?.onColorsChange
              ?.call(widget._data.country.flagStripeColors),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // ignore: avoid-disposing-late-fields, example app.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: _controller.length,
    child: Scaffold(
      appBar: AppBar(
        title: Semantics(header: true, child: const Text("sealed_world")),
        actions: [
          SearchAnchor(
            isFullScreen: false,
            viewConstraints: const BoxConstraints(minWidth: 220, maxWidth: 320),
            builder: (_, controller) => IconButton(
              tooltip: "search",
              onPressed: controller.openView,
              onLongPress: _handleAppBarSearch,
              icon: const Icon(Icons.search, semanticLabel: "search_icon"),
            ),
            suggestionsBuilder: (_, search) =>
                // ignore: use-closest-build-context, on purpose.
                _picker.searchSuggestions(context, search),
          ),
          const MenuButton(),
        ],
        bottom: TabBar(
          tabs: List.unmodifiableOf(
            WorldData.values.map((tab) => Tab(text: tab.label)),
          ),
          controller: _controller,
        ),
        centerTitle: false,
      ),
      body: kProfileMode
          ? null
          : DecoratedBox(
              decoration: FunctionalPlatform.maybeWhenConst(
                orElse: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.background.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
                web: const BoxDecoration(),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 300,
                  child: TabBarView(
                    controller: _controller,
                    children: [widget._country, widget._currency, widget._lang],
                  ),
                ),
              ),
            ),
      floatingActionButton: FloatingButton(_controller, onPressed: _handleFab),
      backgroundColor: context.theme.colorScheme.surfaceContainerHighest,
    ),
  );
}
