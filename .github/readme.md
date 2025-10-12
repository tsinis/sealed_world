![Created](https://img.shields.io/github/created-at/tsinis/sealed_world)
[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
![License](https://img.shields.io/github/license/tsinis/sealed_world)
![Commits](https://img.shields.io/github/commit-activity/m/tsinis/sealed_world)

## Sealed World

A pure Dart, fully tested and ISO-driven ecosystem for the world's data in the form of compile-time, tree-shakable constant classes with a sealed origin.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/tsinis/sealed_world?hide_repo_select=true&ref=main)
[![Open in Firebase Studio](https://cdn.firebasestudio.dev/btn/open_dark_32.svg)](https://studio.firebase.google.com/new?template=https://github.com/tsinis/sealed_world/tree/main/packages/world_countries/example/.idx)

> [!TIP]
> Flutter packages use **world** prefix, Dart packages use **sealed** prefix for core functionality and **l10n** prefix for localization maps.

| Package                                                                                          | SDK         | Stand-alone   | Description                                 | Pub                                                                                                          |
| ------------------------------------------------------------------------------------------------ | ----------- | ------------- | ------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| [world_countries](https://github.com/tsinis/sealed_world/tree/main/packages/world_countries)     | **Flutter** | No            | Pickers and APIs for typed localizations    | [![pub.dev](https://img.shields.io/pub/v/world_countries.svg)](https://pub.dev/packages/world_countries)     |
| [world_flags](https://github.com/tsinis/sealed_world/tree/main/packages/world_flags)             | **Flutter** | No            | Declarative flags built with CustomPainters | [![pub.dev](https://img.shields.io/pub/v/world_flags.svg)](https://pub.dev/packages/world_flags)             |
| [sealed_countries](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries)   | Dart        | No            | Countries in the form of sealed classes     | [![pub.dev](https://img.shields.io/pub/v/sealed_countries.svg)](https://pub.dev/packages/sealed_countries)   |
| [sealed_currencies](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies) | Dart        | No            | Currencies in the form of sealed classes    | [![pub.dev](https://img.shields.io/pub/v/sealed_currencies.svg)](https://pub.dev/packages/sealed_currencies) |
| [sealed_languages](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages)   | Dart        | Partially[^1] | Languages in the form of sealed classes     | [![pub.dev](https://img.shields.io/pub/v/sealed_languages.svg)](https://pub.dev/packages/sealed_languages)   |
| [l10n_countries](https://github.com/tsinis/sealed_world/tree/main/packages/l10n_countries)       | Dart        | **Yes**       | Country names localization maps             | [![pub.dev](https://img.shields.io/pub/v/l10n_countries.svg)](https://pub.dev/packages/l10n_countries)       |
| [l10n_currencies](https://github.com/tsinis/sealed_world/tree/main/packages/l10n_currencies)     | Dart        | **Yes**       | Currency names localization maps            | [![pub.dev](https://img.shields.io/pub/v/l10n_currencies.svg)](https://pub.dev/packages/l10n_currencies)     |
| [l10n_languages](https://github.com/tsinis/sealed_world/tree/main/packages/l10n_languages)       | Dart        | **Yes**       | Language names localization maps            | [![pub.dev](https://img.shields.io/pub/v/l10n_languages.svg)](https://pub.dev/packages/l10n_languages)       |

**This ecosystem follows a hierarchical structure** with optional localization support. At the foundation are **languages and scripts**, providing core functionality across all packages. Building upon this, **currencies** extend the system, followed by **countries**. Each core package has an optional **l10n** companion that provides localization maps. The **countries** package serves as a bridge to Flutter, enabling the rendering of country **flags**, which the **world_countries** package uses to create UI components like country pickers with localized names and visual elements.

```mermaid
graph TB

    %% Sealed packages
    sealed_languages["<span title='Sealed Languages Package'>sealed_languages</span>"]
    sealed_currencies["<span title='Sealed Currencies Package'>sealed_currencies</span>"]
    sealed_countries["<span title='Sealed Countries Package'>sealed_countries</span>"]

    %% l10n packages
    l10n_languages["<span title='L10N Languages Package'>l10n_languages</span>"]
    l10n_currencies["<span title='L10N Currencies Package'>l10n_currencies</span>"]
    l10n_countries["<span title='L10N Countries Package'>l10n_countries</span>"]

    %% World packages
    world_flags["<span title='World Flags Package'>world_flags</span>"]
    world_countries["<span title='World Countries Package'>world_countries</span>"]

    %% Main chain, labeled arrow for Flutter
    sealed_languages --> sealed_currencies --> sealed_countries -->| ― Flutter ― | world_flags --> world_countries

    %% l10n packages pointing to each sealed package
    l10n_languages --> sealed_languages
    l10n_currencies --> sealed_currencies
    l10n_countries --> sealed_countries

    %% Styles for sealed (light fill) and world packages (darker border)
    style sealed_languages fill:#aec7e8,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
    style sealed_currencies fill:#aec7e8,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
    style sealed_countries fill:#aec7e8,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
    style world_flags fill:#aec7e8,stroke:#0050B9,stroke-width:2px,fill-opacity:0.5,rx:10,ry:10
    style world_countries fill:#aec7e8,stroke:#0050B9,stroke-width:2px,fill-opacity:0.5,rx:10,ry:10

    %% Styles for l10n packages (turquoise fill)
    style l10n_languages fill:#40DBE0BE,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
    style l10n_currencies fill:#40DBE0BE,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10
    style l10n_countries fill:#40DBE0BE,stroke:#aec7e8,stroke-width:2px,fill-opacity:0.2,rx:10,ry:10

    %% Attempt to remove the label background only on the "Flutter" arrow (link index 2).
    linkStyle 2 stroke:#0050B9,stroke-width:2px,color:#000,fill:none

    %% Clickable links
    click sealed_languages "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages"
    click sealed_currencies "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies"
    click sealed_countries "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries"
    click l10n_languages "https://github.com/tsinis/sealed_world/tree/main/packages/l10n_languages"
    click l10n_currencies "https://github.com/tsinis/sealed_world/tree/main/packages/l10n_currencies"
    click l10n_countries "https://github.com/tsinis/sealed_world/tree/main/packages/l10n_countries"
    click world_flags "https://github.com/tsinis/sealed_world/tree/main/packages/world_flags"
    click world_countries "https://github.com/tsinis/sealed_world/tree/main/packages/world_countries"
```

### Versioning and Release Policy

This section explains how the ecosystem handles SDK pinning, semantic versioning, and release cadence, and why this approach benefits users and contributors.

#### SDK Compatibility and Pinning

- Pinning to the Dart version bundled with Flutter stable ensures local developer environments match CI, minimizing SDK mismatches and hard-to-reproduce issues. The Flutter SDK archive lists each Flutter stable release together with its bundled Dart version [Flutter SDK archive](https://docs.flutter.dev/install/archive).
- Production packages target Dart stable rather than beta/dev, in line with Dart's guidance to use stable for building and deploying apps [Get the Dart SDK](https://dart.dev/get-dart).
- Formatter and workspace changes introduced around Dart 3.7/3.8 can create large diffs when mixing pre/post language versions. Dart 3.8 includes a rewritten/updated formatter behavior; formatting changes apply when the package opts into the newer language version [Announcing Dart 3.8](https://blog.dart.dev/announcing-dart-3-8-724eaaec9f47), [Breaking changes (formatter behavior >=3.8)](https://dart.dev/resources/breaking-changes).

#### Semantic Versioning

- Semantic Versioning is followed: MAJOR for breaking changes, MINOR for new features, PATCH for bug fixes [Semantic Versioning](https://semver.org/).
- Dart's pub ecosystem applies SemVer for resolution and documents conventions including pre-1.0 handling and "next breaking" logic [Package versioning](https://dart.dev/tools/pub/versioning).

#### Release Cadence

- Major releases: approximately once per year, potentially including breaking changes; aligned after Flutter/Dart stable cycles to reduce churn [Semantic Versioning](https://semver.org/).
- Minor releases: about once per month for feature additions (especially for Flutter-facing packages), without breaking changes [Package versioning](https://dart.dev/tools/pub/versioning).
- Patch releases: as needed for fixes and docs, with no API changes [Package versioning](https://dart.dev/tools/pub/versioning).

#### Deprecation-First Policy

- Most breaking changes are introduced via deprecation first, with warnings and migration time provided before removal. This mirrors Dart and Flutter practices of listing deprecations alongside breaking changes and offering migration guides [Breaking changes and deprecations (Dart)](https://dart.dev/resources/breaking-changes), [Flutter breaking changes and migration guides](https://docs.flutter.dev/release/breaking-changes).
- Deprecated APIs are removed only after reaching end of life in a subsequent stable release cycle, consistent with Flutter's deprecation policy and examples across releases (e.g., removals after 3.7, 3.13, 3.19).
- Migration guidance is linked in release notes for major removals, reducing friction and helping teams adopt changes in predictable windows [Flutter breaking changes and migration guides](https://docs.flutter.dev/release/breaking-changes).

#### Rationale

- Aligning with Flutter stable's Dart ensures consistent environments across CI and contributors, reducing surprise failures and easing support [Flutter SDK archive](https://docs.flutter.dev/install/archive).

[^1]: While `sealed_languages` technically depends on `l10n_languages` for localization, this is not part of its core functionality. The package primarily serves as the backbone for all `sealed_*` and `world_*` packages by providing typed locale classes and extensions that power localization maps across the entire ecosystem.
