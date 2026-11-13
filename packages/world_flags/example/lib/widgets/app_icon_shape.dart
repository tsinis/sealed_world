import "package:flutter/widgets.dart";

/// The few icons of the example app, drawn as paths on a 24x24 grid (the same
/// shapes as the Material icons), so no icon font has to be bundled.
enum AppIconShape {
  close,
  refresh,
  copy;

  /// The shape on a 24x24 grid (a shared path, don't modify it).
  Path get path => switch (this) {
    close => _closePath,
    refresh => _refreshPath,
    copy => _copyPath,
  };

  static final _closePath = Path()
    ..moveTo(19, 6.41)
    ..lineTo(17.59, 5)
    ..lineTo(12, 10.59)
    ..lineTo(6.41, 5)
    ..lineTo(5, 6.41)
    ..lineTo(10.59, 12)
    ..lineTo(5, 17.59)
    ..lineTo(6.41, 19)
    ..lineTo(12, 13.41)
    ..lineTo(17.59, 19)
    ..lineTo(19, 17.59)
    ..lineTo(13.41, 12)
    ..close();

  static final _refreshPath = Path()
    ..moveTo(17.65, 6.35)
    ..cubicTo(16.2, 4.9, 14.21, 4, 12, 4)
    ..cubicTo(7.58, 4, 4.01, 7.58, 4.01, 12)
    ..cubicTo(4.01, 16.42, 7.58, 20, 12, 20)
    ..cubicTo(15.73, 20, 18.84, 17.45, 19.73, 14)
    ..lineTo(17.65, 14)
    ..cubicTo(16.83, 16.33, 14.61, 18, 12, 18)
    ..cubicTo(8.69, 18, 6, 15.31, 6, 12)
    ..cubicTo(6, 8.69, 8.69, 6, 12, 6)
    ..cubicTo(13.66, 6, 15.14, 6.69, 16.22, 7.78)
    ..lineTo(13, 11)
    ..lineTo(20, 11)
    ..lineTo(20, 4)
    ..close();

  /// The sheet behind the front one, an "L" with a rounded corner.
  static final _copyBackSheetPath = Path()
    ..moveTo(16, 1)
    ..lineTo(4, 1)
    ..cubicTo(2.9, 1, 2, 1.9, 2, 3)
    ..lineTo(2, 17)
    ..lineTo(4, 17)
    ..lineTo(4, 3)
    ..lineTo(16, 3)
    ..close();

  /// The front sheet: a rounded frame, hollowed out by the even-odd fill.
  static final _copyPath = Path()
    ..fillType = PathFillType.evenOdd
    ..addPath(_copyBackSheetPath, Offset.zero)
    ..addRRect(RRect.fromLTRBR(6, 5, 21, 23, const Radius.circular(2)))
    ..addRect(const Rect.fromLTRB(8, 7, 19, 21));
}
