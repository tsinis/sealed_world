import "dart:ui";

import "../../../model/elements/elements_properties.dart";
import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Macau flag.
///
/// Draws its emblem: the lotus flower above the bridge and the water, and the
/// arc of five stars above them with the star shape.
///
/// The lotus, the bridge and the water are built the way the flag is
/// constructed: from circles (and the water from bars), cut and joined into a
/// single path. That path is built once, in the units of the construction
/// sheet, and scaled to the emblem by the canvas.
final class MacPainter extends CustomElementsPainter {
  /// Creates a new instance of [MacPainter].
  const new(super._properties, super.aspectRatio);

  /// The box of the emblem (stars included) in the units of the construction
  /// sheet, where the flag is 2880 by 1920 units, centered at its origin.
  static const _box = Rect.fromLTRB(-485, -598, 485, 538);

  /// The radius of the circles the petals and the bridge are made of.
  static const _radius = 324.5;

  /// The radius of the circles the side petals are made of.
  static const _sideRadius = 381.5;

  /// The radius of the circles that cut the tips of the petal outlines.
  static const _tipRadius = 130.0;

  /// The stars as a chain, painted in one go: the big one relative to the
  /// emblem, and every small one relative to the bounds of the star before it
  /// (as the star shape places its children), turned towards the arc center.
  static const _stars = <(Offset, double, int)>[
    (Offset(0, -0.8143), 0.1857, 0),
    (Offset(-2.5982, 0.9669), 0.765, -35),
    (Offset(-2.1782, 2.835), 1.1056, -65),
    (Offset(9.688, -2.6239), 1.1056, 35),
    (Offset(2.1782, 2.835), 1.1056, 65),
  ];

  /// The white part of the emblem, built on its first paint.
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
  static final Path _emblem = _constructedEmblem;

  static Path _circle(double x, double y, [double radius = _radius]) =>
      Path()..addOval(Rect.fromCircle(center: Offset(x, y), radius: radius));

  /// The lens shape where the circles at `(x, y)` and `(-x, y)` overlap.
  static Path _lens(double x, double y) => _and(_circle(x, y), _circle(-x, y));

  static Path _and(Path first, Path second) =>
      Path.combine(PathOperation.intersect, first, second);

  static Path _or(Path first, Path second) =>
      Path.combine(PathOperation.union, first, second);

  static Path _without(Path first, Path second) =>
      Path.combine(PathOperation.difference, first, second);

  /// Follows the construction sheet: white shapes are joined, and the field
  /// colored ones painted over them are cut out, in the order they are drawn.
  static Path get _constructedEmblem {
    // The bridge: two arches, thinned by the circles of the field color.
    final arches = _and(
      _or(_circle(-209, -7), _circle(209, -7)),
      Path()..addRect(const Rect.fromLTRB(-224, 0, 224, 400)),
    );
    Path emblem = _without(
      _without(arches, _circle(224, -39)),
      _circle(-224, -39),
    );

    // The water: bars in the circle around the lotus, the top one split by
    // the bridge.
    final bars = Path()
      ..addRect(const Rect.fromLTRB(-500, 285.5, -209, 317.5))
      ..addRect(const Rect.fromLTRB(209, 285.5, 500, 317.5))
      ..addRect(const Rect.fromLTRB(-500, 350.5, 500, 366.5))
      ..addRect(const Rect.fromLTRB(-500, 399.5, 500, 424.5))
      ..addRect(const Rect.fromLTRB(-500, 449.5, 500, 481.5))
      ..addRect(const Rect.fromLTRB(-500, 497.5, 500, 547.5));
    emblem = _or(emblem, _and(bars, _circle(0, -38, 576)));

    // The middle petal: its outline, then the petal inside of it.
    emblem = _or(emblem, _lens(158, -149));
    emblem = _without(emblem, _lens(199, -118));
    emblem = _without(emblem, _circle(0, -346, _tipRadius));
    emblem = _or(emblem, _lens(212, -100));

    // The side petals, the left one and then its mirror image.
    for (final side in const [1.0, -1.0]) {
      final clip = _circle(side * -234, -64);
      emblem = _or(emblem, _and(_circle(side * -379, 307, _sideRadius), clip));
      emblem = _without(
        emblem,
        _and(_circle(side * -370, 343, _sideRadius), _circle(side * -213, -91)),
      );
      emblem = _without(emblem, _circle(side * -485, 21, _tipRadius));
      final petal = _and(
        _circle(side * -339, 372, _sideRadius),
        _circle(side * -182, -96),
      );
      final stemPoints = [
        Offset(side * -100, 50),
        Offset(side * -40, 100),
        Offset(side * 10, 100),
        Offset(side * 10, 200),
        Offset(side * -50, 200),
      ];
      final stem = Path()..addPolygon(stemPoints, true);
      emblem = _or(emblem, _and(_or(petal, stem), clip));
    }

    return emblem;
  }

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _box.width / _box.height);
    final scale = bounds.height / _box.height;

    canvas
      ..save()
      ..translate(bounds.left, bounds.top)
      ..scale(scale)
      ..translate(-_box.left, -_box.top)
      ..drawPath(_emblem, paintCreator())
      ..restore();

    final color = customColor(0); // Yellow.
    ElementsProperties? stars;
    for (final (offset, heightFactor, angle) in _stars.reversed) {
      stars = ElementsProperties(
        color,
        shape: const Star(),
        offset: offset,
        heightFactor: heightFactor,
        angle: angle,
        child: stars,
      );
    }
    paintChild(canvas, bounds, stars);

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
