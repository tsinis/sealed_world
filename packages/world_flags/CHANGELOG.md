## 2.7.0

NEW FEATURES

- Added Guernsey flag painter (`GgyPainter`) and export, so GGY is no longer a "simplified" flag.

REFACTOR

- Made `Shape` implementations `final`; added deprecations for legacy helpers (to be replaced with modern `switch` expressions).
- Selectively disable anti-aliasing for axis-aligned rects (e.g., BLR bg, SAU sabre) to avoid blur; keep AA for diagonals.

FIX

- Oman flag default aspect ratio corrected (from 2 to 7/4).
- Fixed white rectangle position in Belarusian flag (on smaller sizes).
- `CountryName`'s short flag (`true`) in `toString()` override returns `common` name, same way, as in parent's (`TranslatedName` class) override.

CHORE

- The Dart SDK was bumped to v3.9.2.

## 2.6.0

FIX

- Updated country [data](https://github.com/tsinis/sealed_world/pull/361/files) with recent population, Gini, and capital information.
- Fixed demonyms, borders, and native names for select countries.
- Corrected Welsh official country name for Curaçao.
- Corrected Korean localization for British Indian Ocean Territory, Dominica, Mongolia, Wallis and Futuna and South Georgia.
- Corrected `subunitToUnit` value for Hungarian Forint.

NEW FEATURES

- Flag anti-aliasing is now smarter - it's defined on element painters level, so rectangle elements are no longer anti-aliased.
- Added `copyWith` extension for `IsoFlag`, also exposed flag data maps `map` and `alternativeMap` via public getters for easier access.
- Added a new property `FlagElementsType? baseElementType` to flag data `FlagProperties` indicating the base geometric or symbolic element of each flag, enhancing metadata and classification.
- Also added an `isSimplified` property to flag definitions, allowing users to distinguish between simplified and fully detailed flags.
- Updated language metadata to better reflect writing systems and script directionality for [many](https://github.com/tsinis/sealed_world/pull/360/files) languages.

REFACTOR

- Deprecated ineffective anti-aliasing override `flagAntiAliasOverride` properties and improved anti-aliasing handling in flag rendering.
- Optimized flag painting performance for stripes and stars, reducing redundant object creation and improving rendering efficiency.
- Deprecated `fullFlags` list in favor of new `isSimplified` property.
- Marked certain currencies as [deprecated](https://github.com/tsinis/sealed_world/pull/361/files) and updated related comments.
- Corrected country and language associations in documentation for currencies and languages.
- Standardized code normalization using new ISO code extension types, replacing older string and object extension methods.
- Deprecated legacy constant lists in favor of centralized static lists for ISO classes.
- Deprecated functional-style pattern matching methods and boolean type-check getters across ISO/sealed models. Users are advised to use switch expressions or direct equality/type checks instead.
- Deprecated extensions providing `is*` getters in favor of direct type checks.
- Standardized method return types for map serialization to use stronger, standard Dart Map types.
- Simplified code by removing redundant comments and improving null-aware syntax usage.

CHORE

- The Dart SDK was bumped to v3.8.1.
- Refined static analysis and linting rules, including enabling and disabling specific Dart Code Metrics rules.

DOCUMENTATION

- Improved code and API documentation for clarity and accuracy.
- Improved formatting, fixed typos, and updated usage examples in README.

TEST

- Improved test handling for platform-specific golden image comparisons by skipping only the assertion step on unsupported platforms.
- Removed outdated test files related to deprecated APIs.
- Added or updated test cases to cover new behaviors and deprecation handling.

## 2.5.0

FIX

- Adjust height and width factors for Afghanistan flag properties and update `ShahadaPainter` translation logic.

NEW FEATURES

- Added new flag definitions for international and constructed languages (e.g., European Union, Esperanto, Ido, Interlingue, Interlingua, Volapük).
- Introduce `IsoFlag` widget and `DecoratedFlagWidget` base class.
- Unified flag widget interfaces to support foreground child widgets, explicit sizing, and improved decoration options.
- Added `height` and `width` parameters to the `BasicFlag`.
- Added new collections and extensions for mapping currencies and languages to countries (via `byCountryMap` method), including support for unofficial and constructed languages.
- Introduced methods to prioritize and customize country associations for languages and currencies.
- Improved diagnostics and theming for flag widgets, including support for custom overlay widgets.
- Added new extension methods and interfaces for easier flag and country data access.

CHORE

- The Dart SDK was bumped to v3.8.1.
- Deprecated outdated Afghanistan flag and updated references to its alternative.
- Deprecated `foregroundWidget` parameter in flag widgets, in favor of `child` one.
- Update German and English translations (for multiple countries).
- Updated official `languages` lists for Ethiopia and Iraq to reflect additional recognized languages.

## 2.4.1

CHORE

- Flag of Syria update.

## 2.4.0

NEW FEATURES

- Improve Iraq flag painer aspect ratio change handling.
- Enhance ISO standardized classes with `Comparable` interface and update bool getters.
- Add regional code alias and new ISO standardized extensions for type checking.
- Add official country translations for the [Indonesian language](https://gitlab.com/restcountries/restcountries/-/merge_requests/76).

CHORE

- The Dart SDK was bumped to v3.8.0.
- Code has been formatted with the new Dart formatter.
- Correct latitude values for several [countries](https://gitlab.com/restcountries/restcountries/-/merge_requests/78).
- Update currency for South Georgia to [GBP](https://gitlab.com/restcountries/restcountries/-/merge_requests/79).
- Update symbol for Sudanese pound to "ج.س".

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
