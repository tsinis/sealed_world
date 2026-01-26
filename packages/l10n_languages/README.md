[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Pub points](https://img.shields.io/pub/points/l10n_languages)](https://pub.dev/packages/l10n_languages/score)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits/main/packages/l10n_languages)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/l10n_languages.svg)](https://pub.dev/packages/l10n_languages)

This ISO-driven, pure Dart, fully tested and dependency-free package provides translations for language names in `157` different locales. For Flutter ready widgets (like language picker) please use [world_countries](https://pub.dev/packages/world_countries) package. For Dart-only use - it's recommended to use together with [sealed_languages](https://pub.dev/packages/sealed_languages) package.

### Features

- 157 locales supported out of the box.
- Three-letter ISO 639-2/T Terminological code lookup.
- Fallback locale support.
- Allows injecting custom translations to extend/modify existing ones.
- Alternative names and conditional formatting support.

> [!TIP]
> Translations are provided in sentence case to ensure correct display for leading UI labels, avoiding ambiguous re-capitalization logic. To adapt these values for inline or mid-sentence usage, prefer the `formatter` callback.

### Getting started

To use this package, add `l10n_languages` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  l10n_languages: any
```

Then import the package in your Dart code:

```dart
import 'package:l10n_languages/l10n_languages.dart';
```

### Usage

Use the `LanguagesLocaleMapper` class to localize language names. Create an instance and use the localize method to get translations:

```dart
void main() {
  /// Create an instance of the mapper directly.
  final mapper = LanguagesLocaleMapper();

  /// Define some ISO codes to localize (e.g., `ENG` for English,
  /// `RUS` for Russian, etc.).
  final isoCodes = {"ENG", "RUS", "POL"};

  /// Localize the codes with an optional main locale (e.g., "sk" for Slovak),
  /// and an optional fallback locale (e.g., "cs" for Czech).
  final localized =
      mapper.localize(isoCodes, mainLocale: "sk", fallbackLocale: "cs");

  print("Names count: ${localized.length}"); // Prints: "Names count: 6".

  /// Print out the localized names.
  localized.forEach(
    (language, l10n) => print(
      'Localized name of language with ISO code "${language.isoCode}" '
      'for locale "${language.locale}" is "$l10n"',
    ),
  );
}
```

### FAQ

#### Why should I use this package over any other language-related package?

- **No dependencies**: This package has no dependencies, not even `meta`, ensuring that you won't have any issues or conflicts with other dependencies.
- **Memory efficient**: Lazy initialization loads translations on-demand, reducing initial memory footprint by ~90% - only the locales you actually use are loaded into memory.
- **Rich data**: This package offers tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **High code coverage**: The code in this package has 100% code coverage, providing confidence in its reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every non-code generated public member, usually with examples, ensuring clarity and ease of use.
- **Mirrored Repository**: The GitHub repository, including all package tags, is mirrored on [GitLab](https://gitlab.com/tsinis/sealed_world/), providing an alternative access point should GitHub become unavailable.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **Lightweight**: This package keeps **under 500 KB**, ensuring it fits within the pub cache limit. This leads to quick, low-bandwidth downloads and faster caching, minimizing resource impact.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

### Additional information

If you like this package, please give it a star or like. For more information on using this package, check out the API documentation. **PRs or ideas are always welcome**.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-639-language-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/List_of_ISO_639-1_codes)
- [Primary Translations Source](https://github.com/umpirsky/language-list)
- [Secondary Translations Source](https://github.com/symfony/intl)
- [Project Roadmap](https://github.com/users/tsinis/projects/1)
