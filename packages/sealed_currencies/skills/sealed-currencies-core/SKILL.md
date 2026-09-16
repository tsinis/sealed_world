---
name: sealed-currencies-core
description: >-
  Work with world currencies (ISO 4217) using the sealed_currencies
  Dart/Flutter package. Use when working with FiatCurrency, looking up
  currencies by code (letter or numeric) or name, accessing formatting rules
  (symbols, decimals, subunits), inspecting properties, performing
  exhaustive pattern matching, or retrieving localized currency names.
---

# Core Currencies with sealed_currencies

Guidelines and examples for working with type-safe world currency data (ISO 4217) using the `sealed_currencies` package.

## Setup

Add the package to the project:

- Dart projects: `dart pub add sealed_currencies`
- Flutter projects: `flutter pub add sealed_currencies`

Then import the main library:

```dart
import 'package:sealed_currencies/sealed_currencies.dart';
```

The package exposes `FiatCurrency`, `Currency`, `BasicLocale`, `TranslatedName`, and dedicated subclasses for all active currencies (e.g. `FiatUsd`, `FiatEur`, `FiatGbp`, `FiatJpy`).

## Guidelines

### Sealed Class Hierarchy & Exhaustive Matching

- **Exhaustive pattern matching**: `FiatCurrency` is a sealed class hierarchy, so switches over it are exhaustiveness-checked at compile time — a missing case is an error, not a silent fallthrough. Enumerating all 171 currency subclasses is rarely practical, so a `_` wildcard for the remainder is the normal choice; the compile-time check still pays off when matching a deliberately small, closed set (e.g. supported billing currencies).
- **Dedicated const types**: Every currency has its own subclass and factory constructor (e.g. `FiatUsd()` or `FiatCurrency.usd()`). Prefer compile-time `const` instances where possible.

### ISO 4217 Standards & Code Formats

- **`code` (ISO 4217 Alpha-3)**: Three-letter uppercase alphabetic code (e.g. `"USD"`, `"EUR"`, `"GBP"`). This is the primary identifier of the currency.
- **`codeNumeric` (ISO 4217 Numeric-3)**: Three-digit numeric code represented as a string (e.g. `"840"` for USD, `"978"` for EUR, `"392"` for JPY).

### Lookups & Input Handling

- **Prefer `maybeFrom*` for untrusted input**: Use `maybeFromAnyCode()`, `maybeFromCode()`, or `maybeFromCodeNumeric()` when parsing external or user-provided data. These methods return `null` if the code is invalid or unrecognized.
- **Avoid throwing variants for user input**: Methods like `fromCode()`, `fromCodeNumeric()`, `fromAnyCode()`, and `fromName()` throw when no matching currency is found. Only use them when input validity is guaranteed.
- **O(1) lookups**: Access pre-indexed lookup tables using `FiatCurrency.map` (keyed by uppercase 3-letter code), `FiatCurrency.list` (regular active currencies), or `FiatCurrency.listExtended` (all 171 currencies including complementary and funds codes).

### Formatting & Monetary Properties

- **Symbols & Display**: Access `symbol`, `alternateSymbols`, `disambiguateSymbol`, and `htmlEntity` for UI rendering.
- **Symbol Placement**: `unitFirst` is a boolean indicating whether the symbol precedes the amount (e.g. `true` for `$100`, `false` for `100 €`).
- **Punctuation**: `decimalMark` and `thousandsSeparator` define the default number formatting characters for the currency.
- **Subunit Conversion**: `subunitToUnit` represents the proportion between the main unit and fractional unit (e.g. `100` for cents in USD, `1` for zero-decimal currencies like JPY where `subunit` is `null`). Use this for precision-safe calculations.

### Names & Native Endonyms

- **`name`**: Non-empty string representing the standard English name of the currency.
- **`namesNative`**: Non-empty list of native currency names in sentence case. A currency may have multiple endonyms in multilingual jurisdictions, so read the whole list rather than assuming a single entry.

