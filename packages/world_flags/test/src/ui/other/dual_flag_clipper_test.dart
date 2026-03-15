import "dart:ui" show Size;

import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$DualFlagClipper", () {
  const size = Size(200, 100);

  test("clips left half at 90 degrees", () {
    const clipper = DualFlagClipper(90);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, 0);
    expect(bounds.top, 0);
    expect(bounds.width, size.width / 2);
    expect(bounds.height, size.height);
  });

  test("clips top half at 0 degrees", () {
    const clipper = DualFlagClipper(0);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, 0);
    expect(bounds.top, 0);
    expect(bounds.width, size.width);
    expect(bounds.height, size.height / 2);
  });

  test("clips bottom half at 180 degrees", () {
    const clipper = DualFlagClipper(180);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, 0);
    expect(bounds.top, size.height / 2);
    expect(bounds.width, size.width);
    expect(bounds.height, size.height / 2);
  });

  test("clips right half at 270 degrees", () {
    const clipper = DualFlagClipper(270);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, size.width / 2);
    expect(bounds.top, 0);
    expect(bounds.width, size.width / 2);
    expect(bounds.height, size.height);
  });

  test("handles negative angles equivalently", () {
    const clipperNeg90 = DualFlagClipper(-90);
    const clipper270 = DualFlagClipper(270);

    final boundsNeg = clipperNeg90.getClip(size).getBounds();
    final bounds270 = clipper270.getClip(size).getBounds();

    expect(boundsNeg, bounds270);
  });

  test("produces a closed path at default (diagonal) angle", () {
    const clipper = DualFlagClipper();
    final path = clipper.getClip(size);
    final metrics = path.computeMetrics().toList();

    expect(metrics, hasLength(1));
    expect(metrics.first.isClosed, isTrue);
  });

  test("shouldReclip returns true when angle changes", () {
    const clipper = DualFlagClipper(90);
    const other = DualFlagClipper();

    expect(clipper.shouldReclip(other), isTrue);
    expect(clipper.shouldReclip(const DualFlagClipper(90)), isFalse);
  });
});
