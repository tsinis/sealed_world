# FlagTheme Migration Guide

This document outlines the migration path for replacing the Material `ThemeExtension`-based `FlagThemeData` with the new widgets-based `FlagTheme` inherited widget and `DecoratedFlagData` container.

## Architectural Pivot

To decouple `world_flags` from the Material library, we are shifting from `ThemeExtension<FlagThemeData>` to:

1. **`DecoratedFlagData`**: A pure widgets data class implementing `DecoratedFlagInterface` with `copyWith`, `lerp`, `==`, and `hashCode`.
2. **`FlagTheme`**: A standalone `InheritedTheme` wrapping `DecoratedFlagInterface data`.

### The `child` Naming Collision and `flagChild`

`DecoratedFlagInterface` previously defined a `child` getter representing the flag's foreground widget (e.g. a coat of arms). But Flutter's `InheritedTheme` inherits a `final Widget child` getter representing the **entire widget subtree** (e.g. `MaterialApp`).

To prevent collisions and allow `FlagTheme` to implement `DecoratedFlagInterface` in Stage 2 without returning the app subtree for flag foregrounds, **we have introduced `flagChild` and deprecated `child` across all flag interfaces, data containers, and models.**

## Stage 1: The Transition (Current)

The goal of Stage 1 is to provide clear deprecation warnings so users can safely migrate before the next major release.

1. **`FlagThemeData` is fully deprecated in `world_flags`**.
2. **`DecoratedFlagData` is introduced** as the permanent data container.
3. **`child` property is deprecated** on flags, interfaces, and data models. Migrate to `flagChild`.
4. Users should replace `Theme(data: ThemeData(extensions: [FlagThemeData(...)], ...))` with `FlagTheme(data: DecoratedFlagData(...), child: ...)`.
5. `FlagTheme({required DecoratedFlagInterface data, required Widget child})` accepts any `DecoratedFlagInterface`, allowing existing `FlagThemeData` to be passed during migration.
6. `.toThemeData()` is deprecated on `DecoratedFlagInterfaceExtension` in favor of `.toData()`.
7. `world_countries` handles the transition by bridging both themes via `FlagTheme.fallbackResolvers` ensuring backward compatibility.

### Example Migration

**Before (Deprecated):**

```dart
MaterialApp(
  theme: ThemeData(
    extensions: const [
      FlagThemeData(aspectRatio: 2.0, child: Text("Coat of Arms")),
    ],
  ),
  ...
)
```

**After:**

```dart
FlagTheme(
  data: const DecoratedFlagData(
    aspectRatio: 2.0,
    flagChild: Text("Coat of Arms"), // Replaces child.
  ),
  child: MaterialApp( // The actual subtree.
    ...
  ),
)
```

## Stage 2: Handover (Next Major Release - Internal Only!)

For future developers / LLMs executing the next major release in both `world_flags` and `world_countries` packages (internally):

1. **Remove `child` entirely from `DecoratedFlagInterface` and `DecoratedFlagData`**: Delete it from interfaces, models, and flag widgets (use `flagChild` exclusively).
2. **Delete deprecated shape flags**: Delete `RectangleFlag`, `TriangleFlag`, `IsoFlag`, `MoonFlag`, `StarFlag`, `EllipseFlag`, and `MultiElementFlag` entirely, as they are already deprecated in favor of `BasicFlag(properties)`.
3. **Make `FlagTheme` implement `DecoratedFlagInterface` directly**: Now that `child` is removed from `DecoratedFlagInterface`, the naming collision with `InheritedTheme.child` is resolved. Add `implements DecoratedFlagInterface` to `FlagTheme`, delegating getters to `data`.
4. **Delete `FlagThemeData` entirely from `world_flags`**.
5. **Delete `.toThemeData()`**: Remove `.toThemeData()` from `DecoratedFlagInterfaceExtension`, using `.toData()` exclusively.
6. **Delete `FlagThemeData` entirely from `world_countries`**:
   - Delete `lib/src/theme/flag_theme_data.dart`.
   - Remove `FlagThemeData` from all `import`/`export` and barrel files.
7. **Remove Fallback Logic**:
   - Ensure all `ensureBridge` and `_resolver` references are completely removed.
8. **Remove `fallbackResolvers`**: In `world_flags`, delete `FlagTheme.fallbackResolvers`.
9. **Cleanup Context Extensions**: Ensure `context.flagTheme` exclusively queries `FlagTheme.maybeOf(context)`.

> [!IMPORTANT]
> **Scheduled Date**: ~few months from Stage 1 release (Next Scheduled Major Version, end of the year).
