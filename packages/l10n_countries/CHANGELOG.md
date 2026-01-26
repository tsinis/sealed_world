## 2.0.0

🎉 Third anniversary and new major release!

NEW FEATURES

- L10N values are now provided in sentence case!
- Optimized memory usage with lazy locale initialization - translations are now loaded on-demand instead of all at once.
- Reduced initial memory footprint by ~90% - only requested locales are instantiated.
- Added `availableLocales` getter to query all supported locales without materializing them.

BREAKING CHANGES

Previously, localized strings were provided in mixed lowercase (e.g., "islas Malvinas", in Spanish for `FLK` code) and sentence case. They are now unified and provided in sentence case only (e.g., "Islas Malvinas", in Spanish for `FLK` code) to preserve capitalization context for proper nouns and ensure immediate compatibility with independent UI labels.

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

## 1.3.1

CHORE

- Lower Dart SDK constraint from ^3.9.2 to ^3.9.0
- Enable and fix 10 new Dart Code Metrics rules (from the 1.32.0: October Update)

## 1.3.0

FIX

- Corrected Slovak country name for `CIV` to "Pobrežie Slonoviny".

DOCUMENTATION

- Improved documentation in README.

CHORE

- The Dart SDK was bumped to v3.9.2.

## 1.2.0

FIX

- Corrected Welsh official country name for Curaçao.
- Corrected Korean localization for British Indian Ocean Territory, Dominica, Mongolia, Wallis and Futuna and South Georgia.

## 1.1.1

CHORE

- The Dart SDK was bumped to v3.8.1.
- Update German and English translations.

## 1.1.0

NEW FEATURES

- Add formatter callback for custom translation logic.
- Add official country translations for the [Indonesian language](https://gitlab.com/restcountries/restcountries/-/merge_requests/76).

CHORE

- The Dart SDK was bumped to v3.8.0.
- Code has been formatted with the new Dart formatter.

DOCUMENTATION

- Improved documentation in README.

## 1.0.0

🎉 First stable release!

DOCUMENTATION

- Improved documentation and example.
- Removed duplicated localization.
- Fixed typos in the README.

## 0.1.0

- Initial release.
