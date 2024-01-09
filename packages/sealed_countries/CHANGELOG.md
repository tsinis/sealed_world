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
