[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Pub points](https://img.shields.io/pub/points/l10n_countries)](https://pub.dev/packages/l10n_countries/score)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits/main/packages/l10n_countries)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/l10n_countries.svg)](https://pub.dev/packages/l10n_countries)

This ISO-driven, pure Dart, fully tested and dependency-free package provides translations for country names in `194` different locales. For Flutter ready widgets (like country picker) please use [world_countries](https://pub.dev/packages/world_countries) package. For Dart-only use - it's recommended to use together with [sealed_countries](https://pub.dev/packages/sealed_countries) package.

### Features

- 194 locales supported out of the box.
- Three-letter ISO 3166-1 Alpha-3 code lookup.
- Fallback locale support.
- Alternative names support.

### Getting started

To use this package, add `l10n_countries` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  l10n_countries: any
```

Then import the package in your Dart code:

```dart
import 'package:l10n_countries/l10n_countries.dart';
```

### Usage

Use the `CountriesLocaleMapper` class to localize country names. Create an instance and use the localize method to get translations:

```dart
void main() {
  /// Create an instance of the mapper directly.
  final mapper = CountriesLocaleMapper();

  /// Define some ISO codes to localize (e.g., `USA` for United States,
  ///`RUS` for Russian Federation, and `POL` for Poland).
  final isoCodes = {"USA", "RUS", "POL"};

  /// Localize the codes with an optional main locale (e.g., "sk" for Slovak),
  /// and an optional fallback locale (e.g., "cs" for Czech).
  final localized =
      mapper.localize(isoCodes, mainLocale: "sk", fallbackLocale: "cs");

  print("Names count: ${localized.length}"); // Prints: "Names count: 12".

  /// Print out the localized names.
  localized.forEach(
    (country, l10n) => print(
      'Localized name of country with ISO code "${country.isoCode}" '
      'for locale "${country.locale}" is "$l10n"',
    ),
  );
}
```

### FAQ

#### Why should I use this package over any other country-related package?

- **No dependencies**: This package has no dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **High code coverage**: The code in this package has 100% code coverage, providing confidence in its reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every non-code generated public member, usually with examples, ensuring clarity and ease of use.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

### Additional information

If you like this package, please give it a star or like. For more information on using this package, check out the API documentation. **PRs or ideas are always welcome**.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-3166-country-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/List_of_ISO_3166_country_codes)
- [Primary Translations Source](https://github.com/umpirsky/country-list)
- [Secondary Translations Source](https://github.com/symfony/intl)
- [Project Roadmap](https://github.com/users/tsinis/projects/1)
