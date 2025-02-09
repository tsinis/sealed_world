---
name: Build System
about: Changes that affect the build system or external dependencies
title: "build: "
labels: build
---

#### Target Package(s)

<!-- Please check the package(s) affected by build changes -->

- [ ] sealed_countries
- [ ] sealed_currencies
- [ ] sealed_languages
- [ ] l10n_countries
- [ ] l10n_currencies
- [ ] l10n_languages
- [ ] world_flags
- [ ] world_countries
- [ ] All packages

#### Package(s) & Environment Versions

- Package(s) version: <!-- e.g. v1.2.3 -->
- Dart/Flutter version: <!-- e.g. Dart 3.6.0 / Flutter 3.19.0 -->
- OS & version: <!-- e.g. macOS 14.3.1, Windows 11, Ubuntu 22.04 -->

#### Build Components

<!-- Check all that apply -->

- [ ] Dependencies
- [ ] Build scripts
- [ ] Package configuration
- [ ] Asset processing
- [ ] Code generation
- [ ] Other: <!-- specify -->

#### Description

Describe what changes need to be done to the build system and why.

#### Impact Assessment

<!-- Describe the impact on -->

- Build times: <!-- e.g. "Expected 10% faster builds" -->
- Package size: <!-- e.g. "Reduced by ~2MB" -->
- Dependencies: <!-- e.g. "Upgrading to latest stable versions" -->

#### Requirements

- [ ] The build system is passing for all affected packages
- [ ] No regression in build times
- [ ] Dependencies are properly versioned
- [ ] Build changes are documented
- [ ] Rollback plan is documented
