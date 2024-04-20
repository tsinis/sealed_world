[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![sealed_countries](https://github.com/tsinis/sealed_world/actions/workflows/sealed_countries.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/sealed_countries.yaml)
![Pub points](https://img.shields.io/pub/points/sealed_countries)
![Last commit](https://img.shields.io/github/last-commit/badges/shields/master)
![Pub popularity](https://img.shields.io/pub/popularity/sealed_countries)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/sealed_countries.svg)](https://pub.dev/packages/sealed_countries)

This ISO-driven, fully tested and pure Dart package provides information about world countries in form of compile-time, tree-shakable constant sealed classes. Contains the all 249+1 countries with ISO 3166 codes, their English, native names, emoji flags, capitals, population, postal codes, phone codes, [languages (and scripts)](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages), [currencies](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies), country/currency/language name translations, etc. For Flutter ready widgets, please use [world_countries](https://pub.dev/packages/world_countries) package.

### Features

**WorldCountry** class provides the following information about countries:

| **Field**     | **Required** | **Description**                                                  | **Example for CountryIrl**                                                                                                                                                         |
| ------------- | ------------ | ---------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| name          | Yes          | The English name of the country.                                 | `CountryName`(language: `LangEng`(), common: "Ireland", official: "Republic of Ireland")                                                                                           |
| namesNative   | Yes          | The native names of the country.                                 | [`CountryName`(language: `LangEng`(), official: "Republic of Ireland", common: "Ireland"), `CountryName`(language: `LangGle`(), official: "Poblacht na hÉireann", common: "Éire")] |
| tld           | Yes          | The top level domain names for the country.                      | [".ie"]                                                                                                                                                                            |
| code          | Yes          | The three-letter ISO 3166-1 Alpha-3 code of the country.         | "IRL"                                                                                                                                                                              |
| codeNumeric   | Yes          | The three-digit ISO 3166-1 Numeric code of the country.          | "372"                                                                                                                                                                              |
| codeShort     | Yes          | The two-letter ISO 3166-1 Alpha-2 code of the country.           | "IE"                                                                                                                                                                               |
| cioc          | No           | The International Olympic Committee code of the country.         | "IRL"                                                                                                                                                                              |
| independent   | Yes          | Whether the country is an independent state.                     | true                                                                                                                                                                               |
| unMember      | Yes          | Whether the country is a member of the United Nations.           | true                                                                                                                                                                               |
| currencies    | Yes          | The currencies used in the country.                              | [[FiatEur()](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies#features)]                                                                                |
| idd           | Yes          | The international direct dialing codes for the country.          | `Idd`(root: 3, suffixes: [53])                                                                                                                                                     |
| altSpellings  | Yes          | The alternate spellings of the country name.                     | ["IE", "Éire", "Republic of Ireland", "Poblacht na hÉireann"]                                                                                                                      |
| continent     | Yes          | The continent where the country is located.                      | `Europe`()                                                                                                                                                                         |
| subregion     | No           | The subregion where the country is located.                      | `NorthernEurope`()                                                                                                                                                                 |
| languages     | Yes          | The official languages spoken in the country.                    | [[LangEng()](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages#features), `LangGle`()]                                                                    |
| latLng        | Yes          | The geographic coordinates of the country.                       | `LatLng`(53, -8)                                                                                                                                                                   |
| landlocked    | Yes          | Whether the country is landlocked.                               | false                                                                                                                                                                              |
| bordersCodes  | No           | The codes of the countries that share borders with this country. | ["GBR"]                                                                                                                                                                            |
| areaMetric    | Yes          | The area of the country in square kilometers.                    | 70273                                                                                                                                                                              |
| demonyms      | Yes          | The demonym names for the people of the country.                 | [`Demonyms`(language: `LangEng`(), female: "Irish", male: "Irish"), `Demonyms`(language: `LangFra()`, female: "Irlandaise", male: "Irlandais")]                                    |
| emoji         | Yes          | The emoji flag for the country.                                  | 🇮🇪                                                                                                                                                                                 |
| maps          | Yes          | The maps of the country.                                         | `Maps`(googleMaps: "hxd1BKxgpchStzQC6", openStreetMaps: "relation/62273")                                                                                                          |
| population    | Yes          | The population of the country.                                   | 4994724                                                                                                                                                                            |
| gini          | No           | The Gini coefficient of the country.                             | `Gini`(year: 2017, coefficient: 31.4)                                                                                                                                              |
| fifa          | No           | The FIFA code of the country.                                    | "IRL"                                                                                                                                                                              |
| car           | Yes          | The car information of the country.                              | `Car`(sign: "IRL", isRightSide: false)                                                                                                                                             |
| timezones     | Yes          | The time zones of the country.                                   | ["UTC+00:00"]                                                                                                                                                                      |
| capitalInfo   | No           | The capital city information of the country.                     | `CapitalInfo`(capital: `Capital`("Dublin"), latLng: `LatLng`(53.32, -6.23))                                                                                                        |
| hasCoatOfArms | Yes          | Whether the country has an official coat of arms.                | true                                                                                                                                                                               |
| postalCode    | Yes          | The postal code information of the country.                      | `PostalCode` with format and regExp                                                                                                                                                |
| startOfWeek   | Yes          | The first day of the week in the country.                        | `Weekday.monday`                                                                                                                                                                   |
| regionalBlocs | No           | The regional blocs of the country.                               | [`BlocEU`()]                                                                                                                                                                       |
| translations  | Yes          | The translations of the country name.                            | List of **135+** `TranslatedName`s in different languages                                                                                                                          |

Compile time constant list of all countries accessible via `WorldCountry.list` and more over, the **WorldCountry** class provides the following methods/constructors:

- `permissive` - allows the creation of custom class instances that are not fully compatible with the ISO standard.
- `maybeFromAnyCode` - returns a country instance if the value matches any ISO 3166 code, otherwise returns `null`.
- `fromAnyCode` - returns a country instance if the value matches any ISO 4217 code.
- `maybeFromValue` - returns a country instance if the value matches the provided value, otherwise returns `null`.
- `fromCode` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-3 code.
- `fromCodeShort` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-2 code.
- `fromCodeNumeric` - returns a country instance if the value matches the provided ISO 3166-1 numeric code.
- `maybeFromCode` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-3 code, otherwise returns `null`.
- `maybeFromCodeShort` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-2 code, otherwise returns `null`.
- `maybeFromCodeNumeric` - returns a country instance if the value matches the provided ISO 3166-1 numeric code, otherwise returns `null`.

and (thanks to sealed nature of the class) functional-style like methods: `whenOrNull`, `maybeWhen`, `when`, `map`, `maybeMap` and `is*` boolean getters. You can also find a lot of common method you may know from Dart ecosystem - `toString` overrides, `copyWith`, `toJson`, etc. Also a compile time const, tree-shakable, case case insensitive code `map`s (for a 0(1) access time code mapping), `list` and much more.

> Translations: Use `maybeTranslation()` or `translation()` methods to get translations for specific locale.

### Getting started

To use this package, add `sealed_countries` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  sealed_countries: any
```

Then import the package in your Dart code:

```dart
import 'package:sealed_countries/sealed_countries.dart';
```

### Usage

Use `WorldCountry` class to get information about countries. Either construct a new instance directly or with use of the class factory constructors/static methods, or select one from the `WorldCountry.list` constant.

```dart
  print(WorldCountry.list.length); // Prints: "250".

  final country = WorldCountry.fromCode("MEX");
  print(country.name.common); // Prints: "Mexico".
  print(country.isMex); // Prints: true.

  final europeanCountries = WorldCountry.list.where(
    (country) => country.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.

  for (final country in WorldCountry.list) {
  print(
    """${country.internationalName} translated to Slovak language: ${country.translation(BasicLocale(LangSlk())).name}""",
  );
}
```

For more usage examples, please see the `/example` folder.

### FAQ

#### Why should I use this package over any other country-related package?

- **Sealed classes**: This package provides data in the form of sealed classes, allowing you to create your own instances and work with them as with existing ones (for example this is not possible with enums or regular classes (without losing it's sealed nature), you can also override existing or add new data, etc.).
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are very strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has 100% code coverage, with more than 1021 (+2117 in underling packages) tests, providing confidence in its reliability and stability.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT License**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

### Additional information

If you like this package, please give it a star or like. For more information on using this package, check out the API documentation. **PRs or ideas are always welcome**.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-3166-country-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/List_of_ISO_3166_country_codes)
- [Data Source](https://gitlab.com/restcountries/restcountries)[^1]
- [Primary Translations Source](https://github.com/umpirsky/country-list)
- [Secondary Translations Source](https://github.com/symfony/intl)
- [Project Roadmap](https://github.com/users/tsinis/projects/1)

[^1]: Translated JSON data to Dart language (following Effective Dart: Style guidelines), added additional data and functionality in Dart classes.
