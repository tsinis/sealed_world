## 2.3.0

FIX

- Regional and script locales now fall back to their parent locales instead of straight to the language: `zh_Hant_TW` → `zh_Hant` → `zh`, `zh_TW` and `zh_HK` → `zh_Hant`, `pt_MO`, `pt_MZ` (and other CLDR children) → `pt_PT` → `pt`, `nb` and `nn` → `no`, `fil` → `tl`, plus the legacy `iw`, `in` and `ji` codes. Previously, for example, `bs_Cyrl_BA` returned the Latin script names of `bs`.
- Locales are normalized before the lookup (`zh-Hant-TW`, `pt-pt`, `en_US` and `en_US.UTF-8` become `zh_Hant_TW`, `pt_PT` and `en_US`), also with `useLanguageFallback: false`. The locale as given is still tried first, so custom locale keys keep working.
- Translations injected via `other` are no longer cleared by `localize()`: a `const` map no longer throws an `UnsupportedError`, and an `IsoLocaleMapper` shared between mappers no longer returns an empty map on its second use.
- `l10n-<locale>=false` now drops only that locale, previously it dropped all of them.
- `formatter` receives the ISO code of an alternative name with its symbol (`USD+`) also when several locales match, previously only when a single one did. A formatter that compares `isoLocale.isoCode` with an ISO code has to drop the symbol first to treat both names alike.
- The `sd` (Sindhi, Arabic script) name of `RUB` was in Devanagari, the script of `sd_Deva`.

NEW FEATURES

- Enabling a regional or script locale keeps the locales it falls back to (`l10n-sw_cd=true` also keeps `sw`), unless they are set to false.
- Locale defines also accept the locale spelling (`l10n-sw_CD`), not only the lowercase one.
- Defines of the locales that the fallback table gives an explicit parent work too: language code aliases (`l10n-fil=true` keeps `tl`) and CLDR regional locales whose parent is not their language (`l10n-pa_PK=true` keeps `pa_Arab` and `pa`, also `zh_TW`, `pt_AO` and the like). Previously such a define was ignored. Defines of other regional locales, such as `l10n-pt_BR`, are still ignored.
- Added names for `XCG`, `ZWG`, `TWD` and `KRW` where missing (also to regional and script locales such as `zh_Hant`, `sr_Latn` and `pt_PT`), and for the ISO 4217 codes `XAU`, `XAG`, `XPT`, `XPD`, `XDR`, `XTS`, `XBA`, `XBB`, `XBC` and `XBD`: 642 names across 87 locales, from CLDR 48 (ICU 78). The `XDR` names of `bs`, `bs_Cyrl`, `hr`, `id`, `sr` and `sr_Latn` and the `XBD` name of `sk` were corrected, CLDR has them wrong.

IMPROVEMENTS

- `localize()` returns an unmodifiable view instead of copying its result, and no longer copies the set of ISO codes.
- Each locale class passes its translations straight to `IsoLocaleMapper` instead of copying them into an empty map in its constructor: one map less for every locale a `localize()` call uses, and about 1.5% fewer instructions in a benchmark that localizes all codes for every locale.
- Bundled locales, which ship no alternative names, are looked up without the alternative name symbol. Translations injected via `other` still get their alternative names.
- `localize()` reads the names straight from each matched locale in a single pass: bundled locales are no longer stored in the mapper's `map`, and no intermediate map is built per locale. Together with the changes above, localizing all 171 ISO codes with `de_CH` as the main locale and `en` as the fallback takes 36 µs instead of 135 µs in 2.2.0 (AOT, default `altSymbol`).

DOCUMENTATION

- Documented the order of the returned map, which `sealed_*` packages rely on: the main locale and its parents first, then the fallback locale and its parents.
- Documented that only defines of locales bundled in this package, or of the locales whose fallback table parent leads to them, switch it to opt-in mode, and that defines of other regional locales are ignored.
- Documented that Swiss German (`gsw`) is the only Flutter locale that is not bundled, that less common locales translate only a part of the names, that a script locale falls back to its language even in another script, and what `localize()` returns without a locale.
- Removed the advice to pass `altSymbol: ""` from the README and the agent skill, it no longer makes a difference.

CHORE

- The mapper is generated from a single template shared by all `l10n_*` packages (`dart run :l10n_mapper` in `tools/`), and CI now runs the tree-shaking tests.
- The Dart SDK was bumped to v3.13.0, the code uses its `new()` constructors and private named parameters. The API is the same.
- The tree-shaking test checks that the name it expects to be stripped is in a full build: the name it looked for was spelled differently than in the data, so that check passed without testing anything.
- The tests that all `l10n_*` packages share (`locale_resolution_test.dart`, `mapper_optimization_test.dart` and the tree-shaking test) are generated from the same templates by `dart run :l10n_mapper`, so they no longer drift apart. They also check that every alternative name in the data files is returned with the default `altSymbol`, and the defines of the fallback table locales, multi-step ones included (`l10n-zh_Hant_HK`, `l10n-zh_MO`).
- The generated mapper lists the locales in locale order, not file name order, so `availableLocales` has `zh` before `zh_Hant` (and `bs` before `bs_Cyrl`) in every `l10n_*` package.

## 2.2.0

FIX

- Proofread all locales, fixing 105 entries across 47 of them: misspellings, broken characters and missing spaces.

## 2.1.0

IMPROVEMENTS

- `availableLocales` is now built on first read instead of in the constructor, making a `localize()` call (mapper construction included) around 25% faster. Mappers are single-use, so every call previously paid for materializing the full locale set even when it was never read.

DOCUMENTATION

- Added a bundled agent skill (`skills/l10n-currencies-localization`), compliant with the [Agent Skills specification](https://agentskills.io), installable via `dart run skills@ get`.
- Replaced the README's inline LLM agent instructions with a pointer to that skill.
- Documented that bundled translations ship no alternative names, so passing `altSymbol: ""` skips a redundant lookup per ISO code.

## 2.0.3

TEST

- Integrated `dartdoc_test` validation for code samples in documentation comments.

DOCUMENTATION

- Fixed the `CurrenciesLocaleMapper.localize` example code snippet to instantiate the mapper.

## 2.0.2

DOCUMENTATION

Docs only, no code changes:

- Added FOSSA status badge to the README.

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
