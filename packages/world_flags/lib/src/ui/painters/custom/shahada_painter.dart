import "dart:math";

import "package:flutter/rendering.dart";

import "../../../data/alternative_flags_map.data.dart";
import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Saudi Arabia and Afghanistan flag.
final class ShahadaPainter extends CustomElementsPainter {
  /// Creates a new instance of [ShahadaPainter] for the Saudi Arabia flag.
  const ShahadaPainter.sau(super.properties, super.aspectRatio)
    : _hasSabre = true;

  /// Creates a new instance of [ShahadaPainter] for the Afghanistan flag.
  const ShahadaPainter.afg(super.properties, super.aspectRatio)
    : _hasSabre = false;

  final bool _hasSabre;

  @override
  double get originalAspectRatio => _hasSabre
      ? flagSauProperties.aspectRatio
      : flagAfgPropertiesAlt.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final rectWidth = width * 0.375;
    final rectHeight = height / 10;
    final rectLeft = (width - rectWidth) / 2;
    final ratio = calculateAspectRatio(size);
    final paint = paintCreator();
    final rectangle = Rect.fromLTWH(
      rectLeft,
      height * 4.25 / ratio,
      rectWidth,
      rectHeight,
    );

    canvas
      ..save()
      ..translate(
        width * (_hasSabre ? 1 / 4 : 0.1),
        center.dy * 0.92 / (_hasSabre ? ratio : max(1.2, ratio)),
      );
    _paintShahada(canvas, height, width / 2, paint);
    canvas.restore();

    if (_hasSabre) canvas.drawRect(rectangle, paint..isAntiAlias = false);

