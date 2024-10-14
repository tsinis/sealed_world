[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
![CodeRabbit](https://img.shields.io/badge/reviewed-code?style=flat&logo=vowpalwabbit&logoColor=orange&label=coderabbit&color=dark-green&link=https%3A%2F%2Fcoderabbit.ai)
![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green&link=https%3A%2F%2Fdcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml)
![Pub points](https://img.shields.io/pub/points/world_countries)
![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)
![Pub popularity](https://img.shields.io/pub/popularity/world_countries)
![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)
[![License MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/world_countries.svg)](https://pub.dev/packages/world_countries)

![Example](https://raw.githubusercontent.com/tsinis/sealed_world/main/packages/world_countries/doc/example.gif)

This ISO-driven and fully tested package provides information about world countries, currencies, languages, etc. in the form of compile-time, tree-shakable constant sealed classes with a customizable pickers. This is a Flutter wrapper on top of the [sealed_countries](https://pub.dev/packages/sealed_countries) package, that extends all the [country](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries)/[currency](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies)/[language](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages) data, like codes, names, translations, etc. (for example different flag look) and provides ready-to use widgets for showing countries, languages, currencies lists and pickers. Country flags are created with optimized CustomPainters with a help of underlying [world_flags](https://pub.dev/packages/world_flags) package.

### Table of Contents

- [Features](#features)
- [Demo](#demo)
- [Getting started](#getting-started)
- [Usage](#usage)
- [L10N](#l10n)
- [Example](#example)
- [Data](#data)
- [Additional information](#additional-information)
- [References and credits](#references-and-credits)
- [FAQ](#faq)

### Features

This package provides the following ready-to-use widgets and classes:

- `CountryPicker` - A picker widget that displays a list of world countries.
- `PhoneCodePicker` - A picker widget that displays a list of phone codes.
- `CurrencyPicker` - A picker widget that displays a list of fiat currencies.
- `LanguagePicker` - A picker widget that displays a list of natural languages.

Or you can just create your own pickers by extending `BasicPicker`.

- `TypedLocaleDelegate` - A locale delegate for automatic translation of pickers. Provides translations including (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).

- `PickersThemeData`, `FlagThemeData`, `CountryTileThemeData`, `CurrencyTileThemeData` and `LanguageTileThemeData` are [theme extensions](https://api.flutter.dev/flutter/material/ThemeExtension-class.html) that you can use in your `ThemeData` to specify global theme to your pickers, themes of your tiles (for example country flag adjustments or builders).

### Demo

To preview the demo from the example, you can visit [this web page](https://tsin.is/sealed_world) using the **Chrome** browser (version **119** or higher). Please allow up 10 seconds for initial fonts and data caching.

> Note: Please keep in mind that demo was build with Flutter WASM which is in very early alpha stage, so performance might be affected.

### Getting started

To use this package, you will need Flutter version 3.19+. Add `world_countries` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  world_countries: any
```

### Usage

You can use provided widgets directly, or just use their methods:

- searchSuggestions (for use in `suggestionsBuilder` of [SearchAnchor](https://api.flutter.dev/flutter/material/SearchAnchor-class.html))
- showInModalBottomSheet
- showInSearch
- showInDialog

### L10N

For automatic translations of the pickers just add delegate to your app widget:

```dart
MaterialApp(localizationsDelegates: [TypedLocaleDelegate()])
```

Then you can also extract this delegate data from the context via `context.maybeLocale` getter, in any place of your app (from a `BuildContext`).

Also, you can force pickers to use specific locale instead, by providing translation parameter to it (for example, `translation: IsoLocale.withTranslationsCache(LangEng())`, will show names in English).

> Package also provides access to `TypedLocale` and `IsoLocale` classes that allows you to work with a type-safe versions of default [Locale](https://api.flutter.dev/flutter/dart-ui/Locale-class.html). You can also utilize them in `translation()` and `maybeTranslation()` methods (you can use with country/currency/language data).

### Example

```dart
import "dart:async" show unawaited;

import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:world_countries/world_countries.dart";

void main() => runApp(
      MaterialApp(
        home: const MainPage(),
        theme: ThemeData(
          /// And also [CurrencyTileThemeData], [LanguageTileThemeData], [CountryTileThemeData]...
          extensions: const <ThemeExtension>[
            PickersThemeData(primary: true), // Specify global pickers theme.
            FlagThemeData(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
          ],
        ),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          TypedLocaleDelegate(
            localeMapResolution: [
              /// Just as an example, Brazil could be mapped to Euro Portuguese.
              LocaleEntry(
                Locale("pt", "BR"),
                IsoLocale(LangPor(), country: CountryPrt()),
              ),
            ],
          ),
        ],
        supportedLocales: [
          for (final locale in kMaterialSupportedLanguages) Locale(locale),
          const Locale("pt", "PT"),
          const Locale("pt", "BR"),
        ],
      ),
    );

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    // Immutable compile time constant constructors in every picker.
    this.basicPicker = const CountryPicker(disabled: [CountryAbw()]),
  });

  final CountryPicker basicPicker;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  /// Highly customizable, for example use itemBuilder param. for custom tiles.
  late CountryPicker picker = widget.basicPicker.copyWith(onSelect: onSelect);

  void onSelect(WorldCountry newCountry) {
    debugPrint("New country selected: $selectedCountry");
    setState(
      () => picker = picker.copyWith(
        // A copyWith methods in every picker.
        chosen: selectedCountry == newCountry ? const [] : [newCountry],
      ),
    );
  }

  void onFabPressed({bool isLongPress = false}) {
    /// Or for example: [LanguagePicker], [CurrencyPicker].
    final phonePicker = PhoneCodePicker.fromCountryPicker(picker);
    unawaited(
      isLongPress
          ? phonePicker.showInDialog(context)
          : phonePicker.showInModalBottomSheet(context),
    );
  }

  void onAppBarSearchLongPressed() => unawaited(picker.showInSearch(context));

  WorldCountry? get selectedCountry => picker.chosen?.firstOrNull;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            SearchAnchor(
              isFullScreen: false,
              viewConstraints:
                  const BoxConstraints(minWidth: 220, maxWidth: 320),
              builder: (_, controller) => GestureDetector(
                onLongPress: onAppBarSearchLongPressed,
                child: IconButton(
                  onPressed: controller.openView,
                  icon: const Icon(Icons.search),
                ),
              ),
              suggestionsBuilder: picker.searchSuggestions,
            ),
          ],
        ),
        body: Center(
          child: MaybeWidget(
            selectedCountry?.maybeTranslation(BasicLocale(LangEng()))?.name,
            Text.new,
            orElse: const Text(
              "Please select country by pressing on the search icon",
            ),
          ),
        ),
        floatingActionButton: GestureDetector(
          onLongPress: () => onFabPressed(isLongPress: true),
          child: FloatingActionButton(
            onPressed: onFabPressed,
            child: const Icon(Icons.search),
          ),
        ),
      );
}
```

For more usage examples, please see the `/example` folder.

### Data

Pickers are providing a lot of info about the countries/languages/currencies:

- `PhoneCodePicker` and `CountryPicker` working with [WorldCountry](https://pub.dev/packages/sealed_countries) data.
- `LanguagePicker` - works with [NaturalLanguage](https://pub.dev/packages/sealed_languages) and Script data.
- `CurrencyPicker` - works with [FiatCurrency](https://pub.dev/packages/sealed_currencies) data.

### Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository. **PRs or ideas are always welcome**. If you like this package, please give it a star or like.

### References and credits

This package is licensed under the MIT license. See [LICENSE](./LICENSE) for details. This package dependencies are under their respective licenses (that can be found in their respective folders under LICENSE and NOTICE files).

---

### FAQ

#### I don't like default tiles UI in the pickers

Answer: Every picker has a `itemBuilder` parameter, providing access to specific list item properties, for example this is how you can show only an emoji flag in `CountryPicker`:

```dart
CountryPicker(
  itemBuilder: (country, {isDense}) => EmojiFlag.platformDefault(country.item),
);
```

#### Why should I use this package over any other country/currency/language picker package?

- **Every flag is a Widget**: This package doesn't use heavy SVG or any other assets to show country flags in the pickers. All flags are declarative-style optimized CustomPainters. That means that you don't have to worry about pre-caching, increased app size, platform-dependent look of the flags, etc. And since it's a widget - you can always change its look - shape, decoration, aspect ratio, etc. Just ask yourself for example - how you can easily change the aspect ratio of asset-based flags without stretching/shrinking them.
- **Fully Accessible**: All pickers are meticulously crafted with accessibility in mind, ensuring seamless integration with screen readers and assistive technologies.
- **Up-to-date Flags**: This package ensures accurate and timely flag representations, reflecting current designs. Unlike other packages or emoji/font sets that often use outdated flags, this package offers flags with the most recent designs (such as the Afghan flag from 2013 is shown here correctly with a design from year 2021).
- **Sealed classes**: This package provides data in the form of sealed classes, allowing you to create your own instances and work with them as with existing ones (for example this is not possible with enums or regular classes (without losing it's sealed nature), you can also override existing or add new data, etc.).
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are exceptionally strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package boasts nearly 100% test coverage, with almost 5000 tests (150+ in this package, 4828+ in underlying Dart packages) ensuring reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every non-code generated public member, usually with examples, ensuring clarity and ease of use.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.
