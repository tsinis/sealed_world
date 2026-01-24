# Breaking Changes

This document lists all the breaking changes in v4 of the `world_countries` package.

## Table of Contents

- [Generic Type Arguments](#generic-type-arguments)
- [Theme and Tile Builders](#theme-and-tile-builders)
- [TypedLocaleDelegate and IsoCollections](#typedlocaledelegate-and-isocollections)
- [TypedLocale and IsoMaps](#typedlocale-and-isomaps)
- [Extensions](#extensions)
- [Search Functionality](#search-functionality)
- [Pickers](#pickers)
- [Tile Widgets](#tile-widgets)

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

1.  Rename all instances of the `builder` property to `itemBuilder`.
2.  Update the function signature to accept the default tile widget as the second parameter.

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

### `defaultSearch` Now Expects a `Set`

The `defaultSearch` method now expects a `Set` instead of an `Iterable`.

**Reasoning:**

Using a `Set` ensures that the search terms are unique, which can prevent duplicate results and improve search performance.

**Migration Guide:**

If you were overriding the `defaultSearch` method, ensure that you now return a `Set`.

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
Set<String> defaultSearch(WorldCountry item, BuildContext context) {
  return {item.name.common, item.code};
}
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

This functionality has been consolidated into `IsoCollections` and `IsoMaps` for a more flexible and consistent API.

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
