import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";
import "../common/triangle_painter.dart";

/// Painter of Bahrain's serrated seam, which reuses the [TrianglePainter], but
/// clips its triangles to the flag, so the overflow of a shader can't expose
/// them outside of the flag.
final class ClippedTrianglePainter extends ElementsPainter {
  /// Creates a [ClippedTrianglePainter] with the given [properties]
  /// and [aspectRatio].
  const new(super._properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size); // Clip to flag bounds/parent stripes.

    return TrianglePainter(
      properties,
      aspectRatio,
    ).paintFlagElements(canvas, size);
  }
}
