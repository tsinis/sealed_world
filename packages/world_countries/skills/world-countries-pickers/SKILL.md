---
name: world-countries-pickers
description: >-
  Display, search, and select world countries, phone codes, currencies, and
  languages in Flutter using the world_countries package. Use when presenting
  country pickers with CountryPicker, phone code pickers with PhoneCodePicker,
  currency pickers with CurrencyPicker, language pickers with LanguagePicker,
  integrating with SearchAnchor, modal bottom sheets, or dialogs, and
  configuring TypedLocaleDelegate or PickersThemeData.
---

# World Countries Pickers with world_countries

Guidelines and examples for displaying, searching, and selecting countries, phone codes, currencies, and languages in Flutter using the `world_countries` package.

## Setup

Add the package to the Flutter project:

```console
$ flutter pub add world_countries
```

Then import the library:

```dart
import 'package:world_countries/world_countries.dart';
```

The package re-exports `package:world_flags/world_flags.dart` and the entire `sealed_` ISO hierarchy (`WorldCountry`, `FiatCurrency`, `NaturalLanguage`), providing full access to models and vector flag widgets with zero external asset bundles.

## Guidelines

### Re-exports and Single Import

- **One import covers all layers**: `package:world_countries/world_countries.dart` re-exports flags (`CountryFlag`, `LanguageFlag`, `CurrencyFlag`) and ISO models (`WorldCountry`, `FiatCurrency`, `NaturalLanguage`, `Script`). Never add redundant imports for `world_flags` or `sealed_` packages in application code.

### Mandatory Localization Setup (`TypedLocaleDelegate`)

- **Always register `TypedLocaleDelegate`**: Add `TypedLocaleDelegate` to `MaterialApp.localizationsDelegates`:
  ```dart
  MaterialApp(
    localizationsDelegates: const [
      TypedLocaleDelegate(),
      ...GlobalMaterialLocalizations.delegates,
    ],
  )
  ```
- **Why it is required**: It resolves the ambient Flutter `Locale` into a `TypedLocale` and builds the pre-computed `IsoMaps` translation cache in memory. Pickers and search algorithms rely on `IsoMaps` for fast $O(1)$ title lookups and searching across translated names. Without it, pickers fall back to unlocalized names.
- **Selective caching for low memory**: If an app only uses country pickers, save memory by avoiding unused language and currency caches:
  ```dart
  TypedLocaleDelegate.selectiveCache(
    isoCollections: IsoCollections.selective(
      countriesForTranslationCache: WorldCountry.list,
    ),
  )
  ```
- **Accessing active locale**: Use `context.maybeLocale` to read the active `TypedLocale` and its `maps` (`countryTranslations`, `countryFlags`, etc.).

### Primary Picker Widgets

- **`CountryPicker`**: Displays and searches all 250 world countries (`WorldCountry.list`).
- **`PhoneCodePicker`**: Subclass of `CountryPicker` displaying international dialing codes (e.g. `+1`, `+49`) and searching by phone code numbers.
- **`CurrencyPicker`**: Displays and searches fiat currencies (`FiatCurrency.list`).
- **`LanguagePicker`**: Displays and searches natural languages (`NaturalLanguage.list`).
- **Const constructors**: All pickers support `const` construction (e.g. `const CountryPicker()`) when callbacks and item lists are not passed dynamically.

### Five Presentation Modes

1. **Modal Bottom Sheet**:
   ```dart
   final country = await const CountryPicker().showInModalBottomSheet(context);
   ```
   Renders inside a responsive bottom sheet with configurable `heightFactor` (default `0.66`) and drag handle.
2. **Dialog**:
   ```dart
   final country = await const CountryPicker().showInDialog(context);
   ```
   Renders inside an `AlertDialog` with full barrier and sizing controls.
3. **Full-Screen Search Route**:
   ```dart
   final country = await const CountryPicker().showInSearch(context);
   ```
   Opens a dedicated `SearchDelegate` route with search animations and keyboard focus.
4. **Material 3 `SearchAnchor` Integration**:
   ```dart
   SearchAnchor(
     builder: (_, controller) => IconButton(
       icon: const Icon(Icons.search),
       onPressed: controller.openView,
     ),
     suggestionsBuilder: const CountryPicker().searchSuggestions,
   )
   ```
   Directly pass `picker.searchSuggestions` to `SearchAnchor.suggestionsBuilder`.
