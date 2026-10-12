import "dart:ui" show Offset, Size;

import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/other/dual_flag_clipper.dart";

void main() => group("$DualFlagClipper", () {
  const size = Size(200, 100);

  test("clips left half at 90 degrees", () {
    const clipper = DualFlagClipper(90);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, isZero);
    expect(bounds.top, isZero);
    expect(bounds.width, size.width / 2);
    expect(bounds.height, size.height);
  });

  test("clips bottom half at 0 degrees", () {
    const clipper = DualFlagClipper(0);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, isZero);
    expect(bounds.top, size.height / 2);
    expect(bounds.width, size.width);
    expect(bounds.height, size.height / 2);
  });

  test("clips top half at 180 degrees", () {
    const clipper = DualFlagClipper(180);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, isZero);
    expect(bounds.top, isZero);
    expect(bounds.width, size.width);
    expect(bounds.height, size.height / 2);
  });

  test("keeps the same side as neighbouring angles", () {
    const top = Offset(100, 10);
    const bottom = Offset(100, 90);
    const left = Offset(10, 50);
    const right = Offset(190, 50);

    for (final angle in const [0, 90, 180, 270]) {
      final exact = DualFlagClipper(angle).getClip(size);
      for (final near in [angle - 1, angle + 1]) {
        final nearPath = DualFlagClipper(near).getClip(size);
        // Points on the split line itself are ambiguous, so skip them.
        final points = angle % 180 == 0 ? const [top, bottom] : [left, right];
        for (final point in points) {
          expect(
            exact.contains(point),
            nearPath.contains(point),
            reason: "$angle vs $near degrees at $point",
          );
        }
      }
    }
  });

  test("clips right half at 270 degrees", () {
    const clipper = DualFlagClipper(270);
    final path = clipper.getClip(size);
    final bounds = path.getBounds();

    expect(bounds.left, size.width / 2);
    expect(bounds.top, isZero);
    expect(bounds.width, size.width / 2);
    expect(bounds.height, size.height);
  });

  test("handles negative angles equivalently", () {
    const clipperNeg90 = DualFlagClipper(-90);
    const clip270 = DualFlagClipper(270);

    final boundsNeg = clipperNeg90.getClip(size).getBounds();
    final bounds270 = clip270.getClip(size).getBounds();

    expect(boundsNeg, bounds270);
  });

  test("produces a closed path at default (diagonal) angle", () {
    const clipper = DualFlagClipper();
    final path = clipper.getClip(size);
    final metrics = path.computeMetrics().toList(growable: false);

    expect(metrics.single.isClosed, isTrue);
  });

  test("shouldReclip returns true when angle changes", () {
    const clipper = DualFlagClipper(90);
    const other = DualFlagClipper();

    expect(clipper.shouldReclip(other), isTrue);
    expect(clipper.shouldReclip(const DualFlagClipper(90)), isFalse);
  });
});
