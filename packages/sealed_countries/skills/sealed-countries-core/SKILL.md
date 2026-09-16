---
name: sealed-countries-core
description: >-
  Work with world countries (ISO 3166-1) and regional metadata using the
  sealed_countries Dart/Flutter package. Use when working with WorldCountry,
  looking up countries by code (alpha-2, alpha-3, numeric) or name, accessing
  geographic/cultural properties (currencies, languages, capitals, flags,
  borders, dialing codes), performing exhaustive pattern matching, or
  retrieving localized country names.
---

# Core Countries with sealed_countries

Guidelines and examples for working with type-safe world country data (ISO 3166-1) and regional metadata using the `sealed_countries` package.

## Setup

Add the package to the project:

- Dart projects: `dart pub add sealed_countries`
- Flutter projects: `flutter pub add sealed_countries`

Then import the main library:

```dart
import 'package:sealed_countries/sealed_countries.dart';
```

The package exposes `WorldCountry`, `CountryName`, `BasicTypedLocale`, `Continent`, `Subregion`, and dedicated subclasses for all 250 countries (e.g. `CountryUsa`, `CountryMex`, `CountryIrl`, `CountryDeu`).

## Guidelines

### Sealed Class Hierarchy & Exhaustive Matching

- **Exhaustive pattern matching**: `WorldCountry` is a sealed class hierarchy, so switches over it are exhaustiveness-checked at compile time — a missing case is an error, not a silent fallthrough. Enumerating all 250 country subclasses is rarely practical, so a `_` wildcard for the remainder is the normal choice; the compile-time check still pays off when matching a deliberately small, closed set (e.g. target shipping destinations, regional blocs).
- **Dedicated const types**: Every country has its own subclass and factory constructor (e.g. `CountryIrl()` or `WorldCountry.irl()`). Prefer compile-time `const` instances where possible.

### ISO 3166-1 Standards & Code Formats

- **`code` (ISO 3166-1 Alpha-3)**: Three-letter uppercase code (e.g. `"USA"`, `"MEX"`, `"IRL"`).
- **`codeShort` (ISO 3166-1 Alpha-2)**: Two-letter uppercase code (e.g. `"US"`, `"MX"`, `"IE"`).
- **`codeNumeric` (ISO 3166-1 Numeric-3)**: Three-digit numeric code represented as a string (e.g. `"840"`, `"484"`, `"372"`).

### Lookups & Input Handling

- **Prefer `maybeFrom*` for untrusted input**: Use `maybeFromAnyCode()`, `maybeFromCode()`, `maybeFromCodeShort()`, or `maybeFromCodeNumeric()` when parsing external or user-provided data. These methods return `null` if the code is invalid or unrecognized.
- **Avoid throwing variants for user input**: Methods like `fromCode()`, `fromCodeShort()`, `fromCodeNumeric()`, and `fromAnyCode()` throw when no matching country is found. Only use them when input validity is guaranteed.
- **O(1) lookups**: Access pre-indexed lookup tables using `WorldCountry.map` (keyed by uppercase 3-letter Alpha-3 code) or `WorldCountry.list` (contains all 250 countries: 249 ISO 3166-1 officially assigned countries plus Kosovo).

### Names & Endonyms Structure

- **`name`**: A `CountryName` object. Access `name.common` for the common English name (e.g. `"Mexico"`), `name.official` for the formal official name (e.g. `"United Mexican States"`), or `internationalName` on the country instance for `name.common`.
- **`namesNative`**: List of `CountryName` objects in native languages in sentence case. Multilingual countries have multiple entries (e.g. English and Irish for Ireland), so read the whole list rather than assuming a single entry.

### Linked ISO Entities

- **`currencies`**: `List<FiatCurrency>?` representing currencies used in the country (e.g. `[FiatEur()]`). May be `null` or empty for uninhabited territories.
- **`languages`**: `List<NaturalLanguage>` representing official/spoken languages (e.g. `[LangEng(), LangGle()]`).

### Geographic & Regional Properties

