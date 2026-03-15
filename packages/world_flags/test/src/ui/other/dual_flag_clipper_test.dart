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

  test("produces a closed path at arbitrary angle", () {
    const clipper = DualFlagClipper(45);
    final path = clipper.getClip(size);
    final metrics = path.computeMetrics().toList();

    expect(metrics, hasLength(1));
    expect(metrics.first.isClosed, isTrue);
  });

  test("shouldReclip returns true when angle changes", () {
    const clipper = DualFlagClipper(90);
    const other = DualFlagClipper(45);

    expect(clipper.shouldReclip(other), isTrue);
    expect(clipper.shouldReclip(const DualFlagClipper(90)), isFalse);
  });
});
