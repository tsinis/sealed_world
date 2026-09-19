// ignore_for_file: specify_nonobvious_property_types, those are doubles.

import "dart:math";
import "dart:ui";

import "../../../model/elements/elements_properties.dart";
import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A custom painter that draws a star, or a whole chain of them, on a flag.
///
/// Flags nest their stars: every star is the `child` of the one before it, and
/// its box is the previous star's bounds. Those stars almost always share a
/// color, so this painter walks the chain itself and fills it as a single
/// path. The Cook Islands' ring of fifteen stars costs one draw call instead
/// of fifteen, which is what the raster thread actually pays for.
///
/// The chain stops as soon as the next element is not a star, is not filled or
/// carries another color; the remaining child is handed back so that
/// [ElementsPainter.paintChild] picks it up as before.
final class StarPainter extends ElementsPainter {
  /// Creates a painter for a star, or a chain of stars.
  const new(super._properties, super.aspectRatio);

  /// The first point of a star sits at the top.
  static const _startRadians = pi / 2;
  static const _radiansMultiplier = pi / 180;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final path = Path();
    final paint = paintCreator();
    ElementsProperties props = property;
    Size box = size;
    Offset origin = Offset.zero;

    while (true) {
      final star = shapeType<Star>(props.shape) ?? const Star();
      final radius = _radiusIn(props, box);
      final bounds = _addStar(
        path,
        star,
        props.angle,
        origin + _centerIn(props, box),
        radius,
      );
      if (!star.isFilled) {
        paint
          ..style = PaintingStyle.stroke
          ..strokeWidth = radius / 8;
      }

      final next = _nextInChain(star, props);
      if (next == null) {
        canvas.drawPath(path, paint);

        return (canvas: canvas, bounds: bounds, child: props.child);
      }
      props = next;
      origin = bounds.topLeft;
      box = bounds.size;
    }
  }

  /// The child of [props], if it is a star fillable in the same draw call.
  static ElementsProperties? _nextInChain(Star star, ElementsProperties props) {
    final child = props.child;
    final childShape = child?.shape;
    if (child == null || childShape is! Star) return null;

    return star.isFilled &&
            childShape.isFilled &&
            child.mainColor == props.mainColor
        ? child
        : null;
  }

  /// Adds one star to [path] and returns the box its children are placed in.
  ///
  /// An angle turns the points around [center] rather than the canvas, so the
  /// returned bounds stay those of the upright star, exactly as they were when
  /// the rotation was a canvas transform.
  static Rect _addStar(
    Path path,
    Star star,
    int? angle,
    Offset center,
    double radius,
  ) {
    final radiansPerPoint = pi * 2 / (star.points * 2);
    final radians = (angle ?? 0) * _radiansMultiplier;
    final cosine = cos(radians);
    final sine = sin(radians);
    double left = double.infinity;
    double top = double.infinity;
    double right = -double.infinity;
    double bottom = -double.infinity;

    for (int i = 0; i <= star.points * 2; i += 1) {
      final factor = radius * (i.isEven ? star.radiusFactor : 1);
      final radiansAtPoint = i * radiansPerPoint + _startRadians;
      final spoke = Offset(
        factor * cos(radiansAtPoint),
        factor * sin(radiansAtPoint),
      );
      final point = center + spoke;
      left = min(left, point.dx);
      top = min(top, point.dy);
      right = max(right, point.dx);
      bottom = max(bottom, point.dy);

      final turned = angle == null
          ? point
          : center +
                Offset(
                  spoke.dx * cosine - spoke.dy * sine,
                  spoke.dx * sine + spoke.dy * cosine,
                );
      i == 0
          ? path.moveTo(turned.dx, turned.dy)
          : path.lineTo(turned.dx, turned.dy);
    }
    path.close();

    return Rect.fromLTRB(left, top, right, bottom);
  }

  /// [ElementsPainter.calculateCenter] for any element of a chain.
  static Offset _centerIn(ElementsProperties props, Size size) => Offset(
    (props.offset.dx + 1) * size.width / 2,
    (props.offset.dy + 1) * size.height / 2,
  );

  /// [ElementsPainter.calculateSize] for any element of a chain.
  static double _radiusIn(ElementsProperties props, Size size) {
    final height = props.heightFactor * size.height / 2;
    final widthFactor = props.widthFactor;
    if (widthFactor == null) return height;

    return min(widthFactor * size.width / 2, height);
  }
}
