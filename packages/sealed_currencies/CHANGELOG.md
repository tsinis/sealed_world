## 0.7.0

NEW FEATURES

- Added regularList getter for list of regular currencies (excludes 10 currencies from specialPurposeList).
- FiatCurrency class now contains translations of language name to other languages.
- Those translations are also accessible via translation and maybeTranslation methods.
- Refactored factory constructors - there is an optional parameter to provide custom list.
- Added TranslatedName class for translations.
- Implement new abstract interfaces for currencies: Named and Translated.
- Fixed several English currency names.

## 0.6.0

- feat(model): added copy with, to-json etc.
- fix(data): proper alternate symbols list for scandinavian countries

NEW FEATURES:

- Added copyWith, toJson etc. to the FiatCurrency class.
- Fixed the alternate symbols list for scandinavian countries.

## 0.5.0

- refactor(model): factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs
- refactor(lints): fixing old ignores and new linter rules
- chore(deps): updates of dev_dependencies

BREAKING CHANGES:

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
