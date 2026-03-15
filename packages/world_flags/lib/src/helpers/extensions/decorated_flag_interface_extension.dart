import "package:flutter/widgets.dart" show Widget;

import "../../interfaces/decorated_flag_interface.dart";
import "../../theme/flag_theme_data.dart";
import "aspect_ratio_extension.dart";

/// An extension on [DecoratedFlagInterface] that provides a method to calculate
/// the aspect ratio of the flag based on its width and height.
extension DecoratedFlagInterfaceExtension on DecoratedFlagInterface {
  /// The calculated aspect ratio of the flag based on its width and height.
  double? get calculatedAspectRatio => height.aspectRatio(width);

  /// Converts this [DecoratedFlagInterface] to a [FlagThemeData] instance.
  ///
  /// Optionally overrides the [child] widget. If not provided, uses the
  /// existing [child] value.
  FlagThemeData toThemeData({Widget? child}) => FlagThemeData(
    aspectRatio: aspectRatio,
    decoration: decoration,
    decorationPosition: decorationPosition,
    padding: padding,
    height: height,
    width: width,
    child: child ?? this.child,
  );
}
