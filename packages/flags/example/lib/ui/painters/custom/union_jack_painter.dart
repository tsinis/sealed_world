part of "../multi_element_painter.dart";

final class UnionJackPainter extends MultiElementPainter {
  const UnionJackPainter(super.properties, super.aspectRatio) : _isFull = false;
  const UnionJackPainter.full(super.properties, super.aspectRatio)
      : _isFull = true;

  final bool _isFull;

  static const _whiteColor = Color(0xffffffff);
  static const _redColor = Color(0xffc8102e);
  static const _blueColor = Color(0xff012169);

  static const _stripesProps = [
    ElementsProperties(
      _whiteColor,
      shape: Rectangle(),
      heightFactor: 1 / 3,
      widthFactor: 1,
    ),
    ElementsProperties(
      _whiteColor,
      shape: Rectangle(aspectRatio: 1 / 3),
      child: ElementsProperties(_redColor, shape: Rectangle(aspectRatio: 0.2)),
    ),
    ElementsProperties(
      _redColor,
      shape: Rectangle(),
      heightFactor: 0.2,
      widthFactor: 1,
    ),
  ];

  @override
  void paint(Canvas canvas, Size size) {
    super.paint(canvas, size);
    _paintUnionJack(canvas, size);
  }

  void _paintUnionJack(Canvas canvas, Size fullSize) {
    final size = fullSize / 3;
    final width = size.width;
    final height = size.height;
    final center = calculateCenter(size);
    final rect = Rect.fromLTWH(0, 0, width, height);
    final angle = atan2(size.height, size.width);
    final thickness = size.height * property.heightFactor;
    final length = sqrt(size.width * size.width + size.height * size.height);
    final line = Rect.fromLTWH(-length / 2, -thickness / 2, length, thickness);
    final redPaint = Paint()
      ..color = _redColor
      ..strokeWidth = thickness / 3;

    canvas
      ..drawRect(rect, Paint()..color = _blueColor)
      ..clipRect(rect)
      ..save()
      ..translate(width / 2, height / 2)
      ..rotate(-angle)
      ..drawRect(line, colorPaint)
      ..restore()
      ..save()
      ..translate(width / 2, height / 2)
      ..rotate(angle)
      ..drawRect(line, colorPaint)
      ..restore();

    _DiagonalLine.topLeft
        .paint(canvas, Offset.zero, center, redPaint, height, width);
    _DiagonalLine.topRight
        .paint(canvas, Offset(width, 0), center, redPaint, height, width);
    _DiagonalLine.bottomLeft
        .paint(canvas, Offset(0, height), center, redPaint, height, width);
    _DiagonalLine.bottomRight
        .paint(canvas, Offset(width, height), center, redPaint, height, width);

    MultiElementPainter(_stripesProps, aspectRatio).paint(canvas, size);
  }
}

enum _DiagonalLine {
  topLeft(-0.075, 0),
  topRight(-0.015, -0.015),
  bottomLeft(0.015, 0.015),
  bottomRight(0.075, 0);

  const _DiagonalLine(this.xShiftPercent, this.yShiftPercent);

  final double xShiftPercent;
  final double yShiftPercent;

  // ignore: long-parameter-list, TODO: Refactor.
  void paint(
    Canvas canvas,
    Offset start,
    Offset end,
    Paint paint,
    double width,
    double height,
  ) {
    final aspectRatioCorrectionFactor = height / width / 2;
    final xShift = width * xShiftPercent * aspectRatioCorrectionFactor;
    final yShift = height * yShiftPercent * aspectRatioCorrectionFactor;
    final adjustedStart = start.translate(xShift, yShift);
    final adjustedExtendedMidPoint = Offset(
      adjustedStart.dx + (end.dx - start.dx),
      adjustedStart.dy + (end.dy - start.dy),
    );

    canvas.drawLine(adjustedStart, adjustedExtendedMidPoint, paint);
  }
}