- **`continent`**: Non-nullable `Continent` (e.g. `Europe()`, `Americas()`, `Asia()`).
- **`subregion`**: Nullable `SubRegion?` (e.g. `NorthAmerica()`, `WesternEurope()`), null for 5 entries. This is a **separate hierarchy** from `Continent`, not a narrower continent: `country.continent is NorthAmerica` compiles but is always `false`. Test `subregion` for those, and `continent` only against `Continent` subtypes.
- **`capitalInfo`**: Contains `capital` (`Capital("Dublin")`) and geographic coordinates (`latLng`).
- **`emoji`**: Emoji flag string (e.g. 🇮🇪).
- **`idd`**: Dialing code configuration (`idd.phoneCode()` returns e.g. `"+353"`).
- **`tld`**, **`bordersCodes`**, **`population`**, **`areaMetric`**: Direct country attributes.

### Localization & Companion Skill

- **Retrieve localized names**: Use `country.commonNameFor(const BasicTypedLocale(LangEng()))` or `country.maybeCommonNameFor(...)` to get localized country names directly.
- **Sentence-cased translations**: Localized names return in sentence case, ready for standalone display labels. Pass a formatter if inline, mid-sentence casing is required.
- **Advanced L10N & Tree-Shaking**: `sealed_countries` bundles `l10n_countries` under the hood. For direct batch translation mappers (`CountriesLocaleMapper`), custom translation injection, or compile-time tree-shaking flags (`--dart-define=l10n-<locale>=true`), install the companion skill `l10n-countries-localization` via `dart run skills@ get`. For currencies and languages data, install `sealed-currencies-core` and `sealed-languages-core`.

---

## Examples

### 1. Safe Parsing and Code Lookups

```dart
import 'package:sealed_countries/sealed_countries.dart';

void main() {
  // Safe lookup from untrusted user input (alpha-2, alpha-3, or numeric)
  final country = WorldCountry.maybeFromAnyCode('irl');
  if (country != null) {
    print('Common: ${country.name.common}'); // "Ireland"
    print('Official: ${country.name.official}'); // "Republic of Ireland"
    print('Alpha-2: ${country.codeShort}'); // "IE"
    print('Alpha-3: ${country.code}'); // "IRL"
    print('Numeric: ${country.codeNumeric}'); // "372"
    print('Flag: ${country.emoji}'); // 🇮🇪
  }

  // Lookup by numeric code string
  final mexico = WorldCountry.maybeFromCodeNumeric('484');
  print(mexico?.name.common); // "Mexico"
}
```

### 2. Exhaustive Pattern Matching with Switch Expressions

```dart
import 'package:sealed_countries/sealed_countries.dart';

String getShippingNotice(WorldCountry country) => switch (country) {
  CountryUsa() => 'Domestic express delivery available.',
  CountryCan() => 'Standard cross-border delivery.',
  CountryMex() => 'Regional delivery network.',
  _ => 'International carrier required for ${country.name.common}.',
};
```

### 3. Linked Currencies, Languages, and Geographic Data

```dart
import 'package:sealed_countries/sealed_countries.dart';

void main() {
  // Typed as WorldCountry, the way lookups hand it back.
  const WorldCountry country = CountryMex();
  print('Common name: ${country.name.common}'); // "Mexico"
  print('Official name: ${country.name.official}'); // "United Mexican States"
  print('Capital: ${country.capitalInfo?.capital.name}'); // "Mexico City"
  print('Currency: ${country.currencies?.first.code}'); // "MXN"
  print('Language: ${country.languages.first.name}'); // "Spanish"
  print('Continent: ${country.continent.name}'); // "Americas"
}
```

### 4. Retrieving Localized Country Names

```dart
import 'package:sealed_countries/sealed_countries.dart';

void main() {
  const country = CountryIrl();

  // Localize country name into English
  final englishName = country.commonNameFor(
    const BasicTypedLocale(LangEng()),
    orElse: 'Ireland',
  );

  // Names come back in sentence case, ready for standalone labels.
  print('EN: $englishName'); // "Ireland"
}
```

### 5. Filtering Countries by Properties

```dart
import 'package:sealed_countries/sealed_countries.dart';

void main() {
  // Filter all countries in Europe
  final europeanCountries = WorldCountry.list.where(
    (c) => c.continent is Europe,
  );
  print(europeanCountries.length);

  // Find all countries using USD
  final usdCountries = WorldCountry.list.where(
    (c) => c.currencies?.contains(const FiatUsd()) ?? false,
  );
  print(usdCountries.map((c) => c.codeShort));
}
```
