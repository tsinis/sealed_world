import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../helpers/typed_locale_delegate.dart";
import "../models/locale/typed_locale.dart";
import "../theme/pickers_theme_data.dart";
import "../theme/tile_theme_data/base_tile_theme_data.dart";
import "../theme/tile_theme_data/country_tile_theme_data.dart";
import "../theme/tile_theme_data/currency_tile_theme_data.dart";
import "../theme/tile_theme_data/language_tile_theme_data.dart";

/// A set of useful extensions for `BuildContext` related to the world_countries
/// package.
extension WorldCountriesBuildContextExtension on BuildContext {
  /// Returns the `TypedLocale` instance for the current context, or `null` if
  /// the current context does not have a `TypedLocale` (for example, because
  /// `TypedLocaleDelegate` is not provided in the `MaterialApp`'s
  /// `localizationsDelegates` list or locale was not detected).
  TypedLocale? get maybeLocale => TypedLocaleDelegate.maybeOf(this);

  /// Retrieves the closest [PickersThemeData] in the current context.
  ///
  /// This getter uses the [Theme] widget to look up the widget tree for the
  /// nearest [Theme] and then obtains the [PickersThemeData] extension from it.
  ///
  /// When no [PickersThemeData] is available in the given context, this getter
  /// will return `null`.
  ///
  /// Usage:
  /// ```dart
  /// final PickersThemeData? pickersThemeData = context.pickerTheme;
  /// ```
  ///
  /// Make sure to handle the possibility of a `null` value if the
  /// [PickersThemeData] is not always guaranteed to be present in the theme.
  ///
  /// Returns a [PickersThemeData] instance if found, or `null` otherwise.
  PickersThemeData? get pickersTheme =>
      Theme.of(this).extension<PickersThemeData>();

  /// Retrieves the theme data for language tiles.
  ///
  /// This getter provides access to the [LanguageTileThemeData] from the
  /// closest instance of [ThemeData] that encloses the current context, if
  /// available.
  ///
  /// Returns: An instance of [LanguageTileThemeData] containing the theme data
  /// for language tiles, or null if no theme data is available for language
  /// tiles in the current theme.
  BaseTileThemeData<NaturalLanguage>? get languageTileTheme =>
      _tileTheme<NaturalLanguage>();

  /// Retrieves the theme data for country tiles.
  ///
  /// This getter provides access to the [CountryTileThemeData] from the closest
  /// instance of [ThemeData] that encloses the current context, if available.
  ///
  /// Returns: An instance of [CountryTileThemeData] containing the theme data
  /// for country tiles, or null if no theme data is available for country tiles
  /// in the current theme.
  CountryTileThemeData? get countryTileTheme {
    final theme = _tileTheme<WorldCountry>();

    return switch (theme) { CountryTileThemeData() => theme, _ => null };
  }

  /// Retrieves the theme data for currency tiles.
  ///
  /// This getter provides access to the [CurrencyTileThemeData] from the
  /// closest instance of [ThemeData] that encloses the current context, if
  /// available.
  ///
  /// Returns: An instance of [CurrencyTileThemeData] containing the theme data
  /// for currency tiles, or null if no theme data is available for currency
  /// tiles in the current theme.
  BaseTileThemeData<FiatCurrency>? get currencyTileTheme =>
      _tileTheme<FiatCurrency>();

  BaseTileThemeData<T>? _tileTheme<T extends Translated>() =>
      Theme.of(this).extension<BaseTileThemeData<T>>();
}
