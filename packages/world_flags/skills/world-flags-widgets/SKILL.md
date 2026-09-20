---
name: world-flags-widgets
description: >-
  Render declaratively drawn, vector-based world flags in Flutter without
  assets using the world_flags package. Use when displaying country flags
  with CountryFlag, language flags with LanguageFlag, currency flags with
  CurrencyFlag, customizing flag shapes, sizes, decorations, aspect ratios,
  or configuring ambient flag styling with FlagThemeData.
---

# World Flag Widgets with world_flags

Guidelines and examples for displaying and styling declaratively drawn, asset-free world flags in Flutter using the `world_flags` package.

## Setup

Add the package to the Flutter project:

```console
$ flutter pub add world_flags
```

Then import the library:

```dart
import 'package:world_flags/world_flags.dart';
```

The package requires no PNG, SVG, or asset bundles — every flag is rendered as a vector `CustomPainter`. It re-exports `package:sealed_countries/sealed_countries.dart` (`WorldCountry`, `FiatCurrency`, `NaturalLanguage`), providing full access to ISO models.

## Guidelines

### Asset-Free Vector Rendering

- **No image assets required**: Flags are drawn directly via Flutter canvas `CustomPainter`s. Never add raster assets (PNG) or SVGs for flags.
- **Resolution-independent**: Flags scale crisply from small list avatars (18–48 px) to full-screen display without distortion or manual caching.

### Primary Flag Widgets

- **`CountryFlag.simplified(WorldCountry country)`**: The primary widget for national flags. Uses optimized paths designed for crisp rendering at standard UI sizes while preserving proportions.
- **`LanguageFlag.fromFlagMap(NaturalLanguage language)`**: Displays a dual split flag representing natural languages spoken across multiple countries (e.g. `LangEng()` displays UK and US flags). The split is diagonal by default (`splitAngle` is `45`); pass `splitAngle: 0` for a horizontal top/bottom split, `90` for a vertical one.
- **`CurrencyFlag.fromFlagMap(FiatCurrency currency)`**: Displays a dual split flag representing currencies shared across countries (e.g. `FiatEur()` displays Germany and European Union associations).
- **`IsoFlag(item, map)`**: Generic low-level flag widget for custom ISO item mappings.
- **Constructor rule**: `CountryFlag` does not have an unnamed default constructor `CountryFlag()`. Always instantiate via `CountryFlag.simplified(...)` or `CountryFlag.custom(...)`.

### Sizing and Aspect Ratios

- **True aspect ratios by default**: Flags render using their official proportions (e.g. 2:1 for UK/Australia, 3:2 for France, 5:3 for Germany, 1:1 for Switzerland).
- **Custom aspect ratios**: Override the ratio using `aspectRatio` (e.g. `aspectRatio: 1` for square badges, `aspectRatio: 3 / 2` for uniform grid tiles).
- **`aspectRatio` loses to tight constraints**: It is applied by an `AspectRatio` widget, so a parent that forces an exact size wins. A `GridView` tile is the common trap: `SliverGridDelegateWithFixedCrossAxisCount` defaults `childAspectRatio` to `1.0`, which silently renders every flag square no matter what `aspectRatio` says. Match the delegate's `childAspectRatio` to the flag ratio you want.
- **Dimension priority**: Specify `height` and/or `width`. If only `height` is given, `width` is computed automatically from the flag's aspect ratio.

### Borders, Rounded Corners, and Shapes

- **Built-in `decoration`**: Pass a `BoxDecoration` directly to flag widgets via the `decoration` parameter instead of wrapping in external `ClipRRect` or `Container` widgets:
  ```dart
  CountryFlag.simplified(
    const CountryDeu(),
    height: 24,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(color: Colors.black12, width: 0.5),
    ),
  )
  ```
- **Circular flag badges**: Set `decoration: const BoxDecoration(shape: BoxShape.circle)` to produce circular flag avatars without manual clipping.

### Performance in Long Lists

