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
import "../widgets/abstractions/world_data_tab.dart";
import "../widgets/floating_button.dart";

class MainPage extends StatefulWidget {
  MainPage(ParsedData data, {AsyncValueSetter<String>? navigate, super.key})
      : _dataType = data.value,
        _country = CountryTab(data.country, navigate),
        _currency = CurrencyTab(data.currency, navigate),
        _lang = LanguageTab(data.language, navigate);

  final WorldData _dataType;
  final WorldDataTab<WorldCountry> _country;
  final WorldDataTab<FiatCurrency> _currency;
  final WorldDataTab<NaturalLanguage> _lang;

  BasicPicker _mapPickers(WorldData data) =>
      data.map(country: _country, currency: _currency, language: _lang).picker;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late final _controller = TabsDataController(widget._dataType, vsync: this);

  FutureOr<void> _onFabPressed({bool isLong = false}) {
    final pick = widget._mapPickers(_controller.currentData);
    isLong ? pick.showInDialog(context) : pick.showInModalBottomSheet(context);
  }

  FutureOr<void> _onAppBarSearchPressed() =>
      widget._mapPickers(_controller.currentData).showInSearch(context);

  FutureOr<Iterable<Widget>> _anchorPicker(
    BuildContext context,
    SearchController controller,
  ) =>
      widget
          ._mapPickers(_controller.currentData)
          .searchSuggestions(context, controller);

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
            title: const Text("Try long press too :)"),
            actions: [
              SearchAnchor(
                isFullScreen: false,
                viewConstraints:
                    const BoxConstraints(minWidth: 220, maxWidth: 320),
                builder: (_, controller) => GestureDetector(
                  onLongPress: _onAppBarSearchPressed,
                  child: IconButton(
                    onPressed: controller.openView,
                    icon: const Icon(
                      Icons.search,
                      semanticLabel: "search_icon",
                    ),
                  ),
                ),
                suggestionsBuilder: _anchorPicker,
              ),
            ],
            bottom: TabBar(
              tabs: List.unmodifiable(
                WorldData.values.map((tab) => Tab(text: tab.label)),
              ),
              controller: _controller,
            ),
            centerTitle: false,
          ),
          body: !kProfileMode
              ? DecoratedBox(
                  decoration: FunctionalPlatform.maybeWhenConst(
                    web: const BoxDecoration(),
                    orElse: BoxDecoration(
                      image: DecorationImage(
                        image: Assets.images.background.provider(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 300,
                      child: TabBarView(
                        controller: _controller,
                        children: [
                          widget._country,
                          widget._currency,
                          widget._lang,
                        ],
                      ),
                    ),
                  ),
                )
              : null,
          floatingActionButton:
              FloatingButton(_controller, onPressed: _onFabPressed),
          backgroundColor: context.theme.colorScheme.surfaceContainerHighest,
        ),
      );
}
