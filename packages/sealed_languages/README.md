[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Pub points](https://img.shields.io/pub/points/sealed_languages)](https://pub.dev/packages/sealed_languages/score)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits/main/packages/sealed_languages)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/sealed_languages.svg)](https://pub.dev/packages/sealed_languages)

This ISO-driven, pure Dart, fully tested and dependency-free package provides information about world languages in the form of compile-time, tree-shakable constant classes with a sealed origin. Contains the **all 184 languages with ISO 639-1 codes**, also provides ISO 639-2 codes, their English, native names, language family info, language name translations, etc. For Flutter ready widgets (like language picker) please use [world_countries](https://pub.dev/packages/world_countries) package.

### Features

**NaturalLanguage** class provides the following information about languages:

| **Field**         | **Required** | **Description**                                                                          | **Example for LangEng**                            |
| ----------------- | ------------ | ---------------------------------------------------------------------------------------- | -------------------------------------------------- |
| name              | **Yes**      | A non-empty string representing the English name of the natural language.                | "English"                                          |
| code              | **Yes**      | A three-letter string representing the ISO 639-2/T Terminological code for the language. | "ENG"                                              |
| codeShort         | **Yes**      | A two-letter string representing the ISO 639-1 code for the language.                    | "EN"                                               |
| namesNative       | **Yes**      | A list of non-empty strings representing the language's native names.                    | `["English"]`                                      |
| bibliographicCode | No           | A three-letter string representing the ISO 639-2/B Bibliographic code for the language.  | `null`                                             |
| family            | No           | The language family to which the language belongs.                                       | `LanguageFamily`(name: "Indo-European")            |
| isRightToLeft     | No           | A boolean value specifying whether the language is written right-to-left.                | false                                              |
| translations      | **Yes**      | A list of `TranslatedName`s representing the language name translations.                 | **140+** translations for an English language name |

<details>
<summary><strong>Script class</strong> (click to expand)</summary>

**Script** class provides the following information about writing systems:

| **Field**   | **Required** | **Description**                                                      | **Example for ScriptLatn** |
| ----------- | ------------ | -------------------------------------------------------------------- | -------------------------- |
| name        | **Yes**      | A non-empty string representing the English name of the script.      | "Latin"                    |
| code        | **Yes**      | A four-letter string representing the ISO 15924 code for the script. | "Latn"                     |
| codeNumeric | **Yes**      | A three-digit string representing the ISO 15924 numeric code.        | "215"                      |
| date        | **Yes**      | A string representing the date of addition of the script.            | "2004-05-01"               |
| pva         | No           | A string representing the property value alias for the script.       | "Latin"                    |

</details>

Provides a compile-time constant of all languages accessible via `NaturalLanguage.list` moreover, the **NaturalLanguage** class provides the following methods/constructors:

- `maybeFromValue` - returns a language instance if the value matches the provided value, otherwise returns `null`.
- `maybeFromAnyCode` - returns a language instance if the value matches any ISO code, otherwise returns `null`.
- `maybeFromCode` - returns a language instance if the value matches the provided ISO 639-2 code, otherwise returns `null`.
- `maybeFromCodeShort` - returns a language instance if the value matches the provided ISO 639-1 code code, otherwise returns `null`.
- `fromCode` - returns a language instance if the value matches the provided ISO 639-2 code.
- `fromCodeShort` - returns a language instance if the value matches the provided ISO 639-1 code code.
- `fromAnyCode` - returns a language instance if the value matches the provided ISO 639-1 or ISO 639-2 codes.
- `fromName` - returns a language instance if the value matches the provided name.
- `permissive` - allows the creation of custom class instances that are not fully compatible with the ISO standard.

You can also find many common methods you may know from Dart ecosystem - `toString` overrides, `copyWith`, `toJson`, `compareTo`, etc. Also, a compile-time const, tree-shakable, code `map`s (for O(1)-time code look-ups), `list`, and much more.

> Translations: Use `maybeCommonNameFor()` or `commonNameFor()` methods to get translations for specific locale.

### Getting started

To use this package, add `sealed_languages` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  sealed_languages: any
```

Then import the package in your Dart code:

```dart
import 'package:sealed_languages/sealed_languages.dart';
```

### Usage

To get information about languages, use the `NaturalLanguage` class. You can construct instances directly (using `const`), use the class's factory constructors or static methods, or select a language from the `NaturalLanguage.list` constant.

```dart
  const eng = "Eng";
  final fromCode = NaturalLanguage.fromCode(eng);
  /// Equivalent of NaturalLanguage.map[eng];
  print("${fromCode.name}: ${fromCode.codeShort}"); // Prints: "English: EN".

  final script = Script.fromCodeNumeric(215);
  /// Equivalent of Script.codeNumericMap["215"];
  print("${script.name}: ${script.code}"); // Prints: "Latin: Latn".

  final maybeCzech = NaturalLanguage.maybeFromValue(
    "CZE",
    where: (language) => language.bibliographicCode,
  );

  // This will print: "Native name: čeština".
  print("Native name: ${maybeCzech?.namesNative.first}");

  final indoEuropeanLanguages = NaturalLanguage.list.where(
    (language) => language.family is IndoEuropean,
  );
  // Prints a list of Indo-European languages:
  print(indoEuropeanLanguages);
  // (Language(name: Avestan), Language(name: Afrikaans),
  // ...
  // Language(name: Walloon), Language(name: Yiddish).

  // Collects Slovak translations of all available languages.
  final slovakNames = NaturalLanguage.list.commonNamesMap(
    options: const LocaleMappingOptions(mainLocale: BasicLocale(LangSlk())),
  );

  print(
    """Fully translated to Slovak: ${slovakNames.length == NaturalLanguage.list.length}""",
  ); // Prints: "Fully translated to Slovak: true".
  for (final slkTranslation in slovakNames.entries) {
    print("Slovak name of ${slkTranslation.key.name}: ${slkTranslation.value}");
  }
```

> [!IMPORTANT]
> For specific ISO instances and their collections, e.g., `const value = LangEng(), const items = [LangEng()]` — prioritize compile-time constant references over `var/final` to ensure canonicalization and benefit from compiler optimizations.

For more usage examples, please see the `/example` folder.

### FAQ

#### Why should I use this package over any other language-related package?

- **Classes with a sealed origin**: This package provides data via classes with a sealed origin, defining specific permitted direct subclasses. This lets you use instances of these subclasses and customize their data or behavior (e.g., overriding methods), offering more structured flexibility than enums or standard open classes.
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are exceptionally strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has 100% code coverage, with more than 1.5K tests, providing confidence in its reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every non-code generated public member, usually with examples, ensuring clarity and ease of use.
- **Lightweight**: This package keeps under 500 KB, ensuring it fits within the pub cache limit. This leads to quick, low-bandwidth downloads and faster caching, minimizing resource impact.
- **Mirrored Repository**: The GitHub repository, including all package tags, is mirrored on [GitLab](https://gitlab.com/tsinis/sealed_world/), providing an alternative access point should GitHub become unavailable.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

### Additional information

If you like this package, please give it a star or like. For more information on using this package, check out the API documentation. **PRs or ideas are always welcome**.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-639-language-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/List_of_ISO_639-1_codes)
- [Data Source](https://github.com/haliaeetus/iso-639)<sup>1</sup>
- [Project Roadmap](https://github.com/users/tsinis/projects/1)

<sup>1</sup> Translated JSON data to Dart language (following Effective Dart: Style guidelines), modified, added additional data and functionality.
