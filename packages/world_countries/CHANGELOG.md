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

BREAKING CHANGES:

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
