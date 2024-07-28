import "../painters/multi_element_painter.dart";
import "basic_flag.dart";

class MultiElementFlag extends BasicFlag {
  const MultiElementFlag(
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
  }) : super(elementsBuilder: MultiElementPainter.new); // coverage:ignore-line
}
