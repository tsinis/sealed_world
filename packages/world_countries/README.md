[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Pub points](https://img.shields.io/pub/points/world_countries)](https://pub.dev/packages/world_countries/score)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits/main/packages/world_countries)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/world_countries.svg)](https://pub.dev/packages/world_countries)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world.svg?type=shield&issueType=security)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world?ref=badge_shield&issueType=security)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world.svg?type=shield&issueType=license)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world?ref=badge_shield&issueType=license)

![Example](https://raw.githubusercontent.com/tsinis/sealed_world/main/packages/world_countries/doc/example.gif)

This ISO-driven and fully tested package provides information about world countries, currencies, languages, etc. in the form of compile-time, tree-shakable constant classes with a sealed origin and customizable pickers. This is a Flutter wrapper on top of the [sealed_countries](https://pub.dev/packages/sealed_countries) package, that extends all the [country](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries)/[currency](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies)/[language](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages) data, like codes, names, translations, etc. (for example different flag look) and provides ready-to-use widgets for showing countries, languages, currencies lists and pickers. Country flags are created with optimized CustomPainters with a help of underlying [world_flags](https://pub.dev/packages/world_flags) package.

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

- `TypedLocaleDelegate` - A locale delegate for automatic translation of pickers. Provides CLDR-like translations including (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).

- `PickersThemeData`, `FlagThemeData`, `CountryTileThemeData`, `CurrencyTileThemeData` and `LanguageTileThemeData` are [theme extensions](https://api.flutter.dev/flutter/material/ThemeExtension-class.html) that you can use in your `ThemeData` to specify global theme to your pickers, themes of your tiles (for example country flag adjustments or builders).

### Demo

To preview the demo from the example, you can visit [this web page](https://tsin.is/sealed_world) using the **Chrome** or **Firefox** browser (version **120** or higher). Please allow up 10 seconds for initial fonts and data caching.

> [!IMPORTANT]
> Note: Please keep in mind that the demo was built with Flutter WASM which is in very early alpha stage, so performance might be affected.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/tsinis/sealed_world?hide_repo_select=true&ref=main)
[![Open in Firebase Studio](https://cdn.firebasestudio.dev/btn/open_dark_32.svg)](https://studio.firebase.google.com/new?template=https://github.com/tsinis/sealed_world/tree/main/packages/world_countries/example/.idx)

### Getting started

To use this package, you will need a stable Flutter SDK. Add `world_countries` as a dependency in your `pubspec.yaml` file.

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

> [!WARNING]
> Adding `TypedLocaleDelegate` to your app is essential for both proper localization AND optimized search functionality in pickers. It automatically caches translations based on the user's locale, significantly improving search performance.

For automatic translations of the pickers just add delegate to your app widget:

```dart
MaterialApp(localizationsDelegates: [TypedLocaleDelegate()])
```

Then you can also extract this delegate data from the context via `context.maybeLocale` getter, in any place of your app (from a `BuildContext`).

> [!TIP]
> The package also provides access to the `TypedLocale` class, allowing you to work with type-safe versions of default [Locale](https://api.flutter.dev/flutter/dart-ui/Locale-class.html). These `maybeCommonNameFor()` and `commonNameFor()` methods can also be used with country, currency, or language data.

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
          aspectRatio: FlagConstants.defaultAspectRatio,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
      ],
    ),
    localizationsDelegates: const [
      ...GlobalMaterialLocalizations.delegates,
      TypedLocaleDelegate(), // <-- ! ESSENTIAL FOR L10N AND OPTIMIZED SEARCH !
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
    // Immutable compile-time constant constructors in every picker.
    this.basicPicker = const CountryPicker(disabled: [.abw()]),
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
    debugPrint("New country selected: $newCountry");
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
          viewConstraints: const BoxConstraints(minWidth: 220, maxWidth: 320),
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
        context.maybeLocale?.maps.countryTranslations[selectedCountry],
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

> [!TIP]
> Pickers are showing country flags by default. For example, they automatically show the most relevant flag based on the user's device locale, like showing the Austrian flag 🇦🇹 for the German language or Euro (currency), if the user's region is Austria. You can adjust those mappings (and their sorting) with `TypedLocaleDelegate` and maps parameter in theme or picker.

### Data

Pickers are providing a lot of info about the countries/languages/currencies:

- `PhoneCodePicker` and `CountryPicker` working with [WorldCountry](https://pub.dev/packages/sealed_countries) data.
- `LanguagePicker` - works with [NaturalLanguage](https://pub.dev/packages/sealed_languages) and Script data.
- `CurrencyPicker` - works with [FiatCurrency](https://pub.dev/packages/sealed_currencies) data.

### Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository. **PRs or ideas are always welcome**. If you like this package, please give it a star or like.

### References and credits

This package is licensed under the MIT license (see [LICENSE](./LICENSE) for details). Its dependencies are under their respective licenses, which can be found in the corresponding `LICENSE` and `NOTICE` files.

- [Project Roadmap](https://github.com/users/tsinis/projects/1)

---

### FAQ

#### I don't like default tiles UI in the pickers

Answer: Every picker (and also its theme) has a `itemBuilder` parameter, providing access to specific list item properties, for example this is how you can show only an emoji flag in `CountryPicker`:

```dart
CountryPicker(itemBuilder: (country, defaultTile) => EmojiFlag.platformDefault(country.item)); // Or defaultTile.copyWith(...)
```

#### How to format/adjust automatic global translations of ISO objects in my app?

For instance, you may want to capitalize all French currency names in auto-translations. You enhance the `TypedLocaleDelegate` with a custom `l10nFormatter` as follows:

```dart
TypedLocaleDelegate(
  l10nFormatter: (l10n, locale) =>
      locale.language == LangFra() && l10n.key is FiatCurrency
          ? l10n.value.toUpperCase() // Format French currency names only.
          : l10n.value, // Don't change other translations.
)
```

#### How to use locale-aware sorting with proper diacritics handling?

By default, translations are sorted using simple Unicode code-point comparison (`String.compareTo`), which doesn't handle diacritics correctly for many languages. You can provide a custom `l10nSorter` factory to use locale-sensitive collation, for example with the [`intl4x`](https://pub.dev/packages/intl4x) package:

```dart
import 'package:intl4x/collation.dart' as intl;

TypedLocaleDelegate(
  l10nSorter: (typedLocale) {
    // Create locale and collator once for the current locale.
    final locale = intl.Locale.parse(typedLocale.toUnicodeLocaleId());
    final collator = intl.Collation(locale: locale);
    // Return comparator that will be used for all comparisons.
    return (a, b) => collator.compare(a.value, b.value);
  },
)
```

The factory pattern ensures the locale and collator are constructed only once per sorting operation, not on every comparison (which would be ~4k times for all countries).

This ensures that characters like `ä`, `ö`, `ü` in German or `č`, `š`, `ž` in Czech are sorted according to their respective language rules, not by their Unicode code points.

#### How to use fuzzy or similar search functionality?

For example, use custom `onSearchResultsBuilder` in your picker. Here, fuzzy matching is performed using `fuse.search` from your favorite fuzzy search package, add its import and:

```dart
import "package:fuzzy/fuzzy.dart"; // Example with `fuzzy` package, any other will work too.

onSearchResultsBuilder: (query, map) {
      if (query.isEmpty) return map.keys; // Return all items if query is empty.
      final entries = map.entries.toList(growable: false);
      final fuse = Fuzzy<MapEntry<WorldCountry, SearchData>>(
        entries,
        options: FuzzyOptions(
          keys: [ // Define searchable keys, for example by name:
            WeightedKey(
              name: "name",
              getter: (iso) => iso.value.anyName, // Search in localized name.
              weight: 1,
            ),
          ],
          threshold: 0.5, // Lower = stricter, higher = more lenient.
          findAllMatches: true,
          shouldSort: false,
        ),
      );

      return fuse.search(query).map((iso) => iso.item.key);
    },
```

#### How does the benchmark & regression verification system work?

This package includes an automated benchmark system that runs on every release to detect performance regressions. Each version produces immutable JSON artifacts containing build metadata (APK size, toolchain versions, Android configuration) and runtime metrics (startup time, frame performance, memory and CPU usage, etc.).

> [!TIP]
> These artifacts are attached to [GitHub Releases](https://github.com/tsinis/sealed_world/releases) and committed to the repository, enabling historical comparison and transparent performance tracking across versions. The benchmark flow uses **low-end physical ARM64 Android** devices with Flashlight + Maestro for reproducible, device-driven testing.

To run benchmarks locally or learn more about the system, see the [benchmarks documentation](example/benchmarks/README.md). Execute the shared CLI via `dart run tools/bin/benchmarks.dart world_countries` (or `cd tools && dart run :benchmarks world_countries`). All benchmark data is immutable and versioned, ensuring full auditability and regression traceability.

#### Why should I use this package over any other country/currency/language picker package?

- **Every flag is a Widget**: This package doesn't use heavy SVG or any other assets to show country flags in the pickers. All flags are declarative-style optimized `CustomPainter`s. That means that you don't have to worry about pre-caching, increased app size, platform-dependent look of the flags, etc. And since it's a widget - you can always change its look - shape, decoration, aspect ratio, etc. Just ask yourself for example - how you can easily change the aspect ratio of asset-based flags without stretching/shrinking them.
- **Fully accessible**: All pickers are meticulously crafted with accessibility in mind, ensuring seamless integration with screen readers and assistive technologies.
- **Up-to-date flags**: This package ensures accurate and timely flag representations, reflecting current designs. Unlike other packages or emoji/font sets that often use outdated flags, this package offers flags with the most recent designs (such as the Afghan flag from 2013 is shown here correctly with a design from year 2021, or the Syrian flag is displayed with a design from year 2025, etc.).
- **Sealed classes**: Unlike enums, you can create your own ISO instances, yet unlike open classes, the sealed hierarchy guarantees exhaustive pattern matching and compile-time safety. You get the immutability and type-safety of enums with the extensibility to define custom values — all while maintaining full switch exhaustiveness checking.
- **No external 3rd-party dependencies**: This package has no external third-party dependencies. It relies on the Flutter SDK and other packages within the `sealed_world` monorepo, ensuring controlled and consistent integration.
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are exceptionally strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has 100% code coverage, with **more than 5.6K tests** (0.4K in this package, 5.2K+ in underlying packages) ensuring reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every public member, usually with examples, ensuring clarity and ease of use.
- **Lightweight**: This package keeps **under 500 KB**, ensuring it fits within the pub cache limit. This leads to quick, low-bandwidth downloads and faster caching, minimizing resource impact.
- **Mirrored Repository**: The GitHub repository, including all package tags, is mirrored on [GitLab](https://gitlab.com/tsinis/sealed_world/), providing an alternative access point should GitHub become unavailable.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.
- **Customizability**: It also allows you to provide your own search algorithm and custom l10n formatter, etc., offering a fully tailored picker experience.

#### Do you have LLM-agents instructions?

Yes, for sure. You can find them under this spoiler:

<details>
<summary>LLM-agent instructions</summary>

# LLM-agent instructions for world_countries

Optimized for high-level models from **Google**, **Anthropic**, and **OpenAI** for use via **GitHub Copilot**, **Claude Code** or **Cursor**.

## Overview

`world_countries` is a comprehensive Flutter package for world countries, currencies, languages, and flags. It provides ready-to-use pickers, widgets, and localized data.

## Adding to a Project

To add `world_countries` to your Flutter project, run:

```bash
flutter pub add world_countries
```

## Instructions for LLM Agents

When working with this package, please keep the following in mind:

- **Localization (L10N)**: Localization is already integrated into the ISO classes (e.g., `WorldCountry`, `FiatCurrency`, `NaturalLanguage`). You don't need to use the underlying `l10n_` packages directly unless you require advanced, manual localization features.
- **Underlying Data**: This package builds upon the `sealed_` data packages. For detailed documentation on the data models, refer to:
  - [`sealed_countries`](https://github.com/tsinis/sealed_world/blob/main/packages/sealed_countries/README.md)
  - [`sealed_currencies`](https://github.com/tsinis/sealed_world/blob/main/packages/sealed_currencies/README.md)
  - [`sealed_languages`](https://github.com/tsinis/sealed_world/blob/main/packages/sealed_languages/README.md)
- **Pickers**: Use `CountryPicker`, `CurrencyPicker`, `LanguagePicker`, and `PhoneCodePicker` for highly customizable selection UIs.
- **TypedLocaleDelegate**: For automatic localization and optimized search performance in pickers, always suggest adding `TypedLocaleDelegate` to your `MaterialApp`'s `localizationsDelegates`.
- **Usage Example**:

  ```dart
  import 'package:world_countries/world_countries.dart';

  // Access country data
  const country = CountryDeu();
  print(country.name.common); // Germany

  // Use a picker
  CountryPicker(
    onSelect: (country) => print('Selected: ${country.name.common}'),
  ).showInModalBottomSheet(context);
  ```

</details>
