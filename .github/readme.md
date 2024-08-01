[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Sealed World

Pure Dart, fully tested and ISO-driven ecosystem for the world's data in form of compile-time, tree-shakable constant sealed classes.

> [!TIP]
> Flutter packages follow a **world** prefix convention, whereas Dart packages utilize the **sealed** prefix.

| Package                                                                                          | SDK         | Description                                                               | Pub                                                                                                          |
| ------------------------------------------------------------------------------------------------ | ----------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| [world_countries](https://github.com/tsinis/sealed_world/tree/main/packages/world_countries)     | **Flutter** | Country/phone/currency/language pickers and APIs for typed localizations. | [![pub.dev](https://img.shields.io/pub/v/world_countries.svg)](https://pub.dev/packages/world_countries)     |
| [world_flags](https://github.com/tsinis/sealed_world/tree/main/packages/world_flags)             | **Flutter** | Country flags built entirely with Flutter's CustomPainters.               | [![pub.dev](https://img.shields.io/pub/v/world_flags.svg)](https://pub.dev/packages/world_flags)             |
| [sealed_countries](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries)   | Dart        | Countries in form of compile-time constant sealed classes.                | [![pub.dev](https://img.shields.io/pub/v/sealed_countries.svg)](https://pub.dev/packages/sealed_countries)   |
| [sealed_currencies](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies) | Dart        | Currencies in form of compile-time constant sealed classes.               | [![pub.dev](https://img.shields.io/pub/v/sealed_currencies.svg)](https://pub.dev/packages/sealed_currencies) |
| [sealed_languages](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages)   | Dart        | Languages in form of compile-time constant sealed classes.                | [![pub.dev](https://img.shields.io/pub/v/sealed_languages.svg)](https://pub.dev/packages/sealed_languages)   |

**This ecosystem exhibits a strict hierarchical dependency structure**. At the foundation are **languages and scripts**, essential for localization and translation across all packages. Building upon this, **currencies** are required for subsequent packages dealing with **countries**. The **countries** package, is necessary for rendering country **flags**, which is then needed by the **world_countries** package for displaying localized (given that a locale typically consists of three components: language, script, and region/country) country, language and currency names, and also **flags** (for example within country/phone code pickers).

```mermaid
graph TD
sealed_languages["<span title='Sealed Languages Package'>sealed_languages</span>"]
sealed_currencies["<span title='Sealed Currencies Package'>sealed_currencies</span>"]
sealed_countries["<span title='Sealed Countries Package'>sealed_countries</span>"]
world_flags["<span title='World Flags Package'>world_flags</span>"]
world_countries["<span title='World Countries Package'>world_countries</span>"]

sealed_languages --> sealed_currencies --> sealed_countries --> world_flags --> world_countries

click sealed_languages "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages"
click sealed_currencies "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies"
click sealed_countries "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries"
click world_flags "https://github.com/tsinis/sealed_world/tree/main/packages/world_flags"
click world_countries "https://github.com/tsinis/sealed_world/tree/main/packages/world_countries"

style sealed_languages fill:#aec7e8,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
style sealed_currencies fill:#aec7e8,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
style sealed_countries fill:#aec7e8,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
style world_flags fill:#aec7e8,stroke:#0050B9,stroke-width:2px,fill-opacity:0.5,rx:10,ry:10
style world_countries fill:#aec7e8,stroke:#0050B9,stroke-width:2px,fill-opacity:0.5,rx:10,ry:10
```
