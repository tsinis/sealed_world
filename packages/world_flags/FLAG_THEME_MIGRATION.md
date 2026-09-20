# FlagTheme Migration Guide

This document outlines the migration path for replacing the Material `ThemeExtension`-based `FlagThemeData` with the new widgets-based `FlagTheme` inherited widget.

## Architectural Pivot

To decouple `world_flags` from the Material library, we are shifting from `ThemeExtension<FlagThemeData>` to a standalone `InheritedTheme` named `FlagTheme`.

### The `child` Naming Collision and `flagChild`

When decoupling, we faced a major architectural limitation: `FlagTheme` could not simply `implements DecoratedFlagInterface`.
Why? `DecoratedFlagInterface` defines a `child` getter representing the flag's foreground widget (e.g. a coat of arms). But `InheritedTheme` inherits a `final Widget child` getter representing the **entire widget subtree** (e.g. `MaterialApp`).

If `FlagTheme` implemented the interface, `theme?.child` would return the entire subtree. When a flag widget asks for its foreground coat of arms, it would receive your entire app and mount it recursively inside the flag, causing an infinite widget tree rendering crash.

To solve this for Stage 2, **we have introduced `flagChild` and deprecated `child` across all flag interfaces and models.**

## Stage 1: The Transition (Current)

The goal of Stage 1 is to provide clear deprecation warnings so users can safely migrate before the next major release.

1. **`FlagThemeData` is fully deprecated in world_flags**.
2. **`child` property is deprecated** on flags and interfaces. Migrate to `flagChild`.
3. Users should replace `Theme(data: ThemeData(extensions: [FlagThemeData(...)], ...))` with `FlagTheme(...)` wrapping their apps.
4. `FlagTheme` features two constructors:
   - `FlagTheme(...)`: The default constructor which takes individual flag properties.
   - `FlagTheme.fromBase(data: ...)`: A named constructor that accepts any `DecoratedFlagInterface`.
5. `world_countries` handles the transition by bridging both themes via `FlagTheme.fallbackResolvers` ensuring backward compatibility.

### Example Migration

**Before (Deprecated):**

```dart
MaterialApp(
  theme: ThemeData(
    extensions: [
      FlagThemeData(aspectRatio: 2.0, child: Text("Coat of Arms")),
    ],
  ),
  ...
)
```

**After:**

```dart
FlagTheme(
  aspectRatio: 2.0,
  flagChild: Text("Coat of Arms"), // Replaces child.
  child: MaterialApp( // The actual subtree.
    ...
  ),
)
```

## Stage 2: Handover (Next Major Release)

For the LLMs picking this up in the next major release, here is your checklist:

1. **Remove `child` entirely from `DecoratedFlagInterface`**: Delete it from the interface, models, and flags (use `flagChild` exclusively).
2. **Make `FlagTheme` implement `DecoratedFlagInterface` directly**: Now that `child` is removed from the interface, the naming collision with `InheritedTheme.child` is gone. You can safely add `implements DecoratedFlagInterface` to the `FlagTheme` class signature. (You can then remove the `DecoratedFlagInterface get data` synthesizer if desired).
3. **Delete `FlagThemeData` entirely**: It has been deprecated and its removal will force the final cleanup of `ThemeExtension` usage.
4. **Remove Fallback Logic**: In `world_countries`, remove the `ensureBridge` and `_ThemeExtensionFlagTheme` logic from `world_countries_build_context_extension.dart`.
5. **Remove `fallbackResolvers`**: In `world_flags`, delete `FlagTheme.fallbackResolvers`.
6. **Cleanup Context Extensions**: Ensure `context.flagTheme` exclusively queries `FlagTheme.maybeOf(context)`.

> [!IMPORTANT]
> **Scheduled Date**: ~few months from Stage 1 release (Next Scheduled Major Version, end of the year).