### Localization & Companion Skill

- **Retrieve localized names**: Use `currency.commonNameFor(const BasicLocale(LangDeu()))` or `currency.maybeCommonNameFor(...)` to get localized currency names directly.
- **Sentence-cased translations**: Localized names return in sentence case, ready for standalone display labels. Pass a formatter if inline, mid-sentence casing is required.
- **Advanced L10N & Tree-Shaking**: `sealed_currencies` bundles `l10n_currencies` under the hood. For direct batch translation mappers (`CurrenciesLocaleMapper`), custom translation injection, or compile-time tree-shaking flags (`--dart-define=l10n-<locale>=true`), install the companion skill `l10n-currencies-localization` via `dart run skills@ get`.

---

## Examples

### 1. Safe Parsing and Code Lookups

```dart
import 'package:sealed_currencies/sealed_currencies.dart';

void main() {
  // Safe lookup from untrusted user input (alpha or numeric code)
  final currency = FiatCurrency.maybeFromAnyCode('usd');
  if (currency != null) {
    print('Name: ${currency.name}'); // "US Dollar"
    print('Code: ${currency.code}'); // "USD"
    print('Numeric: ${currency.codeNumeric}'); // "840"
    print('Symbol: ${currency.symbol}'); // "$"
  }

  // Lookup by numeric code string
  final euro = FiatCurrency.maybeFromCodeNumeric('978');
  print(euro?.name); // "Euro"
}
```

### 2. Exhaustive Pattern Matching with Switch Expressions

```dart
import 'package:sealed_currencies/sealed_currencies.dart';

String formatPrice(FiatCurrency currency, double amount) => switch (currency) {
  FiatUsd() => '\$${amount.toStringAsFixed(2)}',
  FiatEur() => '${amount.toStringAsFixed(2)} €',
  FiatGbp() => '£${amount.toStringAsFixed(2)}',
  FiatJpy() => '¥${amount.toStringAsFixed(0)}',
  _ => '${currency.code} ${amount.toStringAsFixed(2)}',
};
```

### 3. Monetary Properties and Subunit Calculations

```dart
import 'package:sealed_currencies/sealed_currencies.dart';

void main() {
  const usd = FiatUsd();
  // 1 dollar = 100 cents
  final cents = 2500;
  final dollars = cents / usd.subunitToUnit;
  print('$dollars ${usd.code}'); // "25.0 USD"

  // Zero-decimal currency handling
  const jpy = FiatJpy();
  print('JPY subunit to unit: ${jpy.subunitToUnit}'); // 1
  print('JPY subunit name: ${jpy.subunit}'); // null
}
```

### 4. Retrieving Localized Currency Names

```dart
import 'package:sealed_currencies/sealed_currencies.dart';

void main() {
  const currency = FiatEur();

  // Localize Euro name into German and Slovak
  final germanName = currency.commonNameFor(
    const BasicLocale(LangDeu()),
    orElse: 'Euro',
  );
  final slovakName = currency.commonNameFor(
    const BasicLocale(LangSlk()),
    orElse: 'Euro',
  );

  // Names come back in sentence case, ready for standalone labels.
  print('DE: $germanName'); // "Euro"
  print('SK: $slovakName'); // "Euro"
}
```

### 5. Filtering and Properties Inspection

```dart
import 'package:sealed_currencies/sealed_currencies.dart';

void main() {
  // Filter currencies where symbol comes first (e.g. $100 vs 100 €)
  final prefixSymbolCurrencies = FiatCurrency.list.where((c) => c.unitFirst);
  print(prefixSymbolCurrencies.length);

  // Filter zero-decimal currencies
  final zeroDecimalCurrencies = FiatCurrency.list.where(
    (c) => c.subunitToUnit == 1,
  );
  print(zeroDecimalCurrencies.map((c) => c.code)); // (BIF, CLP, DJF, JPY, ...)
}
```
