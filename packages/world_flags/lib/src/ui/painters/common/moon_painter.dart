import "dart:ui";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A painter for rendering moon elements on flags.
///
/// This class extends [ElementsPainter] and provides methods to paint
/// moon shapes based on the specified properties.
final class MoonPainter extends ElementsPainter {
  /// Creates a [MoonPainter] with the given properties and aspect ratio.
  const new(super._properties, super.aspectRatio);

  /// The last combined path of every moon, its properties are `const`.
  static final _paths = Expando<({double aspectRatio, Path path, Size size})>();

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final path = _pathFor(size);
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }

  // Combining paths is costly, so reuse the last one built for this moon.
  Path _pathFor(Size size) {
    final element = property;
    final cached = _paths[element];
    if (cached != null &&
        cached.size == size &&
        cached.aspectRatio == aspectRatio) {
      return cached.path;
    }
    final path = _combinedPath(size);
    // ignore: avoid-collection-mutating-methods, intentional cache.
    _paths[element] = (aspectRatio: aspectRatio, path: path, size: size);

    return path;
  }

  Path _combinedPath(Size size) {
    final moon = shapeType<Moon>() ?? const Moon();
    final center = calculateCenter(size);
    final widthFactor = property.widthFactor;
    final radius = widthFactor == null
        ? calculateSize(size)
        : (size.width * widthFactor) / 2;

    final mainRect = Rect.fromCircle(center: center, radius: radius);
    final mainPath = Path()..addOval(mainRect);
    final x = moon.offsetDx;
    final y = moon.offsetDy;
    final secondCenter = widthFactor == null
        ? Offset(center.dx + x * radius, center.dy + y * radius)
        : Offset(
            center.dx + x * radius * widthFactor,
            center.dy + y * radius * property.heightFactor * aspectRatio,
          );

    final secondRect = Rect.fromCircle(
      center: secondCenter,
      radius: moon.radius * radius,
    );
    final secondPath = Path()..addOval(secondRect);

    return Path.combine(PathOperation.difference, mainPath, secondPath);
  }
}
