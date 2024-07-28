import "../painters/common/star_painter.dart";
import "basic_flag.dart";

class StarFlag extends BasicFlag {
  const StarFlag(
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
  }) : super(elementsBuilder: StarPainter.new); // coverage:ignore-line
}
