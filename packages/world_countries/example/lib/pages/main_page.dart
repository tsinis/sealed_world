import "dart:async" show unawaited;

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../assets/assets.gen.dart";
import "../model/constants.dart";
import "../model/parsed_data.dart";
import "../model/world_data.dart";
import "../tabs/country_tab.dart";
import "../tabs/currency_tab.dart";
import "../tabs/language_tab.dart";
import "../tabs/tabs_data_controller.dart";
import "../widgets/floating_button.dart";

class MainPage extends StatefulWidget {
  const MainPage(this.data, {required this.navigate, super.key});

  final ParsedData data;
  final AsyncValueSetter<String> navigate;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late final _controller = TabsDataController(widget.data.value, vsync: this);

  late final countryPicker = CountryPicker(
    chosen: [widget.data.country],
    disabled: [WorldCountry.list.first],
    onSelect: (newCountry) => widget.data.country != newCountry
        ? _navigateOnSelect(newCountry.code, WorldData.country)
        : null,
    translation: const LangEng(),
  );

  late final currencyPicker = CurrencyPicker(
    chosen: [widget.data.currency],
    disabled: [FiatCurrency.list.first],
    onSelect: (newCurrency) => widget.data.currency != newCurrency
        ? _navigateOnSelect(newCurrency.code, WorldData.currency)
        : null,
  );

  late final languagePicker = LanguagePicker(
    chosen: [widget.data.language],
    disabled: [NaturalLanguage.list.first],
    onSelect: (newLang) => widget.data.language != newLang
        ? _navigateOnSelect(newLang.code, WorldData.language)
        : null,
  );

  void _navigateOnSelect(String code, WorldData data) => unawaited(
        widget.navigate(data.path + Constants.slash + code.toLowerCase()),
      );

  void _onFabPressed({bool isLongPress = false}) {
    final picker = _controller.currentData.map<BasicPicker>(
      country: PhoneCodePicker.fromCountryPicker(countryPicker),
      currency: currencyPicker,
      language: languagePicker,
    );
    unawaited(
      isLongPress
          ? picker.showInDialog(context)
          : picker.showInModalBottomSheet(context),
    );
  }

  void onAppBarSearchPressed() {
    final picker = _controller.currentData.map<BasicPicker>(
      country: countryPicker,
      currency: currencyPicker,
      language: languagePicker,
    );
    unawaited(picker.showInSearch(context));
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
            actions: [
              IconButton(
                onPressed: onAppBarSearchPressed,
                icon: const Icon(Icons.search),
              ),
              // TODO Add about menu.
            ],
            bottom: TabBar(
              tabs: List.unmodifiable(
                WorldData.values.map((tab) => Tab(text: tab.label)),
              ),
              controller: _controller,
            ),
          ),
          body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.background.provider(),
                fit: BoxFit.cover,
                opacity: 1 / 2,
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 300,
                child: TabBarView(
                  controller: _controller,
                  children: [
                    CountryTab(widget.data.country),
                    CurrencyTab(widget.data.currency),
                    LanguageTab(widget.data.language),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingButton(
            _controller,
            onPressed: (isLongPress) => _onFabPressed(isLongPress: isLongPress),
          ),
        ),
      );
}
