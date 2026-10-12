// Equal objects must not be identical here, so they are not `const`.
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/helpers/extensions/paint_equality_extension.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/elements/custom_elements_properties.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/flag_elements_type.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/src/model/stripe_orientation.dart";

/// Not `const`, so every call creates new (equal, but not identical) objects.
FlagProperties _flag({
  String url = "",
  bool? isSimplified,
  double aspectRatio = 1.5,
  Color stripe = const Color(0xFFFF0000),
  int ratio = 1,
  StripeOrientation orientation = StripeOrientation.horizontal,
  FlagElementsType? type,
  List<ElementsProperties>? elements,
}) => FlagProperties(
  [ColorsProperties(stripe, ratio: ratio), ColorsProperties(stripe)],
  aspectRatio: aspectRatio,
  stripeOrientation: orientation,
  baseElementType: type,
  elementsProperties: elements ?? _elements(),
  isSimplified: isSimplified,
  url: url,
);

List<ElementsProperties> _elements({
  Shape star = const Star(),
  double heightFactor = 0.5,
  List<Color> otherColors = const [Color(0xFF00FF00)],
  ElementsProperties? child,
}) => [
  ElementsProperties(
    const Color(0xFF000000),
    shape: star,
    heightFactor: heightFactor,
    child: child ?? ElementsProperties(const Color(0xFF000000), shape: Moon()),
  ),
  ElementsProperties(const Color(0xFF000000), shape: Rectangle()),
  ElementsProperties(const Color(0xFF000000), shape: Triangle()),
  ElementsProperties(const Color(0xFF000000), shape: Ellipse()),
  ElementsProperties(const Color(0xFF000000), shape: DiagonalLine()),
  CustomElementsProperties(const Color(0xFF000000), otherColors: otherColors),
];

void main() => group("PaintEquality", () {
  test("paints like equal properties, whatever their metadata", () {
    expect(_flag().paintsLike(_flag()), isTrue);
    expect(_flag().paintsLike(_flag(url: "url", isSimplified: true)), isTrue);
  });

  test("paints like identical properties", () {
    final flag = _flag();

    expect(flag.paintsLike(flag), isTrue);
    expect(
      PaintEqualityExtension.elementsPaintLike(flag.elementsProperties, null),
      isFalse,
    );
  });

  group("doesn't paint like", () {
    for (final (description, other) in [
      ("null", null),
      ("another aspect ratio", _flag(aspectRatio: 2)),
      ("another stripe color", _flag(stripe: const Color(0xFF0000FF))),
      ("another stripe ratio", _flag(ratio: 2)),
      ("another orientation", _flag(orientation: StripeOrientation.vertical)),
      ("another element type", _flag(type: FlagElementsType.star)),
      ("other elements", _flag(elements: _elements(heightFactor: 1))),
      ("another shape", _flag(elements: _elements(star: Ellipse()))),
      ("another star", _flag(elements: _elements(star: Star(points: 6)))),
      ("other colors", _flag(elements: _elements(otherColors: const []))),
      (
        "another child",
        _flag(
          elements: _elements(
            child: ElementsProperties(const Color(0xFFFFFFFF), shape: Moon()),
          ),
        ),
      ),
      ("fewer elements", _flag(elements: _elements().sublist(1))),
      ("fewer stripes", FlagProperties([ColorsProperties(Color(0xFFFF0000))])),
    ]) {
      test(description, () => expect(_flag().paintsLike(other), isFalse));
    }
  });

  test("compares every shape by its fields", () {
    const black = Color(0xFF000000);
    for (final (shape, other) in <(Shape, Shape)>[
      (Rectangle(aspectRatio: 1), Rectangle(aspectRatio: 2)),
      (Moon(radius: 0.5), Moon(radius: 0.6)),
      (DiagonalLine(), DiagonalLine(isTopRightToBottomLeft: false)),
    ]) {
      expect(
        PaintEqualityExtension.elementsPaintLike(
          [ElementsProperties(black, shape: shape)],
          [ElementsProperties(black, shape: other)],
        ),
        isFalse,
        reason: "$shape",
      );
    }
    expect(
      PaintEqualityExtension.elementsPaintLike(
        const [ElementsProperties(black, shape: Ellipse())],
        const [CustomElementsProperties(black)],
      ),
      isFalse,
      reason: "A custom element paints differently.",
    );
  });

  test("compares lists of elements", () {
    final elements = _elements();

    expect(
      PaintEqualityExtension.elementsPaintLike(elements, elements),
      isTrue,
    );
    expect(PaintEqualityExtension.elementsPaintLike(elements, null), isFalse);
    expect(PaintEqualityExtension.elementsPaintLike(null, null), isTrue);
  });
});
