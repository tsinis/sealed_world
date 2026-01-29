# Migration Guide for v4 of `world_countries` Package

This document lists all the breaking changes in v4 of the `world_countries` package. Most of these changes are aimed deeper abstractions and more advanced features, so if you are using only the high-level APIs (e.g., pickers), you might not be affected.

## Table of Contents

- [Generic Type Arguments](#generic-type-arguments)
- [Theme and Tile Builders](#theme-and-tile-builders)
- [fallbackLanguage Is No Longer Nullable](#fallbacklanguage-is-no-longer-nullable)
- [TypedLocaleDelegate and IsoCollections](#typedlocaledelegate-and-isocollections)
- [TypedLocale and IsoMaps](#typedlocale-and-isomaps)
- [Extensions](#extensions)
- [Search Functionality](#search-functionality)
- [Pickers](#pickers)
- [Tile Widgets](#tile-widgets)
- [L10N Changes](#l10n-changes)

---

## Generic Type Arguments

### `StatefulIndexedListView` and Mixins Now Require an Additional Generic Type Argument

The `StatefulIndexedListView` class and its associated mixins (`PoppedMixin`, `PropertiesConvertibleMixin`) now require a second generic type argument, which represents the type of the tile widget.

**Reasoning:**

This change was made to improve type safety and provide more flexibility in the widget hierarchy. By specifying the tile widget type, we can ensure that the `itemBuilder` and other related methods have a more specific and predictable return type.

**Migration Guide:**

Update all usages of `StatefulIndexedListView`, `PoppedMixin`, and `PropertiesConvertibleMixin` to include the second generic type argument. In most cases, this will be the type of the tile widget you are using (e.g., `CountryTile`, `CurrencyTile`, `LanguageTile`).

**Before:**

```dart
class MyPicker extends BasicPicker<WorldCountry> {
  // ...
}
```

**After:**

```dart
class MyPicker extends BasicPicker<WorldCountry, CountryTile> {
  // ...
}
```

---

## Theme and Tile Builders

### `BaseTileThemeData.builder` Renamed to `itemBuilder` and Signature Change

The `builder` property in `BaseTileThemeData` and its subclasses has been renamed to `itemBuilder`. Additionally, its signature has changed. It now receives the default tile widget as its second parameter, which you can either use directly or customize with `copyWith`.

**Reasoning:**

The renaming to `itemBuilder` aligns with Flutter's conventions. The new signature makes it easier to apply small customizations to the default tile without having to rebuild it from scratch.

**Migration Guide:**

1. Rename all instances of the theme `builder` property to `itemBuilder`.
2. Update the function signature to accept the default tile widget as the second parameter.

**Before:**

```dart
CountryTileThemeData(
  builder: (itemProperties, {isDense}) => MyCountryTile(
    title: itemProperties.item.name,
    isDense: isDense,
  ),
)
```

**After:**

```dart
CountryTileThemeData(
  itemBuilder: (itemProperties, defaultTile) {
    // Example: Customize the default tile
    return defaultTile.copyWith(dense: true);
  },
)
```

---

## TypedLocaleDelegate and IsoCollections

### ISO-Related Collections Moved to `IsoCollections`

All collections related to ISO data (e.g., `countriesForTranslationCache`, `localeMapResolution`) have been moved from the `TypedLocaleDelegate` constructor to a new, immutable `IsoCollections` class.

**Reasoning:**

This change centralizes all ISO-related data into a single, reusable object, making the API cleaner and more organized.

**Migration Guide:**

Instead of passing ISO-related collections directly to the `TypedLocaleDelegate` constructor, wrap them in an `IsoCollections` object.

**Before:**

```dart
TypedLocaleDelegate(
  countriesForTranslationCache: [CountryUsa()],
)
```

**After:**

```dart
TypedLocaleDelegate(
  isoCollections: IsoCollections(
    countriesForTranslationCache: [CountryUsa()],
  ),
)
```

### fallbackLanguage Is No Longer Nullable

The `fallbackLanguage` parameter on `TypedLocaleDelegate` now always resolves
to a concrete language. `LangEng()` remains the default, but passing `null`
is no longer supported.

**Reasoning:**

Guaranteeing a fallback language allows the delegate to emit deterministic
`TypedLocale` instances for unsupported locales and ensures translation caches
populate strings instead of returning empty maps.

**Migration Guide:**

1. Remove any `null` argument previously supplied to `fallbackLanguage`.
2. Supply an explicit language when you need a different default experience.
3. Handle opt-out scenarios in your own logic instead of relying on a `null`
   fallback.

**Before:**

```dart
const delegate = TypedLocaleDelegate(fallbackLanguage: null);
```

**After:**

```dart
const delegate = TypedLocaleDelegate(fallbackLanguage: LangDeu());
```

---

## TypedLocale and IsoMaps

### Translation and Flag Maps Moved to `IsoMaps`

The `TypedLocale` class no longer holds translation and flag maps directly. Instead, these are now encapsulated in a new `IsoMaps` class, which is accessible via the `maps` property on `TypedLocale`.

**Reasoning:**

This change improves the organization and immutability of the `TypedLocale` class by grouping all maps into a single object.

**Migration Guide:**

Access the translation and flag maps through the `maps` property on your `TypedLocale` instance.

**Before:**

```dart
final locale = TypedLocale(LangEng());
final countryTranslations = locale.countryTranslations;
```

**After:**

```dart
final locale = TypedLocale(LangEng());
final countryTranslations = locale.maps.countryTranslations;
```

---

## Extensions

### Generic Removed from `TypedLocaleExtension`

The generic type argument has been removed from `TypedLocaleExtension`. The extension now operates on `TypedLocale` directly.

**Reasoning:**

This change simplifies the extension and makes it more consistent with other extensions in the package.

**Migration Guide:**

Remove the generic type argument when using `TypedLocaleExtension`.

---

## Search Functionality

### `searchIn` Now Expects a `SearchData` Object

The `searchIn` function, used in pickers and other searchable widgets, no longer returns an `Iterable<String>`. Instead, it now returns a `SearchData` object.

**Reasoning:**

The `SearchData` class provides a more structured way to define searchable terms, allowing for more sophisticated and predictable search behavior.

**Migration Guide:**

Update your `searchIn` functions to return a `SearchData` object.

**Before:**

```dart
searchIn: (item, context) => [item.name, item.code],
```

**After:**

```dart
searchIn: (item, context) => SearchData(
  item.internationalName,
  item.namesNative,
  name: item.name, // Localized name
  code: item.code,
),
```

### `searchMap` is Now a Required Parameter

The `searchMap` parameter in `ImplicitSearchDelegate` is now required to ensure that the search delegate always has a pre-computed map of search terms, which significantly improves search performance.

### `resultsBuilder` Signature Change in `ImplicitSearchDelegate`

The `resultsBuilder` function in `ImplicitSearchDelegate` now includes a `String query` parameter, allowing for more context-aware result widgets (e.g., highlighting the query).

**Migration Guide:**

Update the signature of your `resultsBuilder` functions to accept the new `String query` parameter.

**Before:**

```dart
resultsBuilder: (context, items) => MyResults(items),
```

**After:**

```dart
resultsBuilder: (context, items, query) => MyResults(items, query: query),
```

### `defaultSearch` Now Expects a `SearchData`

The `defaultSearch` method now expects a `SearchData` instead of an `Iterable`.

**Reasoning:**

Using a `SearchData` object provides a more structured way to define searchable terms, allowing for more sophisticated and predictable search behavior.

**Migration Guide:**

If you were overriding the `defaultSearch` method, ensure that you now return a `SearchData` object.
**Before:**

```dart
@override
Iterable<String> defaultSearch(WorldCountry item, BuildContext context) {
  return [item.name.common, item.code];
}
```

**After:**

```dart
@override
SearchData defaultSearch(WorldCountry item, BuildContext context) =>
  SearchData(item.name.common, item.namesNative);
```

---

## Pickers

### `items` Parameter is Now Nullable

In all picker constructors (e.g., `CountryPicker`), the `items` parameter is now nullable. It was previously non-nullable with a default value.

**Reasoning:**

This change allows pickers to source their default items more dynamically, for example, from the `IsoMaps` provided by a `TypedLocaleDelegate` or theme. This makes the pickers more flexible and easier to use in localized contexts.

**Migration Guide:**

If you were not passing an `items` list and were relying on the default, you can now simply omit the parameter. The picker will use its new `defaultItems` implementation, which typically sources data from the available `IsoMaps`. If you need to access the list of items being displayed, use the new `resolvedItems()` method instead of the `items` getter.

**Before:**

```dart
final picker = CountryPicker(); // Relied on default value.
final countries = picker.items;
```

**After:**

```dart
final picker = CountryPicker(); // Now nullable, but defaults are handled internally.
final countries = picker.resolvedItems();
```

### `translation` Parameter Replaced with `maps`

In all picker widgets, the `translation` parameter has been replaced with a new `maps` parameter, which accepts an `IsoMaps` object.

**Reasoning:**

This change aligns with the separation of `TypedLocale` and `IsoMaps`, allowing pickers to receive translation and flag data directly.

**Migration Guide:**

Instead of passing a `TypedLocale` to the `translation` parameter, pass an `IsoMaps` object (e.g., from `myTypedLocale.maps`) to the `maps` parameter.

### `adaptiveFlags` Constructors and `flagsMap`/`flagsMapper` Parameters Removed

The `CurrencyPicker.adaptiveFlags` and `LanguagePicker.adaptiveFlags` constructors have been removed, along with the `flagsMap` and `flagsMapper` parameters from all pickers.

**Reasoning:**

This functionality has been consolidated into `IsoCollections` and `IsoMaps` for a more flexible and consistent API. Flags are now the default behavior for all pickers.

**Migration Guide:**

To provide custom flags or achieve adaptive flag behavior, use the `copyWithFlagsCache` method on a `TypedLocale` and pass the resulting `IsoMaps` to the picker.

### Stricter `defaultBuilder` Return Type

The `defaultBuilder` method in picker widgets now has a stricter return type (e.g., `CountryTile` instead of `Widget`), improving type safety.

**Migration Guide:**

Update the return type of your `defaultBuilder` override.

**Before:**

```dart
@override
Widget defaultBuilder(ItemProperties<WorldCountry> props) {
  return Text(props.item.name.common);
}
```

**After:**

```dart
@override
CountryTile defaultBuilder(ItemProperties<WorldCountry> props) {
  return CountryTile(props.item, title: Text(props.item.name.common));
}
```

### Styling Change in `adaptFlags`

The internal `adaptFlags` method no longer provides default styling for flags. Styling is now handled by `FlagThemeData` and the tile widgets.

---

## Tile Widgets

### Tile Widgets are Now Typedefs of `IsoTile<T>`

`CountryTile`, `CurrencyTile`, and `LanguageTile` are now `typedef`s of a new, generic `IsoTile<T>` widget. This new widget replaces the previous specific tile implementations and extends the base `ListItemTile`.

**Reasoning:**

This change reduces code duplication and improves consistency.

**Migration Guide:**

This change is mostly internal and should not require any changes if you were using the specific tile widgets. The `ListItemTile` class still exists if you were using it directly.

## L10N Changes

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
