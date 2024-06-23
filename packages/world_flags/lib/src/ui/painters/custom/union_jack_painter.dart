part of "../multi_element_painter.dart";

final class UnionJackPainter extends MultiElementPainter {
  const UnionJackPainter.half(super.properties, super.aspectRatio)
      : _isFull = false;
  const UnionJackPainter.full(super.properties, super.aspectRatio)
      : _isFull = true;

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
    final thickness = size.height * 0.2;
    final center = Offset(width / 2, height / 2);
    final rect = Rect.fromLTWH(0, 0, width, height);
    final length = sqrt(width * width + height * height);
    final line = Rect.fromLTWH(-length / 2, -thickness / 2, length, thickness);
    final whitePaint = Paint()..color = _whiteColor;
    final redPaint = Paint()
      ..color = _redColor
      ..strokeWidth = thickness / 3;

    canvas
      ..drawRect(rect, Paint()..color = _blueColor)
      ..clipRect(rect)
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
  _SaintPatrickCross(this._canvas, this._center, this._paint, this._size);

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
