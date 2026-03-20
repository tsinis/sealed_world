// ignore_for_file: missing-test-assertion, flagGolden method
import "dart:ui";

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show Text;
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/flag_elements_type.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/painters/common/ellipse_painter.dart";
import "package:world_flags/src/ui/painters/common/moon_painter.dart";
import "package:world_flags/src/ui/painters/common/rectangle_painter.dart";
import "package:world_flags/src/ui/painters/common/star_painter.dart";
import "package:world_flags/src/ui/painters/common/triangle_painter.dart";
import "package:world_flags/src/ui/painters/multi_element_painter.dart";

void main() => group("$BasicFlag", () {
  const stripes = [ColorsProperties(Color(0xFFFFFFFF))];
  const element = ElementsProperties(Color(0xFF0000FF), shape: Triangle());
  const elementsList = [element];

  const basicFlag = BasicFlag(
    FlagProperties(stripes),
    key: Key("key"),
    child: Text("Flag Child"),
  );

  test(
    "toStringShort",
    () => expect(basicFlag.toStringShort(), "$BasicFlag([<'key'>])"),
  );

  test("debugFillProperties", () {
    final builder = DiagnosticPropertiesBuilder();
    expect(builder.properties.any((prop) => prop.name == "padding"), isFalse);

    basicFlag.debugFillProperties(builder);
    expect(builder.properties.any((prop) => prop.name == "padding"), isTrue);
  });

  test("debugFillProperties elementsBuilder ifNull with baseElementType", () {
    const flag = BasicFlag(
      FlagProperties(
        stripes,
        baseElementType: FlagElementsType.star,
        elementsProperties: elementsList,
      ),
    );
    final builder = DiagnosticPropertiesBuilder();
    flag.debugFillProperties(builder);
    final prop = builder.properties.firstWhere(
      (property) => property.name == "elementsBuilder",
    );
    expect(prop.toString(), startsWith("auto-resolved from"));
  });

  group("resolvePainter", () {
    const ratio = 1.5;

    test("returns null when no elementsBuilder and no baseElementType", () {
      const flag = BasicFlag(FlagProperties(stripes));
      expect(flag.resolvePainter(elementsList, ratio), isNull);
    });

    test("returns StarPainter for star baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(
          stripes,
          baseElementType: FlagElementsType.star,
          elementsProperties: elementsList,
        ),
      );
      expect(flag.resolvePainter(elementsList, ratio), isA<StarPainter>());
    });

    test("returns RectanglePainter for rectangle baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(
          stripes,
          baseElementType: FlagElementsType.rectangle,
          elementsProperties: elementsList,
        ),
      );
      expect(flag.resolvePainter(elementsList, ratio), isA<RectanglePainter>());
    });

    test("returns EllipsePainter for ellipse baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(
          stripes,
          baseElementType: FlagElementsType.ellipse,
          elementsProperties: elementsList,
        ),
      );
      expect(flag.resolvePainter(elementsList, ratio), isA<EllipsePainter>());
    });

    test("returns MoonPainter for moon baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(
          stripes,
          baseElementType: FlagElementsType.moon,
          elementsProperties: elementsList,
        ),
      );
      expect(flag.resolvePainter(elementsList, ratio), isA<MoonPainter>());
    });

    test("returns TrianglePainter for triangle baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(
          stripes,
          baseElementType: FlagElementsType.triangle,
          elementsProperties: elementsList,
        ),
      );
      expect(flag.resolvePainter(elementsList, ratio), isA<TrianglePainter>());
    });

    test("returns MultiElementPainter for multiElement baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(
          stripes,
          baseElementType: FlagElementsType.multiElement,
          elementsProperties: elementsList,
        ),
      );
      expect(
        flag.resolvePainter(elementsList, ratio),
        isA<MultiElementPainter>(),
      );
    });

    test("prefers explicit elementsBuilder over baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(
          stripes,
          baseElementType: FlagElementsType.moon,
          elementsProperties: elementsList,
        ),
        elementsBuilder: StarPainter.new,
      );
      expect(flag.resolvePainter(elementsList, ratio), isA<StarPainter>());
    });

    test("explicit elementsBuilder works without baseElementType", () {
      const flag = BasicFlag(
        FlagProperties(stripes),
        elementsBuilder: StarPainter.new,
      );
      expect(flag.resolvePainter(elementsList, ratio), isA<StarPainter>());
    });
  });
});
