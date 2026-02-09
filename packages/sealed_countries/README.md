[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Pub points](https://img.shields.io/pub/points/sealed_countries)](https://pub.dev/packages/sealed_countries/score)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits/main/packages/sealed_countries)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/sealed_countries.svg)](https://pub.dev/packages/sealed_countries)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world.svg?type=shield&issueType=security)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world?ref=badge_shield&issueType=security)

This ISO-driven, fully tested and pure Dart package provides information about world countries in the form of compile-time, tree-shakable constant classes with a sealed origin. Contains all 249+1 countries with ISO 3166 codes, their English, native names, emoji flags, capitals, population, postal codes, phone codes, [languages (and scripts)](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages), [currencies](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies), country/currency/language name translations, etc. For Flutter ready widgets, please use [world_countries](https://pub.dev/packages/world_countries) package.

### Features

**WorldCountry** class provides the following information about countries:

| **Field**     | **Required**        | **Description**                                                  | **Example for CountryIrl**                                                                                                                                                   |
| ------------- | ------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| name          | **Yes**             | The English name of the country.                                 | `CountryName`(language: `LangEng`(), common: "Ireland", official: "Republic of Ireland")                                                                                     |
| namesNative   | **Yes<sup>1</sup>** | The native names of the country.                                 | `[CountryName(language: LangEng(), official: "Republic of Ireland", common: "Ireland"), CountryName(language: LangGle(), official: "Poblacht na hÉireann", common: "Éire")]` |
| tld           | **Yes**             | The top-level domain names for the country.                      | `[".ie"]`                                                                                                                                                                    |
| code          | **Yes**             | The three-letter ISO 3166-1 Alpha-3 code of the country.         | "IRL"                                                                                                                                                                        |
| codeNumeric   | **Yes**             | The three-digit ISO 3166-1 Numeric code of the country.          | "372"                                                                                                                                                                        |
| codeShort     | **Yes**             | The two-letter ISO 3166-1 Alpha-2 code of the country.           | "IE"                                                                                                                                                                         |
| cioc          | No                  | The International Olympic Committee code of the country.         | "IRL"                                                                                                                                                                        |
| independent   | **Yes**             | Whether the country is an independent state.                     | true                                                                                                                                                                         |
| unMember      | **Yes**             | Whether the country is a member of the United Nations.           | true                                                                                                                                                                         |
| currencies    | **Yes<sup>1</sup>** | The currencies used in the country.                              | [[FiatEur()](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies#features)]                                                                          |
| idd           | **Yes**             | The international direct dialing codes for the country.          | `Idd`(root: 3, suffixes: `[53]`)                                                                                                                                             |
| altSpellings  | **Yes**             | The alternate spellings of the country name.                     | `["IE", "Éire", "Republic of Ireland", "Poblacht na hÉireann"]`                                                                                                              |
| continent     | **Yes**             | The continent where the country is located.                      | `Europe`()                                                                                                                                                                   |
| subregion     | No                  | The subregion where the country is located.                      | `NorthernEurope`()                                                                                                                                                           |
| languages     | **Yes<sup>1</sup>** | The official languages spoken in the country.                    | [[LangEng()](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages#features), `LangGle`()]                                                              |
| latLng        | **Yes**             | The geographic coordinates of the country.                       | `LatLng`(53, -8)                                                                                                                                                             |
| landlocked    | **Yes**             | Whether the country is landlocked.                               | false                                                                                                                                                                        |
| bordersCodes  | No                  | The codes of the countries that share borders with this country. | `["GBR"]`                                                                                                                                                                    |
| areaMetric    | **Yes**             | The area of the country in square kilometers.                    | 70273                                                                                                                                                                        |
| demonyms      | **Yes<sup>1</sup>** | The demonym names for the people of the country.                 | `[Demonyms(language: LangEng(), female: "Irish", male: "Irish"), Demonyms(language: LangFra(), female: "Irlandaise", male: "Irlandais")]`                                    |
| emoji         | **Yes**             | The emoji flag for the country.                                  | 🇮🇪                                                                                                                                                                           |
| maps          | **Yes**             | The maps of the country.                                         | `Maps`(googleMaps: "hxd1BKxgpchStzQC6", openStreetMaps: "relation/62273")                                                                                                    |
| population    | **Yes**             | The population of the country.                                   | 4994724                                                                                                                                                                      |
| gini          | No                  | The Gini coefficient of the country.                             | `Gini`(year: 2017, coefficient: 31.4)                                                                                                                                        |
| fifa          | No                  | The FIFA code of the country.                                    | "IRL"                                                                                                                                                                        |
| car           | **Yes**             | The car information of the country.                              | `Car`(sign: "IRL", isRightSide: false)                                                                                                                                       |
| timezones     | **Yes**             | The time zones of the country.                                   | `["UTC+00:00"]`                                                                                                                                                              |
| capitalInfo   | No                  | The capital city information of the country.                     | `CapitalInfo`(capital: `Capital`("Dublin"), latLng: `LatLng`(53.32, -6.23))                                                                                                  |
| hasCoatOfArms | **Yes**             | Whether the country has an official coat of arms.                | true                                                                                                                                                                         |
| postalCode    | **Yes**             | The postal code information of the country.                      | `PostalCode` with format and regExp                                                                                                                                          |
| startOfWeek   | **Yes**             | The first day of the week in the country.                        | `Weekday.monday`                                                                                                                                                             |
| regionalBlocs | No                  | The regional blocs of the country.                               | `[BlocEU()]`                                                                                                                                                                 |
| translations  | **Yes<sup>1</sup>** | The translations of the country name.                            | List of **135+** `TranslatedName`s in different languages                                                                                                                    |

Provides a compile-time constant of all countries accessible via `WorldCountry.list` moreover, the **WorldCountry** class provides the following methods/constructors:

- `maybeFromAnyCode` - returns a country instance if the value matches any ISO 3166 code, otherwise returns `null`.
- `fromAnyCode` - returns a country instance if the value matches any ISO 3166 code.
- `fromCode` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-3 code.
- `fromCodeShort` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-2 code.
- `fromCodeNumeric` - returns a country instance if the value matches the provided ISO 3166-1 numeric code.
- `maybeFromCode` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-3 code, otherwise returns `null`.
- `maybeFromCodeShort` - returns a country instance if the value matches the provided ISO 3166-1 Alpha-2 code, otherwise returns `null`.
- `maybeFromCodeNumeric` - returns a country instance if the value matches the provided ISO 3166-1 numeric code, otherwise returns `null`.
- `maybeFromValue` - returns a country instance if the value matches the provided value, otherwise returns `null`.

You can also find many common methods you may know from Dart ecosystem - `toString` overrides, `copyWith`, `toJson`, `compareTo`, etc. Also, a compile-time const, tree-shakable, case-insensitive code `map`s (for O(1)-time code look-ups), `list`, and much more.

> [!TIP]
> Translations: Use `maybeCommonNameFor()` or `commonNameFor()` methods to get translations for specific locale.

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

To get information about countries, use the `WorldCountry` class. Use the class's factory constructors or static methods, or select a country from the `WorldCountry.list` constant.

```dart
  print(WorldCountry.list.length); // Prints: "250".

  final country = WorldCountry.fromCode("MEX");
  print(country.name.common); // Prints: "Mexico".

  final europeanCountries = WorldCountry.list.where(
    (cnt) => cnt.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.

  // Prints German translations of all available regular countries.
  final germanNames = WorldCountry.list.commonNamesMap(
    options: const LocaleMappingOptions(
      mainLocale: BasicTypedLocale(LangDeu()),
    ),
  );

  print(
    """Fully translated to German: ${germanNames.length == WorldCountry.list.length}""",
  ); // Prints: "Fully translated to German: true".
  for (final deuTranslation in germanNames.entries) {
    print("German name of ${deuTranslation.key.name}: ${deuTranslation.value}");
  }
```

> [!TIP]
> Also supports Dart 3.10 dot shorthands:

```dart
print(<WorldCountry>[.chn(), .ind(), .usa(), .bra(), .jpn()].length); // 5.
```

For more usage examples, please see the `/example` folder.

### FAQ

#### How do I get all countries using a specific currency?

- **Quick/simple way (more suitable for a single currency):** `.where`

  ```dart
  final usdCountries = WorldCountry.list.where( // All countries using USD.
    (country) => country.currencies?.contains(const FiatUsd()) ?? false,
  );
  ```

- **Advanced (more suitable for multiple currencies, [sorted by population](https://github.com/tsinis/sealed_world/blob/main/packages/sealed_countries/lib/src/collections/README.currencies.md)):** `.byCountryMap()`

  ```dart
  final map = const [FiatUsd(), FiatEur()].byCountryMap(); // All countries using USD or EUR.
  final allCountries = {for (final list in map.values) ...list};
  ```

#### Why should I use this package over any other country-related package?

- **Sealed classes**: Unlike enums, you can create your own ISO instances, yet unlike open classes, the sealed hierarchy guarantees exhaustive pattern matching and compile-time safety. You get the immutability and type-safety of enums with the extensibility to define custom values — all while maintaining full switch exhaustiveness checking.
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are exceptionally strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has 100% code coverage, with more than 1K (+2K in underlying packages) tests, providing confidence in its reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every non-code generated public member, usually with examples, ensuring clarity and ease of use.
- **Lightweight**: This package keeps **under 500 KB**, ensuring it fits within the pub cache limit. This leads to quick, low-bandwidth downloads and faster caching, minimizing resource impact.
- **Mirrored Repository**: The GitHub repository, including all package tags, is mirrored on [GitLab](https://gitlab.com/tsinis/sealed_world/), providing an alternative access point should GitHub become unavailable.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.

#### Do you have LLM-agents instructions?

Yes, for sure! You can find them under this spoiler:

<details>
<summary>LLM-agent instructions</summary>

### LLM-agent instructions for sealed_countries

Optimized for high-level models from **Google**, **Anthropic**, and **OpenAI** for use via **GitHub Copilot**, **Claude Code** or **Cursor**.

#### Context

`sealed_countries` provides ISO 3166-1 Alpha-2, Alpha-3, and Numeric data (flags, capitals, population, etc.) in a type-safe sealed class hierarchy.

#### Installation

Add to `pubspec.yaml`:

```yaml
dependencies:
  sealed_countries: any
```

#### Core Data Structures

- **`WorldCountry`**: Main class. Access via `WorldCountry.list` or factories: `fromCode("IRL")`, `fromCodeShort("IE")`, `fromCodeNumeric("372")`.

#### Common Operations

- **Geographic**: Access `latLng`, `continent`, `subregion`, and `bordersCodes`.
- **Attributes**: `population`, `areaMetric`, `emoji` (flag), `idd` (phone codes), `tld`.
- **Linked Data**: Access `currencies` (list of `FiatCurrency`) and `languages` (list of `NaturalLanguage`).

#### Integration Patterns

- **Dot shorthands**: `.irl()`, `.mex()`, `.usa()`.
- **Search**: `WorldCountry.maybeFromAnyCode(code)`.
- **Localization**: Translations are built-in. Use `country.commonNameFor(BasicLocale(LangEng()))` for localized names. For advanced L10N features, consider the `l10n_countries` package.

#### Resource Navigation

- **Currencies**: For detailed currency formatting/subunits, refer to `sealed_currencies` [documentation](https://github.com/tsinis/sealed_world/blob/main/packages/sealed_currencies/README.md).
- **Languages**: For detailed language/script info, refer to `sealed_languages` [documentation](https://github.com/tsinis/sealed_world/blob/main/packages/sealed_languages/README.md).

</details>

### Additional information

If you like this package, please give it a star or like. For more information on using this package, check out the API documentation. **PRs or ideas are always welcome**.
If you have any issues or suggestions for the package, please file them in the GitHub repository.

### References, credits and sources

- [ISO](https://www.iso.org/iso-3166-country-codes.html)
- [Wikipedia](https://wikipedia.org/wiki/List_of_ISO_3166_country_codes)
- [Data Source](https://gitlab.com/restcountries/restcountries)<sup>2</sup>
- [Project Roadmap](https://github.com/users/tsinis/projects/1)

<sup>1</sup> For the standard ISO classes specified in the relevant ISO standard.

<sup>2</sup> Translated JSON data to Dart language (following Effective Dart: Style guidelines), added additional data and functionality in Dart classes.
