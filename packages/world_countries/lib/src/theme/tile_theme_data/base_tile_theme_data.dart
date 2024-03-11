import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../models/item_properties.dart";

/// A theme extension data class that holds theme data for base tiles.
///
/// This class defines the visual properties of base tile widgets in an app and
/// allows for theming customizations specific to tiles that display translated
/// content. It extends [ThemeExtension] to facilitate the ease of creating
/// extendable theme data.
///
/// The generic type `T` extends from [Translated] and represents the model that
/// contains translated text information which the tile will use.
///
/// Parameters:
/// - `builder`: An optional function that returns a widget for a given set of
///   [ItemProperties] and density flag.
///
/// This allows for custom tile widgets to be built based on the provided item
/// properties and whether the tile should be dense or not.
@immutable
base class BaseTileThemeData<T extends Translated>
    extends _BaseTileThemeData<T> {
  /// Creates a [BaseTileThemeData] with the given properties.
  const BaseTileThemeData({super.builder});

  @override
  @optionalTypeArgs
  BaseTileThemeData<T> copyWith({
    Widget Function(ItemProperties<T> itemProperties, {bool? isDense})? builder,
  }) =>
      BaseTileThemeData<T>(builder: builder ?? this.builder);

  @override
  BaseTileThemeData<T> lerp(
    covariant ThemeExtension<BaseTileThemeData<T>>? other,
    double t,
  ) =>
      this;
}

@immutable
sealed class _BaseTileThemeData<T extends Translated>
    extends ThemeExtension<BaseTileThemeData<T>> {
  const _BaseTileThemeData({this.builder}); // coverage:ignore-line

  /// A builder function that takes [ItemProperties] and an optional density
  /// flag, and returns a widget for the tile.
  ///
  /// This builder can be used to customize the appearance and layout of the
  /// tile based on the provided properties.
  final Widget Function(ItemProperties<T> itemProperties, {bool? isDense})?
      builder;
}
