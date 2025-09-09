## 3.9.0

NEW FEATURES

- Added Guernsey flag painter (`GgyPainter`) and export, so GGY is no longer a "simplified" flag.
- List tiles support Material state controllers.
- Text fields gain select-all-on-focus and locale-specific hint options.

REFACTOR

- Made `Shape` implementations `final`; added deprecations for legacy helpers (to be replaced with modern `switch` expressions).
- Selectively disable anti-aliasing for axis-aligned rectangles (e.g., BLR vertical line, SAU sabre) to avoid blur; keep AA for diagonals.

FIX

- Oman flag default aspect ratio corrected (from 2 to 7/4).
- Fixed white rectangle position in Belarusian flag (on smaller sizes).
- `CountryName`'s short flag (`true`) in `toString()` override returns `common` name, same way, as in parent's (`TranslatedName` class) override.

CHORE

- The Dart SDK was bumped to v3.9.2.

## 3.8.0

FIX

- Updated country [data](https://github.com/tsinis/sealed_world/pull/361/files) with recent population, Gini, and capital information.
- Fixed demonyms, borders, and native names for select countries.
- Corrected Welsh official country name for Curaçao.
- Corrected Korean localization for British Indian Ocean Territory, Dominica, Mongolia, Wallis and Futuna and South Georgia.
- Corrected `subunitToUnit` value for Hungarian Forint.

NEW FEATURES

- Added platform dispatcher extension for convenient access to country, language, and script information from platform locales.
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
- Standardized code normalization using new ISO code extension types, replacing older string and object extension methods.
- Deprecated legacy constant lists in favor of centralized static lists for ISO classes.
- Corrected country and language associations in documentation for currencies and languages.
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

## 3.7.0

FIX

- Adjust height and width factors for Afghanistan flag properties and update `ShahadaPainter` translation logic.

NEW FEATURES

- Introduced adaptive flag selection for language and currency pickers (via `.adaptiveFlag` constructor), automatically displaying the most relevant flag based on locale or user context. For example - they automatically show the most relevant flag based on the user's device locale, like showing the Austrian flag 🇦🇹 for the German language if the user is in Austria.
- All pickers now support customizable flag maps and adaptive flag logic for enhanced visual customization (via `flagsMap` parameter).
- `ClearButton` now extends `IconButton` so it supports all its super parameters, plus several params from the `AnimatedCrossFade` widget.
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
- The `meta` package has been added as an explicit dependency, but it has the same version constraints as the current stable Flutter SDK version (3.32.4).
- Deprecated outdated Afghanistan flag and updated references to its alternative.
- Deprecated `foregroundWidget` parameter in flag widgets, in favor of `child` one.
- Update German and English translations (for multiple countries).
- Updated official `languages` lists for Ethiopia and Iraq to reflect additional recognized languages.

## 3.6.0

NEW FEATURES

- Add additional `ListTile` super parameters to the `ListItemTile` widget.
- Introduce `spacing` and new Flutter 3.32.0 parameters (in `show*` methods) in pickers.
- Add extension for enhanced functionality of `ListItemTile`.
- Enhance ISO standardized classes with `Comparable` interface and update bool getters.
- Add regional code alias and new ISO standardized extensions for type checking.
- Add formatter callback to localization packages for custom translation logic.
- Add official country translations for the [Indonesian language](https://gitlab.com/restcountries/restcountries/-/merge_requests/76).

CHORE

- The Dart SDK was bumped to v3.8.0.
- Code has been formatted with the new Dart formatter.
- Flag of Syria update.
- Update symbol for Sudanese pound to "ج.س".
- Correct latitude values for several [countries](https://gitlab.com/restcountries/restcountries/-/merge_requests/78).
- Update currency for South Georgia to [GBP](https://gitlab.com/restcountries/restcountries/-/merge_requests/79).

REFACTOR

- Make copy-with extensions generic for ISO standardized classes.
- Improve `ListItemTile` structure for direct item property access.

DOCUMENTATION

- Improved documentation in README.
- Update dartdoc in ISO standardized classes instances to use backticks.

TEST

- Add tests for comparable boolean getters in ISO standardized classes.
- Add unit tests for regional code and ISO standardized extensions.
- Add unit tests for `ListItemTile` extension functionality.

## 3.5.0

NEW FEATURES

- Added support for [custom search result building](https://github.com/tsinis/sealed_world/tree/main/packages/world_countries#how-to-use-fuzzy-or-similar-search-functionality) in all pickers and searchable widgets via a new `onSearchResultsBuilder` parameter, enabling advanced search algorithms like fuzzy search.
- Introduced customizable localization formatting for ISO translations with a new [L10N formatter callback](https://github.com/tsinis/sealed_world/tree/main/packages/world_countries#how-to-formatadjust-automatic-global-translations-of-iso-objects-in-my-app). [Kudos to @MaxLap](https://github.com/tsinis/sealed_world/discussions/325).
- Added the `regionalCode` getter to the `BasicTypedLocale` to provide a convenient alias for the `countryCode` property, improving consistency when working with regional locales.

DOCUMENTATION

- Update dartdoc documentation for countries to use backticks for ISO code formatting.
- Enhanced documentation with new FAQ sections and detailed examples on customizing search and localization.

REFACTOR

- Search performance has been significantly improved in pickers (that feature a search bar) and the search delegate, by implementing search map caching.
- Replaced text-based flag rendering with vector path drawing for Iraq, Afghanistan, Saudi Arabia and U.S. Virgin Islands flags, improving rendering consistency on all platforms.
- Deprecated `flagTextStyleOverride` getter and setter (visible for testing) as text-based painters were removed.

TESTS

- Updated goldens for Iraq, Afghanistan, Saudi Arabia and U.S. Virgin Islands flags.
- Expanded test coverage for custom search algorithms and localization formatting features.

## 3.4.0

This is a DevEx release without significant changes for the users, that aims to improve developer experience when working with flags in DevTools.

NEW FEATURES

- To enhance debugging, widgets like `CountryFlag`, `BasicFlag`, `MaybeWidget`, etc. now override `debugFillProperties`, providing detailed information, including values and rationales. Crucially, this allows you to visualize emoji flags directly in dev tools, replacing generic widget names.

CHORE

- Example app runners update.

## 3.3.0

DOCUMENTATION

- Highlight [importance](https://github.com/tsinis/sealed_world/issues/313) of `TypedLocaleDelegate` usage in app's `localizationsDelegates`, for pickers L10N and improved search functionality. Thanks @wildsurfer!

REFACTOR

- Enhanced translation fallback mechanism in pickers. Previously, translations would only use the first available locale. Now, the system tries multiple sources in sequence:
  1. Direct `translation` provided to the picker.
  2. Theme-level `translation` from `PickersThemeData`.
  3. Global app translation from localizationsDelegates via `TypedLocaleDelegate`.
- Added assertion messages to help developers identify missing translations more easily.
- Improved translation debugging through more descriptive error messages.

## 3.2.0

This is maintenance release without significant changes for the users, that aims to fix dropped pub score after Flutter v3.29.0.

CHORE

- Dart SDK bumped to v3.7.0.
- Code has been formatted with the new Dart formatter.
- Deprecated `scribbleEnabled` is replaced with `stylusHandwritingEnabled` parameter in `AdaptiveSearchTextField`.

## 3.1.0

NEW FEATURES

- Added two new `offstage` constructor and static `list` method, to `MaybeWidget`. `MaybeWidget.offstage` - Preserves layout space but hides the widget if the provided `value` is `null`. Ideal if you want to conditionally toggle visibility without removing the widget from the tree. `MaybeWidget.list` - Builds either a single widget or multiple widgets if `value` is not `null`, or returns an empty list if it is `null`. Gives you a flexible way to handle conditional UI blocks or spread-like usage in the `Flex` widgets.

REFACTOR

- Nullable `maybeCommonNameFor` method now accepts nullable `mainLocale` parameter - if `null` is provided, `null` will be returned.

## 3.0.0

🎉 Second anniversary and new major release!

NEW FEATURES

- Introduced new methods for working with common names and common name maps: `commonNamesMap` on ISO collections and `commonNameFor`/`maybeCommonNameFor` on ISO objects. These methods are significantly faster than the old `translations` - related methods because they work directly with locale-specific maps instead of iterating through all translations of each ISO object.
- The `translations` getter is now a computed field. This means it will only generate the translations when they are requested, rather than storing them all in memory. It's recommended to cache the results of the getter to avoid redundant calculations. Because of that - `translation` and `maybeTranslation` methods are no longer recommended for retrieving localization data.
- The `commonNamesCacheMap` is deprecated because it relies on the memory-intensive `translations` getter.
- New localization delegates on `IsoTranslated` objects simplify complex queries for object localizations.
- Bool getters on `IsoStandardized` objects can now be applied to null values. For example, `maybeIso.isRus` will return `false` if `maybeIso` is null, without the need for additional null-checks.

REFACTOR

- Improved generics handling in localization methods.
- Update and use stable L10N packages.

FIX

- Replaced deprecated `Color` methods `.withOpacity` with new `.withAlpha`
- Changed official name for [Portugal](https://gitlab.com/restcountries/restcountries/-/merge_requests/77): "República português" > "República Portuguesa".
- Change the capital of Indonesia for [Nusantara](https://gitlab.com/restcountries/restcountries/-/merge_requests/75): "Jakarta" > "Nusantara".

BREAKING CHANGES

- The package now requires Flutter v3.27.1 or higher.
- The `IsoTranslated<T, N, L>` class now uses three generic types instead of two. If you used this class directly in your code, simply add the additional generic `<L extends BasicLocale>` to your reference.
- `BasicPicker`, `BaseTileThemeData` and `BaseTileThemeData` are now inherited from `IsoTranslated` instead of `Translated` class.
- `IsoLocale` is now deprecated in favor of `TypedLocale` that now implements `BasicTypedLocale` instead of `BasicLocale`.
- Generic and `base` keyword on `TypedLocale` class are removed, you can still use new `regionalCode` parameter to provide non-typed region/country info there.
- The default `toString()` implementation of `BasicLocale` now uses Flutter's `Locale`-like output format. You can still access the old output by setting the `short` flag to `false`.
- The `sealed_country_translations` library is removed. Migrate to the [l10n_countries](https://pub.dev/packages/l10n_countries) package or use `l10n` getter in ISO objects that provides the same data without holding all translations in memory. This sub-library and its content (except for supported locales lists - they will be moved to the main library) will be removed in the next major package version.
- From now on, you will most likely need to explicitly provide a `localizationsDelegates: const [TypedLocaleDelegate()],` to your app, for pickers L10N and improved search.
- Country translation methods requires `BasicTypedLocale` instead of `BasicLocale`, if you didn't used country value - this change will not affect you, same applies to `TypedLocale`. If you provided non-typed country data there - please change from:

```dart
BasicLocale(*, countryCode: "US");
// or
TypedLocale(*, country: "US");
```

to:

```dart
BasicTypedLocale(*, regionalCode: "US"); // or BasicTypedLocale(*, country: CountryUsa());
// or
TypedLocale(*, regionalCode: "US"); // or TypedLocale(*, country: CountryUsa());
```

## 2.0.2

NEW FEATURES

- Added new method for the [FunctionalPlatform](https://pub.dev/documentation/world_countries/latest/helpers/FunctionalPlatform-class.html) - `maybeWhen` (in addition to hash-map like method `maybeWhenConst` that works with mostly immutable object returns (instead of closures in the new method)).
- Improved `showInSearch` method pop handling.
- A `searchSuggestions` method might be affected by the SDK [bug](https://github.com/flutter/flutter/issues/155180) fixed in [v3.27.0](https://github.com/flutter/flutter/pull/155219). As a temporary workaround, you can create your own instance of `SearchController` and dispose of it manually.
- Updated the postal code pattern format for Paraguay.
- Updated International Olympic Committee (IOC) country code for Bahrain.
- Improvements of `toString()` method implementations in models and addressing new lints + DCM reports.
- Added "polski" to the [Polish](https://github.com/tsinis/sealed_world/issues/221) language's `namesNative` array.

## 2.0.1

NEW FEATURES

- Added `FlagExtension` on `WorldCountry` to provide flag-related properties and colors:
  - `flagStripeColors`: Retrieves the stripe colors of the flag from `FlagProperties`.
  - `flagElementsColors`: Retrieves the element colors of the flag from `FlagProperties`.
  - `flagColors`: Combines `flagStripeColors` and `flagElementsColors` into a single list of colors.
  - `flagProperties`: Retrieves the `FlagProperties` associated with country (from the default `WorldCountry.list`).

## 2.0.0

BREAKING CHANGES

- Package requires Flutter version 3.19+, because it now uses Semantics [identifier](https://api.flutter.dev/flutter/semantics/SemanticsData/identifier.html) property in all picker's tiles (this property was introduced in that SDK version). This identifier describes the node for UI automation tools that work by querying the accessibility hierarchy, such as Android UI Automator, iOS XCUITest, or Appium. It's not exposed to users.
- All previously deprecated code, marked with the `@Deprecated` annotation, has been removed. Including color font emojis (you can still use them on your own via `EmojiFlag.custom` constructor, example code is provided in the `example` project).

NEW FEATURES

- All pickers are updated with accessibility in mind, ensuring seamless integration with screen readers and assistive technologies. Feel free to use [SemanticsDebugger](https://api.flutter.dev/flutter/widgets/SemanticsDebugger-class.html) to check it.
- `CountryFlag` now offers `alternativeMap` parameter that you can use to provide alternative look of the country flag. By default it contains updated Afghanistan flag (with official design from year 2021) and alternative French Guiana flags.
- `CountryFlag` now have non-required child property.

REFACTOR

- New asserts in the constructors and optimizations in several country flag painters.

TESTS

- Added tests for new flag asserts and update goldens with arabic fonts.

## 1.6.0

NEW FEATURES

The package now uses `CountryFlag` from the [`world_flags`](https://pub.dev/packages/world_flags) package to display flags in the default country and phone code pickers. This approach offers several benefits:

- **More customization:** `CountryFlag` provides greater flexibility for customizing the appearance of flags.
- **Improved performance:** These flags offer better [performance](https://github.com/tsinis/sealed_world/wiki/Performance) compared to the assets.
- **Platform independence:** They work seamlessly across different platforms.
- **No assets required:** Since they are drawn using Flutter's `CustomPainter`, they don't require additional platform dependant and heavy font assets.

> Asset based `EmojiFlag`s are being deprecated, but you can still use them until the next major update, you will be also able to use them after v2.0.0 with `EmojiFlag.custom` if needed.

```dart
MaterialApp(
  ...
  theme: ThemeData(
    extensions: const <ThemeExtension>[
      /// The `emojiFamily` will work until v2.0.0, with old, assets based flags.
      CountryTileThemeData(emojiFamily: EmojiFamily.twemoji),
      /// Instead you can migrate to FlagThemeData, where you can specify way more properties.
      FlagThemeData(
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
    ],
  )
);
```

## 1.5.0

NEW FEATURES

- 🎉 All translations in the eco-system packages now support all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales.
- 🦾 Countries translations now also support all `GlobalMaterialLocalization` + `GlobalCupertinoLocalizations` locales.
- The `locale` parameter in the `maybeTranslation` method is now nullable.
- The `permissive` constructors are now even more permissive, only `name` and `code` parameters remain required.
- Changed Vatican city `unMember` field to `false` and fix Cape Verde coordinates [Link to MR](https://gitlab.com/restcountries/restcountries/-/merge_requests/70)
- Added new `DurationExtension` to the `helpers` library.
- Added new `TypedLocaleExtension` with a `copyWithTranslationsCache(Async)` method.
- Added `asyncTranslationCacheProcessing` parameter for the `TypedLocaleDelegate`.
- Added `withTranslationsCache` constructor for `TypedLocale` and `IsoLocale`.
- Set default value for `startWithSearch` in the country and phone code pickers also to `false`, to unify behavior across the pickers.

## 1.4.0

NEW FEATURES

- 🦾 Language translations now also support all `GlobalMaterialLocalization` + `GlobalCupertinoLocalizations` locales.
- You can now provide translation caches list in `TypedLocaleDelegate` and it's new `selectiveCache` constructor. This is useful when you don't want to cache the translations for the specific unused ISO objects. For example you are only using country pickers, so you might not need currency an language translations. In this case you can provide only `countriesForTranslationCache` for the countries translation cache.
- The `TypedLocale` (so and `IsoLocale`) has new fields for storing translations cache (see the point above).
- The `TypedLocale` (so and `IsoLocale`) are now inherited from `BasicLocale` (so and `JsonEncodable`), so they can be used in the translations directly.
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
- Added new compile-time constant and case-insensitive code maps (`UpperCaseIsoMap`s) in every ISO class (accessible as static constants via `.map`, `.codeMap`, `.codeNumericMap`, etc.).
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
    /// And also [CurrencyTileThemeData], [LanguageTileThemeData], [CountryTileThemeData]...
    extensions: const <ThemeExtension>[
      PickersThemeData(primary: true), // Specify global pickers theme.
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
- Added `standard*` static constants in the `WorldCountry` class referencing different names of the ISO 3166-1 standard.
- Added `standard*` static constants in the `FiatCurrency` class referencing different names of the ISO 4217 standard.
- Improved documentation in README, added FAQ and demo web-site (Flutter WASM).

REFACTORING

- Removed `NavigatorContextExtension` from exports, so you don't need to specify it no longer via `hide`.

## 0.8.0

NEW FEATURES

- Added new factories to ISO classes - `fromAnyCode`, which do the length and type checks and redirects to other `fromCode\*` constructors
- Added new static methods to ISO classes - `maybeFromAnyCode`, which works same way as `fromAnyCode`, but doesn't throws `StateErrors` if no currency object is found.
- Added `maybeMapIsoCode` method to `String` extensions, which is used under the hood of `(maybe)fromAnyCode`.
- Added the `TypedLocaleDelegate` class, which can be used in the `localizationsDelegates` (such as in `MaterialApp`). It attempts to convert the string-based `Locale` to a strongly typed `TypedLocale`, which is then used in all pickers to provide translations for country/currency/language names. The detected TypedLocale? is also accessible via `TypedLocaleDelegate.maybeOf(context)` or simply `context.maybeLocale`.
- All pickers can have a local translation override via the `translation` parameter (which will be used instead of the TypedLocale translation).
- Translated classes now also have translate() and maybeTranslate() methods to translate it's data (country/currency/language names).

REFACTOR

- Slightly changed UI of default picker's tiles - added padding on top of the leading widget and swapped title with subtitle (because of translations provided to title).
- Named classes now has boolean flag (`short`, defaults to `true`).
- `TranslatedName` class by default returns `.name` value on `toString()`.
- Refactored dollar symbols in `toString()` methods.

BREAKING CHANGE

- Country and phone code pickers now using `TypedLocale` as translation parameter (to migrate just wrap your previous language there with `IsoLocale()`).

## 0.7.0

This is a general update that synchronizes underlying Dart package updates (related to translations and interfaces), as a preparation for a bigger upcoming update for localization delegates.

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

- New searchSuggestions method in every picker (for use in `suggestionsBuilder` of [SearchAnchor](https://api.flutter.dev/flutter/material/SearchAnchor-class.html))
- Added search suggestions for search anchors.
- Added `copyWith`, `toJson` etc. to the `WorldCountry`, `FiatCurrency`, `NaturalLanguage` classes.
- Added copyWith, toJson etc. to all country-related sub-classes.
- Added new interfaces (`IsoStandardized`, `JsonEncodable`) and typedef (`JsonMap`) to the model.
- Refactoring in existing functional methods (sorting params to match list sorting).
- Translations are now `List<TranslatedName>` instead of `List<CountryName>`, however `CountryName` is just an extension on top of `TranslatedName` (you can reference to name instead of `common` and `fullName` instead of official). There will be way more translations provided in upcoming version 0.7.0.
- Renaming of extensions to follow the eco-system naming pattern.

REFACTOR

- Added new mixins.
- Improve example and docs.

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

DOCUMENTATION

- Added web (Flutter WASM) example of data provided in this package.

BREAKING CHANGES

- `WorldCountry.list` is now sorted alphabetically by the (3 letter) `code`.
- Compile-time static const. data in lists are now sorted alphabetically by the (3 letter) code.

## 0.2.2

- Renamed `BuildContextExtensions` > `BuildContextExtension`
- Added extensions for [Locale](https://api.flutter.dev/flutter/dart-ui/Locale-class.html)

REFACTOR

- Updates in `dev_dependencies`.

## 0.2.1

DOCUMENTATION

- Provided structure screenshot.

## 0.2.0

TEST

- Increase code coverage to 96%.

## 0.1.0

DOCUMENTATION

- Provided code coverage links and badge.

## 0.0.1

- Initial release.