- **Always construct flags as `const` where possible**: Every flag is a `CustomPainter`, and `const` widgets let Flutter skip rebuilding and repainting them. All ISO models are const (`CountryDeu()`, `LangEng()`), so `const CountryFlag.simplified(CountryDeu(), height: 24)` is usually achievable. Keep the country list itself `const` too.
- **Do not add `RepaintBoundary` by reflex in scrolling lists**: `ListView.builder` and `GridView.builder` use a `SliverChildBuilderDelegate`, whose `addRepaintBoundaries` already defaults to `true`, so each flag is isolated for free. Add one manually only where that is absent — a custom delegate passing `addRepaintBoundaries: false`, or a flag repainting inside a hand-built scrolling widget.
- **Prefer `FlagThemeData` over per-widget decorations in lists**: One ambient decoration avoids allocating an identical `BoxDecoration` per row.

### App-Wide Flag Theming (`FlagTheme`)

- **Ambient styling via `FlagTheme`**: Avoid duplicating decorations and sizes across individual widgets by wrapping your app or subtree in a `FlagTheme`:
  ```dart
  FlagTheme(
    data: DecoratedFlagData(
      height: 18, 
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
    ),
    child: MaterialApp(
      ...
    ),
  )
  ```
- **Flag widgets inherit ambient properties**: When `height`, `width`, or `decoration` are omitted on `CountryFlag`, they fall back to the ambient `FlagTheme` in the widget tree.

---

## Examples

### 1. Basic Country Flag

```dart
import 'package:flutter/material.dart';
import 'package:world_flags/world_flags.dart';

class FlagTile extends StatelessWidget {
  const FlagTile({super.key});

  @override
  Widget build(BuildContext context) => const ListTile(
    leading: CountryFlag.simplified(
      CountryDeu(),
      height: 28,
    ),
    title: Text('Germany'),
  );
}
```

### 2. Rounded and Circular Flags

```dart
import 'package:flutter/material.dart';
import 'package:world_flags/world_flags.dart';

Widget buildFlagBadges() => Row(
  children: [
    // Rounded rectangular flag with subtle border
    CountryFlag.simplified(
      const CountryFra(),
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black26, width: 0.5),
      ),
    ),
    const SizedBox(width: 12),
    // Circular flag avatar
    const CountryFlag.simplified(
      CountryUsa(),
      height: 32,
      decoration: BoxDecoration(shape: BoxShape.circle),
    ),
  ],
);
```

### 3. Language and Currency Dual Flags

```dart
import 'package:flutter/material.dart';
import 'package:world_flags/world_flags.dart';

Widget buildLocaleSelectors() => Row(
  children: [
    // Dual flag for English, split diagonally between the UK and US flags
    const LanguageFlag.fromFlagMap(
      LangEng(),
      height: 24,
    ),
    const SizedBox(width: 16),
    // Dual split flag for Euro
    const CurrencyFlag.fromFlagMap(
      FiatEur(),
      height: 24,
    ),
  ],
);
```

### 4. Overriding Aspect Ratios for Uniform Grids

```dart
import 'package:flutter/material.dart';
import 'package:world_flags/world_flags.dart';

class FlagGrid extends StatelessWidget {
  const FlagGrid({super.key});

  static const _countries = [
    CountryUsa(),
    CountryDeu(),
    CountryFra(),
    CountryChe(),
  ];

  @override
  Widget build(BuildContext context) => GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      // Required: childAspectRatio defaults to 1.0, and a tile's tight
      // constraints override the flag's own aspectRatio, squashing every
      // flag into a square.
      childAspectRatio: 3 / 2,
    ),
    itemCount: _countries.length,
    // GridView.builder already wraps each child in a RepaintBoundary.
    itemBuilder: (_, index) => CountryFlag.simplified(
      _countries[index],
      // Uniform 3:2 across all flags, even the 1:1 Swiss one.
      aspectRatio: 3 / 2,
    ),
  );
}
```

### 5. App-Wide Flag Theming

```dart
import 'package:flutter/material.dart';
import 'package:world_flags/world_flags.dart';

Widget buildApp() => FlagTheme(
  data: DecoratedFlagData(
    height: 18,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
  ),
  child: MaterialApp(
    home: const Scaffold(
      body: Center(
        // Automatically receives 18 px height and 4 px border radius from theme
        child: CountryFlag.simplified(CountryMex()),
      ),
    ),
  ),
);
```
