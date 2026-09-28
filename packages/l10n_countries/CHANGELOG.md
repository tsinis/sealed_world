## 2.1.1

FIX

- Reviewed the Slovak (`sk`) locale against the official list of country names published by the Slovak Office of Geodesy, Cartography and Cadastre (ÚGKK SR), fixing 75 entries:
  - Replaced corrupted characters (e.g. `AzerbajǇan`, `ǅibutsko`, `Fiǆi`, `Feder໡cia`, `SevernéhoÌrska`) and typos (e.g. `Greécko`, `Holansko`, `Vianočnú ostrov`, `Spjoených`).
  - Fixed factual errors: Morocco was called a principality, French Guiana and the Democratic Republic of the Congo shared their short names with Guyana and the Republic of the Congo, and Eswatini was still named Svazijsko.
  - Updated outdated official names (e.g. `BOL`, `BRN`, `COM`, `LBY`, `IRL`, `BIH`) and aligned short names (e.g. `GBR`, `USA`, `KOR`, `PRK`) and Slovak exonyms (e.g. `BES`, `CUW`, `MTQ`, `SLB`, `VGB`) with the official list.
  - Disambiguated the French (`MAF`) and Dutch (`SXM`) parts of Saint Martin, which share one official name.
- Fixed short names shared by two different countries in other locales:
  - Serbian (`sr`): `GIN` was translated as Guyana (both short and official name), now reads "Гвинеја".
  - Polish (`pl`): `SSD` was translated as Sudan, now reads "Sudan Południowy".
  - Albanian (`sq`): `NGA` now reads "Nigeria" instead of repeating Niger's "Nigeri".
  - Hungarian (`hu`): `ASM` now reads "Amerikai Szamoa" instead of repeating Samoa's "Szamoa".
  - Finnish (`fi`): `VGB` and `VIR` now carry their "Brittiläiset" and "Yhdysvaltain" prefixes.
  - Sundanese (`su`): `TWN` now reads "Taiwan" instead of repeating China's "Tiongkok".
  - Persian (`fa`), Croatian (`hr`), Portuguese (`pt`) and Serbian (`sr`): the French (`MAF`) and Dutch (`SXM`) parts of Saint Martin are now disambiguated.
- Fixed other data errors:
  - Croatian (`hr`): added the missing space in the `HKG` and `MAC` official names, and `NLD` official name now reads "Kraljevina Nizozemska" instead of "Holandija".
  - Portuguese (`pt`): `MAF` official name now reads "Saint-Martin" instead of "saint Martin".
  - Nepali (`ne`): removed the unbalanced opening parenthesis from `MAC`.
  - Dutch (`nl`): `HMD` now reads "Heard- en McDonaldeilanden".
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
