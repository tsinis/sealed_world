import "../painters/common/triangle_painter.dart";
import "basic_flag.dart";

class TriangleFlag extends BasicFlag {
  const TriangleFlag(
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
  }) : super(elementsBuilder: TrianglePainter.new);
}
