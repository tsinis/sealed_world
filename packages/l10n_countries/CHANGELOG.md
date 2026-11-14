## 2.3.0

FIX

- Regional and script locales now fall back to their parent locales instead of straight to the language: `zh_Hant_TW` → `zh_Hant` → `zh`, `zh_TW` and `zh_HK` → `zh_Hant`, `pt_MO`, `pt_MZ` (and other CLDR children) → `pt_PT` → `pt`, `nb` and `nn` → `no`, `fil` → `tl`, plus the legacy `iw`, `in` and `ji` codes. Previously, for example, `bs_Cyrl_BA` returned the Latin script names of `bs`.
- Locales are normalized before the lookup (`zh-Hant-TW`, `pt-pt`, `en_US` and `en_US.UTF-8` become `zh_Hant_TW`, `pt_PT` and `en_US`), also with `useLanguageFallback: false`. The locale as given is still tried first, so custom locale keys keep working.
- Translations injected via `other` are no longer cleared by `localize()`: a `const` map no longer throws an `UnsupportedError`, and an `IsoLocaleMapper` shared between mappers no longer returns an empty map on its second use.
- `l10n-<locale>=false` now drops only that locale, previously it dropped all of them.
- `formatter` receives the ISO code of an alternative name with its symbol (`AFG+`) also when several locales match, previously only when a single one did. A formatter that compares `isoLocale.isoCode` with an ISO code has to drop the symbol first to treat both names alike.
- `nn` falls back to `no`, so the 134 country names that `nn` lacks are no longer missing.

NEW FEATURES

- Enabling a regional or script locale keeps the locales it falls back to (`l10n-sw_cd=true` also keeps `sw`), unless they are set to false.
- Locale defines also accept the locale spelling (`l10n-sw_CD`), not only the lowercase one.
- In debug builds, `localize()` prints a warning the first time a requested locale and all its parents are missing because the `l10n-*` defines stripped them, naming the define that keeps them. An ignored define strips a language silently otherwise: `l10n-en=true` with `l10n-pt_BR=true` keeps English only, so `pt_BR` finds neither `pt_BR` nor `pt`.

IMPROVEMENTS

- `localize()` returns an unmodifiable view instead of copying its result, and no longer copies the set of ISO codes.
- Each locale class passes its translations straight to `IsoLocaleMapper` instead of copying them into an empty map in its constructor: one map less for every locale a `localize()` call uses, and about 1% fewer instructions in a benchmark that localizes all codes for every locale.
- `localize()` reads the names straight from each matched locale in a single pass: bundled locales are no longer stored in the mapper's `map`, no intermediate map is built per locale, and there is no second lookup per ISO code when more than one locale matches.

DOCUMENTATION

