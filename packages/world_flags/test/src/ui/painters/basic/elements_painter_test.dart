// ignore_for_file: prefer-match-file-name, the subject is the base class.

import "dart:ui" show PictureRecorder;

import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/src/model/typedefs.dart";
import "package:world_flags/src/ui/painters/basic/elements_painter.dart";

/// The sizing every shape painter inherits.
///
/// `calculateSize` is `@protected`, so what covers it is a painter that
/// extends [ElementsPainter], the way a flag's own painter does.
void main() => group("$ElementsPainter", () {
  const size = Size(400, 100);

  test("sizes an element from its height when it has no width factor", () {
    const element = ElementsProperties(
      _color,
      shape: _shape,
      heightFactor: 0.5,
    );

    expect(_SizePainter(element).size(size), 25);
  });

  test("takes whichever of the two factors asks for less", () {
    // Each factor is of its own axis, and the box is four times as wide as
    // it is tall, so the same fraction buys a far larger radius across.
    const wider = ElementsProperties(
      _color,
      shape: _shape,
      heightFactor: 0.5,
      widthFactor: 0.2,
    );
    const narrower = ElementsProperties(
      _color,
      shape: _shape,
      heightFactor: 0.5,
      widthFactor: 0.05,
    );

    expect(_SizePainter(wider).size(size), 25, reason: "Height is smaller.");
    expect(_SizePainter(narrower).size(size), 10, reason: "Width is smaller.");
  });

  group("shouldRepaint", () {
    const element = ElementsProperties(_color, shape: _shape);
    const other = ElementsProperties(_color, shape: Star());

    test("returns true when elements change", () {
      expect(_SizePainter(other).shouldRepaint(_SizePainter(element)), isTrue);
    });

    test("returns false when nothing changes", () {
      const list = [element];
      expect(_ListPainter(list).shouldRepaint(_ListPainter(list)), isFalse);
    });
  });

  test("doesn't paint into an empty size", () {
    final painter = _ThrowingPainter(const [
      ElementsProperties(_color, shape: _shape),
    ]);

    expect(painter.paint(Canvas(PictureRecorder()), Size.zero), isNull);
  });
});

const _color = Color(0xff000000);
const _shape = Ellipse();

/// A painter that only exists to read [ElementsPainter.calculateSize] back.
final class _SizePainter extends ElementsPainter {
  new(ElementsProperties element) : super([element], 1);

  double size(Size size) => calculateSize(size);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) => null;
}

/// A painter of a constant list of elements, painting nothing.
final class _ListPainter extends ElementsPainter {
  new(ElementsProps elements) : super(elements, 1);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) => null;
}

/// A painter that must not be asked to paint its elements.
final class _ThrowingPainter extends ElementsPainter {
  new(ElementsProps elements) : super(elements, 1);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) =>
      throw StateError("Painted into $size");
}
