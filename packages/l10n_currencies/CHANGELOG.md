## 2.0.2

DOCUMENTATION

Docs only, no code changes:

- Added FOSSA status badge to the README (docs only, no code changes).

## 2.0.1

DOCUMENTATION

Docs only, no code changes:

- Improved CHANGELOG for clarity.
- Added LLM agent instructions to the README.

## 2.0.0

🎉 Third anniversary and new major release!

NEW FEATURES

- L10N values are now provided in sentence case!
- Tree-shakable via dart define flags.
- Optimized memory usage with lazy locale initialization - translations are now loaded on-demand instead of all at once.
- Reduced initial memory footprint by ~90% - only requested locales are instantiated.
- Added `availableLocales` getter to query all supported locales without materializing them.
- **Single-use design**: Mapper instances automatically free memory after `localize()` is called and cannot be reused. This ensures optimal memory efficiency - create a new instance if you need to localize again.

BREAKING CHANGES

- **Single-use design**: Mapper instances automatically free memory after `localize()` is called and cannot be reused. This ensures optimal memory efficiency - create a new instance if you need to localize again.

Previously, localized strings were provided in mixed lowercase (e.g., "japán jen", in Hungarian for `JPY` code) and sentence case. They are now unified and provided in sentence case only (e.g., "Japán jen", in Hungarian for `JPY` code) to preserve capitalization context for proper nouns and ensure immediate compatibility with independent UI labels.

**Justification:**
Capitalization is context-sensitive and cannot be reliably reconstructed from lowercase source strings. By providing values in sentence case, we ensure high-fidelity data for headers and labels. This was also part of [discussion in the past](https://github.com/tsinis/sealed_world/discussions/325).

**Migration:**

- If you use these values as standalone labels, no action is required (you can also remove your `formatter` callback, if not needed).
- If you require mid-sentence (inline) text, use the `formatter` callback to strictly adapt the casing, rather than relying on direct string manipulation.

```dart
final localized = mapper.localize(
  isoCodes,
  mainLocale: locale,
  formatter: (_, l10n) => l10n.toLowerCase(), // <-- e.g., inline usage
);
```

CHORE

- The Dart SDK was bumped to v3.10.4.

## 1.3.0

NEW FEATURES

- Expanded currency localization by adding translations for XCG (Caribbean guilder) and ZWG (Zimbabwean Gold) across 100+ locales (each).

FIX

- Corrected English currency name for `KGS` to "Kyrgyzstani Som".
- Corrected English currency name for `GYD` to "Guyanese Dollar".

DOCUMENTATION

- Improved documentation in README.

CHORE

- The Dart SDK was bumped to v3.9.2.

## 1.2.0

CHORE

- The Dart SDK was bumped to v3.8.1.

## 1.1.0

NEW FEATURES

- Add formatter callback for custom translation logic.

CHORE

- The Dart SDK was bumped to v3.8.0.
- Code has been formatted with the new Dart formatter.

DOCUMENTATION

- Improved documentation in README.

## 1.0.0

🎉 First stable release!

DOCUMENTATION

- Improved documentation and example.
- Fixed typos in the README.

## 0.1.0

- Initial release.
