// Comparing fields of two objects is the point here, not destructuring one.
// ignore_for_file: prefer-class-destructuring

import "package:flutter/foundation.dart" show internal, listEquals;

import "../../model/colors_properties.dart";
import "../../model/elements/custom_elements_properties.dart";
import "../../model/elements/elements_properties.dart";
import "../../model/flag_properties.dart";
import "../../model/shape.dart";

/// Compares what [FlagProperties] paint, so equal but not identical properties
/// (i.e. created in a `build` method) don't repaint a flag.
@internal
extension PaintEqualityExtension on FlagProperties {
  /// Whether the [other] properties paint the same flag as these ones.
  ///
  /// Only the metadata (`url` and `isSimplified`) may differ, it's not painted.
  bool paintsLike(FlagProperties? other) {
    if (identical(this, other)) return true;
    if (other == null) return false;
    final isSameLayout =
        aspectRatio == other.aspectRatio &&
        stripeOrientation == other.stripeOrientation &&
        baseElementType == other.baseElementType;

    return isSameLayout &&
        _stripesPaintLike(stripeColors, other.stripeColors) &&
        elementsPaintLike(elementsProperties, other.elementsProperties);
  }

  /// Whether the [elements] paint the same as the [others], in the same order.
  static bool elementsPaintLike(
    List<ElementsProperties>? elements,
    List<ElementsProperties>? others,
  ) {
    if (identical(elements, others)) return true;
    if (elements == null || others == null) return false;
    if (elements.length != others.length) return false;
    for (final (index, item) in elements.indexed) {
      if (!_elementPaintsLike(item, others[index])) return false;
    }

    return true;
  }

  static bool _stripesPaintLike(
    List<ColorsProperties> first,
    List<ColorsProperties> second,
  ) {
    if (identical(first, second)) return true;
    if (first.length != second.length) return false;
    for (final (index, stripe) in first.indexed) {
      final compared = second[index];
      if (stripe.color != compared.color || stripe.ratio != compared.ratio) {
        return false;
      }
    }

    return true;
  }

  // Compares the element and then its children, one level after another.
  static bool _elementPaintsLike(
    ElementsProperties element,
    ElementsProperties other,
  ) {
    ElementsProperties? current = element;
    ElementsProperties? compared = other;
    while (current != null && compared != null) {
      if (identical(current, compared)) return true;
      if (!_sameElement(current, compared)) return false;
      current = current.child;
      compared = compared.child;
    }

    return current == compared; // Both chains end at the same level.
  }

  static bool _sameElement(
    ElementsProperties first,
    ElementsProperties second,
  ) {
    if (first.runtimeType != second.runtimeType) return false;
    final isSameCustom =
        first is! CustomElementsProperties ||
        (second is CustomElementsProperties &&
            listEquals(first.otherColors, second.otherColors));
    final isSamePlacement =
        first.offset == second.offset &&
        first.heightFactor == second.heightFactor &&
        first.widthFactor == second.widthFactor &&
        first.angle == second.angle;

    return isSameCustom &&
        isSamePlacement &&
        first.mainColor == second.mainColor &&
        _shapesPaintLike(first.shape, second.shape);
  }

  static bool _shapesPaintLike(Shape? shape, Shape? other) => switch ((
    shape,
    other,
  )) {
    (null, null) || (Triangle(), Triangle()) || (Ellipse(), Ellipse()) => true,
    (final Rectangle first, final Rectangle second) =>
      first.aspectRatio == second.aspectRatio,
    (final Star first, final Star second) =>
      first.points == second.points &&
          first.radiusFactor == second.radiusFactor &&
          first.isFilled == second.isFilled,
    (final Moon first, final Moon second) =>
      first.radius == second.radius &&
          first.offsetDx == second.offsetDx &&
          first.offsetDy == second.offsetDy,
    (final DiagonalLine first, final DiagonalLine second) =>
      first.isTopRightToBottomLeft == second.isTopRightToBottomLeft,
    _ => false,
  };
}
