import "dart:math";
import "dart:ui" show Color, Size;

import "package:flutter/foundation.dart";

import "../../../model/elements/custom_elements_properties.dart";
import "../../../model/typedefs.dart";
import "elements_painter.dart";

/// An abstract base class for painting custom elements on a flag.
///
/// This class extends [ElementsPainter] and provides additional properties and
/// methods for painting custom elements. It uses the provided
/// [CustomElementsProperties] and [aspectRatio] to customize the appearance of
/// the elements.
abstract base class CustomElementsPainter<T extends FlagParentBounds>
    extends ElementsPainter {
  /// Creates a new instance of [CustomElementsPainter].
  ///
  /// - [properties]: The properties of the elements to be painted.
  /// - [aspectRatio]: The aspect ratio of the flag.
  const CustomElementsPainter(super.properties, super.aspectRatio);

  /// The original aspect ratio of the flag.
  ///
  /// This getter can be overridden by subclasses to provide a specific aspect
  /// ratio. It's not specified by default.
  @protected // coverage:ignore-line
  @visibleForOverriding
  double? get originalAspectRatio => null;

  /// Retrieves the custom properties of the elements to be painted.
  ///
  /// This getter filters the [properties] to find the first instance of
  /// [CustomElementsProperties].
  ///
  /// Returns the custom properties of the flag elements.
  @protected
  CustomElementsProperties get customProperties =>
      properties.whereType<CustomElementsProperties>().first;

  /// Retrieves the custom colors of the elements to be painted.
  ///
  /// This getter returns the list of other colors from the [customProperties].
  ///
  /// Returns a list of custom colors.
  @protected
  List<Color> get customColors => customProperties.otherColors;

  /// Adjusts the size of the child element based on the aspect ratio.
  ///
  /// This method calculates the adjusted size of the child element using the
  /// [originalAspectRatio], [minRatio], and the size of the parent bounds.
  ///
  /// - [size]: The size of the child element.
  /// - [minRatio]: The minimum ratio to use for adjustment. Defaults to `1.1`.
  ///
  /// Returns the adjusted size of the child element.
  @protected
  Size ratioAdjustedSize(Size size, {double minRatio = 1.1}) {
    final originalRatio = originalAspectRatio;
    if (originalRatio == null) return size;

    final currentAspectRatio = calculateAspectRatio(size);
    final adjustedRatio = min(minRatio, currentAspectRatio / originalRatio);
    final heightFactor = property.heightFactor;
    final height = size.height * heightFactor * adjustedRatio;
    final width = size.width * (property.widthFactor ?? 1);

    return Size(width, height);
  }
}
