import "../painters/common/rectangle_painter.dart";
import "basic_flag.dart";

class RectangleFlag extends BasicFlag {
  const RectangleFlag(
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
  }) : super(elementsBuilder: RectanglePainter.new); // coverage:ignore-line
}
