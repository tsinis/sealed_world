import "package:flutter/material.dart";

import "../helpers/typed_locale_delegate.dart";
import "../models/locale/typed_locale.dart";
import "../theme/picker_theme_data.dart";

/// A set of useful extensions for `BuildContext` related to the world_countries
/// package.
extension WorldCountriesBuildContextExtension on BuildContext {
  /// Returns the `TypedLocale` instance for the current context, or `null` if
  /// the current context does not have a `TypedLocale` (for example, because
  /// `TypedLocaleDelegate` is not provided in the `MaterialApp`'s
  /// `localizationsDelegates` list or locale was not detected).
  TypedLocale? get maybeLocale => TypedLocaleDelegate.maybeOf(this);

  /// Retrieves the closest [PickerThemeData] in the current context.
  ///
  /// This getter uses the [Theme] widget to look up the widget tree for the
  /// nearest [Theme] and then obtains the [PickerThemeData] extension from it.
  ///
  /// When no [PickerThemeData] is available in the given context, this getter
  /// will return `null`.
  ///
  /// Usage:
  /// ```dart
  /// final PickerThemeData? pickerThemeData = context.pickerTheme;
  /// ```
  ///
  /// Make sure to handle the possibility of a `null` value if the
  /// [PickerThemeData] is not always guaranteed to be present in the theme.
  ///
  /// Returns a [PickerThemeData] instance if found, or `null` otherwise.
  PickerThemeData? get pickerTheme =>
      Theme.of(this).extension<PickerThemeData>();
}
