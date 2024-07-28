import "../painters/common/ellipse_painter.dart";
import "basic_flag.dart";

class EllipseFlag extends BasicFlag {
  const EllipseFlag(
    super.properties, {
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.backgroundPainter,
    super.foregroundPainter,
    super.foregroundWidget,
    super.foregroundWidgetBuilder,
    super.key,
  }) : super(elementsBuilder: EllipsePainter.new); // coverage:ignore-line
}