5. **Inline Embedded Widget**:
   Place `CountryPicker(...)` directly in the widget tree (e.g. in a settings layout or desktop side pane). A picker is a scrollable viewport, so an inline picker needs a bounded height: inside a `Column` wrap it in `Expanded` (or `Flexible`), and elsewhere give it a `SizedBox`/`ConstrainedBox`. Dropping one into an unbounded parent throws "Vertical viewport was given unbounded height" at runtime.

### Selection and Route Popping

- **Automatic pop on selection**: In bottom sheet, dialog, search route, and `searchSuggestions` modes, tapping an item calls `onSelect?.call(item)` and automatically pops the route, returning the selected item to the awaiting caller.
- **Inline widgets**: In embedded widgets, pass `onSelect: (item) { ... }` to update local or bloc/notifier state.

### Custom Item Layout via `itemBuilder` and `copyWith`

- **Never build a `ListTile` from scratch**: Recreating the tile breaks dense sizing, layout alignment, ripple feedback, and accessibility semantics.
- **Always customize via `defaultTile?.copyWith(...)`**:
  ```dart
  CountryPicker(
    itemBuilder: (props, defaultTile) => defaultTile?.copyWith(
      chosenIcon: Text(props.item.idd.phoneCode()),
    ),
  )
  ```
- **The trailing slot is named `chosenIcon`**: `copyWith` has no `trailing` parameter — passing one is a compile error. Use `chosenIcon` to set the tile's trailing widget (`leading`, `title`, and `subtitle` keep their usual names).
- **Dual flags for languages and currencies**: Use `LanguageFlag.fromFlagMap` or `CurrencyFlag.fromFlagMap` to show multi-country flags in language or currency pickers:
  ```dart
  LanguagePicker(
    itemBuilder: (props, defaultTile) => defaultTile?.copyWith(
      leading: LanguageFlag.fromFlagMap(props.item),
    ),
  )
  ```

### App-Wide Theming (`PickersThemeData`)

- **Ambient picker styling**: Configure padding, search bar appearance, clear button visibility, and separators globally by adding `PickersThemeData` to `ThemeData.extensions`:
  ```dart
  ThemeData(
    extensions: const [
      PickersThemeData(
        padding: EdgeInsets.symmetric(horizontal: 16),
        showClearButton: true,
      ),
    ],
  )
  ```
- **Ambient tile themes**: Use `CountryTileThemeData`, `CurrencyTileThemeData`, or `LanguageTileThemeData` to register global `itemBuilder` overrides across the entire app.
- **Ambient flag styling**: Flags rendered inside picker tiles automatically inherit `FlagTheme` styling. You should wrap your app with `FlagTheme(data: DecoratedFlagData(...), child: ...)` to style all flags globally.

### Performance in Long Lists

- **Isolated flag repaints**: All pickers default `addRepaintBoundaries: true`, ensuring flag painters do not repaint on every frame during list scrolling.
- **Const picker instances**: Use `const` pickers wherever possible to let Flutter skip unnecessary rebuilds.
- **Pre-filtered lists**: When restricting available items (e.g. `countries: [...]`), pass a `const` or pre-computed collection rather than allocating new lists inside a `build()` method.

### Custom Search, Collation, and Formatting

- **Diacritics and locale collation**: By default, translation sorting uses `String.compareTo`. For proper locale-sensitive collation (e.g. `ä`, `ö`, `ü`, `č`, `š`), configure `l10nSorter` in `TypedLocaleDelegate`.
- **Custom text formatting**: Use `l10nFormatter` in `TypedLocaleDelegate` to apply custom transformations (such as uppercase names) across all translations.
- **Custom search matching**: Provide `onSearchResultsBuilder` on any picker to implement fuzzy search or weighted matching. It receives the pre-built search map and returns a flat, ordered iterable — `Iterable<T> Function(String query, SearchMap<T> map)`, where `SearchMap<T>` is `Map<T, SearchData>`:
  ```dart
  CountryPicker(
    onSearchResultsBuilder: (query, map) =>
        map.keys.where((country) => country.code.startsWith(query)),
  )
  ```

---

