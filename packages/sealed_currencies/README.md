[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![sealed_currencies](https://github.com/tsinis/sealed_world/actions/workflows/sealed_currencies.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/sealed_currencies.yaml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/sealed_currencies.svg)](https://pub.dev/packages/sealed_currencies)

This ISO-driven, pure Dart, fully tested and and 3rd-party dependency-free package provides information about world currencies in form of compile-time constant sealed classes. Contains the all actively used 169[^1] currencies with ISO letter 4217 codes, also provides ISO 4217 numeric codes, their English, native names, units, subunits, currency name translations, etc. For Flutter ready widgets (like currency picker) please use [world_countries](https://pub.dev/packages/world_countries) package.

### Features

**FiatCurrency** class provides the following information about currencies:

| Field                | Required | Description                                                                             | Example for FiatEur                           |
| -------------------- | -------- | --------------------------------------------------------------------------------------- | --------------------------------------------- |
| code                 | Yes      | The international 3-numeric non-empty letter code as defined by the ISO 4217 standard.  | "EUR"                                         |
| name                 | Yes      | The English name of the currency.                                                       | "Euro"                                        |
| namesNative          | Yes      | The native names of the currency in different locales.                                  | ["Euro"]                                      |
| codeNumeric          | Yes      | The international 3-numeric non-empty numeric code as defined by the ISO 4217 standard. | "978"                                         |
| alternateSymbols     | No       | Alternative symbols for this currency or `null` if no such symbols exists.              | null                                          |
| disambiguateSymbol   | No       | Alternative currency used if symbol is ambiguous, or `null` if no such symbol exists.   | null                                          |
| htmlEntity           | No       | The HTML entity for the currency symbol, or `null` if no such entity exists.            | "€"                                           |
| smallestDenomination | Yes      | Smallest amount of cash possible (in the subunit of this currency).                     | 1                                             |
| subunit              | No       | The name of the fractional monetary unit, or `null` if no such name exists.             | "Cent"                                        |
| subunitToUnit        | Yes      | The proportion between the unit and the subunit.                                        | 100                                           |
| priority             | Yes      | A numerical value that can be used to sort/group any currency list.                     | 2                                             |
| unitFirst            | Yes      | Should the currency symbol precede the amount, or should it come after?                 | true                                          |
| symbol               | No       | The currency symbol.                                                                    | "€"                                           |
| decimalMark          | Yes      | The decimal mark, or character used to separate the whole unit from the subunit.        | ","                                           |
| thousandsSeparator   | Yes      | The character used to separate thousands grouping of the whole unit.                    | "."                                           |
| translations         | Yes      | A list of TranslatedNames representing the currency name translations.                  | **111** translations for a Euro currency name |

Compile time constant list of all currencies accessible via `FiatCurrency.list` and more over, the **FiatCurrency** class provides the following methods:

- `maybeFromValue` - returns a currency instance if the value matches the provided value, otherwise returns `null`.
- `maybeFromAnyCode` - returns a currency instance if the value matches any ISO 4217 code, otherwise returns `null`.
- `fromCode` - returns a currency instance if the value matches the provided ISO 4217 letter code.
- `fromCodeNumeric` - returns a currency instance if the value matches the provided ISO 4217 numeric code.
- `fromAnyCode` - returns a currency instance if the value matches any ISO 4217 code.
- `fromName` - returns a currency instance if the value matches the provided English name.

and (thanks to sealed nature of the class) functional-style like methods: `whenOrNull`, `maybeWhen`, `when`, `map`, `maybeMap`. You can also find a lot of common method you may know from Dart ecosystem - `toString` overrides, `copyWith`, `toJson`, etc.

> Translations: Use `maybeTranslation()` or `translation()` methods to get translations for specific locale.

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

Use `FiatCurrency` class to get information about currencies. Either construct a new instance directly, or with use of the class factory constructors/static methods or select one from the `FiatCurrency.list` constant.

```dart
  print(FiatCurrency.listExtended.length); // Prints: "169".
  print(FiatCurrency.list.length); // Prints: "159".

  final serbianDinar = FiatCurrency.fromCode("Rsd");
  print(serbianDinar); // Prints: "Serbian Dinar".

  final maybeEuro = FiatCurrency.maybeFromValue(
    "Euro",
    where: (currency) => currency.namesNative.first,
  );
  print(maybeEuro?.toString(short: false));
  /*
  Prints: "FiatCurrency(code: "EUR", name: "Euro", decimalMark: ",",
  thousandsSeparator: ".", symbol: "€", alternateSymbols: null,
  disambiguateSymbol: null, htmlEntity: "€", codeNumeric: "978", namesNative:
  ["Euro"], priority: 2, smallestDenomination: 1, subunit: "Cent",
  subunitToUnit: 100, unitFirst: true, translations rsdCurrencyTranslations)".
  */

  // Prints German translations of all available regular currencies.
  for (final currency in FiatCurrency.list) {
    print(
      """German name of ${currency.name}: ${currency.maybeTranslation(const LangDeu())?.name}""",
    );
  }
```

For more usage examples, please see the `/example` folder.

### FAQ

#### Why should I use this package over any other currency-related package?

- **Sealed classes**: This package provides data in the form of sealed classes, allowing you to create your own instances and work with them as with existing ones (for example this is not possible with enums or regular classes, you can also override existing data, etc.).
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations.
- **Type-safe**: The contracts and types in this package are very strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has a high level of coverage, providing confidence in its reliability and stability.
- **MIT License**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

### Additional information

If you like this package, please give it a star or like. For more information on using this package, check out the API documentation. PRs or ideas are always welcome.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-4217-currency-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/ISO_4217)
- [Data Source](https://github.com/RubyMoney/money)[^2]
- [Translations Source](https://github.com/umpirsky/currency-list)
- [Project Roadmap](https://github.com/users/tsinis/projects/1)

[^1]: Doesn't contain complementary funds, etc. currency codes: BOV, CHE, CHW, COU, MXV, USN, UYI, UYW, VED, XSU, XUA, XXX.
[^2]: Translated JSON data to Dart language (following Effective Dart: Style guidelines), modified, added additional data and functionality.
