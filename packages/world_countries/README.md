[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![world_countries](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/world_countries.svg)](https://pub.dev/packages/world_countries)

![Example](https://raw.githubusercontent.com/tsinis/sealed_world/main/packages/world_countries/doc/example.gif)

This ISO-driven and fully tested package provides information about world countries, currencies, languages, etc. in form of compile-time constant sealed classes with a customizable pickers. This is Flutter wrapper on top of the [sealed_countries](https://pub.dev/packages/sealed_countries) package, that extends the data (for example different flag types in form of color fonts, Twemoji, Noto Color Emoji, OpenMoji) and provides ready-to use widgets for showing countries, languages, currencies lists and pickers.

## Features

This package provides the following ready-to-use widgets:

* `CountryPicker` - A picker widget that displays a list of world countries.
* `PhoneCodePicker` - A picker widget that displays a list of phone codes.
* `CurrencyPicker` - A picker widget that displays a list of fiat currencies.
* `LanguagePicker` - A picker widget that displays a list of natural languages.

Or you can just create your own pickers by extending `BasicPicker`.

## Getting started

To use this package, you will need Flutter version 3.10+. Add `world_countries` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  world_countries: any
```

## Usage

You can use provided widgets directly, or just use their methods:

* searchSuggestions (for use in `suggestionsBuilder` of [SearchAnchor](https://api.flutter.dev/flutter/material/SearchAnchor-class.html))
* showInModalBottomSheet
* showInSearch
* showInDialog

For example:

```dart
import "dart:async" show unawaited;

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

void main() => runApp(const MaterialApp(home: MainPage()));

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    // Immutable compile time constant constructors in every picker.
    this.basicPicker = const CountryPicker(
      disabled: [CountryAbw()],
      translation: LangEng(), // 25 translations provided.
    ),
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
      () => picker = picker.copyWith( // A copyWith methods in every picker.
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
            selectedCountry?.nameEnglish.common,
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

## Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

> **EXPERIMENTAL** (Flutter WASM): To preview this package example, you can visit [this web page](https://tsin.is/sealed_world) using the **Chrome** browser (version **113** or higher) with the `enable-webassembly-garbage-collection` **flag enabled**. Please allow up to one minute for initial fonts and data caching.

## References, credits

This package is licensed under the MIT license. See [LICENSE](./LICENSE) for details. This package dependencies are under their respective licenses (that can be found in their respective folders under LICENSE and NOTICE files).

## Attributions

The color emoji flags fonts used in this package were obtained from open-source repositories of the original creators. The fonts are redistributed under the terms of the licenses offered by the original authors. The fonts sizes were reduced, by removing non-flag glyphs, to reduce the package size and to reduce the copyright footprint, since most of the country flags are in Public Domain. No modifications in graphic itself were made.

### Noto Emoji fonts

The [Noto Emoji font](./lib/assets/fonts/NotoEmoji/) font comes from [Noto Emoji](https://github.com/googlefonts/noto-emoji) emoji library. Noto Emoji fonts are under the [SIL Open Font License, version 1.1](https://scripts.sil.org/OFL).

### OpenMoji fonts

The [OpenMoji](./lib/assets/fonts/OpenMoji/) font comes from [OpenMoji](https://github.com/hfg-gmuend/openmoji) project and redistributed under the CC-BY-SA-4.0 [license terms](https://creativecommons.org/licenses/by-sa/4.0/).

### Twemoji fonts

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
  itemBuilder: (picker) => Text(picker.item.name.common),
);
```
