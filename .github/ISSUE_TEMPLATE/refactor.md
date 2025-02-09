---
name: Refactor
about: A code change that neither fixes a bug nor adds a feature
title: "refactor: "
labels: refactor
---

#### Target Package(s)

<!-- Please check the package(s) that will be refactored -->

- [ ] sealed_countries
- [ ] sealed_currencies
- [ ] sealed_languages
- [ ] l10n_countries
- [ ] l10n_currencies
- [ ] l10n_languages
- [ ] world_flags
- [ ] world_countries

#### Package(s) & Environment Versions

- Package(s) version: <!-- e.g. v1.2.3 -->
- Dart/Flutter version: <!-- e.g. Dart 3.6.0 / Flutter 3.19.0 -->
- OS & version: <!-- e.g. macOS 14.3.1, Windows 11, Ubuntu 22.04 -->

#### Description

Clearly describe what needs to be refactored and why. Please provide links to related issues (bugs or upcoming features) to help prioritize.

#### Scope of Changes

Outline which parts of the codebase will be affected.

#### Technical Debt Impact

Describe how this refactor addresses technical debt or improves code quality.

#### Migration Strategy

If this refactor requires changes in dependent packages, describe the migration path.

#### Requirements

- [ ] No breaking changes in public API
- [ ] No drop in the unit or widget test coverage percentage
- [ ] Changes are backward compatible
- [ ] Documentation is updated if necessary
- [ ] All affected packages are tested
