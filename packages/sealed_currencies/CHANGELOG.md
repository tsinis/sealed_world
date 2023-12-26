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
- Marked Croatian Kuna as `Deprecated`.

## 0.9.0

NEW FEATURES

- Added new interface `IsoTranslated` which combines `Translated` and `IsoStandardized` interfaces.
- Added `standard*` static constants in FiatCurrency class referencing different names of the ISO 4217 standard.
- Improved documentation in README, added FAQ.
- Updated example with translations.

## 0.8.0

NEW FEATURES

- Added new factory to FiatCurrency - fromAnyCode, which do the length and type checks and redirects to other fromCode\* constructors
- Added new static method to FiatCurrency - maybeFromAnyCode, which works same way as fromAnyCode, but doesn't throws StateErrors if no currency object is found.
- Added maybeMapIsoCode method to String extensions, which is used under the hood of (maybe)fromAnyCode.

REFACTOR

- Named classes now has boolean flag (short, defaults to true).
- TranslatedName class by default returns "name" value on toString().
- Refactored dollar symbols in toString() methods.

## 0.7.0

NEW FEATURES

- Added regularList getter for list of regular currencies (excludes 10 currencies from specialPurposeList).
- FiatCurrency class now contains translations of language name to other languages (79 translations for each language minimum).
- Those translations are also accessible via translation and maybeTranslation methods.
- Refactored factory constructors - there is an optional parameter to provide custom list.
- Added TranslatedName class for translations.
- Implement new abstract interfaces for currencies: Named and Translated.
- Fixed several English currency names.

## 0.6.0

- feat(model): added copy with, to-json etc.
- fix(data): proper alternate symbols list for scandinavian countries

NEW FEATURES

- Added copyWith, toJson etc. to the FiatCurrency class.
- Fixed the alternate symbols list for scandinavian countries.

## 0.5.0

- refactor(model): factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs
- refactor(lints): fixing old ignores and new linter rules
- chore(deps): updates of dev_dependencies

BREAKING CHANGES

- refactor(data)!: zimbabwean dollar (zwl) is now properly placed as last item in currencies list

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
