// ignore_for_file: avoid-similar-names

part of "../multi_element_painter.dart";

/// A painter for rendering the Union Jack flag.
///
/// This class extends [SimpleShieldPainter] and provides different constructors
/// for rendering the Union Jack flag with various styles and configurations.
final class UnionJackPainter extends SimpleShieldPainter {
  /// Creates a [UnionJackPainter] with an outlined half Union Jack without
  /// dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const new half(super._properties, super.aspectRatio)
    : _isFull = false,
      super.outlinedWithoutDividers();

  /// Creates a [UnionJackPainter] with a half Union Jack without outline and
  /// dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const new halfWithoutOutline(super._properties, super.aspectRatio)
    : _isFull = false,
      super.withoutDividers();

  /// Creates a [UnionJackPainter] with a half Union Jack with dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const new halfWithDividers(super._properties, super.aspectRatio)
    : _isFull = false,
      super.withDividers();

  /// Creates a [UnionJackPainter] with a full Union Jack without dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const new full(super._properties, super.aspectRatio)
    : _isFull = true,
      super.withoutDividers();

  final bool _isFull;

  static const _blueColor = Color(0xff012169);
  static const _redColor = Color(0xffc8102e);
  static const _whiteColor = Color(0xffffffff);

  static const _stripesProps = [
    ElementsProperties(_whiteColor, shape: Rectangle(), heightFactor: 1 / 3),
    ElementsProperties(
      _whiteColor,
      shape: Rectangle(aspectRatio: 1 / 3),
      child: ElementsProperties(_redColor, shape: Rectangle(aspectRatio: 0.2)),
    ),
    ElementsProperties(_redColor, shape: Rectangle(), heightFactor: 1 / 5),
  ];

  @override
  FlagParentBounds? paint(Canvas canvas, Size size) {
    if (!_isFull) super.paint(canvas, size);
    _paintUnionJack(canvas, size);

    return null;
  }

  void _paintUnionJack(Canvas canvas, Size fullSize) {
    final size = _isFull ? fullSize : fullSize / 2;
    final width = size.width;
    final height = size.height;
    final angle = atan2(height, width);
    final thickness = height * 0.2;
    final center = Offset(width / 2, height / 2);
    final rect = Rect.fromLTWH(0, 0, width, height);
    final length = sqrt(width * width + height * height);

    // Both diagonals of a color go into one path: they share a paint and
    // overlap at the centre, so filling them together draws the same pixels
    // as two separate calls did, for one draw command instead of two.
    final saltire = Path();
    _addBar(saltire, center, length, thickness, -angle);
    _addBar(saltire, center, length, thickness, angle);

    final patrick = Path();
    _SaintPatrickCross(patrick, center, size)
      ..add(Offset.zero, -0.075)
      ..add(Offset(width, 0), -0.015, -0.015)
      ..add(Offset(0, height), 0.015, 0.015)
      ..add(Offset(width, height), 0.075);

    canvas
      ..drawRect(rect, paintCreator(_blueColor)..isAntiAlias = false)
      ..clipRect(rect) // The diagonals overhang the flag by design.
      ..drawPath(saltire, paintCreator(_whiteColor))
      ..drawPath(
        patrick,
        paintCreator(_redColor)
          ..style = PaintingStyle.stroke
          ..strokeWidth = thickness / 3,
      );

    _paintCross(canvas, size);
  }

  /// Paints the upright cross, one draw call per color.
  ///
  /// The bars are axis-aligned and drawn without anti-aliasing, so filling the
  /// two bars of a color as one path is pixel for pixel what the four
  /// separate rectangles produced.
  void _paintCross(Canvas canvas, Size size) {
    final ratio = size.aspectRatio;
    final white = Path();
    final red = Path();

    final band = _boundsOf(_stripesProps.first, ratio, size);
    final bar = _boundsOf(_stripesProps[1], ratio, size);
    white
      ..addRect(band)
      ..addRect(bar);

    final inner = _stripesProps[1].child;
    if (inner != null) {
      red.addRect(
        _boundsOf(inner, bar.size.aspectRatio, bar.size).shift(bar.topLeft),
      );
    }
    red.addRect(_boundsOf(_stripesProps.last, ratio, size));

    canvas
      ..drawPath(white, paintCreator(_whiteColor)..isAntiAlias = false)
      ..drawPath(red, paintCreator(_redColor)..isAntiAlias = false);
  }

  static Rect _boundsOf(ElementsProperties props, double ratio, Size size) =>
      RectanglePainter([props], ratio).rectangleBounds(size);

  /// Adds the corners of a bar of [length] and [thickness], turned by
  /// [radians] about [center], as one closed contour of [path].
  static void _addBar(
    Path path,
    Offset center,
    double length,
    double thickness,
    double radians,
  ) {
    final cosine = cos(radians);
    final sine = sin(radians);
    final along = Offset(cosine, sine) * (length / 2);
    final across = Offset(-sine, cosine) * (thickness / 2);

    path
      ..moveTo(
        center.dx - along.dx - across.dx,
        center.dy - along.dy - across.dy,
      )
      ..lineTo(
        center.dx + along.dx - across.dx,
        center.dy + along.dy - across.dy,
      )
      ..lineTo(
        center.dx + along.dx + across.dx,
        center.dy + along.dy + across.dy,
      )
      ..lineTo(
        center.dx - along.dx + across.dx,
        center.dy - along.dy + across.dy,
      )
      ..close();
  }
}

/// Builds the four arms of the Saint Patrick's saltire as one path.
class _SaintPatrickCross {
  const new(this._path, this._center, this._size);

  final Path _path;
  final Offset _center;
  final Size _size;

  void add(Offset start, double xShiftPercent, [double yShiftPercent = 0]) {
    final width = _size.height;
    final height = _size.width;
    final aspectRatioCorrectionFactor = height / width / 2;
    final xShift = width * xShiftPercent * aspectRatioCorrectionFactor;
    final yShift = height * yShiftPercent * aspectRatioCorrectionFactor;
    final shift = start.translate(xShift, yShift);

    _path
      ..moveTo(shift.dx, shift.dy)
      ..lineTo(
        shift.dx + (_center.dx - start.dx),
        shift.dy + (_center.dy - start.dy),
      );
  }
}
