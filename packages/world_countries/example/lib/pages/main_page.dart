// ignore_for_file: avoid_futureor_void, it's just an example app.

import "dart:async" show FutureOr;

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../assets/assets.gen.dart";
import "../model/parsed_data.dart";
import "../model/world_data.dart";
import "../tabs/country_tab.dart";
import "../tabs/currency_tab.dart";
import "../tabs/language_tab.dart";
import "../tabs/tabs_data_controller.dart";
import "../theme/theme_provider.dart";
import "../widgets/abstractions/world_data_tab.dart";
import "../widgets/floating_button.dart";
import "../widgets/menu_button.dart";

class MainPage extends StatefulWidget {
  MainPage(this._data, {AsyncValueSetter<String>? navigate, super.key})
    : _country = CountryTab(_data.country, navigate),
      _currency = CurrencyTab(_data.currency, navigate),
      _lang = LanguageTab(_data.language, navigate);

  static void _markHintShown() => _longPressHintShown = true;
  static bool _longPressHintShown = kProfileMode;

  final ParsedData _data;
  final WorldDataTab<BasicTypedLocale, WorldCountry> _country;
  final WorldDataTab<BasicLocale, FiatCurrency> _currency;
  final WorldDataTab<BasicLocale, NaturalLanguage> _lang;

  BasicPicker _mapPickers(WorldData data) =>
      data.map(country: _country, currency: _currency, language: _lang).picker;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  static void _postFrameCallback(VoidCallback callback) =>
      WidgetsBinding.instance.addPostFrameCallback((_) => callback());

  // ignore: avoid-late-keyword, we need lazy data value first.
  late final _controller = TabsDataController(widget._data.value, vsync: this);

  // ignore: avoid-returning-widgets, it's just shorthand in the example app.
  BasicPicker get _picker => widget._mapPickers(_controller.currentData);

  @override
  void initState() {
    super.initState();
    _postFrameCallback(_showLongPressHint);
  }

  FutureOr<void> _handleFab({bool isLong = false}) => isLong
      ? _picker.showInDialog(context)
      : _picker.showInModalBottomSheet(context);

  FutureOr<void> _handleAppBarSearch() => _picker.showInSearch(context);

  void _showLongPressHint() {
    final messenger = mounted ? ScaffoldMessenger.maybeOf(context) : null;
    if (MainPage._longPressHintShown || messenger == null) return;

    MainPage._markHintShown();
    messenger.showSnackBar(
      const SnackBar(
        showCloseIcon: true,
        duration: Duration(days: DateTime.daysPerWeek),
        content: Text("Long-press the icon buttons to view alternative inputs"),
      ),
    );
  }

  @override
  void didUpdateWidget(MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _postFrameCallback(
      () => ThemeProvider.of(
        context, // Dart v3.7 formatting.
      )?.onColorsChange?.call(widget._data.country.flagStripeColors),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: _controller.length,
    child: Scaffold(
      appBar: AppBar(
        title: const Text("sealed_world"),
        actions: [
          SearchAnchor(
            isFullScreen: false,
            viewConstraints: const BoxConstraints(minWidth: 220, maxWidth: 320),
            builder: (_, controller) => GestureDetector(
              onLongPress: _handleAppBarSearch,
              child: IconButton(
                onPressed: controller.openView,
                icon: const Icon(Icons.search, semanticLabel: "search_icon"),
              ),
            ),
            suggestionsBuilder: _picker.searchSuggestions,
          ),
          const MenuButton(),
        ],
        bottom: TabBar(
          tabs: List.unmodifiable(
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
