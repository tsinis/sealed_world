---
name: l10n-languages-localization
description: >-
  Translate ISO 639-2/T language codes into localized language names across 157
  locales with the l10n_languages Dart/Flutter package. Use when working with
  LanguagesLocaleMapper, localizing language names, picking locale fallbacks,
  registering custom translations, or configuring compile-time tree-shaking of
  translation tables.
---

# Language Localization with l10n_languages

Guidelines and examples for localizing language names across 157 locales using the `l10n_languages` package.

## Setup

Add the package to the project:

- Dart projects: `dart pub add l10n_languages`
- Flutter projects: `flutter pub add l10n_languages`

Then import the single public library:

```dart
import 'package:l10n_languages/l10n_languages.dart';
```

The package has no dependencies and exposes `LanguagesLocaleMapper`, `IsoLocaleMapper`, the `LocaleKey`/`LocaleMap` typedefs, and one data class per locale (e.g. `EnLanguagesL10N`).

## Guidelines

### Mapper Lifecycle & Memory Optimization

- **Single-use only**: Always instantiate a new `LanguagesLocaleMapper` for every localization request. Once `localize()` is called, internal maps are cleared to minimize memory footprint. Reuse is guarded only by an assertion: it throws in assertion-enabled builds (`dart test`, Flutter debug), but release builds strip that assertion and silently re-materialize **bundled** locale data from the factories. Reuse in release is therefore wrong, not merely wasteful — translations injected via `other` are never restored, so a custom-only locale returns an empty map on the second call, and a custom override of a bundled locale silently reverts to the bundled values.
- **Never cache mapper instances**: Do not store `LanguagesLocaleMapper` in static variables, long-lived services, dependency injection containers, or state objects.
- **Cache results, not mappers**: If localized names are accessed repeatedly, cache the returned `LocaleMap` or extracted `String` values.
- **Always pass a locale**: Specify `mainLocale` or `fallbackLocale` (or provide translations via `other`). `localize()` returns an empty map when given none — it does not throw, so a missing locale fails silently.

### Locales and Fallbacks

- **Always provide a fallback**: Specify `fallbackLocale` when working with user-selected or device locales to guarantee a valid translation if the requested locale is missing.
- **ISO 639-2/T code format only**: Pass three-letter uppercase ISO 639-2/T *terminological* codes (e.g. `"ENG"`, `"FRA"`, `"DEU"`, `"SPA"`). Two-letter ISO 639-1 codes (`"EN"`) and ISO 639-2/B *bibliographic* codes (`"FRE"` for French, `"GER"` for German) are not bundled: they raise no error and are simply absent from the result. Prefer `"FRA"` over `"FRE"`, and `"DEU"` over `"GER"`.
- **Automatic locale fallback**: By default, `useLanguageFallback: true` also tries the parent locales of the requested one, most specific first: `"zh_Hant_TW"` → `"zh_Hant"` → `"zh"`, `"zh_TW"` → `"zh_Hant"`, `"pt_MO"` → `"pt_PT"` → `"pt"`, `"nn"` → `"no"`, `"fil"` → `"tl"`, skipping the locales this package doesn't bundle. Locales are normalized first, so `"zh-hant-tw"`, `"pt-PT"` and `"en_US.UTF-8"` match too.
- **First entry wins**: The returned map follows the lookup order (the main locale and its parents, then the fallback locale and its parents), so the first entry of each ISO code is its most specific translation.

### Alternative Names & Formatting

- **Default sentence-casing**: Translations are returned in sentence case for display as standalone UI labels.
- **Pass `altSymbol: ""` unless injecting alternative names**: Bundled translations ship no alternative names. By default, `altSymbol` is `"+"` which performs an extra lookup per ISO code and yields nothing. Pass `altSymbol: ""` to avoid this redundant lookup unless supplying `"<CODE>+"` entries via `other`.
- **Use the `formatter` callback**: When names need adaptation for inline, mid-sentence, or lowercase usage, pass a `formatter` callback to `localize()` rather than mutating strings afterwards.

### Tree-Shaking for Production Builds

