import "package:flutter/material.dart";
import "package:meta/meta.dart" show useResult;
import "package:world_flags/world_flags.dart";

import "../../models/item_properties.dart";
import "../../widgets/generic_widgets/iso_tile.dart";

/// A theme extension data class that holds theme data for base tiles.
///
/// This class defines the visual properties of base tile widgets in an app and
/// allows for theming customizations specific to tiles that display translated
/// content. It extends [ThemeExtension] to facilitate the ease of creating
/// extendable theme data.
///
/// The generic type [T] extends from [IsoTranslated] and represents the model
/// that contains translated text information which the tile will use.
///
/// Parameters:
/// - [itemBuilder]: An optional function that returns a widget for a given set
///  of [ItemProperties] and density flag.
///
/// This allows for custom tile widgets to be built based on the provided item
/// properties and whether the tile should be dense or not.
@immutable
base class BaseTileThemeData<T extends IsoTranslated>
    extends _BaseTileThemeData<T> {
  /// Creates a [BaseTileThemeData] with the given properties.
  const BaseTileThemeData({super.itemBuilder});

  @override
  @optionalTypeArgs
  @useResult
  BaseTileThemeData<T> copyWith({
    Widget? Function(ItemProperties<T>, IsoTile<T>)? itemBuilder,
  }) => BaseTileThemeData<T>(itemBuilder: itemBuilder ?? this.itemBuilder);

  @override
  @useResult
  BaseTileThemeData<T> lerp(
    covariant ThemeExtension<BaseTileThemeData<T>>? other,
    double t,
  ) => this;
}

@immutable
sealed class _BaseTileThemeData<T extends IsoTranslated>
    extends ThemeExtension<BaseTileThemeData<T>> {
  const _BaseTileThemeData({this.itemBuilder}); // coverage:ignore-line

  /// A builder function that takes [ItemProperties] and a default tile widget,
  /// and returns a widget for the tile.
  ///
  /// This builder can be used to customize the appearance and layout of the
  /// tile based on the provided properties. The second parameter is the default
  /// tile widget which can be used as-is or customized using `.copyWith()`.
  ///
  /// Example:
  /// ```dart
  /// itemBuilder: (itemProperties, defaultTile) {
  ///   // Use default tile as-is
  ///   return defaultTile;
  ///
  ///   // Or customize it
  ///   return defaultTile.copyWith(dense: true);
  /// }
  /// ```
  final Widget? Function(ItemProperties<T>, IsoTile<T>)? itemBuilder;
}