    return (canvas: canvas, bounds: rectangle, child: property.child);
  }

  void _paintShahada(Canvas canvas, double height, double width, Paint paint) {
    final path = Path()
      ..moveTo(width, height * 0.59)
      ..cubicTo(
        width,
        height * 0.52,
        width * 0.99,
        height * 0.33,
        width * 0.99,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.99,
        height * 0.2,
        width * 0.98,
        height * 0.15,
        width * 0.98,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.12,
        width * 0.99,
        height * 0.15,
        width,
        height * 0.15,
      )
      ..cubicTo(
        width,
        height * 0.15,
        width,
        height * 0.13,
        width * 0.99,
        height * 0.12,
      )
      ..lineTo(width * 0.98, height * 0.04)
      ..cubicTo(
        width * 0.98,
        height * 0.02,
        width * 0.98,
        height * 0.02,
        width * 0.97,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.97,
        height * 0.03,
        width * 0.97,
        height * 0.05,
        width * 0.97,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.97,
        height * 0.08,
        width * 0.97,
        height * 0.09,
        width * 0.97,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.97,
        height * 0.19,
        width * 0.97,
        height * 0.27,
        width * 0.98,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.43,
        width * 0.99,
        height * 0.6,
        width * 0.99,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.99,
        height * 0.73,
        width * 0.99,
        height * 0.76,
        width * 0.99,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.79,
        width * 0.98,
        height * 0.81,
        width * 0.95,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.9,
        width * 0.9,
        height * 0.93,
        width * 0.88,
        height * 0.96,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.97,
        width * 0.88,
        height * 0.97,
        width * 0.88,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.89,
        height * 0.96,
        width * 0.93,
        height * 0.94,
        width * 0.95,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.97,
        height * 0.89,
        width * 0.98,
        height * 0.85,
        width * 0.99,
        height * 0.8,
      )
      ..cubicTo(
        width,
        height * 0.73,
        width,
        height * 0.67,
        width,
        height * 0.59,
      )
      ..lineTo(width, height * 0.59)
      ..moveTo(width * 0.92, height * 0.06)
      ..cubicTo(
        width * 0.93,
        height * 0.05,
        width * 0.94,
        height * 0.05,
        width * 0.95,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.94,
        height * 0.07,
        width * 0.92,
        height * 0.09,
        width * 0.92,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.1,
        width * 0.94,
        height * 0.09,
        width * 0.94,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.94,
        height * 0.08,
        width * 0.95,
        height * 0.07,
        width * 0.95,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.95,
        height * 0.05,
        width * 0.96,
        height * 0.02,
        width * 0.96,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.95,
        height * 0.01,
        width * 0.93,
        height * 0.02,
        width * 0.93,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.02,
        width * 0.92,
        height * 0.05,
        width * 0.92,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.92,
        height * 0.06,
        width * 0.92,
        height * 0.06,
        width * 0.92,
        height * 0.06,
      )
      ..lineTo(width * 0.92, height * 0.06);
    canvas.drawPath(path, paint);

    path
      ..moveTo(width * 0.96, height * 0.48)
      ..cubicTo(
        width * 0.96,
        height * 0.44,
        width * 0.96,
        height * 0.4,
        width * 0.96,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.95,
        height * 0.32,
        width * 0.94,
        height * 0.29,
        width * 0.93,
        height * 0.28,
      )
      ..lineTo(width * 0.93, height * 0.32)
      ..cubicTo(
        width * 0.93,
        height * 0.32,
        width * 0.94,
        height * 0.33,
        width * 0.95,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.96,
        height * 0.41,
        width * 0.96,
        height * 0.45,
        width * 0.95,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.95,
        height * 0.5,
        width * 0.95,
        height * 0.49,
        width * 0.96,
        height * 0.48,
      )
      ..lineTo(width * 0.96, height * 0.48)
      ..moveTo(width * 0.84, height * 0.69)
      ..cubicTo(
        width * 0.84,
        height * 0.66,
        width * 0.84,
        height * 0.62,
        width * 0.84,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.55,
        width * 0.82,
        height * 0.52,
        width * 0.81,
        height * 0.51,
      )
      ..lineTo(width * 0.81, height * 0.55)
      ..cubicTo(
        width * 0.81,
        height * 0.55,
        width * 0.82,
        height * 0.56,
        width * 0.83,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.62,
        width * 0.84,
        height * 0.66,
        width * 0.83,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.71,
        width * 0.83,
        height * 0.7,
        width * 0.84,
        height * 0.69,
      )
      ..lineTo(width * 0.84, height * 0.69)
      ..moveTo(width * 0.42, height * 0.11)
      ..cubicTo(
        width * 0.42,
        height * 0.14,
        width * 0.42,
        height * 0.18,
        width * 0.42,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.23,
        width * 0.42,
        height * 0.22,
        width * 0.42,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.17,
        width * 0.42,
        height * 0.13,
        width * 0.42,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.06,
        width * 0.41,
        height * 0.03,
        width * 0.4,
        height * 0.01,
      )
      ..lineTo(width * 0.4, height * 0.05)
      ..cubicTo(
        width * 0.4,
        height * 0.05,
        width * 0.41,
        height * 0.07,
        width * 0.42,
        height * 0.11,
      )
      ..lineTo(width * 0.42, height * 0.11)
      ..moveTo(width * 0.13, height * 0.13)
      ..cubicTo(
        width * 0.14,
        height * 0.16,
        width * 0.14,
        height * 0.2,
        width * 0.13,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.24,
        width * 0.13,
        height * 0.24,
        width * 0.13,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.14,
        height * 0.19,
        width * 0.14,
        height * 0.15,
        width * 0.14,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.14,
        height * 0.07,
        width * 0.13,
        height * 0.04,
        width * 0.12,
        height * 0.02,
      )
      ..lineTo(width * 0.11, height * 0.06)
      ..cubicTo(
        width * 0.11,
        height * 0.06,
        width * 0.13,
        height * 0.08,
        width * 0.13,
        height * 0.13,
      )
      ..lineTo(width * 0.13, height * 0.13);
    canvas.drawPath(path, paint);

    path
      ..moveTo(width * 0.21, height * 0.75)
      ..cubicTo(
        width * 0.22,
        height * 0.73,
        width * 0.22,
        height * 0.71,
        width * 0.22,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.64,
        width * 0.22,
        height * 0.61,
        width * 0.22,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.56,
        width * 0.25,
        height * 0.53,
        width * 0.26,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.57,
        width * 0.27,
        height * 0.61,
        width * 0.29,
        height * 0.61,
      )
      ..lineTo(width * 0.29, height * 0.72)
      ..cubicTo(
        width * 0.29,
        height * 0.77,
        width * 0.29,
        height * 0.84,
        width * 0.29,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.86,
        width * 0.29,
        height * 0.86,
        width * 0.3,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.8,
        width * 0.3,
        height * 0.71,
        width * 0.3,
        height * 0.65,
      )
      ..lineTo(width * 0.3, height * 0.6)
      ..cubicTo(
        width * 0.31,
        height * 0.58,
        width * 0.31,
        height * 0.54,
        width * 0.32,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.57,
        width * 0.35,
        height * 0.58,
        width * 0.35,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.56,
        width * 0.37,
        height * 0.54,
        width * 0.37,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.43,
        width * 0.36,
        height * 0.41,
        width * 0.36,
        height * 0.41,
      )
      ..lineTo(width * 0.35, height * 0.47)
      ..cubicTo(
        width * 0.35,
        height * 0.47,
        width * 0.36,
        height * 0.49,
        width * 0.36,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.51,
        width * 0.35,
        height * 0.51,
        width * 0.34,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.5,
        width * 0.33,
        height * 0.48,
        width * 0.33,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.46,
        width * 0.33,
        height * 0.46,
        width * 0.33,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.43,
        width * 0.33,
        height * 0.43,
        width * 0.33,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.46,
        width * 0.32,
        height * 0.47,
        width * 0.32,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.51,
        width * 0.3,
        height * 0.53,
        width * 0.3,
        height * 0.54,
      )
      ..lineTo(width * 0.29, height * 0.39)
      ..cubicTo(
        width * 0.29,
        height * 0.37,
        width * 0.28,
        height * 0.2,
        width * 0.28,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.16,
        width * 0.28,
        height * 0.14,
        width * 0.28,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.12,
        width * 0.28,
        height * 0.13,
        width * 0.29,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.14,
        width * 0.29,
        height * 0.15,
        width * 0.29,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.15,
        width * 0.29,
        height * 0.13,
        width * 0.29,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.09,
        width * 0.28,
        height * 0.01,
        width * 0.27,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.03,
        width * 0.27,
        height * 0.04,
        width * 0.26,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.07,
        width * 0.27,
        height * 0.08,
        width * 0.27,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.11,
        width * 0.27,
        height * 0.18,
        width * 0.27,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.31,
        width * 0.28,
        height * 0.36,
        width * 0.28,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.41,
        width * 0.28,
        height * 0.48,
        width * 0.28,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.53,
        width * 0.27,
        height * 0.51,
        width * 0.27,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.48,
        width * 0.27,
        height * 0.46,
        width * 0.27,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.46,
        width * 0.25,
        height * 0.48,
        width * 0.24,
        height * 0.5,
      )
      ..lineTo(width * 0.22, height * 0.52)
      ..cubicTo(
        width * 0.22,
        height * 0.48,
        width * 0.22,
        height * 0.44,
        width * 0.21,
        height * 0.41,
      )
      ..lineTo(width * 0.21, height * 0.41)
      ..cubicTo(
        width * 0.22,
        height * 0.41,
        width * 0.23,
        height * 0.39,
        width * 0.24,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.34,
        width * 0.25,
        height * 0.3,
        width * 0.25,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.23,
        width * 0.24,
        height * 0.17,
        width * 0.24,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.13,
        width * 0.24,
        height * 0.11,
        width * 0.24,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.1,
        width * 0.24,
        height * 0.11,
        width * 0.24,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.12,
        width * 0.25,
        height * 0.1,
        width * 0.24,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.08,
        width * 0.23,
        height * 0.02,
        width * 0.23,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.02,
        width * 0.22,
        height * 0.07,
        width * 0.22,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.09,
        width * 0.22,
        height * 0.1,
        width * 0.22,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.14,
        width * 0.23,
        height * 0.17,
        width * 0.23,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.24,
        width * 0.24,
        height * 0.29,
        width * 0.24,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.32,
        width * 0.22,
        height * 0.34,
        width * 0.21,
        height * 0.34,
      )
      ..lineTo(width * 0.21, height * 0.18)
      ..cubicTo(
        width * 0.21,
        height * 0.17,
        width * 0.21,
        height * 0.15,
        width * 0.21,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.13,
        width * 0.21,
        height * 0.13,
        width * 0.21,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.15,
        width * 0.22,
        height * 0.16,
        width * 0.22,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.16,
        width * 0.22,
        height * 0.14,
        width * 0.21,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.1,
        width * 0.2,
        height * 0.02,
        width * 0.19,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.01,
        width * 0.19,
        height * 0.06,
        width * 0.19,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.08,
        width * 0.19,
        height * 0.08,
        width * 0.19,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.13,
        width * 0.2,
        height * 0.24,
        width * 0.2,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.31,
        width * 0.18,
        height * 0.28,
        width * 0.18,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.2,
        width * 0.18,
        height * 0.14,
        width * 0.18,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.07,
        width * 0.17,
        height * 0.05,
        width * 0.16,
        height * 0.03,
      )
      ..lineTo(width * 0.16, height * 0.09)
      ..cubicTo(
        width * 0.16,
        height * 0.13,
        width * 0.16,
        height * 0.17,
        width * 0.16,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.16,
        height * 0.26,
        width * 0.16,
        height * 0.3,
        width * 0.15,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.37,
        width * 0.1,
        height * 0.35,
        width * 0.1,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.25,
        width * 0.1,
        height * 0.13,
        width * 0.1,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.07,
        width * 0.1,
        height * 0.07,
        width * 0.1,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.08,
        width * 0.08,
        height * 0.1,
        width * 0.08,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.2,
        width * 0.07,
        height * 0.25,
        width * 0.06,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.33,
        width * 0.05,
        height * 0.37,
        width * 0.04,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.37,
        width * 0.03,
        height * 0.34,
        width * 0.02,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.26,
        width * 0.02,
        height * 0.21,
        width * 0.02,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.16,
        width * 0.02,
        height * 0.16,
        width * 0.02,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.26,
        width * 0.02,
        height * 0.31,
        width * 0.02,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.41,
        width * 0.04,
        height * 0.43,
        width * 0.05,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.42,
        width * 0.07,
        height * 0.35,
        width * 0.07,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.29,
        width * 0.09,
        height * 0.15,
        width * 0.09,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.16,
        width * 0.09,
        height * 0.21,
        width * 0.09,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.33,
        width * 0.09,
        height * 0.41,
        width * 0.11,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.43,
        width * 0.15,
        height * 0.4,
        width * 0.16,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.32,
        width * 0.17,
        height * 0.28,
        width * 0.17,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.31,
        width * 0.18,
        height * 0.38,
        width * 0.2,
        height * 0.4,
      )
      ..lineTo(width * 0.2, height * 0.4)
      ..cubicTo(
        width * 0.2,
        height * 0.44,
        width * 0.2,
        height * 0.49,
        width * 0.21,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.54,
        width * 0.2,
        height * 0.54,
        width * 0.19,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.54,
        width * 0.19,
        height * 0.54,
        width * 0.19,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.49,
        width * 0.18,
        height * 0.46,
        width * 0.16,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.46,
        width * 0.13,
        height * 0.52,
        width * 0.13,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.14,
        height * 0.59,
        width * 0.14,
        height * 0.61,
        width * 0.16,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.62,
        width * 0.18,
        height * 0.62,
        width * 0.18,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.62,
        width * 0.19,
        height * 0.63,
        width * 0.19,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.66,
        width * 0.13,
        height * 0.77,
        width * 0.1,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.79,
        width * 0.05,
        height * 0.74,
        width * 0.05,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.64,
        width * 0.06,
        height * 0.59,
        width * 0.06,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.54,
        width * 0.08,
        height * 0.52,
        width * 0.09,
        height * 0.5,
      )
      ..lineTo(width * 0.09, height * 0.51)
      ..cubicTo(
        width * 0.09,
        height * 0.51,
        width * 0.09,
        height * 0.52,
        width * 0.09,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.52,
        width * 0.1,
        height * 0.5,
        width * 0.1,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.49,
        width * 0.09,
        height * 0.48,
        width * 0.09,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.45,
        width * 0.09,
        height * 0.42,
        width * 0.09,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.4,
        width * 0.07,
        height * 0.42,
        width * 0.07,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.44,
        width * 0.07,
        height * 0.45,
        width * 0.07,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.47,
        width * 0.07,
        height * 0.47,
        width * 0.07,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.49,
        width * 0.08,
        height * 0.49,
        width * 0.08,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.52,
        width * 0.06,
        height * 0.56,
        width * 0.04,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.58,
        width * 0.04,
        height * 0.58,
        width * 0.04,
        height * 0.59,
      )
      ..lineTo(width * 0.04, height * 0.59)
      ..cubicTo(
        width * 0.03,
        height * 0.61,
        width * 0.01,
        height * 0.65,
        0,
        height * 0.66,
      )
      ..cubicTo(0, height * 0.66, 0, height * 0.66, 0, height * 0.66)
      ..cubicTo(
        width * 0.01,
        height * 0.65,
        width * 0.01,
        height * 0.65,
        width * 0.01,
        height * 0.64,
      )
      ..lineTo(width * 0.03, height * 0.61)
      ..cubicTo(
        width * 0.03,
        height * 0.62,
        width * 0.03,
        height * 0.64,
        width * 0.03,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.71,
        width * 0.01,
        height * 0.84,
        width * 0.04,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.99,
        width * 0.11,
        height * 0.96,
        width * 0.15,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.81,
        width * 0.2,
        height * 0.78,
        width * 0.21,
        height * 0.75,
      )
      ..lineTo(width * 0.21, height * 0.75)
      ..moveTo(width * 0.08, height * 0.45)
      ..cubicTo(
        width * 0.08,
        height * 0.45,
        width * 0.08,
        height * 0.45,
        width * 0.08,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.44,
        width * 0.08,
        height * 0.44,
        width * 0.08,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.43,
        width * 0.09,
        height * 0.45,
        width * 0.09,
        height * 0.47,
      )
      ..lineTo(width * 0.08, height * 0.45)
      ..lineTo(width * 0.08, height * 0.45)
      ..moveTo(width * 0.17, height * 0.56)
      ..cubicTo(
        width * 0.15,
        height * 0.56,
        width * 0.15,
        height * 0.54,
        width * 0.15,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.53,
        width * 0.16,
        height * 0.51,
        width * 0.16,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.53,
        width * 0.17,
        height * 0.54,
        width * 0.18,
        height * 0.56,
      )
      ..lineTo(width * 0.17, height * 0.56)
      ..lineTo(width * 0.17, height * 0.56)
      ..moveTo(width * 0.11, height * 0.89)
      ..cubicTo(
        width * 0.07,
        height * 0.92,
        width * 0.03,
        height * 0.87,
        width * 0.03,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.71,
        width * 0.03,
        height * 0.65,
        width * 0.04,
        height * 0.6,
      )
      ..lineTo(width * 0.06, height * 0.58)
      ..cubicTo(
        width * 0.05,
        height * 0.63,
        width * 0.04,
        height * 0.69,
        width * 0.04,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.82,
        width * 0.07,
        height * 0.86,
        width * 0.1,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.83,
        width * 0.17,
        height * 0.74,
        width * 0.18,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.7,
        width * 0.19,
        height * 0.69,
        width * 0.19,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.65,
        width * 0.2,
        height * 0.64,
        width * 0.2,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.62,
        width * 0.2,
        height * 0.61,
        width * 0.2,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.6,
        width * 0.2,
        height * 0.59,
        width * 0.21,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.63,
        width * 0.21,
        height * 0.67,
        width * 0.21,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.77,
        width * 0.15,
        height * 0.85,
        width * 0.11,
        height * 0.89,
      )
      ..lineTo(width * 0.11, height * 0.89)
      ..moveTo(width * 0.79, height * 0.63)
      ..cubicTo(
        width * 0.79,
        height * 0.56,
        width * 0.79,
        height * 0.44,
        width * 0.79,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.32,
        width * 0.78,
        height * 0.25,
        width * 0.78,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.17,
        width * 0.78,
        height * 0.15,
        width * 0.78,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.14,
        width * 0.78,
        height * 0.14,
        width * 0.78,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.15,
        width * 0.79,
        height * 0.16,
        width * 0.79,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.16,
        width * 0.79,
        height * 0.14,
        width * 0.79,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.1,
        width * 0.77,
        height * 0.02,
        width * 0.77,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.03,
        width * 0.76,
        height * 0.05,
        width * 0.76,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.08,
        width * 0.76,
        height * 0.09,
        width * 0.76,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.14,
        width * 0.77,
        height * 0.26,
        width * 0.77,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.43,
        width * 0.78,
        height * 0.54,
        width * 0.78,
        height * 0.63,
      )
      ..lineTo(width * 0.78, height * 0.71)
      ..cubicTo(
        width * 0.78,
        height * 0.77,
        width * 0.78,
        height * 0.83,
        width * 0.78,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.85,
        width * 0.79,
        height * 0.85,
        width * 0.79,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.78,
        width * 0.79,
        height * 0.74,
        width * 0.79,
        height * 0.69,
      )
      ..lineTo(width * 0.79, height * 0.63)
      ..lineTo(width * 0.79, height * 0.63)
      ..moveTo(width * 0.68, height * 0.39)
      ..cubicTo(
        width * 0.68,
        height * 0.4,
        width * 0.67,
        height * 0.38,
        width * 0.67,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.33,
        width * 0.68,
        height * 0.31,
        width * 0.68,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.28,
        width * 0.68,
        height * 0.26,
        width * 0.68,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.3,
        width * 0.67,
        height * 0.33,
        width * 0.67,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.4,
        width * 0.67,
        height * 0.42,
        width * 0.67,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.44,
        width * 0.68,
        height * 0.42,
        width * 0.69,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.38,
        width * 0.69,
        height * 0.36,
        width * 0.69,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.37,
        width * 0.68,
        height * 0.39,
        width * 0.68,
        height * 0.39,
      )
      ..lineTo(width * 0.68, height * 0.39)
      ..moveTo(width * 0.62, height * 0.49)
      ..cubicTo(
        width * 0.63,
        height * 0.47,
        width * 0.63,
        height * 0.46,
        width * 0.62,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.49,
        width * 0.61,
        height * 0.53,
        width * 0.61,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.58,
        width * 0.61,
        height * 0.6,
        width * 0.62,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.62,
        width * 0.63,
        height * 0.61,
        width * 0.63,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.57,
        width * 0.63,
        height * 0.55,
        width * 0.63,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.56,
        width * 0.63,
        height * 0.58,
        width * 0.62,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.58,
        width * 0.62,
        height * 0.57,
        width * 0.62,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.52,
        width * 0.62,
        height * 0.5,
        width * 0.62,
        height * 0.49,
      )
      ..lineTo(width * 0.62, height * 0.49)
      ..moveTo(width * 0.46, height * 0.85)
      ..cubicTo(
        width * 0.46,
        height * 0.84,
        width * 0.46,
        height * 0.82,
        width * 0.46,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.85,
        width * 0.44,
        height * 0.89,
        width * 0.44,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.95,
        width * 0.44,
        height * 0.97,
        width * 0.44,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.99,
        width * 0.45,
        height * 0.98,
        width * 0.45,
        height * 0.96,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.95,
        width * 0.46,
        height * 0.92,
        width * 0.46,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.93,
        width * 0.45,
        height * 0.95,
        width * 0.45,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.95,
        width * 0.44,
        height * 0.93,
        width * 0.44,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.88,
        width * 0.45,
        height * 0.87,
        width * 0.46,
        height * 0.85,
      )
      ..lineTo(width * 0.46, height * 0.85)
      ..moveTo(width * 0.75, height * 0.34)
      ..cubicTo(
        width * 0.75,
        height * 0.35,
        width * 0.74,
        height * 0.33,
        width * 0.74,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.28,
        width * 0.75,
        height * 0.26,
        width * 0.75,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.22,
        width * 0.75,
        height * 0.2,
        width * 0.75,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.25,
        width * 0.74,
        height * 0.28,
        width * 0.73,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.35,
        width * 0.74,
        height * 0.37,
        width * 0.74,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.39,
        width * 0.75,
        height * 0.37,
        width * 0.75,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.33,
        width * 0.76,
        height * 0.31,
        width * 0.75,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.32,
        width * 0.75,
        height * 0.34,
        width * 0.75,
        height * 0.34,
      )
      ..lineTo(width * 0.75, height * 0.34)
      ..moveTo(width * 0.75, height * 0.67)
      ..cubicTo(
        width * 0.75,
        height * 0.68,
        width * 0.76,
        height * 0.67,
        width * 0.76,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.63,
        width * 0.77,
        height * 0.61,
        width * 0.76,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.62,
        width * 0.76,
        height * 0.64,
        width * 0.76,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.64,
        width * 0.75,
        height * 0.63,
        width * 0.75,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.57,
        width * 0.75,
        height * 0.55,
        width * 0.76,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.52,
        width * 0.76,
        height * 0.5,
        width * 0.76,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.54,
        width * 0.75,
        height * 0.58,
        width * 0.74,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.64,
        width * 0.74,
        height * 0.66,
        width * 0.75,
        height * 0.67,
      )
      ..lineTo(width * 0.75, height * 0.67)
      ..moveTo(width * 0.82, height * 0.25)
      ..cubicTo(
        width * 0.82,
        height * 0.23,
        width * 0.82,
        height * 0.2,
        width * 0.82,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.26,
        width * 0.81,
        height * 0.3,
        width * 0.81,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.38,
        width * 0.81,
        height * 0.4,
        width * 0.81,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.42,
        width * 0.82,
        height * 0.41,
        width * 0.83,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.36,
        width * 0.83,
        height * 0.33,
        width * 0.83,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.35,
        width * 0.83,
        height * 0.37,
        width * 0.82,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.37,
        width * 0.81,
        height * 0.36,
        width * 0.81,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.29,
        width * 0.82,
        height * 0.27,
        width * 0.82,
        height * 0.25,
      )
      ..lineTo(width * 0.82, height * 0.25);
    canvas.drawPath(path, paint);

    path
      ..moveTo(width * 0.25, height * 0.66)
      ..cubicTo(
        width * 0.25,
        height * 0.63,
        width * 0.26,
        height * 0.6,
        width * 0.25,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.66,
        width * 0.23,
        height * 0.71,
        width * 0.23,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.81,
        width * 0.23,
        height * 0.85,
        width * 0.23,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.88,
        width * 0.25,
        height * 0.86,
        width * 0.25,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.8,
        width * 0.26,
        height * 0.77,
        width * 0.26,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.78,
        width * 0.25,
        height * 0.81,
        width * 0.25,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.81,
        width * 0.23,
        height * 0.79,
        width * 0.24,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.71,
        width * 0.25,
        height * 0.68,
        width * 0.25,
        height * 0.66,
      )
      ..lineTo(width * 0.25, height * 0.66)
      ..moveTo(width * 0.87, height * 0.95)
      ..cubicTo(
        width * 0.87,
        height * 0.94,
        width * 0.9,
        height * 0.89,
        width * 0.9,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.9,
        height * 0.88,
        width * 0.91,
        height * 0.85,
        width * 0.91,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.85,
        width * 0.9,
        height * 0.88,
        width * 0.89,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.88,
        width * 0.87,
        height * 0.86,
        width * 0.87,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.84,
        width * 0.88,
        height * 0.83,
        width * 0.88,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.89,
        height * 0.83,
        width * 0.89,
        height * 0.85,
        width * 0.89,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.89,
        height * 0.85,
        width * 0.89,
        height * 0.84,
        width * 0.89,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.89,
        height * 0.82,
        width * 0.89,
        height * 0.79,
        width * 0.89,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.81,
        width * 0.87,
        height * 0.85,
        width * 0.87,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.88,
        width * 0.87,
        height * 0.89,
        width * 0.88,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.9,
        width * 0.87,
        height * 0.91,
        width * 0.87,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.92,
        width * 0.87,
        height * 0.93,
        width * 0.87,
        height * 0.95,
      )
      ..lineTo(width * 0.87, height * 0.95)
      ..moveTo(width * 0.77, height * 1.01)
      ..cubicTo(
        width * 0.77,
        height,
        width * 0.8,
        height * 0.95,
        width * 0.8,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.94,
        width * 0.81,
        height * 0.91,
        width * 0.81,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.91,
        width * 0.8,
        height * 0.94,
        width * 0.79,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.94,
        width * 0.77,
        height * 0.92,
        width * 0.77,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.9,
        width * 0.78,
        height * 0.89,
        width * 0.78,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.89,
        width * 0.79,
        height * 0.91,
        width * 0.79,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.91,
        width * 0.79,
        height * 0.9,
        width * 0.79,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.88,
        width * 0.79,
        height * 0.85,
        width * 0.79,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.86,
        width * 0.77,
        height * 0.91,
        width * 0.77,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.94,
        width * 0.77,
        height * 0.95,
        width * 0.78,
        height * 0.96,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.96,
        width * 0.77,
        height * 0.97,
        width * 0.77,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.98,
        width * 0.77,
        height * 0.99,
        width * 0.77,
        height * 1.01,
      )
      ..lineTo(width * 0.77, height * 1.01)
      ..moveTo(width * 0.54, height * 0.15)
      ..cubicTo(
        width * 0.54,
        height * 0.16,
        width * 0.56,
        height * 0.22,
        width * 0.57,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.33,
        width * 0.62,
        height * 0.39,
        width * 0.64,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.55,
        width * 0.65,
        height * 0.68,
        width * 0.65,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.78,
        width * 0.65,
        height * 0.85,
        width * 0.65,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.87,
        width * 0.65,
        height * 0.87,
        width * 0.66,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.78,
        width * 0.66,
        height * 0.72,
        width * 0.66,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.6,
        width * 0.65,
        height * 0.55,
        width * 0.65,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.52,
        width * 0.67,
        height * 0.55,
        width * 0.68,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.62,
        width * 0.7,
        height * 0.65,
        width * 0.71,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.72,
        width * 0.71,
        height * 0.75,
        width * 0.71,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.76,
        width * 0.71,
        height * 0.72,
        width * 0.71,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.62,
        width * 0.71,
        height * 0.6,
        width * 0.68,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.48,
        width * 0.66,
        height * 0.45,
        width * 0.65,
        height * 0.42,
      )
      ..lineTo(width * 0.65, height * 0.39)
      ..cubicTo(
        width * 0.65,
        height * 0.37,
        width * 0.64,
        height * 0.2,
        width * 0.64,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.17,
        width * 0.64,
        height * 0.15,
        width * 0.64,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.13,
        width * 0.64,
        height * 0.13,
        width * 0.64,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.15,
        width * 0.65,
        height * 0.16,
        width * 0.65,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.16,
        width * 0.65,
        height * 0.13,
        width * 0.64,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.09,
        width * 0.63,
        height * 0.02,
        width * 0.63,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.03,
        width * 0.62,
        height * 0.05,
        width * 0.62,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.08,
        width * 0.62,
        height * 0.09,
        width * 0.62,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.2,
        width * 0.63,
        height * 0.29,
        width * 0.63,
        height * 0.37,
      )
      ..lineTo(width * 0.63, height * 0.38)
      ..lineTo(width * 0.61, height * 0.3)
      ..cubicTo(
        width * 0.59,
        height * 0.26,
        width * 0.58,
        height * 0.21,
        width * 0.56,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.15,
        width * 0.56,
        height * 0.16,
        width * 0.57,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.16,
        width * 0.58,
        height * 0.16,
        width * 0.58,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.15,
        width * 0.57,
        height * 0.15,
        width * 0.57,
        height * 0.14,
      )
      ..lineTo(width * 0.55, height * 0.1)
      ..cubicTo(
        width * 0.54,
        height * 0.08,
        width * 0.53,
        height * 0.07,
        width * 0.53,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.07,
        width * 0.53,
        height * 0.12,
        width * 0.53,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.13,
        width * 0.54,
        height * 0.14,
        width * 0.54,
        height * 0.15,
      )
      ..lineTo(width * 0.54, height * 0.15);
    canvas.drawPath(path, paint);

    path
      ..moveTo(width * 0.56, height * 0.06)
      ..cubicTo(
        width * 0.57,
        height * 0.06,
        width * 0.58,
        height * 0.06,
        width * 0.59,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.07,
        width * 0.57,
        height * 0.09,
        width * 0.57,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.1,
        width * 0.56,
        height * 0.11,
        width * 0.56,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.1,
        width * 0.58,
        height * 0.1,
        width * 0.58,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.08,
        width * 0.6,
        height * 0.05,
        width * 0.6,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.02,
        width * 0.6,
        height * 0.02,
        width * 0.6,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.01,
        width * 0.58,
        height * 0.01,
        width * 0.57,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.02,
        width * 0.56,
        height * 0.05,
        width * 0.56,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.06,
        width * 0.56,
        height * 0.06,
        width * 0.56,
        height * 0.06,
      )
      ..lineTo(width * 0.56, height * 0.06)
      ..moveTo(width * 0.65, height * 0.05)
      ..cubicTo(
        width * 0.65,
        height * 0.05,
        width * 0.67,
        height * 0.05,
        width * 0.67,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.06,
        width * 0.66,
        height * 0.08,
        width * 0.65,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.09,
        width * 0.65,
        height * 0.09,
        width * 0.65,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.09,
        width * 0.66,
        height * 0.09,
        width * 0.67,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.07,
        width * 0.68,
        height * 0.05,
        width * 0.68,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.03,
        width * 0.68,
        height * 0.02,
        width * 0.68,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.01,
        width * 0.66,
        height * 0.01,
        width * 0.65,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.03,
        width * 0.65,
        height * 0.04,
        width * 0.65,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.06,
        width * 0.65,
        height * 0.06,
        width * 0.65,
        height * 0.05,
      )
      ..lineTo(width * 0.65, height * 0.05)
      ..moveTo(width * 0.72, height * 0.05)
      ..cubicTo(
        width * 0.72,
        height * 0.05,
        width * 0.74,
        height * 0.05,
        width * 0.74,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.06,
        width * 0.73,
        height * 0.08,
        width * 0.72,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.09,
        width * 0.72,
        height * 0.09,
        width * 0.72,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.09,
        width * 0.74,
        height * 0.08,
        width * 0.74,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.07,
        width * 0.75,
        height * 0.04,
        width * 0.75,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.02,
        width * 0.75,
        height * 0.02,
        width * 0.75,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.01,
        width * 0.73,
        height * 0.01,
        width * 0.73,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.02,
        width * 0.72,
        height * 0.04,
        width * 0.72,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.05,
        width * 0.72,
        height * 0.05,
        width * 0.72,
        height * 0.05,
      )
      ..lineTo(width * 0.72, height * 0.05)
      ..moveTo(width * 0.68, height * 0.16)
      ..cubicTo(
        width * 0.67,
        height * 0.18,
        width * 0.68,
        height * 0.19,
        width * 0.68,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.22,
        width * 0.67,
        height * 0.21,
        width * 0.67,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.19,
        width * 0.67,
        height * 0.16,
        width * 0.67,
        height * 0.16,
      )
      ..lineTo(width * 0.67, height * 0.18)
      ..cubicTo(
        width * 0.67,
        height * 0.18,
        width * 0.67,
        height * 0.19,
        width * 0.67,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.21,
        width * 0.67,
        height * 0.22,
        width * 0.66,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.22,
        width * 0.66,
        height * 0.19,
        width * 0.66,
        height * 0.17,
      )
      ..lineTo(width * 0.65, height * 0.18)
      ..lineTo(width * 0.65, height * 0.2)
      ..cubicTo(
        width * 0.65,
        height * 0.21,
        width * 0.65,
        height * 0.22,
        width * 0.66,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.23,
        width * 0.66,
        height * 0.24,
        width * 0.66,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.24,
        width * 0.67,
        height * 0.23,
        width * 0.67,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.23,
        width * 0.68,
        height * 0.24,
        width * 0.68,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.21,
        width * 0.68,
        height * 0.19,
        width * 0.68,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.16,
        width * 0.68,
        height * 0.15,
        width * 0.68,
        height * 0.16,
      )
      ..lineTo(width * 0.68, height * 0.16)
      ..moveTo(width * 0.47, height * 0.1)
      ..cubicTo(
        width * 0.47,
        height * 0.11,
        width * 0.47,
        height * 0.12,
        width * 0.47,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.12,
        width * 0.48,
        height * 0.11,
        width * 0.48,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.11,
        width * 0.49,
        height * 0.12,
        width * 0.49,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.09,
        width * 0.49,
        height * 0.08,
        width * 0.49,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.05,
        width * 0.49,
        height * 0.05,
        width * 0.49,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.07,
        width * 0.49,
        height * 0.08,
        width * 0.49,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.1,
        width * 0.49,
        height * 0.1,
        width * 0.48,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.08,
        width * 0.48,
        height * 0.06,
        width * 0.48,
        height * 0.05,
      )
      ..lineTo(width * 0.48, height * 0.06)
      ..cubicTo(
        width * 0.48,
        height * 0.06,
        width * 0.48,
        height * 0.08,
        width * 0.48,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.1,
        width * 0.48,
        height * 0.1,
        width * 0.48,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.1,
        width * 0.47,
        height * 0.07,
        width * 0.47,
        height * 0.06,
      )
      ..lineTo(width * 0.47, height * 0.07)
      ..cubicTo(
        width * 0.47,
        height * 0.07,
        width * 0.47,
        height * 0.08,
        width * 0.47,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.09,
        width * 0.47,
        height * 0.1,
        width * 0.47,
        height * 0.1,
      )
      ..lineTo(width * 0.47, height * 0.1)
      ..moveTo(width * 0.62, height * 0.88)
      ..cubicTo(
        width * 0.62,
        height * 0.88,
        width * 0.62,
        height * 0.87,
        width * 0.62,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.86,
        width * 0.62,
        height * 0.83,
        width * 0.61,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.82,
        width * 0.61,
        height * 0.83,
        width * 0.6,
        height * 0.85,
      )
      ..lineTo(width * 0.6, height * 0.85)
      ..cubicTo(
        width * 0.6,
        height * 0.85,
        width * 0.6,
        height * 0.86,
        width * 0.6,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.88,
        width * 0.6,
        height * 0.89,
        width * 0.59,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.93,
        width * 0.57,
        height * 0.95,
        width * 0.56,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.99,
        width * 0.54,
        height,
        width * 0.54,
        height,
      )
      ..cubicTo(
        width * 0.53,
        height * 1.01,
        width * 0.53,
        height * 1.01,
        width * 0.54,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.55,
        height,
        width * 0.57,
        height * 0.97,
        width * 0.58,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.93,
        width * 0.6,
        height * 0.91,
        width * 0.6,
        height * 0.89,
      )
      ..lineTo(width * 0.6, height * 0.87)
      ..cubicTo(
        width * 0.6,
        height * 0.87,
        width * 0.61,
        height * 0.88,
        width * 0.61,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.89,
        width * 0.62,
        height * 0.89,
        width * 0.62,
        height * 0.88,
      )
      ..lineTo(width * 0.62, height * 0.88)
      ..moveTo(width * 0.61, height * 0.85)
      ..cubicTo(
        width * 0.61,
        height * 0.85,
        width * 0.62,
        height * 0.86,
        width * 0.62,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.86,
        width * 0.61,
        height * 0.86,
        width * 0.61,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.85,
        width * 0.61,
        height * 0.84,
        width * 0.61,
        height * 0.85,
      )
      ..lineTo(width * 0.61, height * 0.85);
    canvas.drawPath(path, paint);

    path
      ..moveTo(width * 0.55, height * 0.9)
      ..cubicTo(
        width * 0.55,
        height * 0.9,
        width * 0.52,
        height * 0.89,
        width * 0.52,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.83,
        width * 0.54,
        height * 0.81,
        width * 0.57,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.76,
        width * 0.62,
        height * 0.73,
        width * 0.63,
        height * 0.71,
      )
      ..lineTo(width * 0.63, height * 0.71)
      ..cubicTo(
        width * 0.64,
        height * 0.7,
        width * 0.64,
        height * 0.66,
        width * 0.64,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.65,
        width * 0.59,
        height * 0.66,
        width * 0.57,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.67,
        width * 0.51,
        height * 0.67,
        width * 0.5,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.63,
        width * 0.54,
        height * 0.6,
        width * 0.56,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.59,
        width * 0.57,
        height * 0.6,
        width * 0.57,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.61,
        width * 0.57,
        height * 0.59,
        width * 0.57,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.56,
        width * 0.59,
        height * 0.55,
        width * 0.6,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.53,
        width * 0.6,
        height * 0.51,
        width * 0.6,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.47,
        width * 0.59,
        height * 0.46,
        width * 0.59,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.42,
        width * 0.57,
        height * 0.41,
        width * 0.56,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.42,
        width * 0.54,
        height * 0.5,
        width * 0.55,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.52,
        width * 0.55,
        height * 0.52,
        width * 0.55,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.55,
        width * 0.53,
        height * 0.56,
        width * 0.52,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.61,
        width * 0.48,
        height * 0.64,
        width * 0.48,
        height * 0.67,
      )
      ..lineTo(width * 0.47, height * 0.67)
      ..cubicTo(
        width * 0.47,
        height * 0.68,
        width * 0.47,
        height * 0.73,
        width * 0.47,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.73,
        width * 0.5,
        height * 0.73,
        width * 0.52,
        height * 0.73,
      )
      ..lineTo(width * 0.57, height * 0.73)
      ..cubicTo(
        width * 0.56,
        height * 0.74,
        width * 0.54,
        height * 0.76,
        width * 0.52,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.8,
        width * 0.51,
        height * 0.83,
        width * 0.51,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.87,
        width * 0.49,
        height * 0.84,
        width * 0.48,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.75,
        width * 0.47,
        height * 0.69,
        width * 0.46,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.54,
        width * 0.45,
        height * 0.46,
        width * 0.43,
        height * 0.4,
      )
      ..lineTo(width * 0.42, height * 0.46)
      ..cubicTo(
        width * 0.42,
        height * 0.46,
        width * 0.44,
        height * 0.55,
        width * 0.44,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.64,
        width * 0.45,
        height * 0.68,
        width * 0.45,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.76,
        width * 0.42,
        height * 0.83,
        width * 0.39,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.92,
        width * 0.34,
        height * 0.92,
        width * 0.34,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.89,
        width * 0.33,
        height * 0.88,
        width * 0.33,
        height * 0.87,
      )
      ..lineTo(width * 0.34, height * 0.86)
      ..cubicTo(
        width * 0.37,
        height * 0.83,
        width * 0.41,
        height * 0.76,
        width * 0.42,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.69,
        width * 0.43,
        height * 0.64,
        width * 0.42,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.56,
        width * 0.4,
        height * 0.52,
        width * 0.4,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.5,
        width * 0.41,
        height * 0.51,
        width * 0.41,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.51,
        width * 0.41,
        height * 0.5,
        width * 0.41,
        height * 0.49,
      )
      ..lineTo(width * 0.39, height * 0.44)
      ..cubicTo(
        width * 0.39,
        height * 0.43,
        width * 0.39,
        height * 0.44,
        width * 0.39,
        height * 0.44,
      )
      ..lineTo(width * 0.38, height * 0.49)
      ..lineTo(width * 0.38, height * 0.5)
      ..cubicTo(
        width * 0.39,
        height * 0.5,
        width * 0.39,
        height * 0.5,
        width * 0.39,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.52,
        width * 0.39,
        height * 0.55,
        width * 0.4,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.62,
        width * 0.41,
        height * 0.65,
        width * 0.42,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.7,
        width * 0.37,
        height * 0.76,
        width * 0.34,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.78,
        width * 0.34,
        height * 0.75,
        width * 0.35,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.71,
        width * 0.35,
        height * 0.68,
        width * 0.35,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.69,
        width * 0.35,
        height * 0.71,
        width * 0.35,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.72,
        width * 0.33,
        height * 0.7,
        width * 0.34,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.65,
        width * 0.34,
        height * 0.62,
        width * 0.34,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.59,
        width * 0.35,
        height * 0.57,
        width * 0.35,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.6,
        width * 0.33,
        height * 0.65,
        width * 0.33,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.72,
        width * 0.33,
        height * 0.74,
        width * 0.33,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.75,
        width * 0.34,
        height * 0.75,
        width * 0.34,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.77,
        width * 0.33,
        height * 0.79,
        width * 0.33,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.84,
        width * 0.3,
        height * 0.86,
        width * 0.29,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.91,
        width * 0.22,
        height * 0.94,
        width * 0.2,
        height * 0.96,
      )
      ..lineTo(width * 0.2, height * 0.96)
      ..cubicTo(
        width * 0.2,
        height * 0.95,
        width * 0.2,
        height * 0.93,
        width * 0.2,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.94,
        width * 0.19,
        height * 0.96,
        width * 0.19,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.97,
        width * 0.18,
        height * 0.95,
        width * 0.18,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.9,
        width * 0.19,
        height * 0.88,
        width * 0.19,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.84,
        width * 0.19,
        height * 0.82,
        width * 0.19,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.86,
        width * 0.18,
        height * 0.9,
        width * 0.18,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.97,
        width * 0.18,
        height * 0.99,
        width * 0.18,
        height,
      )
      ..cubicTo(
        width * 0.19,
        height * 1.01,
        width * 0.19,
        height,
        width * 0.19,
        height * 0.98,
      )
      ..lineTo(width * 0.2, height * 0.97)
      ..lineTo(width * 0.2, height * 0.97)
      ..cubicTo(
        width * 0.21,
        height * 0.96,
        width * 0.24,
        height * 0.95,
        width * 0.27,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.93,
        width * 0.31,
        height * 0.91,
        width * 0.33,
        height * 0.88,
      )
      ..lineTo(width * 0.33, height * 0.9)
      ..cubicTo(
        width * 0.33,
        height * 0.97,
        width * 0.34,
        height * 0.99,
        width * 0.36,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.95,
        width * 0.41,
        height * 0.92,
        width * 0.42,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.85,
        width * 0.44,
        height * 0.82,
        width * 0.45,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.76,
        width * 0.46,
        height * 0.73,
        width * 0.46,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.76,
        width * 0.46,
        height * 0.81,
        width * 0.47,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.91,
        width * 0.51,
        height * 0.97,
        width * 0.56,
        height * 0.97,
      )
      ..lineTo(width * 0.55, height * 0.9)
      ..lineTo(width * 0.55, height * 0.9)
      ..moveTo(width * 0.55, height * 0.48)
      ..cubicTo(
        width * 0.56,
        height * 0.46,
        width * 0.57,
        height * 0.48,
        width * 0.58,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.51,
        width * 0.57,
        height * 0.52,
        width * 0.56,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.51,
        width * 0.55,
        height * 0.49,
        width * 0.55,
        height * 0.48,
      )
      ..lineTo(width * 0.55, height * 0.48)
      ..moveTo(width * 0.29, height * 0.18)
      ..cubicTo(
        width * 0.3,
        height * 0.18,
        width * 0.31,
        height * 0.16,
        width * 0.32,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.13,
        width * 0.33,
        height * 0.11,
        width * 0.34,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.09,
        width * 0.34,
        height * 0.08,
        width * 0.34,
        height * 0.08,
      )
      ..lineTo(width * 0.35, height * 0.09)
      ..cubicTo(
        width * 0.35,
        height * 0.09,
        width * 0.35,
        height * 0.09,
        width * 0.36,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.06,
        width * 0.36,
        height * 0.05,
        width * 0.35,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.03,
        width * 0.34,
        height * 0.01,
        width * 0.34,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.34,
        0,
        width * 0.34,
        height * 0.02,
        width * 0.34,
        height * 0.02,
      )
      ..lineTo(width * 0.34, height * 0.02)
      ..cubicTo(
        width * 0.34,
        height * 0.03,
        width * 0.33,
        height * 0.04,
        width * 0.33,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.06,
        width * 0.33,
        height * 0.07,
        width * 0.34,
        height * 0.07,
      )
      ..lineTo(width * 0.34, height * 0.08)
      ..cubicTo(
        width * 0.34,
        height * 0.09,
        width * 0.33,
        height * 0.11,
        width * 0.32,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.14,
        width * 0.3,
        height * 0.17,
        width * 0.3,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.18,
        width * 0.29,
        height * 0.18,
        width * 0.29,
        height * 0.18,
      )
      ..lineTo(width * 0.29, height * 0.18)
      ..moveTo(width * 0.35, height * 0.05)
      ..lineTo(width * 0.35, height * 0.04)
      ..cubicTo(
        width * 0.35,
        height * 0.06,
        width * 0.35,
        height * 0.07,
        width * 0.35,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.08,
        width * 0.35,
        height * 0.07,
        width * 0.35,
        height * 0.07,
      )
      ..lineTo(width * 0.35, height * 0.05)
      ..lineTo(width * 0.35, height * 0.05)
      ..moveTo(width * 0.33, height * 0.05)
      ..cubicTo(
        width * 0.33,
        height * 0.05,
        width * 0.34,
        height * 0.04,
        width * 0.34,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.03,
        width * 0.34,
        height * 0.04,
        width * 0.34,
        height * 0.06,
      )
      ..lineTo(width * 0.34, height * 0.06)
      ..lineTo(width * 0.34, height * 0.06)
      ..cubicTo(
        width * 0.34,
        height * 0.06,
        width * 0.34,
        height * 0.06,
        width * 0.33,
        height * 0.05,
      )
      ..lineTo(width * 0.33, height * 0.05);
    canvas.drawPath(path, paint);

    path
      ..moveTo(width * 0.51, height * 0.45)
      ..cubicTo(
        width * 0.52,
        height * 0.44,
        width * 0.53,
        height * 0.41,
        width * 0.54,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.38,
        width * 0.55,
        height * 0.36,
        width * 0.55,
        height * 0.34,
      )
      ..lineTo(width * 0.56, height * 0.35)
      ..cubicTo(
        width * 0.56,
        height * 0.36,
        width * 0.57,
        height * 0.36,
        width * 0.57,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.37,
        width * 0.57,
        height * 0.35,
        width * 0.57,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.34,
        width * 0.56,
        height * 0.33,
        width * 0.56,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.3,
        width * 0.57,
        height * 0.27,
        width * 0.56,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.24,
        width * 0.55,
        height * 0.26,
        width * 0.54,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.3,
        width * 0.54,
        height * 0.31,
        width * 0.55,
        height * 0.32,
      )
      ..lineTo(width * 0.55, height * 0.33)
      ..cubicTo(
        width * 0.55,
        height * 0.35,
        width * 0.53,
        height * 0.38,
        width * 0.53,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.42,
        width * 0.51,
        height * 0.45,
        width * 0.51,
        height * 0.45,
      )
      ..lineTo(width * 0.51, height * 0.45)
      ..cubicTo(
        width * 0.5,
        height * 0.44,
        width * 0.51,
        height * 0.43,
        width * 0.5,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.46,
        width * 0.51,
        height * 0.49,
        width * 0.51,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.52,
        width * 0.5,
        height * 0.51,
        width * 0.5,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.48,
        width * 0.49,
        height * 0.44,
        width * 0.49,
        height * 0.44,
      )
      ..lineTo(width * 0.49, height * 0.46)
      ..cubicTo(
        width * 0.49,
        height * 0.46,
        width * 0.49,
        height * 0.49,
        width * 0.49,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.52,
        width * 0.49,
        height * 0.53,
        width * 0.48,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.53,
        width * 0.48,
        height * 0.48,
        width * 0.47,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.46,
        width * 0.47,
        height * 0.47,
        width * 0.47,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.48,
        width * 0.47,
        height * 0.49,
        width * 0.47,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.51,
        width * 0.47,
        height * 0.52,
        width * 0.47,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.55,
        width * 0.47,
        height * 0.56,
        width * 0.48,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.56,
        width * 0.49,
        height * 0.54,
        width * 0.49,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.54,
        width * 0.5,
        height * 0.56,
        width * 0.51,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.51,
        width * 0.51,
        height * 0.49,
        width * 0.51,
        height * 0.46,
      )
      ..lineTo(width * 0.51, height * 0.46)
      ..cubicTo(
        width * 0.51,
        height * 0.46,
        width * 0.51,
        height * 0.45,
        width * 0.51,
        height * 0.45,
      )
      ..lineTo(width * 0.51, height * 0.45)
      ..moveTo(width * 0.55, height * 0.29)
      ..cubicTo(
        width * 0.55,
        height * 0.27,
        width * 0.56,
        height * 0.27,
        width * 0.56,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.28,
        width * 0.56,
        height * 0.3,
        width * 0.56,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.3,
        width * 0.55,
        height * 0.29,
        width * 0.55,
        height * 0.29,
      )
      ..lineTo(width * 0.55, height * 0.29);
    canvas.drawPath(path, paint);

    path
      ..moveTo(width * 0.33, height * 0.35)
      ..cubicTo(
        width * 0.32,
        height * 0.34,
        width * 0.31,
        height * 0.32,
        width * 0.31,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.23,
        width * 0.31,
        height * 0.18,
        width * 0.31,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.15,
        width * 0.3,
        height * 0.16,
        width * 0.3,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.24,
        width * 0.3,
        height * 0.29,
        width * 0.31,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.39,
        width * 0.32,
        height * 0.41,
        width * 0.33,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.4,
        width * 0.35,
        height * 0.33,
        width * 0.35,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.27,
        width * 0.37,
        height * 0.14,
        width * 0.38,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.15,
        width * 0.37,
        height * 0.19,
        width * 0.37,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.3,
        width * 0.37,
        height * 0.38,
        width * 0.4,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.41,
        width * 0.44,
        height * 0.36,
        width * 0.44,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.3,
        width * 0.45,
        height * 0.27,
        width * 0.45,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.29,
        width * 0.46,
        height * 0.36,
        width * 0.48,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.39,
        width * 0.52,
        height * 0.38,
        width * 0.52,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.32,
        width * 0.53,
        height * 0.29,
        width * 0.53,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.21,
        width * 0.52,
        height * 0.15,
        width * 0.52,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.11,
        width * 0.52,
        height * 0.1,
        width * 0.52,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.08,
        width * 0.52,
        height * 0.1,
        width * 0.52,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.1,
        width * 0.53,
        height * 0.09,
        width * 0.52,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.07,
        width * 0.51,
        0,
        width * 0.51,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.01,
        width * 0.5,
        height * 0.06,
        width * 0.5,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.07,
        width * 0.5,
        height * 0.08,
        width * 0.5,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.13,
        width * 0.51,
        height * 0.16,
        width * 0.51,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.22,
        width * 0.52,
        height * 0.28,
        width * 0.52,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.31,
        width * 0.5,
        height * 0.33,
        width * 0.48,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.29,
        width * 0.47,
        height * 0.26,
        width * 0.46,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.18,
        width * 0.46,
        height * 0.12,
        width * 0.46,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.04,
        width * 0.45,
        height * 0.02,
        width * 0.45,
        0,
      )
      ..lineTo(width * 0.44, height * 0.07)
      ..cubicTo(
        width * 0.44,
        height * 0.08,
        width * 0.45,
        height * 0.14,
        width * 0.45,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.23,
        width * 0.45,
        height * 0.28,
        width * 0.43,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.34,
        width * 0.39,
        height * 0.33,
        width * 0.38,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.23,
        width * 0.39,
        height * 0.12,
        width * 0.39,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.06,
        width * 0.39,
        height * 0.05,
        width * 0.38,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.06,
        width * 0.37,
        height * 0.09,
        width * 0.36,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.18,
        width * 0.35,
        height * 0.23,
        width * 0.35,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.31,
        width * 0.34,
        height * 0.35,
        width * 0.33,
        height * 0.35,
      )
      ..lineTo(width * 0.33, height * 0.35)
      ..moveTo(width * 0.04, height * 0.17)
      ..cubicTo(
        width * 0.05,
        height * 0.17,
        width * 0.06,
        height * 0.14,
        width * 0.06,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.13,
        width * 0.07,
        height * 0.12,
        width * 0.06,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.16,
        width * 0.03,
        height * 0.16,
        width * 0.03,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.15,
        width * 0.03,
        height * 0.14,
        width * 0.04,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.11,
        width * 0.05,
        height * 0.1,
        width * 0.05,
        height * 0.09,
      )
      ..lineTo(width * 0.05, height * 0.09)
      ..cubicTo(
        width * 0.06,
        height * 0.1,
        width * 0.07,
        height * 0.1,
        width * 0.07,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.09,
        width * 0.07,
        height * 0.07,
        width * 0.07,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.04,
        width * 0.06,
        height * 0.03,
        width * 0.05,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.01,
        width * 0.05,
        height * 0.03,
        width * 0.04,
        height * 0.03,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.04,
        width * 0.04,
        height * 0.04,
        width * 0.05,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.05,
        width * 0.04,
        height * 0.06,
        width * 0.04,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.07,
        width * 0.04,
        height * 0.08,
        width * 0.04,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.08,
        width * 0.04,
        height * 0.08,
        width * 0.05,
        height * 0.09,
      )
      ..lineTo(width * 0.05, height * 0.09)
      ..cubicTo(
        width * 0.04,
        height * 0.1,
        width * 0.04,
        height * 0.11,
        width * 0.04,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.12,
        width * 0.03,
        height * 0.14,
        width * 0.02,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.17,
        width * 0.02,
        height * 0.18,
        width * 0.04,
        height * 0.17,
      )
      ..lineTo(width * 0.04, height * 0.17)
      ..moveTo(width * 0.06, height * 0.06)
      ..lineTo(width * 0.06, height * 0.06)
      ..lineTo(width * 0.06, height * 0.05)
      ..cubicTo(
        width * 0.06,
        height * 0.06,
        width * 0.07,
        height * 0.07,
        width * 0.07,
        height * 0.08,
      )
      ..lineTo(width * 0.06, height * 0.08)
      ..lineTo(width * 0.06, height * 0.06)
      ..lineTo(width * 0.06, height * 0.06)
      ..moveTo(width * 0.05, height * 0.07)
      ..cubicTo(
        width * 0.04,
        height * 0.06,
        width * 0.05,
        height * 0.05,
        width * 0.05,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.04,
        width * 0.05,
        height * 0.05,
        width * 0.06,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.07,
        width * 0.05,
        height * 0.07,
        width * 0.05,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.07,
        width * 0.05,
        height * 0.07,
        width * 0.05,
        height * 0.07,
      )
      ..lineTo(width * 0.05, height * 0.07)
      ..moveTo(width * 0.07, height * 0.6)
      ..cubicTo(
        width * 0.07,
        height * 0.61,
        width * 0.07,
        height * 0.64,
        width * 0.07,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.64,
        width * 0.08,
        height * 0.65,
        width * 0.08,
        height * 0.65,
      )
      ..lineTo(width * 0.08, height * 0.64)
      ..cubicTo(
        width * 0.09,
        height * 0.66,
        width * 0.09,
        height * 0.73,
        width * 0.1,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.73,
        width * 0.1,
        height * 0.72,
        width * 0.1,
        height * 0.7,
      )
      ..lineTo(width * 0.1, height * 0.64)
      ..cubicTo(
        width * 0.1,
        height * 0.62,
        width * 0.11,
        height * 0.61,
        width * 0.11,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.11,
        height * 0.6,
        width * 0.12,
        height * 0.62,
        width * 0.12,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.12,
        height * 0.63,
        width * 0.12,
        height * 0.61,
        width * 0.12,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.12,
        height * 0.59,
        width * 0.11,
        height * 0.56,
        width * 0.11,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.58,
        width * 0.1,
        height * 0.61,
        width * 0.1,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.66,
        width * 0.1,
        height * 0.68,
        width * 0.1,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.66,
        width * 0.09,
        height * 0.64,
        width * 0.09,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.6,
        width * 0.07,
        height * 0.59,
        width * 0.07,
        height * 0.6,
      )
      ..lineTo(width * 0.07, height * 0.6)
      ..moveTo(width * 0.03, height * 0.56)
      ..cubicTo(
        width * 0.03,
        height * 0.56,
        width * 0.04,
        height * 0.55,
        width * 0.05,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.54,
        width * 0.06,
        height * 0.5,
        width * 0.06,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.48,
        width * 0.06,
        height * 0.47,
        width * 0.06,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.46,
        width * 0.04,
        height * 0.46,
        width * 0.03,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.47,
        width * 0.02,
        height * 0.5,
        width * 0.02,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.51,
        width * 0.02,
        height * 0.51,
        width * 0.02,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.51,
        width * 0.04,
        height * 0.51,
        width * 0.05,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.52,
        width * 0.03,
        height * 0.54,
        width * 0.03,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.56,
        width * 0.02,
        height * 0.56,
        width * 0.03,
        height * 0.56,
      )
      ..lineTo(width * 0.03, height * 0.56)
      ..moveTo(width * 0.98, height * 0.73)
      ..cubicTo(
        width * 0.98,
        height * 0.7,
        width * 0.98,
        height * 0.64,
        width * 0.95,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.94,
        height * 0.52,
        width * 0.93,
        height * 0.48,
        width * 0.92,
        height * 0.45,
      )
      ..lineTo(width * 0.92, height * 0.41)
      ..cubicTo(
        width * 0.92,
        height * 0.36,
        width * 0.92,
        height * 0.25,
        width * 0.91,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.17,
        width * 0.91,
        height * 0.15,
        width * 0.91,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.13,
        width * 0.91,
        height * 0.13,
        width * 0.92,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.92,
        height * 0.14,
        width * 0.92,
        height * 0.16,
        width * 0.92,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.15,
        width * 0.92,
        height * 0.14,
        width * 0.92,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.92,
        height * 0.1,
        width * 0.91,
        height * 0.02,
        width * 0.9,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.9,
        height * 0.01,
        width * 0.9,
        height * 0.06,
        width * 0.9,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.9,
        height * 0.08,
        width * 0.9,
        height * 0.08,
        width * 0.9,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.9,
        height * 0.14,
        width * 0.91,
        height * 0.29,
        width * 0.91,
        height * 0.39,
      )
      ..lineTo(width * 0.91, height * 0.4)
      ..cubicTo(
        width * 0.89,
        height * 0.34,
        width * 0.88,
        height * 0.29,
        width * 0.87,
        height * 0.27,
      )
      ..lineTo(width * 0.87, height * 0.25)
      ..lineTo(width * 0.86, height * 0.18)
      ..cubicTo(
        width * 0.86,
        height * 0.16,
        width * 0.86,
        height * 0.15,
        width * 0.86,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.13,
        width * 0.86,
        height * 0.13,
        width * 0.87,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.15,
        width * 0.87,
        height * 0.16,
        width * 0.87,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.16,
        width * 0.87,
        height * 0.14,
        width * 0.87,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.1,
        width * 0.85,
        height * 0.02,
        width * 0.85,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.85,
        height * 0.01,
        width * 0.84,
        height * 0.06,
        width * 0.84,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.08,
        width * 0.85,
        height * 0.09,
        width * 0.85,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.85,
        height * 0.13,
        width * 0.85,
        height * 0.16,
        width * 0.85,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.16,
        width * 0.83,
        height * 0.12,
        width * 0.83,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.11,
        width * 0.83,
        height * 0.11,
        width * 0.83,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.11,
        width * 0.84,
        height * 0.12,
        width * 0.84,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.11,
        width * 0.84,
        height * 0.1,
        width * 0.84,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.83,
        height * 0.08,
        width * 0.82,
        height * 0.06,
        width * 0.81,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.04,
        width * 0.8,
        height * 0.02,
        width * 0.8,
        height * 0.03,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.03,
        width * 0.8,
        height * 0.08,
        width * 0.8,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.08,
        width * 0.8,
        height * 0.09,
        width * 0.81,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.16,
        width * 0.84,
        height * 0.22,
        width * 0.85,
        height * 0.27,
      )
      ..lineTo(width * 0.86, height * 0.39)
      ..cubicTo(
        width * 0.86,
        height * 0.47,
        width * 0.87,
        height * 0.69,
        width * 0.87,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.78,
        width * 0.85,
        height * 0.8,
        width * 0.83,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.8,
        width * 0.81,
        height * 0.79,
        width * 0.81,
        height * 0.76,
      )
      ..lineTo(width * 0.8, height * 0.73)
      ..cubicTo(
        width * 0.8,
        height * 0.71,
        width * 0.79,
        height * 0.7,
        width * 0.78,
        height * 0.7,
      )
      ..lineTo(width * 0.78, height * 0.71)
      ..lineTo(width * 0.78, height * 0.71)
      ..cubicTo(
        width * 0.77,
        height * 0.72,
        width * 0.77,
        height * 0.74,
        width * 0.76,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.79,
        width * 0.75,
        height * 0.84,
        width * 0.74,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.91,
        width * 0.73,
        height * 0.94,
        width * 0.71,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.93,
        width * 0.7,
        height * 0.9,
        width * 0.69,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.85,
        width * 0.71,
        height * 0.81,
        width * 0.72,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.71,
        width * 0.73,
        height * 0.64,
        width * 0.73,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.5,
        width * 0.72,
        height * 0.33,
        width * 0.72,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.2,
        width * 0.71,
        height * 0.15,
        width * 0.71,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.12,
        width * 0.72,
        height * 0.16,
        width * 0.72,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.16,
        width * 0.72,
        height * 0.14,
        width * 0.72,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.11,
        width * 0.71,
        height * 0.06,
        width * 0.7,
        height * 0.03,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.02,
        width * 0.7,
        height * 0.01,
        width * 0.7,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.01,
        width * 0.69,
        height * 0.06,
        width * 0.69,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.08,
        width * 0.69,
        height * 0.08,
        width * 0.7,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.12,
        width * 0.7,
        height * 0.26,
        width * 0.71,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.43,
        width * 0.72,
        height * 0.57,
        width * 0.72,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.7,
        width * 0.72,
        height * 0.73,
        width * 0.72,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.76,
        width * 0.71,
        height * 0.78,
        width * 0.69,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.77,
        width * 0.69,
        height * 0.72,
        width * 0.68,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.71,
        width * 0.68,
        height * 0.74,
        width * 0.68,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.79,
        width * 0.68,
        height * 0.81,
        width * 0.68,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.89,
        width * 0.62,
        height * 0.93,
        width * 0.61,
        height * 0.96,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.97,
        width * 0.6,
        height * 0.97,
        width * 0.61,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.96,
        width * 0.66,
        height * 0.93,
        width * 0.68,
        height * 0.89,
      )
      ..lineTo(width * 0.68, height * 0.89)
      ..cubicTo(
        width * 0.69,
        height * 0.9,
        width * 0.69,
        height * 0.91,
        width * 0.69,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.97,
        width * 0.71,
        height,
        width * 0.72,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.99,
        width * 0.74,
        height * 0.96,
        width * 0.74,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.89,
        width * 0.76,
        height * 0.81,
        width * 0.77,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.78,
        width * 0.78,
        height * 0.77,
        width * 0.78,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.76,
        width * 0.79,
        height * 0.76,
        width * 0.79,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.77,
        width * 0.8,
        height * 0.78,
        width * 0.8,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.8,
        width * 0.8,
        height * 0.83,
        width * 0.81,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.88,
        width * 0.84,
        height * 0.87,
        width * 0.85,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.83,
        width * 0.87,
        height * 0.8,
        width * 0.87,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.71,
        width * 0.88,
        height * 0.66,
        width * 0.88,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.54,
        width * 0.87,
        height * 0.48,
        width * 0.87,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.39,
        width * 0.87,
        height * 0.36,
        width * 0.87,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.38,
        width * 0.9,
        height * 0.43,
        width * 0.91,
        height * 0.47,
      )
      ..lineTo(width * 0.92, height * 0.75)
      ..cubicTo(
        width * 0.92,
        height * 0.8,
        width * 0.92,
        height * 0.86,
        width * 0.92,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.92,
        height * 0.89,
        width * 0.92,
        height * 0.88,
        width * 0.92,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.83,
        width * 0.93,
        height * 0.74,
        width * 0.93,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.64,
        width * 0.93,
        height * 0.58,
        width * 0.92,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.55,
        width * 0.94,
        height * 0.58,
        width * 0.95,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.96,
        height * 0.66,
        width * 0.97,
        height * 0.71,
        width * 0.97,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.77,
        width * 0.98,
        height * 0.78,
        width * 0.98,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.79,
        width * 0.98,
        height * 0.77,
        width * 0.98,
        height * 0.73,
      )
      ..lineTo(width * 0.98, height * 0.73);
    canvas.drawPath(path, paint);
  }
}
