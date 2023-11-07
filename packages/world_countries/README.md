[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![world_countries](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/world_countries.svg)](https://pub.dev/packages/world_countries)

![Example](https://raw.githubusercontent.com/tsinis/sealed_world/main/packages/world_countries/doc/example.gif)

This ISO-driven and fully tested package provides information about world countries, currencies, languages, etc. in form of compile-time constant sealed classes with a customizable pickers. This is Flutter wrapper on top of the [sealed_countries](https://pub.dev/packages/sealed_countries) package, that extends the data (for example different flag types in form of color fonts, Twemoji, Noto Color Emoji, OpenMoji) and provides ready-to use widgets for showing countries, languages, currencies lists and pickers.

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
- [Attributions](#attributions)
- [FAQ](#faq)

### Features

This package provides the following ready-to-use widgets and classes:

- `CountryPicker` - A picker widget that displays a list of world countries.
- `PhoneCodePicker` - A picker widget that displays a list of phone codes.
- `CurrencyPicker` - A picker widget that displays a list of fiat currencies.
- `LanguagePicker` - A picker widget that displays a list of natural languages.

- `TypedLocaleDelegate` - A locale delegate for automatic translation of pickers (80+ languages available).

Or you can just create your own pickers by extending `BasicPicker`.

### Demo

To preview the demo from the example, you can visit [this web page](https://tsin.is/sealed_world) using the **Chrome** browser (version **119** or higher). Please allow up 15 seconds for initial fonts and data caching.

> Note: Please keep in mind that demo was build with Flutter WASM which is in very early alpha stage, so performance might be affected.

### Getting started

To use this package, you will need Flutter version 3.10+. Add `world_countries` as a dependency in your `pubspec.yaml` file.

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
`MaterialApp(localizationsDelegates: const [TypedLocaleDelegate(), ...] ...)`
Then you can also extract this delegate data from the context via `context.maybeLocale` getter, in any place of your app (from a `BuildContext`).

Also, you can force pickers to use specific locale instead, by providing translation parameter to it (for example, `translation: IsoLocale(LangEng())`, will show names in English).

Package also provides access to `TypedLocale` and `IsoLocale` classes that allows you to work with a type-safe versions of default `Locale`. You can also utilize them in `translate()` and `maybeTranslate()` methods (you can use with country/currency/language data).

### Example

```dart
import "dart:async" show unawaited;

import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:world_countries/world_countries.dart";

void main() => runApp(
      MaterialApp(
        home: const MainPage(),
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
            selectedCountry?.maybeTranslation(const LangEng())?.name,
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
If you have any issues or suggestions for the package, please file them in the GitHub repository. PRs or ideas are always welcome. If you like this package, please give it a star or like.

### References and credits

This package is licensed under the MIT license. See [LICENSE](./LICENSE) for details. This package dependencies are under their respective licenses (that can be found in their respective folders under LICENSE and NOTICE files).

### Attributions

The color emoji flags fonts used in this package were obtained from open-source repositories of the original creators. The fonts are redistributed under the terms of the licenses offered by the original authors. The fonts sizes were reduced, by removing non-flag glyphs, to reduce the package size and to reduce the copyright footprint, since most of the country flags are in Public Domain. No modifications in graphic itself were made.

#### Noto Emoji fonts

The [Noto Emoji font](./lib/assets/fonts/NotoEmoji/) font comes from [Noto Emoji](https://github.com/googlefonts/noto-emoji) emoji library. Noto Emoji fonts are under the [SIL Open Font License, version 1.1](https://scripts.sil.org/OFL).

#### OpenMoji fonts

The [OpenMoji](./lib/assets/fonts/OpenMoji/) font comes from [OpenMoji](https://github.com/hfg-gmuend/openmoji) project and redistributed under the CC-BY-SA-4.0 [license terms](https://creativecommons.org/licenses/by-sa/4.0/).

#### Twemoji fonts

The [Twemoji font in COLR/CPAL layered format](./lib/assets/fonts/Twemoji/) font comes from [Twemoji-COLR](https://github.com/mozilla/twemoji-colr) project (Mozilla's COLR/CPAL version of [Twemoji](https://github.com/twitter/twemoji)). Twemoji graphics made by Twitter and other contributors
and is used and redistributed under the CC-BY-4.0 [license terms](https://creativecommons.org/licenses/by/4.0) offered by the Twemoji project.

---

### FAQ

#### I have problems rendering COLR emoji flags on Android

Answer: Android OS [supports](https://developer.android.com/about/versions/13/features#color-vector-fonts) COLRv1 fonts from version 13 on (API level 33).

#### My flags on web platform are grey (not colored)

Answer: Please add `useColorEmoji: true` parameter to your `engineInitializer.initializeEngine` method ([index.html](https://github.com/flutter/flutter/issues/119536#issuecomment-1546247494)).

#### I don't like default tiles UI in the pickers

Answer: Every picker has a `itemBuilder` parameter, providing access to specific list item properties, for example this is how you can show only a common country name in `CountryPicker`:

```dart
CountryPicker(
  itemBuilder: (country, {isDense}) => Text(country.item.name.common),
);
```

#### How can I change emoji flag from default Twemoji to something else?

Answer: You can create your own `itemBuilder` with use of `EmojiFlag` widget that has multiple named constructors and only require country instance, to show different type of flag:

```dart
CountryPicker(
  itemBuilder: (country, {isDense}) => EmojiFlag.notoEmoji(country.item),
);
```

#### Why should I use this package over any other country/currency/language picker package?

- **Sealed classes**: This package provides data in the form of sealed classes, allowing you to create your own instances and work with them as with existing ones (for example this is not possible with enums or regular classes, you can also override existing data, etc.).
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations.
- **Type-safe**: The contracts and types in this package are very strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has a high level of coverage, providing confidence in its reliability and stability.
- **MIT License**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.
