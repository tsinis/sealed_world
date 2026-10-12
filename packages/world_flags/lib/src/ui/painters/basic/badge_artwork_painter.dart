import "dart:ui" show Canvas, Size;

import "package:flutter/foundation.dart";

import "../../../model/typedefs.dart";
import "badge_artwork.dart";
import "custom_elements_painter.dart";

/// A [CustomElementsPainter] that paints a [BadgeArtwork] as its custom
/// element.
///
/// The [artwork] is fitted into the [proportionalBounds] of the custom element,
/// keeping its [artworkRatio], and its layers take their colors from the
/// palette of the custom element (see [badgePalette]).
base mixin BadgeArtworkPainter<T extends FlagParentBounds>
    on CustomElementsPainter<T> {
  /// The artwork of the badge.
  ///
  /// Return a `static final` instance, so every painter of this badge shares
  /// its path cache.
  @protected
  BadgeArtwork get artwork;

  /// Width over height of the [artwork].
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  @protected
  double get artworkRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, artworkRatio);
    artwork.paint(canvas, bounds, badgePalette());

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
