This ISO-driven, pure Dart, and dependency-free package provides information about world currencies in form of compile-time constant sealed classes. Contains the all actively used 169[^1] currencies with ISO letter 4217 codes, also provides ISO 4217 numeric codes, their English, native names, units, subunits, etc.

## Features

**FiatCurrency** class provides the following information about currencies:

| Field              | Required | Description                                                                                                              | Example for FiatEur |
| ------------------| -------- | ---------------------------------- | --------------------|
| code               | Yes      | The international 3-numeric non-empty letter code as defined by the ISO 4217 standard.                                   | "EUR"                 |
| name               | Yes      | The English name of the currency.                                                                                                | "Euro"                |
| namesNative        | Yes      | The native names of the currency in different locales.                                                                   | ["Euro"]        |
| codeNumeric        | Yes      | The international 3-numeric non-empty numeric code as defined by the ISO 4217 standard.                                 | "978"                 |
| alternateSymbols   | No       | Alternative symbols for this currency or `null` if no such symbols exists.                                               | null                |
| disambiguateSymbol | No       | Alternative currency used if symbol is ambiguous, or `null` if no such symbol exists.                                    | null                |
| htmlEntity         | No       | The HTML entity for the currency symbol, or `null` if no such entity exists.                                             | "€"                   |
| priority           | Yes       | A numerical value that can be used to sort/group any currency list.                                                       | 2                   |
| smallestDenomination | Yes     | Smallest amount of cash possible (in the subunit of this currency).                                                       | 1                   |
| subunit            | No      | The name of the fractional monetary unit, or `null` if no such name exists.                                              | "Cent"                |
| subunitToUnit      | Yes       | The proportion between the unit and the subunit.                                                                         | 100
| priority      | Yes       | A numerical value that can be used to sort/group any currency list.                                                                         | 2
| unitFirst      | Yes       | Should the currency symbol precede the amount, or should it come after?                                                                         | true
| symbol | No | The currency symbol. | "€"
| decimalMark | Yes | The decimal mark, or character used to separate the whole unit from the subunit. | ","
| thousandsSeparator | Yes | The character used to separate thousands grouping of the whole unit. | "."

Compile time constant list of all currencies accessible via `FiatCurrency.list` and more over, the **FiatCurrency** class provides the following methods:

- `maybeFromValue` - returns a currency instance if the value matches the provided value, otherwise returns `null`.
- `fromCode` - returns a currency instance if the value matches the provided ISO 4217 letter code.
- `fromCodeNumeric` - returns a currency instance if the value matches the provided ISO 4217 numeric code.
- `fromName` - returns a currency instance if the value matches the provided English name.

and (thanks to sealed nature of the class) functional-style like methods: `whenOrNull`, `maybeWhen`, `when`, `map`, `maybeMap`.

## Getting started

To use this package, add `sealed_currencies` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  sealed_currencies: any
```

Then import the package in your Dart code:

```dart
import 'package:sealed_currencies/sealed_currencies.dart';
```

## Usage

Use `FiatCurrency` class to get information about currencies. Either construct a new instance directly or with use of the class factory constructors/method `fromCode`, `fromCodeNumeric`, `fromName` or from any value that class contains `maybeFromValue`, or select one from the `FiatCurrency.list` constant.

```dart
  print(FiatCurrency.list.length); // Prints: "169".

  final serbianDinar = FiatCurrency.fromCode("Rsd");
  print(serbianDinar); // Prints: "Serbian Dinar".

  final maybeEuro = FiatCurrency.maybeFromValue(
    "Euro",
    where: (currency) => currency.namesNative.first,
  );
  print(maybeEuro?.toString(short: false));
  /*
  Prints: "FiatCurrency(code: EUR, priority: 2, name: Euro, namesNative: [Euro],
   symbol: €, disambiguateSymbol: null, alternateSymbols: null, subunit: Cent,
  subunitToUnit: 100, unitFirst: true, htmlEntity: €, decimalMark: ",",
  thousandsSeparator: ".", codeNumeric: 978, smallestDenomination: 1)".
  */
```

For more usage examples, please see the `/example` folder.

## Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

## References, credits and sources

- [ISO](https://www.iso.org/iso-4217-currency-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/ISO_4217)
- [Data Source](https://github.com/RubyMoney/money)[^2]

[^1]: Doesn't contain complementary funds, etc. currency codes: BOV, CHE, CHW, COU, MXV, USN, UYI, UYW, VED, XSU, XUA, XXX.
[^2]: Translated JSON data to Dart language (following Effective Dart: Style guidelines), modified, added additional data and functionality.
