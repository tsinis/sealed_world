---
name: l10n-currencies-localization
description: >-
  Translate ISO 4217 currency codes into localized currency names across 149
  locales with the l10n_currencies Dart/Flutter package. Use when working with
  CurrenciesLocaleMapper, localizing currency names, picking locale fallbacks,
  registering custom translations, or configuring compile-time tree-shaking of
  translation tables.
---

# Currency Localization with l10n_currencies

Guidelines and examples for localizing currency names across 149 locales using the `l10n_currencies` package.

## Setup

Add the package to the project:

- Dart projects: `dart pub add l10n_currencies`
- Flutter projects: `flutter pub add l10n_currencies`

Then import the single public library:

```dart
import 'package:l10n_currencies/l10n_currencies.dart';
```

The package has no dependencies and exposes `CurrenciesLocaleMapper`, `IsoLocaleMapper`, the `LocaleKey`/`LocaleMap` typedefs, and one data class per locale (e.g. `EnCurrenciesL10N`).

## Guidelines

### Mapper Lifecycle & Memory Optimization

- **Single-use only**: Always instantiate a new `CurrenciesLocaleMapper` for every localization request. Once `localize()` is called, internal maps are cleared to minimize memory footprint and subsequent calls throw an assertion error.
- **Never cache mapper instances**: Do not store `CurrenciesLocaleMapper` in static variables, long-lived services, dependency injection containers, or state objects.
- **Cache results, not mappers**: If localized names are accessed repeatedly, cache the returned `LocaleMap` or extracted `String` values.

### Locales and Fallbacks

- **Always provide a fallback**: Specify `fallbackLocale` when working with user-selected or device locales to guarantee a valid translation if the requested locale is missing.
- **ISO 4217 code format**: Pass three-letter uppercase ISO 4217 currency codes (e.g. `"USD"`, `"EUR"`, `"JPY"`, `"GBP"`).
- **Automatic language subtag fallback**: By default, `useLanguageFallback: true` resolves country-specific locales (e.g. `"en_US"`) to their base language (`"en"`) if the regional variant is unavailable.

### Formatting and Display

- **Default sentence-casing**: Translations are returned in sentence case for display as standalone UI labels.
- **Use the `formatter` callback**: When names need adaptation for inline, mid-sentence, or lowercase usage, pass a `formatter` callback to `localize()` rather than mutating strings afterwards.

### Tree-Shaking for Production Builds

- **Strip unused locales at compile time**: Include only required locales using `--dart-define=l10n-<locale>=true` flags during compilation. When any `l10n-*` flag is present, all unspecified locales are tree-shaken from the binary.
- **Always lowercase the flag suffix**: The define name is `l10n-` followed by the locale identifier **lowercased**, keeping underscores: `de_CH` becomes `l10n-de_ch`, `zh_Hant` becomes `l10n-zh_hant`, `zh_Hans_HK` becomes `l10n-zh_hans_hk`. A mismatched flag (such as `l10n-de_CH`) raises no error — the locale is silently stripped and its translations go missing at runtime.
- **Include every fallback**: A flag list must also cover the locales passed as `fallbackLocale` and any base language relied upon by `useLanguageFallback`.

### Custom Translations

- **Inject custom translations via constructor**: Pass `other` to `CurrenciesLocaleMapper(other: ...)` to add or override translations without modifying package internals. The map is keyed by **locale identifier** (`"en"`, `"de_CH"`), and each value is an `IsoLocaleMapper<String>` keyed by ISO 4217 code.
- **Supplying a built-in locale replaces it**: An entry whose key matches a bundled locale suppresses that locale's bundled data entirely. To extend rather than replace, start from the locale's data class (e.g. `EnCurrenciesL10N()`) and add entries to its `map`.
- **Pass `altSymbol: ""` unless injecting alternative names**: Alternative names are entries keyed `"<CODE>+"` (e.g. `"USD+"`). The bundled translations ship none, so the default `"+"` costs one extra lookup per ISO code and returns nothing. Only keep the default when `other` supplies `"<CODE>+"` entries.

---

## Examples

### 1. Basic Localization

```dart
import 'package:l10n_currencies/l10n_currencies.dart';

void main() {
  // Always create a fresh instance for single-use localization
  final mapper = CurrenciesLocaleMapper();

  final isoCodes = {'USD', 'EUR', 'GBP'};
  final localized = mapper.localize(
    isoCodes,
    mainLocale: 'de',
    fallbackLocale: 'en',
  );

  for (final MapEntry(:key, :value) in localized.entries) {
    print('${key.isoCode} (${key.locale}): $value');
  }
}
```

### 2. Result Caching Pattern

```dart
import 'package:l10n_currencies/l10n_currencies.dart';

class CurrencyDisplayService {
  // Cache the translated strings, NEVER the mapper instance
  final Map<String, String> _cache = {};

  String getLocalizedName(String isoCode, {String locale = 'en'}) {
    final cacheKey = '$isoCode:$locale';
    final cached = _cache[cacheKey];
    if (cached != null) return cached;

    // Create a new single-use instance on demand
    final mapper = CurrenciesLocaleMapper();
    final results = mapper.localize({isoCode}, mainLocale: locale, fallbackLocale: 'en');

    final name = results.values.firstOrNull ?? isoCode;
    _cache[cacheKey] = name;
    return name;
  }
}
```

### 3. Using Formatter for Inline / Lowercase Display

```dart
import 'package:l10n_currencies/l10n_currencies.dart';

void main() {
  final mapper = CurrenciesLocaleMapper();

  final localized = mapper.localize(
    {'USD', 'EUR'},
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
import 'package:l10n_currencies/l10n_currencies.dart';

void main() {
  final mapper = CurrenciesLocaleMapper(
    other: {
      // Extend a bundled locale: start from its data class, then add entries.
      'en': EnCurrenciesL10N()..map.addAll({'XBT': 'Bitcoin'}),
      // Register a locale the package does not bundle.
      'tlh': IsoLocaleMapper(other: {'USD': 'DarSeq'}),
    },
  );

  final localized = mapper.localize({'USD', 'XBT'}, mainLocale: 'en');
  print(localized.values); // Bundled English names, plus "Bitcoin".
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
