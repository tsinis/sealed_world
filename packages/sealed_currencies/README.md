[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Pub points](https://img.shields.io/pub/points/sealed_currencies)](https://pub.dev/packages/sealed_currencies/score)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits/main/packages/sealed_currencies)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/sealed_currencies.svg)](https://pub.dev/packages/sealed_currencies)

This ISO-driven, pure Dart, fully tested and 3rd-party dependency-free package provides information about world currencies in the form of compile-time, tree-shakable constant classes with a sealed origin. Contains all actively used 171<sup>1</sup> currencies with ISO letter 4217 codes, also provides ISO 4217 numeric codes, their English, native names, units, subunits, currency name translations, etc. For Flutter ready widgets (like currency picker) please use [world_countries](https://pub.dev/packages/world_countries) package.

### Features

**FiatCurrency** class provides the following information about currencies:

| **Field**            | **Required**                | **Description**                                                                           | **Example for FiatEur**                        |
| -------------------- | --------------------------- | ----------------------------------------------------------------------------------------- | ---------------------------------------------- |
| code                 | **Yes**                     | The international 3-letter non-empty alphabetic code as defined by the ISO 4217 standard. | "EUR"                                          |
| name                 | **Yes**                     | The English name of the currency.                                                         | "Euro"                                         |
| namesNative          | **Yes**                     | The native names of the currency in different locales.                                    | `["Euro"]`                                     |
| codeNumeric          | **Yes**                     | The international 3-numeric non-empty numeric code as defined by the ISO 4217 standard.   | "978"                                          |
| alternateSymbols     | No                          | Alternative symbols for this currency or `null` if no such symbols exists.                | `null`                                         |
| disambiguateSymbol   | No                          | Alternative currency used if symbol is ambiguous, or `null` if no such symbol exists.     | `null`                                         |
| htmlEntity           | No                          | The HTML entity for the currency symbol, or `null` if no such entity exists.              | "€"                                            |
| smallestDenomination | **Yes**                     | Smallest amount of cash possible (in the subunit of this currency).                       | 1                                              |
| subunit              | No                          | The name of the fractional monetary unit, or `null` if no such name exists.               | "Cent"                                         |
| subunitToUnit        | **Yes**                     | The proportion between the unit and the subunit.                                          | 100                                            |
| priority             | **Yes**                     | A numerical value that can be used to sort/group any currency list.                       | 2                                              |
| unitFirst            | **Yes**                     | Should the currency symbol precede the amount, or should it come after?                   | true                                           |
| symbol               | No                          | The currency symbol.                                                                      | "€"                                            |
| decimalMark          | **Yes**                     | The decimal mark, or character used to separate the whole unit from the subunit.          | ","                                            |
| thousandsSeparator   | **Yes**                     | The character used to separate thousands grouping of the whole unit.                      | "."                                            |
| translations         | **Yes** (for built-in data) | A list of `TranslatedName`s representing the currency name translations.                  | **115+** translations for a Euro currency name |

Provides a compile-time constant of all currencies accessible via `FiatCurrency.list` moreover, the **FiatCurrency** class provides the following methods/constructors:

- `maybeFromValue` - returns a currency instance if the value matches the provided value, otherwise returns `null`.
- `maybeFromAnyCode` - returns a currency instance if the value matches any ISO 4217 code, otherwise returns `null`.
- `maybeFromCodeNumeric` - returns a currency instance if the value matches the provided ISO 4217 numeric code, otherwise returns `null`.
- `maybeFromCode` - returns a currency instance if the value matches the provided ISO 4217 letter code, otherwise returns `null`.
- `fromCode` - returns a currency instance if the value matches the provided ISO 4217 letter code.
- `fromCodeNumeric` - returns a currency instance if the value matches the provided ISO 4217 numeric code.
- `fromAnyCode` - returns a currency instance if the value matches any ISO 4217 code.
- `fromName` - returns a currency instance if the value matches the provided English name.

You can also find many common methods you may know from Dart ecosystem - `toString` overrides, `copyWith`, `toJson`, `compareTo`, etc. Also, a compile-time const, tree-shakable, case-insensitive code `map`s (for O(1)-time code look-ups), `list`, and much more.

> [!TIP]
> Translations: Use `maybeCommonNameFor()` or `commonNameFor()` methods to get translations for specific locale.

### Getting started

To use this package, add `sealed_currencies` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  sealed_currencies: any
```

Then import the package in your Dart code:

```dart
import 'package:sealed_currencies/sealed_currencies.dart';
```

### Usage

To get information about currencies, use the `FiatCurrency` class. You can construct instances directly (using `const`), use the class's factory constructors or static methods, or select a currency from the `FiatCurrency.list` constant.

```dart
  print(FiatCurrency.listExtended.length); // Prints: "171".

  final serbianDinar = FiatCurrency.fromCode("Rsd");
  print(serbianDinar.name); // Prints: "Serbian Dinar".

  final maybeEuro = FiatCurrency.maybeFromValue(
    "Euro",
    where: (currency) => currency.namesNative.first,
  );

  print(maybeEuro?.toString(short: false));
  /*
  Prints: "FiatCurrency(code: "EUR", name: "Euro", decimalMark: ",",
  thousandsSeparator: ".", symbol: r"€", htmlEntity: "€", codeNumeric: "978",
  namesNative: ["Euro"], priority: 2, smallestDenomination: 1, subunit: "Cent",
  subunitToUnit: 100, unitFirst: true,)".
  */

  // Prints German translations of all available regular currencies.
  final germanNames = FiatCurrency.list.commonNamesMap(
    options: const LocaleMappingOptions(mainLocale: BasicLocale(LangDeu())),
  );

  print(
    """Fully translated to German: ${germanNames.length == FiatCurrency.list.length}""",
  ); // Prints: "Fully translated to German: true".
  for (final deuTranslation in germanNames.entries) {
    print("German name of ${deuTranslation.key.name}: ${deuTranslation.value}");
  }

  print(
    serbianDinar.maybeCommonNameFor(const BasicLocale(LangPol())),
  ); // Prints common Polish name of RSD: "dinar serbski".
```

> [!IMPORTANT]
> For specific ISO instances and their collections, e.g., `const value = FiatEur(), const items = [FiatEur()]` — prioritize compile-time constant references over `var/final` to ensure canonicalization and benefit from compiler optimizations.

For more usage examples, please see the `/example` folder.

### FAQ

#### Why should I use this package over any other currency-related package?

- **Classes with a sealed origin**: This package provides data via classes with a sealed origin, defining specific permitted direct subclasses. This lets you use instances of these subclasses and customize their data or behavior (e.g., overriding methods), offering more structured flexibility than enums or standard open classes.
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are exceptionally strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has 100% code coverage, with more than 0.5K (+1.5K in underlying packages) tests, providing confidence in its reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every non-code generated public member, usually with examples, ensuring clarity and ease of use.
- **Lightweight**: This package keeps **under 500 KB**, ensuring it fits within the pub cache limit. This leads to quick, low-bandwidth downloads and faster caching, minimizing resource impact.
- **Mirrored Repository**: The GitHub repository, including all package tags, is mirrored on [GitLab](https://gitlab.com/tsinis/sealed_world/), providing an alternative access point should GitHub become unavailable.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

### Additional information

If you like this package, please give it a star or like. For more information on using this package, check out the API documentation. **PRs or ideas are always welcome**.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-4217-currency-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/ISO_4217)
- [Data Source](https://github.com/RubyMoney/money)<sup>2</sup>
- [Project Roadmap](https://github.com/users/tsinis/projects/1)

<sup>1</sup> Doesn't contain complementary funds, etc. currency codes: BOV, CHE, CHW, COU, MXV, USN, UYI, UYW, VED, XSU, XUA, XXX.

<sup>2</sup> Translated JSON data to Dart language (following Effective Dart: Style guidelines), modified, added additional data and functionality.
