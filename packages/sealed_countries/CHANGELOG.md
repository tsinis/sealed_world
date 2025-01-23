## 2.0.0

🎉 Second anniversary and new major release!

NEW FEATURES

- Introduced new methods for working with common names and common name maps: `commonNamesMap` on ISO collections and `commonNameFor`/`maybeCommonNameFor` on ISO objects. These methods are significantly faster than the old `translations` - related methods because they work directly with locale-specific maps instead of iterating through all translations of each ISO object.
- The `translations` getter is now a computed field. This means it will only generate the translations when they are requested, rather than storing them all in memory. It's recommended to cache the results of the getter to avoid redundant calculations. Because of that - `translation` and `maybeTranslation` methods are no longer recommended for retriving localization data.
- The `commonNamesCacheMap` is deprecated because it relies on the memory-intensive `translations` getter.
- New localization delegates on `IsoTranslated` objects simplify complex queries for object localizations.
- Bool getters on `IsoStandardized` objects can now be applied to null values. For example, `maybeIso.isRus` will return `false` if `maybeIso` is null, without the need for additional null-checks.

FIX

- Changed official name for [Portugal](https://gitlab.com/restcountries/restcountries/-/merge_requests/77): "República português" > "República Portuguesa".
- Change the capital of Indonesia for [Nusantara](https://gitlab.com/restcountries/restcountries/-/merge_requests/75): "Jakarta" > "Nusantara".

BREAKING CHANGES

- The package now requires Dart v3.6.0 or higher.
- The `IsoTranslated<T, N, L>` class now uses three generic types instead of two. If you used this class directly in your code, simply add the additional generic `<L extends BasicLocale>` to your reference.
- The default `toString()` implementation of `BasicLocale` now uses Flutter's `Locale`-like output format. You can still access the old output by setting the `short` flag to `false`.
- The `sealed_country_translations` library is deprecated. Migrate to the [l10n_countries](https://pub.dev/packages/l10n_countries) package or use `l10n` getter in ISO objects that provides the same data without holding all translations in memory. This sub-library and its content (except for supported locales lists - they will be moved to the main library) will be removed in the next package version.

## 1.5.1

NEW FEATURES

- Updated postal code pattern a format for Paraguay.
- Updated International Olympic Committee (IOC) country code for Bahrain.
- Improvements of `toString()` method implementations in models and addressing new lints + DCM reports.
- Added "polski" to the [Polish](https://github.com/tsinis/sealed_world/issues/221) language `namesNative` array.

## 1.5.0

> This is the last minor version update with significant changes for some time. The next steps will be patches at most. Currently working on v2.0.0 which will bring new data and a big feature there, very likely without breaking the existing API.

NEW FEATURES

- 🎉 All translations in the eco-system packages now support all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales.
- 🦾 Countries translations now also support all `GlobalMaterialLocalization` + `GlobalCupertinoLocalizations` locales.
- The `locale` parameter in the `maybeTranslation` method is now nullable.
- The `permissive` constructors are now even more permissive, only `name` and `code` parameters remain required.
- Changed Vatican city `unMember` field to `false` and fix Cape Verde coordinates [Link](https://gitlab.com/restcountries/restcountries/-/merge_requests/70)

## 1.4.0

NEW FEATURES

- 🦾 Language translations now also support all `GlobalMaterialLocalization` + `GlobalCupertinoLocalizations` locales.
- Added new `internationalName` getter in `IsoStandardized` interface, representing the international name of the ISO object.
- Added new `UpperCaseMap` class, that `UpperCaseIsoMap` extends, a simple version of `UpperCaseIsoMap` without key length checks and `IsoStandardized` values requirement.
- The `map` in the `RegionalBloc` is now `UpperCaseMap` (with all it's benefits).
- Added new `maybeFromAcronym` factory method in the `RegionalBloc`.
- Added new `BasicLocale` class, that `TranslatedName` extends. Representing a type-safe world locale (language, country/region code and script).
- Added new `commonNamesCacheMap` method for all ISO based sealed classes collections, which allows to create a cache map of common names translations for the given `BasicLocale`.

BREAKING CHANGES

Because of the `BasicLocale` changes (described above), `translation()` and `maybeTranslation()` methods on the `Translated` classes now require `BasicLocale` input. If you are not using those methods directly, then you don't need to change anything, otherwise you will need to do small adjustment - wrap the content of those methods with a `BasicLocale`.

Before:

```dart
print(iso?.maybeTranslation(LangPor()));
```

After:

```dart
print(iso?.maybeTranslation(BasicLocale(LangPor())));
```

Or just:

1. Enable **Regular Expressions** in your IDE's **Find and Replace** panel.
2. In the **Find** field, enter the regex: `(translation\()(.*)(\))`
3. In the **Replace** field, enter: `$1BasicLocale($2)$3`
4. Execute the replace operation.

## 1.3.1

NEW FEATURES

- Fix thousands separator for [CHF](https://github.com/RubyMoney/money/pull/1072).
- `codeOther` is no longer nullable (in all `IsoStandardized` classes).
- Added new compile time constant and case-insensitive code maps (`UpperCaseIsoMap`s) in every ISO class (accessible as static constants via `.map`, `.codeMap`, `.codeNumericMap`, etc.).
- Factory constructors and methods now using those maps if no (optional) array is provided there.
- Factory constructors and methods in `IsoStandardized` classes now allow non-String inputs - any `Object`, for example you can now use `StringBuffer` or `Enum` instances directly:

```dart
 enum IsoEnum {de, fr, ar} // On .fromCode(IsoEnum.de) call it will use "DE" input.
```

or you can basically use any custom class with `toString()` override:

```dart
class CustomIsoCodeClass {
 const CustomIsoCodeClass({String code = '123', this.foo}) : _code = code;
 final String _code;
 final Foo? foo;

 @override
 String toString() => _code; // Has to override toString() with ISO value.
}

// On .fromAnyCode(CustomIsoCodeClass(code: ' 321 ')) call it will use "321" input.
```

REFACTOR

- Refactored asserts in `maybeMapIsoCode` method.
- Fixed typos in CHANGELOG and README.

## 1.2.0

NEW FEATURES

- Added new static `maybeFrom*` methods and refactored old ones. They are also now accept any `Object?` input instead of just `String?`.
- Added new and refactored old tests with a performance in mind.
- Added new `firstIsoWhere*` extensions on ISO iterables.
- Added `is*` boolean getters for example:

```dart
if (isoObject.isFra) return _onFrance();
```

is more readable and shorter equivalent of this check:

```dart
if (isoObject == const CountryFra()) return _onFrance();
```

## 1.1.0

NEW FEATURES

- Added new constructor called `permissive` - which allow the creation of custom class instances that are not fully compatible with the ISO standard.
- `Translated` class is now sealed - which means you can now directly compare instances of different ISO classes directly (for example in switch statements).

## 1.0.0

🎉 First anniversary and first stable release!

NEW FEATURES

- Added new getter for `TranslatedName` name called `common`, which might be useful in some cases when `name` is being used by a parent class.
- Added a lot of translations from the Symfony.
- Currencies translations now support all GlobalMaterialLocalizations and GlobalCupertinoLocalizations locales.
- Updated LICENSE.

BREAKING CHANGES

- Removed code marked as `Deprecated` in previous releases.
- Replaced old `FiatCurrency.list` with a new `FiatCurrency.listExtended`.
- Removed `FiatCurrency.regularList` (please use `FiatCurrency.list` instead).
- Marked Croatian Kuna as `Deprecated` (currencies).

## 0.9.0

NEW FEATURES

- Added new interface `IsoTranslated` which combines `Translated` and `IsoStandardized`interfaces.
- Added `standard*` static constants in the `WorldCountry` class referencing different names of the ISO 3166-1 standard.
- Added `standard*` static constants in the `FiatCurrency` class referencing different names of the ISO 4217 standard.
- Improved documentation in README, added FAQ.

## 0.8.0

NEW FEATURES

- Added new factories to `WorldCountry` - `fromCodeNumeric` which returns instance by it's numeric code and `fromAnyCode`, which do the length and type checks and redirects to other `fromCode\*` constructors
- Added new static method to `WorldCountry` - `maybeFromAnyCode`, which works same way as `fromAnyCode`, but doesn't throws `StateErrors` if no currency object is found.
- Added `maybeMapIsoCode` method to `String` extensions, which is used under the hood of `(maybe)fromAnyCode`.

REFACTOR

- Named classes now has boolean flag (`short`, defaults to `true`).
- `TranslatedName` class by default returns `.name` value on `toString()`.
- Refactored dollar symbols in `toString()` methods.

## 0.7.0

NEW FEATURES

- `WorldCountry` class now contains way more translations of language name to other languages (79 translations for each language minimum).
- Refactored factory constructors - there is an optional parameter to provide custom list.
- Added `regularList` getter for the list of regular currencies (excludes 10 currencies from the `specialPurposeList`).
- `FiatCurrency` class now contains translations of language name to other languages (79 translations for each language minimum).
- Those translations are also accessible from the `translation` and `maybeTranslation` methods.
- Added `TranslatedName` class for the `translations`.
- Implement new abstract interfaces for currencies: `Named` and `Translated`.
- Added a new sealed class called `Script`, based on the ISO 15924 standard.
- The `NaturalLanguage` class now contains information about scripts (writing systems) and translations of the language name to other languages.

FIX

- Fixed several English currency names.

## 0.6.0

NEW FEATURES

- Added `copyWith`, `toJson` etc. to the `WorldCountry`, `FiatCurrency`, `NaturalLanguage` classes.
- Added copyWith, toJson etc. to all country-related sub-classes.
- Added new interfaces (`IsoStandardized`, `JsonEncodable`) and typedef (`JsonMap`) to the model.
- Refactoring in existing functional methods (sorting params to match list sorting).
- Translations are now `List<TranslatedName>` instead of `List<CountryName>`, however `CountryName` is just an extension on top of `TranslatedName` (you can reference to name instead of `common` and `fullName` instead of official). There will be way more translations provided in upcoming version 0.7.0.
- Renaming of extensions to follow the eco-system naming pattern.

## 0.5.0

- Factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs.
- Fixing old ignores and new linter rules.
- Updates in `dev_dependencies`.
- Added new data sealed classes related to world blocs.
- Regional blocs are now part of the world country data.
- Added regional blocs in the example

FIX

- Zimbabwean Dollar (ZWL) is now properly placed as last item in currencies list.
- Timezones for the Netherlands.

BREAKING CHANGES

- `WorldCountry.list` is now sorted alphabetically by the (3 letter) `code`.

## 0.2.2

REFACTOR

- Updates in `dev_dependencies`.

## 0.2.1

DOCUMENTATION

- Provided structure screenshot.

## 0.2.0

TEST

- Increase code coverage to 100%.

## 0.1.0

DOCUMENTATION

- Provided code coverage links and badge.

## 0.0.1

- Initial release.
