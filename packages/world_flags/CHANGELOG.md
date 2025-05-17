## 2.4.0

NEW FEATURES

- Enhance ISO standardized classes with `Comparable` interface and update bool getters.
- Add regional code alias and new ISO standardized extensions for type checking.
- Add official country translations for the [Indonesian language](https://gitlab.com/restcountries/restcountries/-/merge_requests/76).
- Update symbol for Sudanese pound to "ج.س".

CHORE

- The Dart SDK was bumped to v3.8.0.
- Code has been formatted with the new Dart formatter.
- Correct latitude values for several [countries](https://gitlab.com/restcountries/restcountries/-/merge_requests/78).
- Update currency for South Georgia to [GBP](https://gitlab.com/restcountries/restcountries/-/merge_requests/79).

REFACTOR

- Make copy-with extensions generic for ISO standardized classes.

DOCUMENTATION

- Improved documentation in README.
- Update dartdoc in ISO standardized classes instances to use backticks.

TEST

- Add tests for comparable boolean getters in ISO standardized classes.
- Add unit tests for regional code and ISO standardized extensions.

## 2.3.0

NEW FEATURES

- Added the `regionalCode` getter to the `BasicTypedLocale` to provide a convenient alias for the `countryCode` property, improving consistency when working with regional locales.

DOCUMENTATION

- Update dartdoc documentation for countries to use backticks for ISO code formatting.

REFACTOR

- Replaced text-based flag rendering with vector path drawing for Iraq, Afghanistan, Saudi Arabia and U.S. Virgin Islands flags, improving rendering consistency on all platforms.
- Deprecated `flagTextStyleOverride` getter and setter (visible for testing) as text-based painters were removed.

## 2.2.0

This is maintenance release without significant changes for the users, that aims to improve DevEx when working with flags in DevTools.

NEW FEATURES

- To enhance debugging, all widgets within this package now override `debugFillProperties`, providing detailed flag property information, including values and rationales. Crucially, this allows you to visualize emoji flags directly in dev tools, replacing generic widget names.

CHORE

- Dart SDK bumped to v3.7.0.
- Code has been formatted with the new Dart formatter.
- Example app runners update.

## 2.1.0

REFACTOR

- Nullable `maybeCommonNameFor` method now accepts nullable `mainLocale` parameter - if `null` is provided, `null` will be returned.

## 2.0.1

REFACTOR

- Improved generics handling in localization methods.
- Update and use stable L10N packages.

DOCUMENTATION

- Improved documentation and example.
- Fixed typos in the README.

## 2.0.0

🎉 Second anniversary and new major release!

NEW FEATURES

- Introduced new methods for working with common names and common name maps: `commonNamesMap` on ISO collections and `commonNameFor`/`maybeCommonNameFor` on ISO objects. These methods are significantly faster than the old `translations` - related methods because they work directly with locale-specific maps instead of iterating through all translations of each ISO object.
- The `translations` getter is now a computed field. This means it will only generate the translations when they are requested, rather than storing them all in memory. It's recommended to cache the results of the getter to avoid redundant calculations. Because of that - `translation` and `maybeTranslation` methods are no longer recommended for retrieving localization data.
- The `commonNamesCacheMap` is deprecated because it relies on the memory-intensive `translations` getter.
- New localization delegates on `IsoTranslated` objects simplify complex queries for object localizations.
- Bool getters on `IsoStandardized` objects can now be applied to null values. For example, `maybeIso.isRus` will return `false` if `maybeIso` is null, without the need for additional null-checks.

FIX

- Replaced deprecated `Color` methods `.withOpacity` with new `.withAlpha`
- Changed official name for [Portugal](https://gitlab.com/restcountries/restcountries/-/merge_requests/77): "República português" > "República Portuguesa".
- Change the capital of Indonesia for [Nusantara](https://gitlab.com/restcountries/restcountries/-/merge_requests/75): "Jakarta" > "Nusantara".

BREAKING CHANGES

- The package now requires Flutter v3.27.1 or higher.
- The `IsoTranslated<T, N, L>` class now uses three generic types instead of two. If you used this class directly in your code, simply add the additional generic `<L extends BasicLocale>` to your reference.
- The default `toString()` implementation of `BasicLocale` now uses Flutter's `Locale`-like output format. You can still access the old output by setting the `short` flag to `false`.
- The `sealed_country_translations` library is removed. Migrate to the [l10n_countries](https://pub.dev/packages/l10n_countries) package or use `l10n` getter in ISO objects that provides the same data without holding all translations in memory. This sub-library and its content (except for supported locales lists - they will be moved to the main library) will be removed in the next major package version.
- Country translation methods requires `BasicTypedLocale` instead of `BasicLocale`, if you didn't used country value - this change will not affect you, otherwise please change from:

```dart
BasicLocale(*, countryCode: "US");
```

to:

```dart
BasicTypedLocale(*, regionalCode: "US"); // or BasicTypedLocale(*, country: CountryUsa());
```

## 1.1.1

NEW FEATURES

- Updated the postal code pattern format for Paraguay.
- Updated International Olympic Committee (IOC) country code for Bahrain.
- Improvements of `toString()` method implementations in models and addressing new lints + DCM reports.
- Added "polski" to the [Polish](https://github.com/tsinis/sealed_world/issues/221) language's `namesNative` array.

## 1.1.0

NEW FEATURES

- Added `FlagExtension` on `WorldCountry` to provide flag-related properties and colors:
  - `flagStripeColors`: Retrieves the stripe colors of the flag from `FlagProperties`.
  - `flagElementsColors`: Retrieves the element colors of the flag from `FlagProperties`.
  - `flagColors`: Combines `flagStripeColors` and `flagElementsColors` into a single list of colors.
  - `flagProperties`: Retrieves the `FlagProperties` associated with country (from the default `WorldCountry.list`).

## 1.0.0

🎉 First stable release!

NEW FEATURES

- `CountryFlag` now offers `alternativeMap` parameter that you can use to provide alternative look of the country flag. By default it contains updated Afghanistan flag (with official design from year 2021) and alternative French Guiana flags.

REFACTOR

- New asserts in the constructors and optimizations in several country flag painters.

TESTS

- Added tests for new asserts and update goldens with arabic fonts.

## 0.8.0

NEW FEATURES

- `CountryFlag` now have non-required child property.

DOCUMENTATION

- Fully document all the public members of the package.

## 0.7.0

TESTS

- Added unit, widget and golden tests for the package with code coverage around 100%.
- Small refactoring related to the linter rules.

## 0.6.0

NEW FEATURES

- Two new properties in the `FlagThemeData` - width and height. Those will be also used in the `CountryFlag` and in aspect ratio calculation (if no `aspectRatio` is provided) if specified.

## 0.5.0

NEW FEATURES

- Updated README and example.
- Updated some simplified world country flags and also a `fullFlags` list.

New full flags:

- North Macedonia (MKD)
- Barbados (BRB)
- Eritrea (ERI)
- Papua New Guinea (PNG)
- Slovakia (SVK)
- Tajikistan (TJK)

Updated simplified flags:

- Brazil (BRA)
- Malta (MLT)
- Albania (ALB)
- Belarus (BLR)
- Spain (ESP)
- Croatia (HRV)
- Iran (IRN)
- Kenya (KEN)
- Cambodia (KHM)
- Lebanon (LBN)
- Liechtenstein (LIE)
- Lesotho (LSO)
- Montenegro (MNE)
- Portugal (PRT)
- San Marino (SMR)
- Serbia (SRB)
- Slovenia (SVN)
- Turkmenistan (TKM)
- Uganda (UGA)
- Vatican City (VAT)
- Vanuatu (VUT)
- Zambia (ZMB)

## 0.1.0

NEW FEATURES

- Provided all 250 small and simplified world country flags, but at the same time 2/3 of these flags can be used as full-dimensional flags (`fullFlags` list).

## 0.0.1

NEW FEATURES

- Provided 225 out of all 250 small and simplified world country flags.

## 0.0.0

- Initial release.