- Documented the order of the returned map, which `sealed_*` packages rely on: the main locale and its parents first, then the fallback locale and its parents.
- Documented that only defines of locales bundled in this package switch it to opt-in mode, and that defines of other locales, such as `l10n-pt_BR` or the `l10n-fil` alias, are ignored (so `l10n-en=true` with `l10n-pt_BR=true` keeps English only, and Flutter's `fil` needs `l10n-tl`).
- Documented how much the bundled locales add to a build, that an injected locale replaces the bundled one with the same key entirely, and that importing several `l10n_*` packages in one file needs `show` or an import prefix.
- Documented that Swiss German (`gsw`) is the only Flutter locale that is not bundled, that less common locales translate only a part of the names, that a script locale falls back to its language even in another script, and what `localize()` returns without a locale.
- The package description states 193 locales, not 194.
- Corrected the single-use notes: bundled locales are built per `localize()` call and never stored in the mapper, so a used mapper only drops the translations injected via `other`. Removed the unmeasured "~90%" memory claim.
- Documented the coverage of the 193 locales: 115 languages have at least 90% of the names, 59 have a part of them, and 19 regional and script locales hold only the names that differ from their parent locales.

CHORE

- The mapper is generated from a single template shared by all `l10n_*` packages (`dart run :l10n_mapper` in `tools/`), and CI now runs the tree-shaking tests.
- The Dart SDK was bumped to v3.13.0, the code uses its `new()` constructors and private named parameters. The API is the same.
- The tree-shaking test checks that the name it expects to be stripped is in a full build: the name it looked for was spelled differently than in the data, so that check passed without testing anything.
- The tests that all `l10n_*` packages share (`locale_resolution_test.dart`, `mapper_optimization_test.dart` and the tree-shaking test) are generated from the same templates by `dart run :l10n_mapper`, so they no longer drift apart. They also check that every alternative name in the data files is returned with the default `altSymbol`, that a define keeps the explicit parents of the fallback table (`l10n-nn=true` keeps `no`), that the defines of locales the package does not bundle are ignored, aliases (`l10n-fil`) and regional locales (`l10n-pa_PK`, `l10n-pt_BR`) included, and that a stripped locale is reported once in debug builds.
- The generated mapper lists the locales in locale order, not file name order, so `availableLocales` has `zh` before `zh_Hant` (and `bs` before `bs_Cyrl`) in every `l10n_*` package.
- The tests of the mapper clean-up now use injected translations: with bundled locales only, the mapper's map is empty before `localize()` too, so they passed without testing anything.

## 2.2.0

FIX

- Proofread all locales, fixing 217 entries across 62 of them: misspellings, broken characters and missing spaces.

## 2.1.1

FIX

- Reviewed the Slovak (`sk`) locale against the official list of country names published by the Slovak geodesy and cartography authority, fixing 75 entries:
  - Replaced corrupted characters (e.g. in `AZE`, `DJI`, `FJI`, `KNA`, `GBR`) and typos (e.g. in `GRC`, `NLD`, `CXR`, `UMI`).
  - Fixed factual errors: Morocco was called a principality, French Guiana and the Democratic Republic of the Congo shared their short names with Guyana and the Republic of the Congo, and Eswatini still had its former name.
  - Updated outdated official names (e.g. `BOL`, `BRN`, `COM`, `LBY`, `IRL`, `BIH`) and aligned short names (e.g. `GBR`, `USA`, `KOR`, `PRK`) and Slovak exonyms (e.g. `BES`, `CUW`, `MTQ`, `SLB`, `VGB`) with the official list.
- Fixed short names shared by two different countries in other locales:
  - Serbian (`sr`): `GIN` was translated as Guyana (both short and official name).
  - Polish (`pl`): `SSD` was translated as Sudan.
  - Albanian (`sq`): `NGA` repeated the name of Niger.
  - Hungarian (`hu`): `ASM` repeated the name of Samoa.
  - Finnish (`fi`): `VGB` and `VIR` both lacked their British and United States qualifiers.
  - Sundanese (`su`): `TWN` repeated the name of China.
- Disambiguated the French (`MAF`) and Dutch (`SXM`) parts of Saint Martin, which shared a short or an official name in the Czech (`cs`), Persian (`fa`), Croatian (`hr`), Portuguese (`pt`), Slovak (`sk`) and Serbian (`sr`) locales.
- Fixed other data errors:
  - Croatian (`hr`): added the missing space in the `HKG` and `MAC` official names, and the `NLD` official name now matches its short name.
  - Portuguese (`pt`): capitalized the `MAF` official name.
  - Nepali (`ne`): removed the unbalanced opening parenthesis from `MAC`.
  - Dutch (`nl`): added the missing space in the `HMD` short name.
  - Trimmed stray whitespace in Japanese (`ja`), Korean (`ko`), Polish (`pl`) and Urdu (`ur`) names.

## 2.1.0

FIX

- Renamed `NRU` in the English locale to "Naoero" ("Republic of Naoero" for the official name), following the [United Nations' update of the country's name](https://www.un.org/en/about-us/member-states/naoero). Other locales keep their own exonyms (German still reads "Nauru").
- Added the missing `NRU` self-translation to the Nauruan (`na`) locale, which previously had no entry for its own country.

IMPROVEMENTS

- `availableLocales` is now built on first read instead of in the constructor, making a `localize()` call (mapper construction included) around 15% faster. Mappers are single-use, so every call previously paid for materializing the full 193-locale set even when it was never read.

DOCUMENTATION

- Added a bundled agent skill (`skills/l10n-countries-localization`), compliant with the [Agent Skills specification](https://agentskills.io), installable via `dart run skills@ get`.
- Replaced the README's inline LLM agent instructions with a pointer to that skill.

## 2.0.3

TEST

- Integrated `dartdoc_test` validation for code samples in documentation comments.

DOCUMENTATION

- Fixed the `CountriesLocaleMapper.localize` example code snippet to instantiate the mapper.

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
- Updated Indonesian country translations.

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
