import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$IrqPainter", () {
  final painter = IrqPainter(
    flagIrqProperties.elementsProperties,
    flagIrqProperties.aspectRatio,
  );

  test("ratio > originalAspectRatio (flag is wider)", () {
    const size = Size(300, 100);
    final canvas = _IrqPainterTest();

    painter.paintFlagElements(canvas, size);
    expect(canvas.saveCount, greaterThan(0));
    expect(canvas.restoreCount, greaterThan(0));
  });

  test("ratio < originalAspectRatio (flag is taller)", () {
    const size = Size(100, 300);
    final canvas = _IrqPainterTest();
    painter.paintFlagElements(canvas, size);
    expect(canvas.saveCount, greaterThan(0));
    expect(canvas.restoreCount, greaterThan(0));
  });
});

class _IrqPainterTest implements Canvas {
  int restoreCount = 0;
  int saveCount = 0;

  @override
  void save() => saveCount += 1;

  @override
  void restore() => restoreCount += 1;

  @override
  void noSuchMethod(Invocation invocation) => invocation;
}