## Examples

### 1. Modal Bottom Sheet Country Picker

```dart
import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

class CountryPickerTile extends StatefulWidget {
  const CountryPickerTile({super.key});

  @override
  State<CountryPickerTile> createState() => _CountryPickerTileState();
}

class _CountryPickerTileState extends State<CountryPickerTile> {
  WorldCountry _selectedCountry = const CountryDeu();

  Future<void> _pickCountry() async {
    final country = await const CountryPicker().showInModalBottomSheet(context);
    if (country != null && mounted) {
      setState(() => _selectedCountry = country);
    }
  }

  @override
  Widget build(BuildContext context) => ListTile(
    leading: CountryFlag.simplified(_selectedCountry, height: 24),
    title: Text(_selectedCountry.name.common),
    trailing: const Icon(Icons.arrow_drop_down),
    onTap: _pickCountry,
  );
}
```

### 2. Phone Code Picker for Contact Forms

```dart
import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

class PhoneInputField extends StatefulWidget {
  const PhoneInputField({super.key});

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  WorldCountry _selectedCountry = const CountryUsa();

  Future<void> _pickPhoneCode() async {
    final country = await const PhoneCodePicker().showInDialog(context);
    if (country != null && mounted) {
      setState(() => _selectedCountry = country);
    }
  }

  @override
  Widget build(BuildContext context) => Row(
    children: [
      TextButton.icon(
        onPressed: _pickPhoneCode,
        icon: CountryFlag.simplified(_selectedCountry, height: 18),
        label: Text(_selectedCountry.idd.phoneCode()),
      ),
      const SizedBox(width: 8),
      const Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Phone number',
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.phone,
        ),
      ),
    ],
  );
}
```

### 3. Material 3 SearchAnchor Integration

```dart
import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

class CountrySearchField extends StatelessWidget {
  const CountrySearchField({required this.onSelected, super.key});

  final ValueChanged<WorldCountry> onSelected;

  @override
  Widget build(BuildContext context) => SearchAnchor(
    isFullScreen: false,
    viewConstraints: const BoxConstraints(minWidth: 280, maxWidth: 360),
    builder: (_, controller) => IconButton(
      icon: const Icon(Icons.search),
      onPressed: controller.openView,
    ),
    suggestionsBuilder: CountryPicker(
      onSelect: onSelected,
    ).searchSuggestions,
  );
}
```

### 4. Dual-Flag Language and Currency Pickers

```dart
import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

// Pickers are scrollable viewports: inside a Column each one needs a bounded
// height (Expanded here), otherwise it throws "Vertical viewport was given
// unbounded height".
Widget buildDualFlagPickers(BuildContext context) => Column(
  children: [
    // Language picker displaying dual split flags for multi-country languages
    Expanded(
      child: LanguagePicker(
        itemBuilder: (props, defaultTile) => defaultTile?.copyWith(
          leading: LanguageFlag.fromFlagMap(props.item),
        ),
        onSelect: (language) => debugPrint('Language: ${language.name}'),
      ),
    ),
    const Divider(),
    // Currency picker displaying dual flags and trailing ISO Alpha-3 code
    Expanded(
      child: CurrencyPicker(
        itemBuilder: (props, defaultTile) => defaultTile?.copyWith(
          leading: CurrencyFlag.fromFlagMap(props.item),
          chosenIcon: Text(props.item.code),
        ),
        onSelect: (currency) => debugPrint('Currency: ${currency.name}'),
      ),
    ),
  ],
);
```

### 5. App Setup with TypedLocaleDelegate and Theming

```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:world_countries/world_countries.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => FlagTheme(
    data: DecoratedFlagData(
      height: 18,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
    ),
    child: MaterialApp(
      localizationsDelegates: const [
        // Required: resolves TypedLocale and pre-computes O(1) translation caches
        TypedLocaleDelegate(),
        ...GlobalMaterialLocalizations.delegates,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
        Locale('fr'),
        Locale('es'),
      ],
      theme: ThemeData(
        useMaterial3: true,
        extensions: const [
          // App-wide picker styling
          PickersThemeData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            showClearButton: true,
          ),
        ],
      ),
      home: const Scaffold(
        body: Center(child: Text('World Countries App')),
      ),
    ),
  );
}
```
