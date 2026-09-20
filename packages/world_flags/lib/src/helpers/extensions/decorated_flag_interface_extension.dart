import "package:flutter/widgets.dart" show Widget;

import "../../interfaces/decorated_flag_interface.dart";
import "../../theme/decorated_flag_data.dart";
import "aspect_ratio_extension.dart";

/// An extension on [DecoratedFlagInterface] that provides a method to calculate
/// the aspect ratio of the flag based on its width and height.
extension DecoratedFlagInterfaceExtension<T extends DecoratedFlagInterface>
    on T {
  /// The calculated aspect ratio of the flag based on its width and height.
  double? get calculatedAspectRatio => height.aspectRatio(width);

  /// Converts this [DecoratedFlagInterface] to a [DecoratedFlagData] instance.
  ///
  /// Optionally overrides the [flagChild] widget. If not provided, uses the
  /// existing [flagChild] value.
  DecoratedFlagData toData({Widget? flagChild}) => DecoratedFlagData(
    aspectRatio: aspectRatio,
    decoration: decoration,
    decorationPosition: decorationPosition,
    padding: padding,
    height: height,
    width: width,
    flagChild: flagChild ?? this.flagChild,
  );

  /// Converts this [DecoratedFlagInterface] to a [DecoratedFlagData] instance.
  ///
  /// Deprecated in favor of [toData].
  @Deprecated("Use `toData()` instead.")
  DecoratedFlagData toThemeData({Widget? child}) => toData(flagChild: child);
}
