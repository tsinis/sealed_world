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
  const UnionJackPainter.half(super.properties, super.aspectRatio)
    : _isFull = false,
      super.outlinedWithoutDividers();

  /// Creates a [UnionJackPainter] with a half Union Jack without outline and
  /// dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const UnionJackPainter.halfWithoutOutline(super.properties, super.aspectRatio)
    : _isFull = false,
      super.withoutDividers();

  /// Creates a [UnionJackPainter] with a half Union Jack with dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const UnionJackPainter.halfWithDividers(super.properties, super.aspectRatio)
    : _isFull = false,
      super.withDividers();

  /// Creates a [UnionJackPainter] with a full Union Jack without dividers.
  ///
  /// The [properties] parameter specifies the properties of the shield. The
  /// [aspectRatio] parameter specifies the aspect ratio of the shield.
  const UnionJackPainter.full(super.properties, super.aspectRatio)
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

    return _paintUnionJack(canvas, size);
  }

  FlagParentBounds? _paintUnionJack(Canvas canvas, Size fullSize) {
    final size = _isFull ? fullSize : fullSize / 2;
    final width = size.width;
    final height = size.height;
    final angle = atan2(height, width);
    final thickness = height * 0.2;
    final center = Offset(width / 2, height / 2);
    final rect = Rect.fromLTWH(0, 0, width, height);
    final length = sqrt(width * width + height * height);
    final line = Rect.fromLTWH(-length / 2, -thickness / 2, length, thickness);
    final whitePaint = paintCreator(_whiteColor);
    final redPaint = Paint()
      ..color = _redColor
      ..strokeWidth = thickness / 3;

    canvas
      ..drawRect(rect, paintCreator(_blueColor))
      ..clipRect(rect, doAntiAlias: flagAntiAliasOverride)
      ..save()
      ..translate(width / 2, height / 2)
      ..rotate(-angle)
      ..drawRect(line, whitePaint)
      ..restore()
      ..save()
      ..translate(width / 2, height / 2)
      ..rotate(angle)
      ..drawRect(line, whitePaint)
      ..restore();

    _SaintPatrickCross(canvas, center, redPaint, size)
      ..paint(Offset.zero, -0.075)
      ..paint(Offset(width, 0), -0.015, -0.015)
      ..paint(Offset(0, height), 0.015, 0.015)
      ..paint(Offset(width, height), 0.075);

    return MultiElementPainter(_stripesProps, aspectRatio).paint(canvas, size);
  }
}

class _SaintPatrickCross {
  // ignore: prefer-named-parameters, it's a private implementation.
  const _SaintPatrickCross(this._canvas, this._center, this._paint, this._size);

  final Canvas _canvas;
  final Offset _center;
  final Paint _paint;
  final Size _size;

  void paint(Offset start, double xShiftPercent, [double yShiftPercent = 0]) {
    final width = _size.height;
    final height = _size.width;
    final aspectRatioCorrectionFactor = height / width / 2;
    final xShift = width * xShiftPercent * aspectRatioCorrectionFactor;
    final yShift = height * yShiftPercent * aspectRatioCorrectionFactor;
    final shift = start.translate(xShift, yShift);
    final compensated = Offset(
      shift.dx + (_center.dx - start.dx),
      shift.dy + (_center.dy - start.dy),
    );

    _canvas.drawLine(shift, compensated, _paint);
  }
}
