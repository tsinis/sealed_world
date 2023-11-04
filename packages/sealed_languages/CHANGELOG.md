## 0.8.0

NEW FEATURES

- Added new factories to Script and NaturalLanguage - fromAnyCode, which do the length and type checks and redirects to other fromCode\* constructors
- Added new static methods to Script and NaturalLanguage - maybeFromAnyCode, which works same way as fromAnyCode, but doesn't throws StateErrors if no ISO object is found.
- Added maybeMapIsoCode method to String extensions, which is used under the hood of (maybe)fromAnyCode.

REFACTOR

- Renamed isIsoCode to isIsoAlphaRegularCode.

- Named classes now has boolean flag (short, defaults to true).
- TranslatedName class by default returns "name" value on toString().
- Refactored dollar symbols in toString() methods.

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
