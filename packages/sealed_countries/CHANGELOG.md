## 0.6.0

- refactor(model)!: translations are now list of translated name
- style!: renamed extensions to follow the same naming pattern
- feat(model): added copy with, to-json etc.
- refactor(model): functional method parameters are now sorted

NEW FEATURES:

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

BREAKING CHANGES:

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
