## 1.5.1

NEW FEATURES

- Added "polski" to the [Polish](https://github.com/tsinis/sealed_world/issues/221) language `namesNative` array.
- Improvements of `toString()` method implementations in models and addressing new lints + DCM reports.

## 1.5.0

> This is the last minor version update with significant changes for some time. The next steps will be patches at most. Currently working on `sealed_countries` (and `world_countries`) v2.0.0 which will bring new data and a big feature there, very likely without breaking the existing API.

NEW FEATURES

- 🎉 All translations in the eco-system packages now support all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales.
- The `locale` parameter in the `maybeTranslation` method is now nullable.
- The `permissive` constructors are now even more permissive, only `name` and `code` parameters remain required.

## 1.4.0

NEW FEATURES

- 🦾 Language translations now support all `GlobalMaterialLocalization` + `GlobalCupertinoLocalizations` locales.
- Added new `internationalName` getter in `IsoStandardized` interface, representing the international name of the ISO object.
- Added new `UpperCaseMap` class, that `UpperCaseIsoMap` extends, a simple version of `UpperCaseIsoMap` without key length checks and `IsoStandardized` values requirement.
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

REFACTOR

- Refactored asserts in `maybeMapIsoCode` method.
- Fixed typos in CHANGELOG and README.

## 1.3.0

NEW FEATURES

- `codeOther` is no longer nullable (in all `IsoStandardized` classes).
- Added new compile time constant and case-insensitive code maps (`UpperCaseIsoMap`s) in every ISO class (accessible as static constants via `.map`, `.codeMap`, `.codeShort` etc.).
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

## 1.2.0

NEW FEATURES

- Added new static `maybeFrom*` methods and refactored old ones. They are also now accept any `Object?` input instead of just `String?`.
- Added new and refactored old tests with a performance in mind.
- Added new `firstIsoWhere*` extensions on ISO iterables.
- Added `is*` boolean getters for example:

```dart
if (isoObject.isFra) return _onFrench();
```

is more readable and shorter equivalent of this check:

```dart
if (isoObject == const LangFra()) return _onFrench();
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
- Updated LICENSE.

## 0.9.0

NEW FEATURES

- Added new interface `IsoTranslated` which combines `Translated` and `IsoStandardized` interfaces.
- Added `standard*` static constants in ISO classes referencing different names of specific standards.
- Improved documentation in README, added FAQ.

> Note: Please make sure to replace deprecated methods with suggested replacements, because all of them will be removed in version 1.0.0.

## 0.8.0

NEW FEATURES

- Added new factories to `Script` and `NaturalLanguage` - `fromAnyCode`, which do the length and type checks and redirects to other `fromCode\*` constructors
- Added new static methods to `Script` and `NaturalLanguage` - `maybeFromAnyCode`, which works same way as `fromAnyCode`, but doesn't throws `StateErrors` if no ISO object is found.
- Added `maybeMapIsoCode` method to `String` extensions, which is used under the hood of `(maybe)fromAnyCode`.

REFACTOR

- Renamed `isIsoCode` to `isIsoAlphaRegularCode`.

- Named classes now has boolean flag (`short`, defaults to `true`).
- `TranslatedName` class by default returns `.name` value on `toString()`.
- Refactored dollar symbols in `toString()` methods.

## 0.7.0

NEW FEATURES

- Added new sealed class - `Scripts`, comes from ISO 15924 standard.
- `NaturalLanguage` class now contains info about scripts (writing systems) and translations of language name to other languages.
- Added `translation` and `maybeTranslation` methods for `Translated` classes (i.e. `NaturalLanguage`).
- Refactored factory constructors for `IsoStandardized` classes - there is an optional parameter to provide custom list
- Added `TranslatedName` class for translations.
- Added new abstract interfaces: `Named` and `Translated`.

## 0.6.0

NEW FEATURES

- Added new interfaces (`IsoStandardized`, `JsonEncodable`) and typedef (`JsonMap`) to the model.
- Added `copyWith`, `toJson`, etc. to the `NaturalLanguage` class.
- Fixed the names native list for Sindhi in the data.

## 0.5.0

BREAKING CHANGES

- `NaturalLanguage.list` is now sorted alphabetically by the (3 letter) `code`.

REFACTOR

- Factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs.
- Fixing old ignores and new linter rules.
- Updates in `dev_dependencies`.

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
