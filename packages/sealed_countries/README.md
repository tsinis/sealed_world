[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg?flag=sealed_countries)](https://app.codecov.io/github/tsinis/sealed_world/tree/main/packages/sealed_countries)
[![sealed_countries](https://github.com/tsinis/sealed_world/actions/workflows/sealed_countries.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/sealed_countries.yaml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This ISO-driven and pure Dart package provides information about world countries in form of compile-time constant sealed classes. Contains the all 249+1 countries with ISO 3166 codes, their English, native names, emoji flags, capitals, population, postal codes, phone codes, languages, currencies etc.

## Features

**WorldCountry** class provides the following information about countries:

| **Field** | **Required** | **Description** | **Example for CountryIrl** |
|-----------|--------------|-----------------|-----------------------------|
| `name` | Yes | The English name of the country. | `CountryName.international(common: "Ireland", official: "Republic of Ireland")` |
| `namesNative` | Yes | The native names of the country. | `[CountryName(language: LangEng(), official: "Republic of Ireland", common: "Ireland"), CountryName(language: LangGle(), official: "Poblacht na hÉireann", common: "Éire")]` |
| `tld` | Yes | The top level domain names for the country. | `[".ie"]` |
| `code` | Yes | The three-letter ISO 3166-1 Alpha-3 code of the country. | `"IRL"` |
| `codeNumeric` | Yes | The three-digit ISO 3166-1 Numeric code of the country. | `"372"` |
| `codeShort` | Yes | The two-letter ISO 3166-1 Alpha-2 code of the country. | `"IE"` |
| `cioc` | No | The International Olympic Committee code of the country. | `"IRL"` |
| `independent` | Yes | Whether the country is an independent state. | `true` |
| `unMember` | Yes | Whether the country is a member of the United Nations. | `true` |
| `currencies` | Yes | The currencies used in the country. | `[FiatEur()]` |
| `idd` | Yes | The international direct dialing codes for the country. | `Idd(root: 3, suffixes: [53])` |
| `altSpellings` | Yes | The alternate spellings of the country name. | `["IE", "Éire", "Republic of Ireland", "Poblacht na hÉireann"]` |
| `continent` | Yes | The continent where the country is located. | `Europe()` |
| `subregion` | No | The subregion where the country is located. | `NorthernEurope()` |
| `languages` | Yes | The official languages spoken in the country. | `[LangEng(), LangGle()]` |
| `latLng` | Yes | The geographic coordinates of the country. | `LatLng(53, -8)` |
| `landlocked` | Yes | Whether the country is landlocked. | `false` |
| `bordersCodes` | No | The codes of the countries that share borders with this country. | `["GBR"]` |
| `areaMetric` | Yes | The area of the country in square kilometers. | `70273` |
| `demonyms` | Yes | The demonym names for the people of the country. | `[Demonyms(language: LangEng(), female: "Irish", male: "Irish"), Demonyms(language: LangFra(), female: "Irlandaise", male: "Irlandais")]` |
| `emoji` | Yes | The emoji flag for the country. | `🇮🇪` |
| `maps` | Yes | The maps of the country. | `Maps(googleMaps: "hxd1BKxgpchStzQC6", openStreetMaps: "relation/62273")` |
| `population` | Yes | The population of the country. | `4994724` |
| `gini` | No | The Gini coefficient of the country. | `Gini(year: 2017, coefficient: 31.4)` |
| `fifa` | No | The FIFA code of the country. | `"IRL"` |
| `car` | Yes | The car information of the country. | `Car(sign: "IRL", isRightSide: false)` |
| `timezones` | Yes | The time zones of the country. | `["UTC+00:00"]` |
| `capitalInfo` | No | The capital city information of the country. | `CapitalInfo(capital: Capital("Dublin"), latLng: LatLng(53.32, -6.23))` |
| `hasCoatOfArms` | Yes | Whether the country has an official coat of arms. | `true` |
| `postalCode` | Yes | The postal code information of the country. | `PostalCode` with format and regExp |
| `startOfWeek` | Yes | The first day of the week in the country. | `Weekday.monday` |
| `translations` | Yes | The translations of the country name. | List of 25 `CountryName`s in different languages |

Compile time constant list of all countries accessible via `WorldCountry.list` and more over, the **WorldCountry** class provides the following methods:

- `maybeFromValue` - returns a country instance if the value matches the provided value, otherwise returns `null`.
- `fromCode` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-3 code.
- `fromCodeShort` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-2 code.

and (thanks to sealed nature of the class) functional-style like methods: `whenOrNull`, `maybeWhen`, `when`, `map`, `maybeMap`.

## Getting started

To use this package, add `sealed_countries` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  sealed_countries: any
```

Then import the package in your Dart code:

```dart
import 'package:sealed_countries/sealed_countries.dart';
```

## Usage

Use `WorldCountry` class to get information about countries. Either construct a new instance directly or with use of the class factory constructors/method `fromCode`, `fromCodeShort` or from any value that class contains `maybeFromValue`, or select one from the `WorldCountry.list` constant.

```dart
  print(WorldCountry.list.length); // Prints: "250".

  final mexico = WorldCountry.fromCode("MEX");
  print(mexico.name.common); // Prints: "Mexico".

  final europeanCountries = WorldCountry.list.where(
    (country) => country.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.
```

For more usage examples, please see the `/example` folder.

## Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

## References, credits and sources

- [ISO](https://www.iso.org/iso-3166-country-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/List_of_ISO_3166_country_codes)
- [Data Source](https://gitlab.com/restcountries/restcountries)[^1]

[^1]: Translated JSON data to Dart language (following Effective Dart: Style guidelines), added additional data and functionality in Dart classes.
