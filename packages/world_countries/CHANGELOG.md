## 1.4.0

NEW FEATURES

- 🦾 Language translations now also support all `GlobalMaterialLocalization` + `GlobalCupertinoLocalizations` locales.
- You can now provide translation caches list in `TypedLocaleDelegate` and it's new `selectiveCache` constructor. This is useful when you don't want to cache the translations for the specific unused ISO objects. For example you are only using country pickers, so you might not need currency an language translations. In this case you can provide only `countriesForTranslationCache` for the countries translation cache.
- The`TypedLocale` (so and `IsoLocale`) has new fields for storing translations cache (see the point above).
- The`TypedLocale` (so and `IsoLocale`) are now inherited from `BasicLocale` (so and `JsonEncodable`), so they can be used in the translations directly.
- Added `copyWith` method in in `TypedLocale` (so and `IsoLocale`).
- Added new `internationalName` getter in `IsoStandardized` interface, representing the international name of the ISO object.
- Added new `UpperCaseMap` class, that `UpperCaseIsoMap` extends, a simple version of `UpperCaseIsoMap` without key length checks and `IsoStandardized` values requirement.
- The `map` in the `RegionalBloc` is now `UpperCaseMap` (with all it's benefits).
- Added new `maybeFromAcronym` factory method in the `RegionalBloc`.
- Added new `BasicLocale` class, that `TranslatedName` extends. Representing a type-safe world locale (language, country/region code and script).
- Deprecated `maybeTranslate` and `translate` methods for translated classes (use `maybeTranslation` and `translation` instead).
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

- Use of UX/UI interpretation of [Hick's Law](https://en.wikipedia.org/wiki/Hick%27s_law) for conditionally showing search bar in the [SearchableIndexedListViewBuilder](https://pub.dev/documentation/world_countries/latest/world_countries/SearchableIndexedListViewBuilder-class.html) - If no `showSearchBar` value specified, it uses `PickersThemeData.showHeader` value as before but instead of falling back to default hardcoded `false` value it fallbacks to items count condition `if (items.length > 5)`.
- `PickersThemeData.showHeader` is now nullable.
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
- Improved annotations.
- Added `is*` boolean getters for all ISO objects, for example:

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

- Added theme extensions that you can specify in your `ThemeData` to provide global theme to your pickers. You can find `PickersThemeData`, `CountryTileThemeData`, `CurrencyTileThemeData` and `LanguageTileThemeData`:

```dart
MaterialApp(
  ...
  theme: ThemeData(
    /// And also [CurrencyTileThemeData], [LanguageTileThemeData]...
    extensions: const <ThemeExtension>[
      PickersThemeData(primary: true), // Specify global pickers theme.
      CountryTileThemeData(emojiFamily: EmojiFamily.twemoji),
    ],
  )
);
```

This way you can specify for example that all your pickers lists are primary and define globally use of Twemoji as main flags font emoji family in all Country/Phone pickers in the app.

## 1.0.0

🎉 First anniversary and first stable release!

NEW FEATURES

- Added new getter for `TranslatedName` name called `common`, which might be useful in some cases when `name` is being used by a parent class.
- Added a lot of translations from the Symfony.
- Currencies translations now support all GlobalMaterialLocalizations and GlobalCupertinoLocalizations locales.
- Updated LICENSE.

- Added CLI tool for removing unused emoji font families on the Web platform `dart run world_countries:clean_build [--keep twemoji,notoemoji,openmoji]`
- Added `fromSubtags` constructors for `IsoLocale` and `TypedLocale` classes.
- Added `defaultLocaleMapResolution` for a `TypedLocaleDelegate` that maps:
  - `fil` Filipino (Pilipino) to `tl` Tagalog.
  - `gsw` Swiss German Alemannic Alsatian to `de_CH` German (Switzerland).
  - `bs_Cyrl` Bosnian (written in the Cyrillic script) to `sr` Serbian.

BREAKING CHANGES

- Removed code marked as `Deprecated` in previous releases.
- Replaced old `FiatCurrency.list` with a new `FiatCurrency.listExtended`.
- Removed `FiatCurrency.regularList` (please use `FiatCurrency.list` instead).
- Marked Croatian Kuna as `Deprecated` (currencies).
- Moved helpers of world_country package to separate library: `BuildContextExtension`, `FunctionalPlatform`, `NameTextInput`, `ClearButton` and `UiConstants`. To migrate just use IDE suggestions or manually replace old references:

```dart
import "package:world_countries/world_countries.dart";
```

to a new one:

```dart
import "package:world_countries/helpers.dart";
```

## 0.9.0

NEW FEATURES

- Added new interface `IsoTranslated` which combines `Translated` and `IsoStandardized`interfaces.
- Added `standard*` static constants in WorldCountry class referencing different names of the ISO 3166-1 standard.
- Improved documentation in README, added FAQ and demo web-site (Flutter WASM).

REFACTORING

- Removed `NavigatorContextExtension` from exports, so you don't need to specify it no longer via `hide`.

## 0.8.0

BREAKING CHANGE

- Country and PhoneCode pickers now using `TypedLocale` as translation parameter (to migrate just wrap your previous language there with IsoLocale()).

NEW FEATURES

- Added the `TypedLocaleDelegate` class, which can be used in the `localizationsDelegates` (such as in `MaterialApp`). It attempts to convert the string-based `Locale` to a strongly typed `TypedLocale`, which is then used in all pickers to provide translations for country/currency/language names. The detected TypedLocale? is also accessible via `TypedLocaleDelegate.maybeOf(context)` or simply `context.maybeLocale`.
- All pickers can have a local translation override via the `translation` parameter (which will be used instead of the TypedLocale translation).
- Translated classes now also have translate() and maybeTranslate() methods to translate it's data (country/currency/language names).

- Added new factories to ISO classes - fromAnyCode, which do the length and type checks and redirects to other fromCode\* constructors.
- Added new static method to ISO classes - maybeFromAnyCode, which works same way as fromAnyCode, but doesn't throws StateErrors if no currency object is found.
- Added maybeMapIsoCode method to String extensions, which is used under the hood of (maybe)fromAnyCode.

REFACTOR

- Slightly changed UI of default picker's tiles - added padding on top of the leading widget and swapped title with subtitle (because of translations provided to title).
- Named classes now has boolean flag (short, defaults to true).
- TranslatedName class by default returns "name" value on toString().
- Refactored dollar symbols in toString() methods.

## 0.7.0

This is a general update that synchronizes underlying Dart package updates (related to translations and interfaces), as a preparation for a bigger upcoming update for localization delegates.

NEW FEATURES

- Added and updated translations for currencies, languages, and countries (79 translations for each minimum).
- Added translation and maybeTranslation methods for Translated classes.
- Refactored factory constructors for IsoStandardized classes. There is an optional parameter to provide a custom list.

- Added a new sealed class called Scripts, based on the ISO 15924 standard.
- The NaturalLanguage class now contains information about scripts (writing systems) and translations of the language name to other languages.

- Added a regularList getter for a list of regular currencies (excluding 10 currencies from the specialPurposeList).
- Fixed several English currency names.

## 0.6.0

NEW FEATURE: New searchSuggestions method in every picker (for use in `suggestionsBuilder` of [SearchAnchor](https://api.flutter.dev/flutter/material/SearchAnchor-class.html))

- refactor(mixin): added new mixins
- refactor(docs): improve example and docs
- feat(ui): added search suggestions for search anchors

## 0.5.0

- refactor(model): factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs
- feat(model): added new data sealed classes related to world blocs
- feat(data): regional blocs are now part of the world country data
- feat(docs): added regional blocs in the example
- refactor(lints): fixing old ignores and new linter rules
- chore(deps): updates of dev_dependencies
- docs(example): added web (flutter wasm) example of data provided in this package.

BREAKING CHANGES

- refactor(data)!: compile time static const. data in lists are now sorted alphabetically by the (3 letter) code

## 0.2.2

- feat: added extensions for [Locale](https://api.flutter.dev/flutter/dart-ui/Locale-class.html)
- style: renamed BuildContextExtensions > BuildContextExtension
- chore(deps): bump internal dev_dependencies versions

## 0.2.1

- docs: provided structure screenshot
- test: increase code coverage to 98%+

## 0.2.0

- test: increase code coverage to 96%+

## 0.1.0

- docs: provided code coverage links and badge

## 0.0.1

- initial version.
