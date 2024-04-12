## 1.4.0

NEW FEATURES

- 🦾 Language translations now also support all `GlobalMaterialLocalization` + `GlobalCupertinoLocalizations` locales.
- Added new `internationalName` getter in `IsoStandardized` interface, representing the international name of the ISO object.
- Added new `UpperCaseMap` class, that `UpperCaseIsoMap` extends, a simple version of `UpperCaseIsoMap` without key length checks and `IsoStandardized` values requirement.
- The `map` in the `RegionalBloc` is now `UpperCaseMap` (with all it's benefits).
- Added new `fromAcronym` factory method in the `RegionalBloc`.
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
- Added `standard*` static constants in WorldCountry class referencing different names of the ISO 3166-1 standard.
- Improved documentation in README, added FAQ.

## 0.8.0

NEW FEATURES

- Added new factories to WorldCountry - fromCodeNumeric which returns instance by it's numeric code and fromAnyCode, which do the length and type checks and redirects to other fromCode\* constructors
- Added new static method to WorldCountry - maybeFromAnyCode, which works same way as fromAnyCode, but doesn't throws StateErrors if no currency object is found.
- Added maybeMapIsoCode method to String extensions, which is used under the hood of (maybe)fromAnyCode.

REFACTOR

- Named classes now has boolean flag (short, defaults to true).
- TranslatedName class by default returns "name" value on toString().
- Refactored dollar symbols in toString() methods.

## 0.7.0

NEW FEATURES

- WorldCountry class now contains way more translations of language name to other languages (79 translations for each language minimum).
- Refactored factory constructors - there is an optional parameter to provide custom list.

## 0.6.0

- refactor(model)!: translations are now list of translated name
- style!: renamed extensions to follow the same naming pattern
- feat(model): added copy with, to-json etc.
- refactor(model): functional method parameters are now sorted

NEW FEATURES

- Added copyWith, toJson etc. to the WorldCountry and all sub-classes.
- Refactoring in existing functional methods (sorting params to match list sorting).
- Translations are now List<TranslatedName> instead of List<CountryName>, however CountryName is just an extension on top of TranslatedName (you can reference to name instead of common and fullName instead of official). There will be way more translations provided in upcoming version 0.7.0.
- Renaming of extensions to follow the eco-system naming pattern.

## 0.5.0

- refactor(model): factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs
- feat(model): added new data sealed classes related to world blocs
- feat(data): regional blocs are now part of the world country data
- feat(docs): added regional blocs in the example
- refactor(lints): fixing old ignores and new linter rules
- chore(deps): updates of dev_dependencies
- fix(data): fix timezones for netherlands

BREAKING CHANGES

- refactor(data)!: compile time static const. data in lists are now sorted alphabetically by the (3 letter) code

## 0.2.2

- chore(deps): bump internal dev_dependencies versions

## 0.2.1

- docs: provided structure screenshot

## 0.2.0

- test: increase code coverage to 100%

## 0.1.0

- docs: provided code coverage links and badge

## 0.0.1

- initial version.
