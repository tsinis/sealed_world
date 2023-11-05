[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![sealed_languages](https://github.com/tsinis/sealed_world/actions/workflows/sealed_languages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/sealed_languages.yaml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/sealed_languages.svg)](https://pub.dev/packages/sealed_languages)

This ISO-driven, pure Dart, fully tested and and dependency-free package provides information about world languages in form of compile-time constant sealed classes. Contains the **all 184 languages with ISO 639-1 codes**, also provides ISO 639-2 codes, their English, native names, language family info, etc. For Flutter ready widgets (like language picker) please use [world_countries](https://pub.dev/packages/world_countries) package.

### Features

**NaturalLanguage** class provides the following information about languages:

| Field             | Mandatory | Description                                                                              | Example for LangEng                              |
| ----------------- | --------- | ---------------------------------------------------------------------------------------- | ------------------------------------------------ |
| name              | Yes       | A non-empty string representing the English name of the natural language.                | "English"                                        |
| code              | Yes       | A three-letter string representing the ISO 639-2/T Terminological code for the language. | "ENG"                                            |
| codeShort         | Yes       | A two-letter string representing the ISO 639-1 code for the language.                    | "EN"                                             |
| namesNative       | Yes       | A list of non-empty strings representing the language's native names.                    | ["English"]                                      |
| bibliographicCode | No        | A three-letter string representing the ISO 639-2/B Bibliographic code for the language.  | null                                             |
| family            | No        | The language family to which the language belongs.                                       | LanguageFamily(name: "Indo-European")            |
| isRightToLeft     | No        | A boolean value specifying whether the language is written right-to-left.                | false                                            |
| translations      | Yes       | A list of TranslatedNames representing the language name translations.                   | **121** translations for a English language name |

Compile time constant list of all languages accessible via `NaturalLanguage.list` and more over, the **NaturalLanguage** class provides the following methods:

- `maybeFromValue` - returns a language instance if the value matches the provided value, otherwise returns `null`.
- `maybeFromAnyCode` - returns a language instance if the value matches any ISO code, otherwise returns `null`.
- `fromCode` - returns a language instance if the value matches the provided ISO 639-2 code.
- `fromCodeShort` - returns a language instance if the value matches the provided ISO 639-1 code code.
- `fromAnyCode` - returns a language instance if the value matches the provided ISO 639-1 or ISO 639-2 codes.
- `fromName` - returns a language instance if the value matches the provided name.

and (thanks to sealed nature of the class) functional-style like methods: `whenOrNull`, `maybeWhen`, `when`, `map`, `maybeMap`. You can also find a lot of common method you may know from Dart ecosystem - `toString` overrides, `copyWith`, `toJson`, etc.

> Translations: Use `maybeTranslation()` or `translation()` methods to get translations for specific locale.

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

Use `NaturalLanguage` class to get information about languages. Either construct a new instance directly or with use of the class factory constructors/ static methods or select one from the `NaturalLanguage.list` constant.

```dart
 final english = NaturalLanguage.fromCode("Eng");
 print("${english.name}: ${english.codeShort}"); // Prints: "English: EN".

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
```

For more usage examples, please see the `/example` folder.

### FAQ

### Why should I use this package over any other language-related package?

- **Sealed classes**: This package provides data in the form of sealed classes, allowing you to create your own instances and work with them as with existing ones (for example this is not possible with enums or regular classes, you can also override existing data, etc.).
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich language data**: This package offers far more data about languages than any other package + tons of translations.
- **Type-safe**: The contracts and types in this package are very strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has a high level of coverage, providing confidence in its reliability and stability.
- **MIT License**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

### Additional information

For more information on using this package, check out the API documentation. PRs or ideas are always welcome.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-639-language-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/List_of_ISO_639-1_codes)
- [Data Source](https://github.com/haliaeetus/iso-639)[^1]
- [Translations Source](https://github.com/umpirsky/language-list)
- [Project Roadmap](https://github.com/users/tsinis/projects/1)

[^1]: Translated JSON data to Dart language (following Effective Dart: Style guidelines), modified, added additional data and functionality.
