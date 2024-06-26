[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
![Last commit](https://img.shields.io/github/last-commit/badges/shields/master)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Sealed World

Pure Dart, fully tested and ISO-driven ecosystem for the world's data in form of compile-time, tree-shakable constant sealed classes.

| Package                                                                                          | Description                                                                                              | Pub                                                                                                          |
| ------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| [world_countries](https://github.com/tsinis/sealed_world/tree/main/packages/world_countries)     | Flutter wrapper on top of **sealed_countries**, including bunch of pickers, additional emoji flags, etc. | [![pub.dev](https://img.shields.io/pub/v/world_countries.svg)](https://pub.dev/packages/world_countries)     |
| [sealed_countries](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries)   | Countries in form of compile-time constant sealed classes.                                               | [![pub.dev](https://img.shields.io/pub/v/sealed_countries.svg)](https://pub.dev/packages/sealed_countries)   |
| [sealed_currencies](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies) | Currencies in form of compile-time constant sealed classes.                                              | [![pub.dev](https://img.shields.io/pub/v/sealed_currencies.svg)](https://pub.dev/packages/sealed_currencies) |
| [sealed_languages](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages)   | Languages in form of compile-time constant sealed classes.                                               | [![pub.dev](https://img.shields.io/pub/v/sealed_languages.svg)](https://pub.dev/packages/sealed_languages)   |

```mermaid
graph TD
sealed_languages(sealed_languages)
sealed_currencies(sealed_currencies)
sealed_countries(sealed_countries)
world_countries(world_countries)

sealed_languages --> sealed_currencies --> sealed_countries --> world_countries

click sealed_languages "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages"
click sealed_currencies "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies"
click sealed_countries "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries"
click world_countries "https://github.com/tsinis/sealed_world/tree/main/packages/world_countries"
```
