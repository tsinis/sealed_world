## 3.5.0

NEW FEATURES

- Three flags that had no emblem painter at all now have one: Gibraltar
  (`GIB`), Dominica (`DMA`) and Zimbabwe (`ZWE`).
  `MultiElementPainter.paintFlagElements` returns `null`, so a
  `CustomElementsProperties` with no matching `elementsBuilder` renders as
  nothing and its palette sits unused; that is what these three were doing.
- `BadgeArtwork` holds a badge's layers as a flat run of numbers. A layer is
  an opcode followed by its coordinates, given as fractions of the badge box,
  so the artwork still scales with the flag. `BadgeLayer` pairs that geometry
  with a palette index, which keeps the colors in the flag data where every
  other element keeps them.
  Layers that follow one another in the same color are filled as a single
  path, and the built paths are cached for the last two box sizes, so a flag
  shown in a list and in a detail view at once does not rebuild either.

IMPROVEMENTS

- **Every flag costs the engine fewer draw calls.** Measured across the whole
  catalogue at list size, the 250 flags went from 2,088 draw commands to 1,359
  (-35%), from 400 clips to 285 (-29%), and from five offscreen layers to none.
  The average flag went from 8.4 draws to 5.4 and the worst from 65 to 18.
  Impeller's GLES backend re-issues the complete GL state for every draw
  command (flutter/flutter#192147), so on the mid-range Android devices that
  run it this is the number that decides the frame rate of a long flag list.
  The per-flag budget is recorded in `flag_draw_ops.json` and enforced by a
  test. The worst flag now costs 18 draws where it used to cost 65.
  - Stripes that share a color are filled as one path: the United States'
    thirteen stripes are two draw calls, not thirteen.
  - A chain of nested stars of the same color is filled as one path: the Cook
    Islands' ring of fifteen stars is one draw call, not fifteen, and
    `StarPainter` turns a star's points rather than the canvas.
  - The fifty stars of the United States are one path with fifty contours.
  - The Union Jack is five draw calls instead of eleven, with its diagonals
    batched per color and its cross filled per color, which also speeds up
    the fifteen ensigns built on it.
  - Korea's twelve trigram bars are one path, Georgia's four small crosses are
    two, and Georgia no longer paints its emblem once per element (it was
    drawing all four crosses four times over).
  - `SimpleShieldPainter` no longer opens an offscreen layer for opaque
    quadrants, which removes the last `saveLayer` from the static flag path.
  - `MultiElementPainter` no longer re-clips to the flag bounds its caller has
    already clipped to. The shader path does that clip itself now, inside its
    content scale, which is where it belongs: elements are allowed to overhang
    the flag body, and the recording is what the shader distorts.
  - Korea's taeguk is one path per color instead of four half-discs.
  - **Twenty-four hand-written emblems became cached artwork.** Angola,
    Antarctica, Albania, Cyprus, Eritrea, Hong Kong, Iran, Iraq, the Isle of
    Man, Kenya, Lebanon, Montenegro, the Norfolk Island pine, Papua New
    Guinea, San Marino, Serbia, Slovakia, Spain, Sri Lanka, Tajikistan,
    Uganda, Zambia and the shahada of Saudi Arabia and Afghanistan were
    chains of `cubicTo` calls that rebuilt their whole path on every paint.
    `ListView.builder` disposes a row when it leaves the viewport, so that
    rebuild was paid again every time the row scrolled back in. They are
    `BadgeArtwork` tables now: built once per size and reused, and straight
    segments rather than curves, which is what the rasterizer flattens them to
    anyway. Together those files went from 19,724
    lines to 3,316, and every full-size golden they have stayed within 1.6% of
    its pixels, none of them differing by more than a quarter of a channel.
  - The shahada was drawing the **same accumulating path eight times** as it
    built the glyphs up - two contours, then six, then seventeen, up to
    forty-two, all in one color. Seven of those eight draws rasterized
    pixels the eighth would cover. It is two now, and the second is there for
    weight rather than for shape: the script is sub-pixel in a list, where the
    edge opacity those overlapping passes produced is what makes it read as
    writing at all.
  - Spain's arms went from 13 draws to 9, Serbia's from 16 to 11, Montenegro's
    from 6 to 4, Eritrea's wreath and Tajikistan's crown from 3 to 1.
  - Every badge is now flat polygons rather than curves, and layers that
    cannot change places are filled together. Across the fifteen badges that
    is 32% fewer coordinates and 32% fewer lines, with the emblems unchanged
    to the eye; nothing was merged where a later layer of the same color
    carried detail on top of an earlier one.
- `CustomElementsPainter.proportionalBounds` and the new `badgePaint` read the
  custom element out of `elementsProperties` by type rather than taking the
  first entry, so a flag can keep a shape ahead of its badge in the paint
  order. Dominica now does exactly that, drawing its disc from flag data and
  the emblem on top.
- `RectanglePainter.rectangleBounds` exposes where a rectangle element lands,
  so a painter that only needs the box no longer has to draw it to find out.
- The twelve badge painters added in 3.5.0 shrank from 13,131 lines to roughly
  2,000 with identical output.

FIX

- Elements that overhang the flag body are clipped on the shader path by the
  painter that records it, rather than by `MultiElementPainter`. Bosnia and
  Herzegovina's stars are cut off by the edge on the real flag, and a waved
  flag scales its content inside a larger recording, so the clip has to be
  applied inside that scale to cut them in the same place.
- Korea's taeguk no longer has a hairline straight across it. It was built
  from four anti-aliased half-discs whose flat edges all met on the same
  diameter, so each covered about half of those pixels and the background
  showed through between them.
- Currency and language dual flags that reused these countries' properties
  without an `elementsBuilder` left their emblems unpainted. `GIP`, `ZWG` and
  the Ndebele, Shona, Chichewa, Tsonga, Venda and Xhosa flags render their
  badge now.

TEST

- Added `flag_draw_ops_test.dart`: it paints every flag through the real
  `StripesPainter` at list size, counts every canvas command, and fails if any
  flag or the catalogue as a whole costs more than the numbers recorded in
  `flag_draw_ops.json`. Regenerate them with `UPDATE_DRAW_OPS=1 flutter test`.
- Added `badge_artwork_test.dart` for the geometry encoding itself: opcode
  handling, absolute coordinates, color resolution, and that packing happens
  once rather than per paint.
- `example/integration_test/flag_list_perf_test.dart` with
  `test_driver/perf_driver.dart` scrolls a flag-only list and a dense flag grid
  under `flutter drive --profile` and writes the frame timings to
  `example/benchmarks/local/`, so a change can be measured on a desktop before
  it reaches a device. `example/benchmarks/list.yaml` is the matching Maestro
  flow for the Flashlight device run, which the existing `test.yaml` did not
  cover because it drives the shader settings page.

NEW FEATURES

- Twelve flags now have their own badge painter instead of sharing the generic
  shield one: `AiaPainter`, `AndPainter`, `BmuPainter`, `EcuPainter`,
  `FjiPainter`, `FlkPainter`, `IotPainter`, `JeyPainter`, `MsrPainter`,
  `PcnPainter`, `SgsPainter` and `TcaPainter`. Anguilla's dolphins, Andorra's
  quartered escutcheon, Bermuda's lion, Ecuador's condor, Fiji's arms, the
  Falklands' ram and ship, the British Indian Ocean Territory's palm and crown,
  Jersey's three leopards, Montserrat's Erin, Pitcairn's anchor, South Georgia's
  seal and penguin, and the Turks and Caicos conch, lobster and cactus are all
  drawn properly now, in place of a four-color quartered shield.
- `CustomElementsPainter.proportionalBounds` lays out artwork that has to keep
  a fixed width-to-height ratio. The element's `widthFactor` and `heightFactor`
  still describe the box it fills at the flag's own aspect ratio, but when the
  flag is drawn wider or narrower the artwork is fitted into that box instead
  of being stretched with it.

IMPROVEMENTS

- Those twelve flags render identically on every platform. The shared shield
  painter stroked a curved path and composited its quarters through `saveLayer`
  and `clipPath`, which are not pixel-stable across rasterizer backends, so
  their golden tests had to be skipped off Linux. The new painters only fill
  cubic paths, and the skip list is gone.
- Badge colors come from the construction sheets each flag entry links to
  rather than from the emoji palette, so Montserrat's ground is brown earth
  again and Pitcairn, Jersey, Bermuda and the Turks and Caicos match the colors
  the rest of the package uses.
- Montserrat's shield regained the grey rim the real badge has, its cross is
  dark wood rather than black, and Erin is no longer bald; Anguilla's shield
  lost the gold rim it never had.
- South Georgia's and the Falkland Islands' badges now include the scroll under
  the shield, Fiji's lion holds its charge again, and the British Indian Ocean
  Territory's crown is drawn whole; its arches and crosses only read as a crown
  together.
- Badge placement moved fully into flag data. Each badge is positioned and
  scaled by `offset`, `heightFactor` and `widthFactor` alone, so it follows the
  flag's aspect ratio like every other element. The British Indian Ocean
  Territory no longer needs a separate rectangle for the palm trunk.
- Anguilla (`AIA`), Fiji (`FJI`), Jersey (`JEY`), Montserrat (`MSR`) and the
  Turks and Caicos Islands (`TCA`) are no longer marked `isSimplified: true`.
  Their badges are accurate now, so they moved to `null`: suitable for everyday
  use, while still not claiming to be a strictly official rendition.
- The Turks and Caicos badge is sized off the official flag rather than by eye.
  It now spans 0.4292 of the flag height, matching the published construction to
  within a pixel.

REFACTOR

- Cleared the three standing TODOs in the custom painters, with every affected
  flag rendering pixel for pixel as before:
  - `DavidStarPainter` builds each triangle of the hexagram as a `Path` instead
    of passing the canvas and paint down, which drops its long parameter list,
    and its rotation is now scoped by `save`/`restore`.
  - `AlmondPainter` (Guam and Eswatini) scopes both of its branches the same
    way, and no longer undoes a translation that `restore` already undoes.
  - `TaegukgiPainter` describes its four trigrams as a const table and draws
    them in a loop, in place of four near-identical calls that needed a long
    parameter list.

## 3.4.0

FIX

Inherited from `sealed_countries` 3.4.0:

- `NRU`/`NR` is now named "Naoero" ("Republic of Naoero" officially), following the [United Nations' update of the country's name](https://www.un.org/en/about-us/member-states/naoero). This package re-exports `sealed_countries`, so any flag list, picker, or label showing `name.common` will display the new name. Flag artwork and all codes are unchanged.

IMPROVEMENTS

Inherited from `sealed_countries` 3.4.0:

- `availableLocales` is now built on first read instead of in the constructor, making a `localize()` call (mapper construction included) around 15% faster. Mappers are single-use, so every call previously paid for materializing the full locale set even when it was never read.

DOCUMENTATION

- Added a bundled agent skill (`skills/world-flags-widgets`), compliant with the [Agent Skills specification](https://agentskills.io), installable via `dart run skills@ get`.
- Replaced the README's inline LLM agent instructions with a pointer to that skill.

## 3.3.0

FIX

- Fixed an issue where the decoration (like border radius) provided to `DualFlag` was only applied to the background flag and not the foreground flag. Now both flags in `DualFlag` correctly receive the decoration.

REFACTOR

- Added `@pragma("vm:deeply-immutable")` optimization to `Capital`, `CapitalInfo`, `Gini`, `LatLng`, `Maps`, and `PostalCode` classes.
- Deprecated sub-classing `Region`, `LanguageFamily` and `WritingSystem` via `@Deprecated.subclass(...)` to prepare for making them `final` in the next major version.

CHORE

- The Dart SDK was bumped to v3.12.0.

TEST

- Integrated `dartdoc_test` validation for code samples in documentation comments.

DOCUMENTATION

- Fixed documentation code sample (code examples) issues.

## 3.2.0

NEW FEATURES

- Added new conversion methods for enum-to-object and object-to-enum mappings. New `fromEnums` and `toEnums` extension methods are added to `SealedWorldNullableIterableIsoExtension` to facilitate mapping between ISO objects and enums.

TEST

- Added new tests for the enum mapping methods, ensuring correct functionality and coverage.

## 3.1.0

NEW FEATURES

- Introduced `DualFlag` widget — displays two flags split by a configurable angle (default 45°) for a given ISO item. When both primary and secondary flags exist, renders a split view; otherwise falls back to a single flag.
- Added `CurrencyFlag` widget — renders a country flag for a given `FiatCurrency`, with built-in default mappings for all fiat currencies to their primary country flags. Also provides secondary country flag mappings for dual-flag display.
- Added `LanguageFlag` widget — renders a country flag for a given `NaturalLanguage`, with built-in default mappings for all natural languages to their primary country flags (including constructed languages). Also provides secondary country flag mappings for dual-flag display.
- Added `DualFlagClipper` — a `CustomClipper` that clips along a line through the center at any angle, supporting horizontal, vertical, and diagonal splits.
- Added `MaybeWidget` — a utility widget for conditionally wrapping or building widgets.
- Added `copyWith` extensions for `FlagProperties`, `ElementsProperties`, and `CustomElementsProperties`.
- All `copyWith` methods across the ecosystem now support resetting nullable fields to `null` via domain-invalid sentinel values (see underlying packages for details). In this package: pass a negative value for positive-only `double?`/`int?` fields (`height`, `width`, `aspectRatio`, `widthFactor`, `angle`), and an empty list for `List?` fields (`elementsProperties`).

REFACTOR

- `BasicFlag` now auto-resolves the elements painter from `FlagProperties.baseElementType` when no explicit `elementsBuilder` is provided. This means `BasicFlag(properties)` is now sufficient for all standard flag types (star, rectangle, ellipse, moon, triangle, multi-element) — the correct painter is selected automatically at build time.
- Deprecated `StarFlag`, `MoonFlag`, `EllipseFlag`, `RectangleFlag`, `TriangleFlag`, and `MultiElementFlag` — use `BasicFlag(properties)` instead. These subclasses will be removed in the next major version.
- Replaced all internal usages of the deprecated flag subclasses with `BasicFlag` in all flag maps.
- Added missing `baseElementType`s to `flagChlProperties`, `flagChnProperties`, `flagDjiProperties`, `flagEthProperties`, and `flagEurProperties`.
- Reorganized ISO flag widgets (`IsoFlag`, `CurrencyFlag`, `LanguageFlag`, `DualFlag`) into a dedicated `flags/iso/` subdirectory.
- Moved `MaybeWidget` from `world_countries` to `world_flags` package.
- Optimized Flutter imports with explicit `show` clauses.

CHORE

- Updated `sealed_countries` to v3.1.0 — added RTL support for phone code formatting (`isRtl` parameter in `phoneCode()`).

## 3.0.1

REFACTOR

- Added `item` comparison to `FlagShaderSurface` change detection logic to ensure proper updates when the item changes.
- Adjusted Nepal flag (`NplPainter`) stroke paint configuration by explicitly setting `strokeMiterLimit` to prevent miter-to-bevel fallback on acute angles. This ensures the triangle apexes render as sharp points regardless of the flag's aspect ratio.

DOCUMENTATION

- Added `platforms` section to `pubspec.yaml` to explicitly declare support for **all official Flutter platforms**.
- Added LLM agent instructions to the README.
- Added FOSSA status badge.

## 3.0.0

🎉 Third anniversary and new major release!

NEW FEATURES

- Animated shader delegate system (`AnimatedFlagShaderDelegate`, `StaticFlagShaderDelegate`).
- Pixel ratio support in flag shaders.

- New `namesCommonNative` method on ISO (`IsoTranslated`) classes, returning the native name for the given locale as a single string.
- Enhanced locale parsing to support three-letter codes.

BREAKING CHANGES

- **Moon shape API change**: The `Moon` class now uses `offsetDx` and `offsetDy` parameters instead of `Offset offset` to enable `@pragma("vm:deeply-immutable")` optimization.

**Migration Guide:**

If you're using the `Moon` shape directly in your code:

```dart
// Before
const moon = Moon(radius: 0.8, offset: Offset(0.25, 0));

// After
const moon = Moon(radius: 0.8, offsetDx: 0.25, offsetDy: 0);
```

If you're accessing the offset field:

```dart
// Before
final offsetX = moon.offset.dx;
final offsetY = moon.offset.dy;

// After
final offsetX = moon.offsetDx;
final offsetY = moon.offsetDy;
```

This change improves performance by allowing the Dart VM to optimize `Moon` instances as deeply immutable, which was previously blocked by the `Offset` type (from the `dart:ui` library).

BREAKING CHANGES (in underlying Dart packages)

- L10N values and `namesNative` are now provided in sentence case.
- `JsonObjectMap` - no longer nullable.
- `List<TranslatedName> get translations` was removed (was previously deprecated), refer to `.l10n.translatedNames({this})` instead.
- Finalized base classes (`WorldCountry`, `FiatCurrency`, `NaturalLanguage`, etc.) instances - sealed classes with private constructors, you can create your own instances via `CountryCustom` for example:

```dart
const custom = CountryCustom(code: "XTL", codeShort: "XT"); // Custom country.
```

Changes from underlying L10N packages:

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

- Corrected latitude for Bouvet Island.
- Updated Indonesian country translations.
- Updated Argentine peso symbol.
- All deprecated APIs from previous versions have been removed.
- The Dart SDK was bumped to v3.10.8.

## 2.9.1

NEW FEATURES

- This version introduces named (Dart 3.10 dot-shorthand compatible) constructors for ISO classes, refactoring the ISO data files to use a factory constructor pattern with extension types. The changes transform the direct constructor calls into a more structured factory-based approach while maintaining backward compatibility. For example, instead of using `CountrySvk()`, you can now use `WorldCountry.svk()`. This change enhances code readability and aligns with modern Dart practices.

```dart
const country = CountrySvk(); // Old way (still supported).
const country = WorldCountry.svk(); // New way, or just .svk() in Dart 3.10.

print([WorldCountry.svk(), WorldCountry.cze()]); // Collections, 3.9 way.
// You can also use the new dot-shorthand syntax introduced in Dart 3.10:
print(<WorldCountry>[.svk(), .cze()]); // Collections, 3.10 way.
```

CHORE

- Bulgarian `currencies` array updated to reflect current usage of both BGN and EUR in Bulgaria.

## 2.9.0

NEW FEATURES

- Adds support for `XCG` (Caribbean Guilder) and `ZWG` (Zimbabwean Gold) currencies with translations (across 100+ locales each).
- Deprecates `ANG`, `BGN`, and `ZWL` currencies with appropriate migration paths.

FIX

- Corrected Slovak country name for `CIV` to "Pobrežie Slonoviny".
- Corrected English currency name for `KGS` to "Kyrgyzstani Som".
- Corrected English currency name for `GYD` to "Guyanese Dollar".

REFACTOR

- Marked `permissive` ISO constructors and translation-related parameters as deprecated; deprecated a translation interface and related extension methods.

CHORE

- Enable and fix 10 new Dart Code Metrics rules (from the 1.32.0: October Update).

DOCUMENTATION

- Improved documentation in README.

## 2.8.0

NEW FEATURES

- Improve Norfolk Island (NF) flag.

REFACTOR

- Updated flag properties from `isSimplified: true` to `isSimplified: null` across multiple countries.

DOCUMENTATION

- Added website with flags demo (to `pubspec.yaml` and `README.md`).
- Enhanced documentation for `isSimplified` property with detailed explanations.

## 2.7.0

NEW FEATURES

- Added Guernsey flag painter (`GgyPainter`) and export, so GGY is no longer a "simplified" flag.

REFACTOR

- Made `Shape` implementations `final`; added deprecations for legacy helpers (to be replaced with modern `switch` expressions).
- Selectively disable anti-aliasing for axis-aligned rectangles (e.g., BLR vertical line, SAU sabre) to avoid blur; keep AA for diagonals.

FIX

- Oman flag default aspect ratio corrected (from 2 to 7/4).
- Fixed white rectangle position in Belarusian flag (on smaller sizes).
- `CountryName`'s short flag (`true`) in `toString()` override returns `common` name, same way, as in parent's (`TranslatedName` class) override.

CHORE

- The Dart SDK was bumped to v3.9.2.

## 2.6.0

FIX

- Updated country [data](https://github.com/tsinis/sealed_world/pull/361/files) with recent population, Gini, and capital information.
- Fixed demonyms, borders, and native names for select countries.
- Corrected Welsh official country name for Curaçao.
- Corrected Korean localization for British Indian Ocean Territory, Dominica, Mongolia, Wallis and Futuna and South Georgia.
- Corrected `subunitToUnit` value for Hungarian Forint.

NEW FEATURES

- Flag anti-aliasing is now smarter - it's defined on element painters level, so rectangle elements are no longer anti-aliased.
- Added `copyWith` extension for `IsoFlag`, also exposed flag data maps `map` and `alternativeMap` via public getters for easier access.
- Added a new property `FlagElementsType? baseElementType` to flag data `FlagProperties` indicating the base geometric or symbolic element of each flag, enhancing metadata and classification.
- Also added an `isSimplified` property to flag definitions, allowing users to distinguish between simplified and fully detailed flags.
- Updated language metadata to better reflect writing systems and script directionality for [many](https://github.com/tsinis/sealed_world/pull/360/files) languages.

REFACTOR

- Deprecated ineffective anti-aliasing override `flagAntiAliasOverride` properties and improved anti-aliasing handling in flag rendering.
- Optimized flag painting performance for stripes and stars, reducing redundant object creation and improving rendering efficiency.
- Deprecated `fullFlags` list in favor of new `isSimplified` property.
- Marked certain currencies as [deprecated](https://github.com/tsinis/sealed_world/pull/361/files) and updated related comments.
- Corrected country and language associations in documentation for currencies and languages.
- Standardized code normalization using new ISO code extension types, replacing older string and object extension methods.
- Deprecated legacy constant lists in favor of centralized static lists for ISO classes.
- Deprecated functional-style pattern matching methods and boolean type-check getters across ISO/sealed models. Users are advised to use switch expressions or direct equality/type checks instead.
- Deprecated extensions providing `is*` getters in favor of direct type checks.
- Standardized method return types for map serialization to use stronger, standard Dart Map types.
- Simplified code by removing redundant comments and improving null-aware syntax usage.

CHORE

- The Dart SDK was bumped to v3.8.1.
- Refined static analysis and linting rules, including enabling and disabling specific Dart Code Metrics rules.

DOCUMENTATION

- Improved code and API documentation for clarity and accuracy.
- Improved formatting, fixed typos, and updated usage examples in README.

TEST

- Improved test handling for platform-specific golden image comparisons by skipping only the assertion step on unsupported platforms.
- Removed outdated test files related to deprecated APIs.
- Added or updated test cases to cover new behaviors and deprecation handling.

## 2.5.0

FIX

- Adjust height and width factors for Afghanistan flag properties and update `ShahadaPainter` translation logic.

NEW FEATURES

- Added new flag definitions for international and constructed languages (e.g., European Union, Esperanto, Ido, Interlingue, Interlingua, Volapük).
- Introduce `IsoFlag` widget and `DecoratedFlagWidget` base class.
- Unified flag widget interfaces to support foreground child widgets, explicit sizing, and improved decoration options.
- Added `height` and `width` parameters to the `BasicFlag`.
- Added new collections and extensions for mapping currencies and languages to countries (via `byCountryMap` method), including support for unofficial and constructed languages.
- Introduced methods to prioritize and customize country associations for languages and currencies.
- Improved diagnostics and theming for flag widgets, including support for custom overlay widgets.
- Added new extension methods and interfaces for easier flag and country data access.

CHORE

- The Dart SDK was bumped to v3.8.1.
- Deprecated outdated Afghanistan flag and updated references to its alternative.
- Deprecated `foregroundWidget` parameter in flag widgets, in favor of `child` one.
- Update German and English translations (for multiple countries).
- Updated official `languages` lists for Ethiopia and Iraq to reflect additional recognized languages.

## 2.4.1

CHORE

- Flag of Syria update.

## 2.4.0

NEW FEATURES

- Improve Iraq flag painter aspect ratio change handling.
- Enhance ISO standardized classes with `Comparable` interface and update bool getters.
- Add regional code alias and new ISO standardized extensions for type checking.
- Add official country translations for the [Indonesian language](https://gitlab.com/restcountries/restcountries/-/merge_requests/76).

CHORE

- The Dart SDK was bumped to v3.8.0.
- Code has been formatted with the new Dart formatter.
- Correct latitude values for several [countries](https://gitlab.com/restcountries/restcountries/-/merge_requests/78).
- Update currency for South Georgia to [GBP](https://gitlab.com/restcountries/restcountries/-/merge_requests/79).
- Update symbol for Sudanese pound to "ج.س".

REFACTOR

- Make copy-with extensions generic for ISO standardized classes.

DOCUMENTATION

- Improved documentation in README.
- Update dartdoc in ISO standardized classes instances to use backticks.

TEST

- Add tests for comparable boolean getters in ISO standardized classes.
- Add unit tests for regional code and ISO standardized extensions.

## 2.3.0

NEW FEATURES

- Added the `regionalCode` getter to the `BasicTypedLocale` to provide a convenient alias for the `countryCode` property, improving consistency when working with regional locales.

DOCUMENTATION

- Update dartdoc documentation for countries to use backticks for ISO code formatting.

REFACTOR

- Replaced text-based flag rendering with vector path drawing for Iraq, Afghanistan, Saudi Arabia and U.S. Virgin Islands flags, improving rendering consistency on all platforms.
- Deprecated `flagTextStyleOverride` getter and setter (visible for testing) as text-based painters were removed.

## 2.2.0

This is maintenance release without significant changes for the users, that aims to improve DevEx when working with flags in DevTools.

NEW FEATURES

- To enhance debugging, all widgets within this package now override `debugFillProperties`, providing detailed flag property information, including values and rationales. Crucially, this allows you to visualize emoji flags directly in dev tools, replacing generic widget names.

CHORE

- Dart SDK bumped to v3.7.0.
- Code has been formatted with the new Dart formatter.
- Example app runners update.

## 2.1.0

REFACTOR

- Nullable `maybeCommonNameFor` method now accepts nullable `mainLocale` parameter - if `null` is provided, `null` will be returned.

## 2.0.1

REFACTOR

- Improved generics handling in localization methods.
- Update and use stable L10N packages.

DOCUMENTATION

- Improved documentation and example.
- Fixed typos in the README.

## 2.0.0

🎉 Second anniversary and new major release!

NEW FEATURES

- Introduced new methods for working with common names and common name maps: `commonNamesMap` on ISO collections and `commonNameFor`/`maybeCommonNameFor` on ISO objects. These methods are significantly faster than the old `translations` - related methods because they work directly with locale-specific maps instead of iterating through all translations of each ISO object.
- The `translations` getter is now a computed field. This means it will only generate the translations when they are requested, rather than storing them all in memory. It's recommended to cache the results of the getter to avoid redundant calculations. Because of that - `translation` and `maybeTranslation` methods are no longer recommended for retrieving localization data.
- The `commonNamesCacheMap` is deprecated because it relies on the memory-intensive `translations` getter.
- New localization delegates on `IsoTranslated` objects simplify complex queries for object localizations.
- Bool getters on `IsoStandardized` objects can now be applied to null values. For example, `maybeIso.isRus` will return `false` if `maybeIso` is null, without the need for additional null-checks.

FIX

- Replaced deprecated `Color` methods `.withOpacity` with new `.withAlpha`
- Changed official name for [Portugal](https://gitlab.com/restcountries/restcountries/-/merge_requests/77): "República português" > "República Portuguesa".
- Change the capital of Indonesia for [Nusantara](https://gitlab.com/restcountries/restcountries/-/merge_requests/75): "Jakarta" > "Nusantara".

BREAKING CHANGES

- The package now requires Flutter v3.27.1 or higher.
- The `IsoTranslated<T, N, L>` class now uses three generic types instead of two. If you used this class directly in your code, simply add the additional generic `<L extends BasicLocale>` to your reference.
- The default `toString()` implementation of `BasicLocale` now uses Flutter's `Locale`-like output format. You can still access the old output by setting the `short` flag to `false`.
- The `sealed_country_translations` library is removed. Migrate to the [l10n_countries](https://pub.dev/packages/l10n_countries) package or use `l10n` getter in ISO objects that provides the same data without holding all translations in memory. This sub-library and its content (except for supported locales lists - they will be moved to the main library) will be removed in the next major package version.
- Country translation methods requires `BasicTypedLocale` instead of `BasicLocale`, if you didn't used country value - this change will not affect you, otherwise please change from:

```dart
BasicLocale(*, countryCode: "US");
```

to:

```dart
BasicTypedLocale(*, regionalCode: "US"); // or BasicTypedLocale(*, country: CountryUsa());
```

## 1.1.1

NEW FEATURES

- Updated the postal code pattern format for Paraguay.
- Updated International Olympic Committee (IOC) country code for Bahrain.
- Improvements of `toString()` method implementations in models and addressing new lints + DCM reports.
- Added "polski" to the [Polish](https://github.com/tsinis/sealed_world/issues/221) language's `namesNative` array.

## 1.1.0

NEW FEATURES

- Added `FlagExtension` on `WorldCountry` to provide flag-related properties and colors:
  - `flagStripeColors`: Retrieves the stripe colors of the flag from `FlagProperties`.
  - `flagElementsColors`: Retrieves the element colors of the flag from `FlagProperties`.
  - `flagColors`: Combines `flagStripeColors` and `flagElementsColors` into a single list of colors.
  - `flagProperties`: Retrieves the `FlagProperties` associated with country (from the default `WorldCountry.list`).

## 1.0.0

🎉 First stable release!

NEW FEATURES

- `CountryFlag` now offers `alternativeMap` parameter that you can use to provide alternative look of the country flag. By default it contains updated Afghanistan flag (with official design from year 2021) and alternative French Guiana flags.

REFACTOR

- New asserts in the constructors and optimizations in several country flag painters.

TESTS

- Added tests for new asserts and update goldens with arabic fonts.

## 0.8.0

NEW FEATURES

- `CountryFlag` now have non-required child property.

DOCUMENTATION

- Fully document all the public members of the package.

## 0.7.0

TESTS

- Added unit, widget and golden tests for the package with code coverage around 100%.
- Small refactoring related to the linter rules.

## 0.6.0

NEW FEATURES

- Two new properties in the `FlagThemeData` - width and height. Those will be also used in the `CountryFlag` and in aspect ratio calculation (if no `aspectRatio` is provided) if specified.

## 0.5.0

NEW FEATURES

- Updated README and example.
- Updated some simplified world country flags and also a `fullFlags` list.

New full flags:

- North Macedonia (MKD)
- Barbados (BRB)
- Eritrea (ERI)
- Slovakia (SVK)
- Tajikistan (TJK)

Updated simplified flags:

- Brazil (BRA)
- Malta (MLT)
- Albania (ALB)
- Belarus (BLR)
- Spain (ESP)
- Croatia (HRV)
- Iran (IRN)
- Kenya (KEN)
- Cambodia (KHM)
- Lebanon (LBN)
- Liechtenstein (LIE)
- Lesotho (LSO)
- Montenegro (MNE)
- Portugal (PRT)
- San Marino (SMR)
- Serbia (SRB)
- Slovenia (SVN)
- Turkmenistan (TKM)
- Uganda (UGA)
- Vatican City (VAT)
- Vanuatu (VUT)
- Zambia (ZMB)

## 0.1.0

NEW FEATURES

- Provided all 250 small and simplified world country flags, but at the same time 2/3 of these flags can be used as full-dimensional flags (`fullFlags` list).

## 0.0.1

NEW FEATURES

- Provided 225 out of all 250 small and simplified world country flags.

## 0.0.0

- Initial release.
