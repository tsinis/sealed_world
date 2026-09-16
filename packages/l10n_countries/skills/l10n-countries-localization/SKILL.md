---
name: l10n-countries-localization
description: >-
  Translate ISO 3166-1 Alpha-3 country codes into localized country names across
  193 locales with the l10n_countries Dart/Flutter package. Use when working with
  CountriesLocaleMapper, localizing country names, picking locale fallbacks,
  fetching official/alternative names, registering custom translations, or
  configuring compile-time tree-shaking of translation tables.
---

# Country Localization with l10n_countries

Guidelines and examples for localizing country names across 193 locales using the `l10n_countries` package.

## Setup

Add the package to the project:

- Dart projects: `dart pub add l10n_countries`
- Flutter projects: `flutter pub add l10n_countries`

Then import the single public library:

```dart
import 'package:l10n_countries/l10n_countries.dart';
```

The package has no dependencies and exposes `CountriesLocaleMapper`, `IsoLocaleMapper`, the `LocaleKey`/`LocaleMap` typedefs, and one data class per locale (e.g. `EnCountriesL10N`).

## Guidelines

### Mapper Lifecycle & Memory Optimization

- **Single-use only**: Always instantiate a new `CountriesLocaleMapper` for every localization request. Once `localize()` is called, internal maps are cleared to minimize memory footprint. Reuse is guarded only by an assertion: it throws in assertion-enabled builds (`dart test`, Flutter debug), while release builds strip the assertion and silently re-materialize the cleared locale data instead — wasting the memory saving rather than failing loudly.
- **Never cache mapper instances**: Do not store `CountriesLocaleMapper` in static variables, long-lived services, dependency injection containers, or state objects.
- **Cache results, not mappers**: If localized names are accessed repeatedly, cache the returned `LocaleMap` or extracted `String` values.
- **Always pass a locale**: Specify `mainLocale` or `fallbackLocale` (or provide translations via `other`). `localize()` returns an empty map when given none — it does not throw, so a missing locale fails silently.

### Locales and Fallbacks

- **Always provide a fallback**: Specify `fallbackLocale` when working with user-selected or device locales to guarantee a valid translation if the requested locale is missing.
- **ISO 3166-1 Alpha-3 code format only**: Pass three-letter uppercase ISO 3166-1 Alpha-3 country codes (e.g. `"USA"`, `"GBR"`, `"DEU"`, `"FRA"`). Alpha-2 (`"US"`) and numeric (`"840"`) codes are not bundled: they raise no error and are simply absent from the result.
- **Automatic language subtag fallback**: By default, `useLanguageFallback: true` resolves country-specific locales (e.g. `"en_US"`) to their base language (`"en"`) if the regional variant is unavailable.

### Alternative Names & Formatting

- **Default sentence-casing**: Translations are returned in sentence case for display as standalone UI labels.
- **Bundled alternative / official names**: Bundled translations include official/formal country names keyed with `"+"` (e.g. `"AFG+"` translates to `"Islamic Republic of Afghanistan"`). By default, `altSymbol: "+"` retrieves both common and formal names. Pass `altSymbol: ""` to retrieve only standard short country names and skip alternative name lookups.
- **Use the `formatter` callback**: When names need adaptation for inline, mid-sentence, or lowercase usage, pass a `formatter` callback to `localize()` rather than mutating strings afterwards.

### Tree-Shaking for Production Builds

- **Strip unused locales at compile time**: Include only required locales using `--dart-define=l10n-<locale>=true` flags during compilation. When any `l10n-*` flag is present, all unspecified locales are tree-shaken from the binary.
- **Always lowercase the flag suffix**: The define name is `l10n-` followed by the locale identifier **lowercased**, keeping underscores: `de_CH` becomes `l10n-de_ch`, `zh_Hant` becomes `l10n-zh_hant`, `zh_Hans_HK` becomes `l10n-zh_hans_hk`. A mismatched flag (such as `l10n-de_CH`) raises no error — the locale is silently stripped and its translations go missing at runtime.
- **Include every fallback**: A flag list must also cover the locales passed as `fallbackLocale` and any base language relied upon by `useLanguageFallback`.

### Custom Translations

- **Inject custom translations via constructor**: Pass `other` to `CountriesLocaleMapper(other: ...)` to add or override translations without modifying package internals. The map is keyed by **locale identifier** (`"en"`, `"de_CH"`), and each value is an `IsoLocaleMapper<String>` keyed by ISO 3166-1 Alpha-3 code.
- **Supplying a built-in locale replaces it**: An entry whose key matches a bundled locale suppresses that locale's bundled data entirely. To extend rather than replace, start from the locale's data class (e.g. `EnCountriesL10N()`) and add entries to its `map`.

---

## Examples

### 1. Basic Localization

```dart
import 'package:l10n_countries/l10n_countries.dart';

void main() {
  // Always create a fresh instance for single-use localization
  final mapper = CountriesLocaleMapper();

  final isoCodes = {'USA', 'GBR', 'DEU'};
  // Pass altSymbol: '' if you only want short names without formal '+' variants
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
import 'package:l10n_countries/l10n_countries.dart';

class CountryDisplayService {
  // Cache the translated strings, NEVER the mapper instance
  final Map<String, String> _cache = {};

  String getLocalizedName(String isoCode, {String locale = 'en'}) {
    final cacheKey = '$isoCode:$locale';
    final cached = _cache[cacheKey];
    if (cached != null) return cached;

    // Create a new single-use instance on demand
    final mapper = CountriesLocaleMapper();
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
import 'package:l10n_countries/l10n_countries.dart';

void main() {
  final mapper = CountriesLocaleMapper();

  final localized = mapper.localize(
    {'USA', 'DEU'},
    mainLocale: 'fr',
    fallbackLocale: 'en',
    formatter: (isoLocale, translation) => translation.toLowerCase(),
  );

  // Yields lowercase translations suitable for inline text
  print(localized.values);
}
```

### 4. Custom and Overridden Translations

```dart
import 'package:l10n_countries/l10n_countries.dart';

void main() {
  final mapper = CountriesLocaleMapper(
    other: {
      // Extend a bundled locale: start from its data class, then add entries.
      'en': EnCountriesL10N()..map.addAll({'UTO': 'Utopia', 'UTO+': 'Republic of Utopia'}),
      // Register a locale the package does not bundle.
      'tlh': IsoLocaleMapper(other: {'USA': 'yuQ'}),
    },
  );

  final localized = mapper.localize({'USA', 'UTO'}, mainLocale: 'en');
  print(localized.values); // Bundled English names, plus custom "Utopia".
}
```

### 5. Tree-Shaking Build Commands

Compile-time tree-shaking reduces application binary size by stripping unused locale tables.

**Flutter build:**

```console
$ flutter build apk --dart-define=l10n-en=true --dart-define=l10n-de=true --dart-define=l10n-de_ch=true
```

**Dart CLI / Server:**

```console
$ dart run -Dl10n-en=true -Dl10n-de=true bin/server.dart
```
