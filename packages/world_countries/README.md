[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![world_countries](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/world_countries.yaml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

![Example](https://github.com/tsinis/sealed_world/blob/main/packages/world_countries/doc/example.gif)

This ISO-driven package provides information about world countries, currencies, languages, etc. in form of compile-time constant sealed classes with a customizable pickers. This is Flutter wrapper on top `sealed_countries` package, that extends the data (for example different flag types in form of color fonts, Twemoji, Noto Color Emoji, OpenMoji) and provides ready-to use widgets for showing countries, languages, currencies lists and pickers.

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

* showInModalBottomSheet
* showInSearch
* showInDialog

For example:

```dart
// ignore_for_file: avoid-non-ascii-symbols, arguments-ordering
import "dart:async" show unawaited;

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  WorldCountry? selectedCountry;

  late final CountryPicker countryPicker = CountryPicker(
    disabled: const [CountryAfg(), CountryAlb()],
    onSelect: onSelect,
  );

  void onSelect(WorldCountry newCountry) {
    print("New country selected: $newCountry");
    setState(() => selectedCountry = newCountry);
  }

  void onFabPressed({bool isLongPress = false}) {
    final picker = PhoneCodePicker.fromCountryPicker(countryPicker);
    unawaited(
      isLongPress
          ? picker.showInDialog(context)
          : picker.showInModalBottomSheet(context),
    );
  }

  void onAppBarSearchPressed() =>
      unawaited(countryPicker.showInSearch(context));

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: onAppBarSearchPressed,
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Center(
          child: MaybeWidget(
            selectedCountry?.name.common,
            Text.new,
            orElse: const Text(
              "Please select country by pressing on the search icon",
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: onFabPressed,
          child: const Icon(Icons.search),
        ),
      );
}
```

For more usage examples, please see the `/example` folder.

## Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

## References, credits

This package is licensed under the MIT license. See [LICENSE](./LICENSE) for details. This package dependencies are under their respective licenses (that can be found in their respective folders under LICENSE and NOTICE files).

## Attributions

The color emoji flags fonts used in this package were obtained from open-source repositories of the original creators. The fonts are redistributed under the terms of the licenses offered by the original authors. The fonts sizes were reduced, by removing non-flag glyphs, to reduce the package size and to reduce the copyright footprint, since most of the country flags are in Public Domain. No modifications in graphic itself were made.

### Noto Emoji fonts

The [Noto Emoji font](./lib/assets/fonts/NotoEmoji/) font comes from [Noto Emoji](https://github.com/googlefonts/noto-emoji) emoji library. Noto Emoji fonts are under the [SIL Open Font License, version 1.1](https://scripts.sil.org/OFL).

### OpenMoji fonts

The [OpenMoji](./lib/assets/fonts/OpenMoji/) font comes from [OpenMoji](https://github.com/hfg-gmuend/openmoji) project and redistributed under the CC-BY-SA-4.0 [license terms](https://creativecommons.org/licenses/by-sa/4.0/) offered by the Twemoji project.

### Twemoji fonts

The [Twemoji font in COLR/CPAL layered format](./lib/assets/fonts/Twemoji/) font comes from [Twemoji-COLR](https://github.com/mozilla/twemoji-colr) project (Mozilla's COLR/CPAL version of [Twemoji](https://github.com/twitter/twemoji)). Twemoji graphics made by Twitter and other contributors
and is used and redistributed under the CC-BY-4.0 [license terms](https://creativecommons.org/licenses/by/4.0) offered by the Twemoji project.
