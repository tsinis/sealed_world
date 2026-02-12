![Created](https://img.shields.io/github/created-at/tsinis/sealed_world)
[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Commits](https://img.shields.io/github/commit-activity/m/tsinis/sealed_world)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world.svg?type=shield&issueType=security)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftsinis%2Fsealed_world?ref=badge_shield&issueType=security)

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
flowchart TD
    %% Monorepo Root: Tools & CI
    subgraph "Tools & CI"
        direction TB
        Tools["Code Generation Tools"]:::tools
        GitHubWorkflows["GitHub Actions Workflows"]:::ci
        DevContainer["Devcontainer"]:::tools
        Pubspecs["Pubspecs"]:::config
    end

    %% Core Dart Sealed Packages (Layer 1)
    subgraph "Core Dart Sealed Packages"
        direction TB
        SL["sealed_languages"]:::core
        SCu["sealed_currencies"]:::core
        SC["sealed_countries"]:::core
    end

    %% Dart Localization Packages (Layer 2)
    subgraph "Dart Localization Packages"
        direction TB
        LL["l10n_languages"]:::l10n
        LCu["l10n_currencies"]:::l10n
        LC["l10n_countries"]:::l10n
    end

    %% Flutter UI Packages (Layer 3)
    subgraph "Flutter UI Packages"
        direction TB
        WF["world_flags"]:::ui
        WC["world_countries"]:::ui
    end

    %% Example Applications
    subgraph "Example Applications"
        direction TB
        WFEx["world_flags/example"]:::example
        WCEx["world_countries/example"]:::example
    end

    %% External Services
    subgraph "External Services"
        direction TB
        PubDev["pub.dev"]:::external
    end

    %% Relationships
    Tools -->|codegen| SL
    Tools -->|codegen| LL
    Tools -->|codegen| SCu
    Tools -->|codegen| LCu
    Tools -->|codegen| SC
    Tools -->|codegen| LC

    SL -->|depends on| SCu
    SCu -->|depends on| SC
    SC -->|used by| WF
    WF -->|used by| WC

    LL -->|localizes| SL
    LCu -->|localizes| SCu
    LC -->|localizes| SC

    WFEx -->|example for| WF
    WCEx -->|demo for| WC

    GitHubWorkflows -->|publish| PubDev

    %% Click Events
    click GitHubWorkflows "https://github.com/tsinis/sealed_world/tree/main/.github/workflows/"
    click DevContainer "https://github.com/tsinis/sealed_world/tree/main/.devcontainer/"
    click Tools "https://github.com/tsinis/sealed_world/tree/main/tools/"
    click SL "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_languages/"
    click SCu "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_currencies/"
    click SC "https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries/"
    click LL "https://github.com/tsinis/sealed_world/tree/main/packages/l10n_languages/"
    click LCu "https://github.com/tsinis/sealed_world/tree/main/packages/l10n_currencies/"
    click LC "https://github.com/tsinis/sealed_world/tree/main/packages/l10n_countries/"
    click WF "https://github.com/tsinis/sealed_world/tree/main/packages/world_flags/"
    click WC "https://github.com/tsinis/sealed_world/tree/main/packages/world_countries/"
    click WFEx "https://github.com/tsinis/sealed_world/tree/main/packages/world_flags/example/"
    click WCEx "https://github.com/tsinis/sealed_world/tree/main/packages/world_countries/example/"
    click Pubspecs "https://github.com/tsinis/sealed_world/blob/main/pubspec.yaml"

    %% Styles
    classDef core fill:#D0E8FF,stroke:#0066CC,stroke-width:2px;
    classDef l10n fill:#B3FFF2,stroke:#00CC99,stroke-width:2px;
    classDef ui fill:#99CCFF,stroke:#003399,stroke-width:2px;
    classDef tools fill:#EEEEEE,stroke:#777777,stroke-width:2px;
    classDef ci fill:#DDDDDD,stroke:#555555,stroke-width:2px,stroke-dasharray: 5 5;
    classDef example fill:#FFF2CC,stroke:#CC9900,stroke-width:2px;
    classDef external fill:#F5F5F5,stroke:#888888,stroke-width:2px,stroke-dasharray: 2 2;
    classDef config fill:#EFEFEF,stroke:#666666,stroke-width:2px;
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

#### Benchmark & regression verification system

This package includes an automated benchmark system that runs on every release to detect performance regressions. Each version produces immutable JSON artifacts containing build metadata (APK size, toolchain versions, Android configuration) and runtime metrics (startup time, frame performance, memory and CPU usage, etc.).

> [!TIP]
> These artifacts are attached to [GitHub Releases](https://github.com/tsinis/sealed_world/releases) and committed to the repository, enabling historical comparison and transparent performance tracking across versions. The benchmark flow uses **low-end physical ARM64 Android** devices with Flashlight + Maestro for reproducible, device-driven testing.

To run benchmarks locally or learn more about the system, see the [benchmarks documentation](../packages/world_countries/example/benchmarks/README.md). Execute the shared CLI via `dart run tools/bin/benchmarks.dart $package_name` (or `cd tools && dart run :benchmarks $package_name`). Current targets include all Flutter packages. All benchmark data is immutable and versioned, ensuring full auditability and regression traceability.

[^1]: While `sealed_languages` technically depends on `l10n_languages` for localization, this is not part of its core functionality. The package primarily serves as the backbone for all `sealed_*` and `world_*` packages by providing typed locale classes and extensions that power localization maps across the entire ecosystem.
