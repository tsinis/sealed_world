// ignore_for_file: avoid-non-ascii-symbols, arguments-ordering
import "dart:async" show unawaited;
import "dart:typed_data";

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../models/tabs.dart";
import "../tabs/country_tab.dart";
import "../tabs/currency_tab.dart";
import "../tabs/language_tab.dart";
import "../widgets/floating_button.dart";

class MainPage extends StatefulWidget {
  const MainPage(this.country, {this.maybeBackground, super.key});

  final WorldCountry country;
  final Uint8List? maybeBackground;

  DecorationImage? get backgroundImage {
    final background = maybeBackground;

    return background != null
        ? DecorationImage(image: MemoryImage(background), fit: BoxFit.cover)
        : null;
  }

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late final TabController controller =
      TabController(length: Tabs.values.length, vsync: this);
  final ValueNotifier<Tabs> selectedTab = ValueNotifier(Tabs.country);

  late final ValueNotifier<WorldCountry> selectedCountry =
      ValueNotifier(widget.country);
  late final ValueNotifier<NaturalLanguage> selectedLanguage =
      ValueNotifier(widget.country.languages.first);
  late final ValueNotifier<FiatCurrency> selectedCurrency =
      ValueNotifier(widget.country.currencies?.first ?? const FiatEur());

  late final CountryPicker countryPicker = CountryPicker(
    disabled: const [CountryAfg(), CountryAlb()],
    chosen: [selectedCountry.value],
    onSelect: (newCountry) => selectedCountry.value = newCountry,
  );

  late final CurrencyPicker currencyPicker = CurrencyPicker(
    disabled: const [FiatAfn()],
    chosen: [selectedCurrency.value],
    onSelect: (newCurrency) => selectedCurrency.value = newCurrency,
  );

  late final LanguagePicker languagePicker = LanguagePicker(
    disabled: const [LangAar()],
    chosen: [selectedLanguage.value],
    onSelect: (newLang) => selectedLanguage.value = newLang,
  );

  @override
  void initState() {
    super.initState();
    controller.addListener(controllerListener);
  }

  @override
  void dispose() {
    selectedCurrency.dispose();
    selectedLanguage.dispose();
    selectedCountry.dispose();
    selectedTab.dispose();
    controller.dispose();
    super.dispose();
  }

  void controllerListener() =>
      selectedTab.value = Tabs.values.elementAt(controller.index);

  void onFabPressed({bool isLongPress = false}) {
    final picker = selectedTab.value.map<BasicPicker>(
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
    final picker = selectedTab.value.map<BasicPicker>(
      country: countryPicker,
      currency: currencyPicker,
      language: languagePicker,
    );
    unawaited(picker.showInSearch(context));
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: Tabs.values.length,
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
                Tabs.values.map((tab) => Tab(text: tab.label)),
              ),
              controller: controller,
            ),
          ),
          body: DecoratedBox(
            decoration: BoxDecoration(image: widget.backgroundImage),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 300,
                child: TabBarView(
                  controller: controller,
                  children: [
                    ValueListenableBuilder<WorldCountry>(
                      valueListenable: selectedCountry,
                      builder: (_, country, __) => CountryTab(country),
                    ),
                    ValueListenableBuilder<FiatCurrency>(
                      valueListenable: selectedCurrency,
                      builder: (_, currency, __) => CurrencyTab(currency),
                    ),
                    ValueListenableBuilder<NaturalLanguage>(
                      valueListenable: selectedLanguage,
                      builder: (_, language, __) => LanguageTab(language),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingButton(
            selectedTab,
            onPressed: (longPress) => onFabPressed(isLongPress: longPress),
          ),
        ),
      );
}
