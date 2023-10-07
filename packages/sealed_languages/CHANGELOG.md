## 0.6.0

- feat(model): added new interfaces and typedefs
- feat(model): added copy with, to-json etc.
- fix(data): proper names native list for sindhi

NEW FEATURES:

- Added new interfaces (IsoStandardized, JsonEncodable) and typedef (JsonMap) to the model.
- Added copyWith, toJson etc. to the NaturalLanguage class.
- Fixed the names native list for Sindhi in the data.

## 0.5.0

- refactor(model): factory constructors and static methods for data classes creation now implicitly trimming and comparing uppercase string inputs
- refactor(lints): fixing old ignores and new linter rules
- chore(deps): updates of dev_dependencies

BREAKING CHANGES:

- refactor(data)!: languages list is now sorted alphabetically by the (3 letter) code

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
