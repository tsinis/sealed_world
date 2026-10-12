import "dart:math";
import "dart:ui" show Canvas, Color, Offset, Paint, Rect, Size;

import "package:flutter/foundation.dart";

import "../../../model/elements/custom_elements_properties.dart";
import "../../../model/typedefs.dart";
import "badge_artwork.dart";
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
  const new(super._properties, super.aspectRatio);

  /// The original aspect ratio of the flag.
  ///
  /// This getter can be overridden by subclasses to provide a specific aspect
  /// ratio. It's not specified by default.
  @protected // coverage:ignore-line
  @visibleForOverriding // coverage:ignore-line
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
  /// Painters read their palette by index, prefer [customColor] and
  /// [lastCustomColor] for that: they don't fail when the custom properties
  /// provide fewer colors than the painter draws with.
  ///
  /// Returns a list of custom colors.
  @protected
  List<Color> get customColors => customProperties.otherColors;

  /// The custom color at [index] of [customColors], or the `mainColor` of the
  /// custom element if there's no such color.
  @protected
  Color customColor(int index) =>
      (index.isNegative ? null : customColors.elementAtOrNull(index)) ??
      customProperties.mainColor;

  /// The last of [customColors], or the `mainColor` of the custom element if
  /// there are none.
  @protected
  Color get lastCustomColor =>
      customColors.lastOrNull ?? customProperties.mainColor;

  /// Resolves the paint of every badge layer by its palette index, see
  /// [badgePaint]. The palette is read once, so prefer it over [badgePaint]
  /// when painting all layers of a badge.
  @protected
  BadgePaintResolver badgePalette() {
    final CustomElementsProperties(:mainColor, :otherColors) = customProperties;
    final paint = paintCreator(mainColor);

    // Canvas copies the paint on every draw call, so one instance is enough.
    return (index) {
      paint.color = index == 0
          ? mainColor
          : (otherColors.elementAtOrNull(index - 1) ?? mainColor);

      return paint;
    };
  }

  /// Paints every element of [properties] that has a shape (i.e. the stars
  /// around an emblem), in their order. Custom elements have no shape, so they
  /// are left to the painter itself.
  @protected
  void paintShapes(Canvas canvas, Size size) {
    for (final element in properties) {
      final shape = element.shape;
      if (shape == null) continue;
      painter(shape)([element], size.aspectRatio).paint(canvas, size);
    }
  }

  /// The bounds of artwork that must keep a fixed [artworkAspectRatio], given
  /// as width over height.
  ///
  /// The element's `widthFactor` and `heightFactor` describe the box the
  /// artwork fills at the flag's own aspect ratio. When
  /// the flag is drawn wider or narrower than that, the artwork is fitted into
  /// the box rather than stretched with it, so it is never squeezed. The
  /// result is centered at the element's `offset`, the same way as
  /// [calculateCenter] centers every other element.
  ///
  /// - [size]: The size of the flag.
  /// - [artworkAspectRatio]: The width-to-height ratio the artwork keeps.
  ///
  /// Returns the bounds the artwork should be drawn into.
  @protected
  Rect proportionalBounds(Size size, double artworkAspectRatio) {
    assert(artworkAspectRatio > 0, "Aspect ratio should be greater than zero.");
    // Read from the custom element rather than the first one: flags that paint
    // a shape behind their badge keep that shape at the head of the list.
    final element = customProperties;
    final height = min(
      size.height * element.heightFactor,
      (size.width * (element.widthFactor ?? 1)) / artworkAspectRatio,
    );
    final offset = element.offset;

    return Rect.fromCenter(
      center: Offset(
        (offset.dx + 1) * size.width / 2,
        (offset.dy + 1) * size.height / 2,
      ),
      width: height * artworkAspectRatio,
      height: height,
    );
  }

  /// The paint for the badge layer whose palette index is [index].
  ///
  /// `0` is the custom element's `mainColor` and `n` is its
  /// `otherColors[n - 1]`, so the palette stays in the flag data.
  @protected
  Paint badgePaint(int index) => paintCreator(
    index == 0 ? customProperties.mainColor : customColor(index - 1),
  );

  /// Adjusts the size of the child element based on the aspect ratio.
  ///
  /// This method calculates the adjusted size of the child element using the
  /// [originalAspectRatio], [minRatio], and the size of the parent bounds.
  ///
  /// - [size]: The size of the child element.
  /// - [minRatio]: The upper limit of the adjustment ratio, so the element is
  ///   never grown more than this. Defaults to `1.1`.
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
