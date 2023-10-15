## 0.7.0

NEW FEATURES

- Added new sealed class - Scripts, comes from ISO 15924 standard.
- NaturalLanguage class now contains info about scripts (writing systems) and translations of language name to other languages.
- Added translation and maybeTranslation methods for Translated classes (NaturalLanguage).
- Refactored factory constructors for IsoStandardized classes - there is an optional parameter to provide custom list
- Added TranslatedName class for translations.
- Added new abstract interfaces: Named and Translated.

## 0.6.0

NEW FEATURES

- Added new interfaces (IsoStandardized, JsonEncodable) and typedef (JsonMap) to the model.
- Added copyWith, toJson etc. to the NaturalLanguage class.
- Fixed the names native list for Sindhi in the data.

## 0.5.0

BREAKING CHANGES

- refactor(data)!: languages list is now sorted alphabetically by the (3 letter) code

OTHER

- refactor(model): factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs
- refactor(lints): fixing old ignores and new linter rules
- chore(deps): updates of dev_dependencies

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
