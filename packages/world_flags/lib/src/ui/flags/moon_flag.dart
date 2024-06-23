import "../painters/common/moon_painter.dart";
import "basic_flag.dart";

class MoonFlag extends BasicFlag {
  const MoonFlag(
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
  }) : super(elementsBuilder: MoonPainter.new);
}
