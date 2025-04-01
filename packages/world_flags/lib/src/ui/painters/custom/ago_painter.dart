import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/elements/elements_properties.dart";
import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../common/star_painter.dart";

/// Painter for the Angola flag.
final class AgoPainter extends CustomElementsPainter {
  /// Creates a new instance of [AgoPainter].
  const AgoPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagAgoProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.4);
    final height = adjustedSize.height * 2;
    final width = adjustedSize.width;

    final starProperties = ElementsProperties(
      property.mainColor,
      shape: const Star(),
      offset: const Offset(-0.025, -0.25),
      widthFactor: 0.11,
    );

    final star = StarPainter([
      starProperties,
      // ignore: require_trailing_commas, prefer-trailing-comma, new dart format
    ], aspectRatio).paintFlagElements(canvas, size);
    final center = star.bounds.center;

    final path =
        Path()
          ..moveTo(width * 0.61, height * 1.33)
          ..lineTo(width * 0.57, height * 1.26)
          ..cubicTo(
            width * 0.69,
            height * 1.06,
            width * 0.66,
            height * 0.67,
            width * 0.51,
            height * 0.56,
          )
          ..cubicTo(
            width * 0.51,
            height * 0.56,
            width * 0.5,
            height * 0.55,
            width * 0.49,
            height * 0.55,
          )
          ..lineTo(width * 0.49, height * 0.48)
          ..cubicTo(
            width * 0.51,
            height * 0.48,
            width * 0.52,
            height * 0.5,
            width * 0.53,
            height * 0.5,
          )
          ..lineTo(width * 0.54, height * 0.46)
          ..cubicTo(
            width * 0.56,
            height * 0.48,
            width * 0.57,
            height * 0.49,
            width * 0.58,
            height * 0.5,
          )
          ..lineTo(width * 0.57, height * 0.55)
          ..cubicTo(
            width * 0.58,
            height * 0.56,
            width * 0.6,
            height * 0.58,
            width * 0.61,
            height * 0.6,
          )
          ..lineTo(width * 0.62, height * 0.58)
          ..cubicTo(
            width * 0.63,
            height * 0.6,
            width * 0.64,
            height * 0.62,
            width * 0.65,
            height * 0.64,
          )
          ..lineTo(width * 0.64, height * 0.67)
          ..cubicTo(
            width * 0.65,
            height * 0.7,
            width * 0.65,
            height * 0.72,
            width * 0.66,
            height * 0.75,
          )
          ..lineTo(width * 0.68, height * 0.74)
          ..cubicTo(
            width * 0.68,
            height * 0.77,
            width * 0.69,
            height * 0.8,
            width * 0.69,
            height * 0.83,
          )
          ..lineTo(width * 0.67, height * 0.85)
          ..cubicTo(
            width * 0.67,
            height * 0.87,
            width * 0.68,
            height * 0.91,
            width * 0.68,
            height * 0.94,
          )
          ..lineTo(width * 0.68, height * 0.94)
          ..lineTo(width * 0.7, height * 0.95)
          ..cubicTo(
            width * 0.7,
            height * 0.98,
            width * 0.7,
            height * 1.01,
            width * 0.69,
            height * 1.04,
          )
          ..lineTo(width * 0.67, height * 1.04)
          ..cubicTo(
            width * 0.67,
            height * 1.06,
            width * 0.66,
            height * 1.1,
            width * 0.66,
            height * 1.13,
          )
          ..lineTo(width * 0.68, height * 1.15)
          ..cubicTo(
            width * 0.67,
            height * 1.17,
            width * 0.67,
            height * 1.2,
            width * 0.66,
            height * 1.23,
          )
          ..lineTo(width * 0.64, height * 1.21)
          ..cubicTo(
            width * 0.63,
            height * 1.23,
            width * 0.62,
            height * 1.25,
            width * 0.61,
            height * 1.28,
          )
          ..lineTo(width * 0.63, height * 1.31)
          ..lineTo(width * 0.61, height * 1.33)
          ..moveTo(width * 0.52, height * 1.32)
          ..lineTo(width * 0.55, height * 1.36)
          ..cubicTo(
            width * 0.55,
            height * 1.37,
            width * 0.54,
            height * 1.38,
            width * 0.54,
            height * 1.38,
          )
          ..lineTo(width * 0.54, height * 1.43)
          ..cubicTo(
            width * 0.53,
            height * 1.43,
            width * 0.51,
            height * 1.45,
            width * 0.5,
            height * 1.45,
          )
          ..lineTo(width * 0.49, height * 1.41)
          ..cubicTo(
            width * 0.48,
            height * 1.42,
            width * 0.47,
            height * 1.42,
            width * 0.45,
            height * 1.42,
          )
          ..lineTo(width * 0.45, height * 1.46)
          ..cubicTo(
            width * 0.44,
            height * 1.46,
            width * 0.42,
            height * 1.46,
            width * 0.41,
            height * 1.46,
          )
          ..lineTo(width * 0.41, height * 1.41)
          ..cubicTo(
            width * 0.39,
            height * 1.41,
            width * 0.38,
            height * 1.4,
            width * 0.37,
            height * 1.39,
          )
          ..lineTo(width * 0.36, height * 1.43)
          ..cubicTo(
            width * 0.35,
            height * 1.42,
            width * 0.33,
            height * 1.41,
            width * 0.32,
            height * 1.4,
          )
          ..lineTo(width * 0.33, height * 1.35)
          ..cubicTo(
            width * 0.32,
            height * 1.34,
            width * 0.31,
            height * 1.33,
            width * 0.3,
            height * 1.32,
          )
          ..lineTo(width * 0.32, height * 1.26)
          ..cubicTo(
            width * 0.38,
            height * 1.35,
            width * 0.45,
            height * 1.38,
            width * 0.52,
            height * 1.32,
          );

    final path2 =
        Path()
          ..moveTo(width * 0.73, height * 1.53)
          ..lineTo(width * 0.66, height * 1.42)
          ..lineTo(width * 0.65, height * 1.4)
          ..lineTo(width * 0.47, height * 1.11)
          ..cubicTo(
            width * 0.43,
            height * 1.06,
            width * 0.4,
            height * 1.01,
            width * 0.39,
            height * 0.94,
          )
          ..lineTo(width * 0.38, height * 0.99)
          ..cubicTo(
            width * 0.37,
            height * 1.06,
            width * 0.37,
            height * 1.12,
            width * 0.43,
            height * 1.19,
          )
          ..lineTo(width * 0.63, height * 1.46)
          ..lineTo(width * 0.65, height * 1.49)
          ..lineTo(width * 0.7, height * 1.56)
          ..cubicTo(
            width * 0.71,
            height * 1.57,
            width * 0.71,
            height * 1.6,
            width * 0.72,
            height * 1.6,
          )
          ..lineTo(width * 0.74, height * 1.59)
          ..cubicTo(
            width * 0.74,
            height * 1.58,
            width * 0.74,
            height * 1.55,
            width * 0.73,
            height * 1.53,
          )
          ..lineTo(width * 0.73, height * 1.53);

    final bounds = path.getBounds();
    final paint = paintCreator();

    canvas
      ..translate(
        center.dx - bounds.width * 1.2,
        center.dy - bounds.height * 0.78,
      )
      ..drawPath(path, paint)
      ..drawPath(path2, paint);

    return star;
  }
}
