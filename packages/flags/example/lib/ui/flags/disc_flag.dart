import "../painters/common/circle_painter.dart";
import "basic_flag.dart";

class DiscFlag extends BasicFlag {
  const DiscFlag(
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
  }) : super(elementsBuilder: CirclePainter.new);
}