- **Strip unused locales at compile time**: Include only required locales using `--dart-define=l10n-<locale>=true` flags during compilation. Once such a flag names a locale of this package, all its other locales are tree-shaken from the binary. To drop just a few locales instead, set them to false (`--dart-define=l10n-fr=false`).
- **Flag spelling**: The define name is `l10n-` followed by the locale identifier, either lowercased (`l10n-sw_cd`, `l10n-bs_cyrl`) or spelled like the locale (`l10n-sw_CD`, `l10n-bs_Cyrl`). Any other spelling raises no error: the flag is ignored.
- **Parent locales are kept automatically**: Enabling a regional or script locale also keeps the locales it falls back to (`l10n-sw_cd=true` keeps `sw`, `l10n-bs_cyrl=true` keeps `bs`), unless a parent is explicitly set to false.
- **Include every fallback locale**: A flag list must still cover the locales passed as `fallbackLocale`.
- **Flags are per package**: Only flags naming a locale bundled in this package switch it to opt-in mode. A flag list naming only locales that another l10n_* package bundles leaves every locale of this package in the build, so add a flag for a locale this package has (such as `l10n-en`).

### Custom Translations

- **Inject custom translations via constructor**: Pass `other` to `LanguagesLocaleMapper(other: ...)` to add or override translations without modifying package internals. The map is keyed by **locale identifier** (`"en"`, `"de_CH"`), and each value is an `IsoLocaleMapper<String>` keyed by ISO 639 code.
- **Supplying a built-in locale replaces it**: An entry whose key matches a bundled locale suppresses that locale's bundled data entirely. To extend rather than replace, start from the locale's data class (e.g. `EnLanguagesL10N()`) and add entries to its `map`.

---

## Examples

### 1. Basic Localization

```dart
import 'package:l10n_languages/l10n_languages.dart';

void main() {
  // Always create a fresh instance for single-use localization
  final mapper = LanguagesLocaleMapper();

  final isoCodes = {'ENG', 'FRA', 'DEU'};
  // Pass altSymbol: '' to skip redundant alternative name lookups
  final localized = mapper.localize(
    isoCodes,
    mainLocale: 'de',
    fallbackLocale: 'en',
    altSymbol: '',
  );

  for (final MapEntry(:key, :value) in localized.entries) {
    print('${key.isoCode} (${key.locale}): $value');
  }
}
```

### 2. Result Caching Pattern

```dart
import 'package:l10n_languages/l10n_languages.dart';

class LanguageDisplayService {
  // Cache the translated strings, NEVER the mapper instance
  final Map<String, String> _cache = {};

  String getLocalizedName(String isoCode, {String locale = 'en'}) {
    final cacheKey = '$isoCode:$locale';
    final cached = _cache[cacheKey];
    if (cached != null) return cached;

    // Create a new single-use instance on demand
    final mapper = LanguagesLocaleMapper();
    final results = mapper.localize(
      {isoCode},
      mainLocale: locale,
      fallbackLocale: 'en',
      altSymbol: '',
    );

    final name = results.values.firstOrNull ?? isoCode;
    _cache[cacheKey] = name;
    return name;
  }
}
```

### 3. Using Formatter for Inline / Lowercase Display

```dart
import 'package:l10n_languages/l10n_languages.dart';

void main() {
  final mapper = LanguagesLocaleMapper();

  final localized = mapper.localize(
    {'ENG', 'DEU'},
    mainLocale: 'fr',
    fallbackLocale: 'en',
    altSymbol: '',
    formatter: (isoLocale, translation) => translation.toLowerCase(),
  );

  // Yields lowercase translations suitable for inline text
  print(localized.values);
}
```

### 4. Custom and Overridden Translations

```dart
import 'package:l10n_languages/l10n_languages.dart';

void main() {
  final mapper = LanguagesLocaleMapper(
    other: {
      // Extend a bundled locale: start from its data class, then add entries.
      'en': EnLanguagesL10N()..map.addAll({'ART': 'Artificial Language'}),
      // Register a locale the package does not bundle.
      'tlh': IsoLocaleMapper(other: {'ENG': 'tlhIngan'}),
    },
  );

  final localized = mapper.localize(
    {'ENG', 'ART'},
    mainLocale: 'en',
    altSymbol: '',
  );
  print(localized.values); // Bundled English names, plus "Artificial Language".
}
```

### 5. Tree-Shaking Build Commands

Compile-time tree-shaking reduces application binary size by stripping unused locale tables.

**Flutter build:**

```console
$ flutter build apk --dart-define=l10n-en=true --dart-define=l10n-de=true --dart-define=l10n-sw_cd=true
```

**Dart CLI / Server:**

```console
$ dart run -Dl10n-en=true -Dl10n-de=true bin/server.dart
```
