// ignore_for_file:  prefer-class-destructuring, avoid-duplicate-test-assertions
// ignore_for_file: deprecated_member_use_from_same_package
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/theme/decorated_flag_data.dart";

void main() {
  group("$DecoratedFlagData", () {
    const childWidget = SizedBox();
    const data1 = DecoratedFlagData(
      aspectRatio: 1.5,
      decoration: BoxDecoration(color: Color(0xFF000000)),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(8),
      height: 100,
      width: 150,
      flagChild: childWidget,
    );

    const data2 = DecoratedFlagData(
      aspectRatio: 1.5,
      decoration: BoxDecoration(color: Color(0xFF000000)),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(8),
      height: 100,
      width: 150,
      flagChild: childWidget,
    );

    const data3 = DecoratedFlagData(
      aspectRatio: 2,
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      decorationPosition: DecorationPosition.foreground,
      padding: EdgeInsets.all(16),
      height: 200,
      width: 300,
      flagChild: Text("flag"),
    );

    test("child getter returns flagChild", () {
      expect(data1.child, equals(data1.flagChild));
      expect(data3.child, equals(data3.flagChild));
    });

    test("constructor throws assertion for invalid dimensions", () {
      expect(() => DecoratedFlagData(height: 0), throwsAssertionError);
      expect(() => DecoratedFlagData(height: -1), throwsAssertionError);
      expect(() => DecoratedFlagData(width: 0), throwsAssertionError);
      expect(() => DecoratedFlagData(width: -1), throwsAssertionError);
      expect(() => DecoratedFlagData(aspectRatio: 0), throwsAssertionError);
      expect(() => DecoratedFlagData(aspectRatio: -1), throwsAssertionError);
    });

    test("copyWith copies and overrides properties", () {
      final copied = data1.copyWith(
        aspectRatio: 3,
        decoration: const BoxDecoration(color: Color(0xFF123456)),
        decorationPosition: DecorationPosition.foreground,
        padding: const EdgeInsets.all(24),
        height: 50,
        width: 75,
        flagChild: const Text("new"),
      );

      expect(copied.aspectRatio, 3);
      expect(copied.decoration, const BoxDecoration(color: Color(0xFF123456)));
      expect(copied.decorationPosition, DecorationPosition.foreground);
      expect(copied.padding, const EdgeInsets.all(24));
      expect(copied.height, 50);
      expect(copied.width, 75);
      final isText = isA<Text>();
      final copiedFlagChild = copied.flagChild;
      expect(copiedFlagChild, isText);

      final copiedEmpty = data1.copyWith();
      expect(copiedEmpty, equals(data1));

      final resetProps = data1.copyWith(
        aspectRatio: -1,
        height: -1,
        width: -1,
        clearDecoration: true,
        clearDecorationPosition: true,
        clearPadding: true,
        clearFlagChild: true,
      );
      expect(resetProps.aspectRatio, isNull);
      expect(resetProps.height, isNull);
      expect(resetProps.width, isNull);
      expect(resetProps.decoration, isNull);
      expect(resetProps.decorationPosition, isNull);
      expect(resetProps.padding, isNull);
      expect(resetProps.flagChild, isNull);
    });

    test("toString includes property values", () {
      final str1 = data1.toString();
      expect(str1, contains("aspectRatio: 1.5"));
      expect(str1, contains("height: 100.0"));
      expect(str1, contains("width: 150.0"));
      expect(str1, contains("flagChild: SizedBox"));

      const empty = DecoratedFlagData();
      final emptyStr = empty.toString();
      expect(emptyStr, startsWith("DecoratedFlagData(aspectRatio: null"));
    });

    test("lerp interpolates properties", () {
      expect(DecoratedFlagData.lerp(null, null, 0.5), isNull);
      final isData1 = equals(data1);
      final lerpedIdentical = DecoratedFlagData.lerp(data1, data1, 0.5);
      expect(lerpedIdentical, isData1);

      final lerpedFromNull = DecoratedFlagData.lerp(null, data1, 1);
      expect(lerpedFromNull, isData1);

      final lerpedToNull = DecoratedFlagData.lerp(data1, null, 1);
      expect(lerpedToNull?.aspectRatio, isNull);
      expect(lerpedToNull?.height, isNull);
      expect(lerpedToNull?.width, isNull);
      expect(
        lerpedToNull?.decoration,
        BoxDecoration.lerp(data1.decoration, null, 1),
      );
      expect(
        lerpedToNull?.padding,
        EdgeInsetsGeometry.lerp(data1.padding, null, 1),
      );

      // Coverage for short-circuit conditions returning null.
      const empty = DecoratedFlagData();
      expect(DecoratedFlagData.lerp(empty, null, 0.5), isNull);
      expect(
        DecoratedFlagData.lerp(
          const DecoratedFlagData(aspectRatio: 1),
          null,
          0.5,
        ),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(const DecoratedFlagData(height: 10), null, 0.5),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(const DecoratedFlagData(width: 10), null, 0.5),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(
          const DecoratedFlagData(decoration: BoxDecoration()),
          null,
          0.5,
        ),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(
          empty,
          const DecoratedFlagData(decoration: BoxDecoration()),
          0.5,
        ),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(
          const DecoratedFlagData(padding: EdgeInsets.zero),
          null,
          0.5,
        ),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(
          empty,
          const DecoratedFlagData(padding: EdgeInsets.zero),
          0.5,
        ),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(
          const DecoratedFlagData(flagChild: SizedBox()),
          null,
          0.5,
        ),
        isNotNull,
      );
      expect(
        DecoratedFlagData.lerp(
          empty,
          const DecoratedFlagData(flagChild: SizedBox()),
          0.5,
        ),
        isNotNull,
      );

      final half = DecoratedFlagData.lerp(data1, data3, 0.5);
      expect(half?.aspectRatio, 1.75);
      expect(half?.height, 150);
      expect(half?.width, 225);
      expect(
        half?.padding,
        EdgeInsetsGeometry.lerp(data1.padding, data3.padding, 0.5),
      );
      expect(
        half?.decoration,
        BoxDecoration.lerp(data1.decoration, data3.decoration, 0.5),
      );

      final beforeHalf = DecoratedFlagData.lerp(data1, data3, 0.25);
      expect(beforeHalf?.decorationPosition, data1.decorationPosition);
      expect(beforeHalf?.flagChild, data1.flagChild);

      final afterHalf = DecoratedFlagData.lerp(data1, data3, 0.75);
      expect(afterHalf?.decorationPosition, data3.decorationPosition);
      expect(afterHalf?.flagChild, data3.flagChild);
    });

    test("equality and hashCode", () {
      expect(data1, equals(data2));
      expect(data1.hashCode, equals(data2.hashCode));

      // ignore: avoid-self-compare, testing identical instance equality.
      expect(data1 == data1, isTrue);
      expect(data1 == Object(), isFalse);
      expect(data1 == data3, isFalse);
    });

    test("inequality across individual properties", () {
      expect(
        data1 ==
            const DecoratedFlagData(
              aspectRatio: 9.9,
              decoration: BoxDecoration(color: Color(0xFF000000)),
              decorationPosition: DecorationPosition.background,
              padding: EdgeInsets.all(8),
              height: 100,
              width: 150,
              flagChild: childWidget,
            ),
        isFalse,
      );

      expect(
        data1 ==
            const DecoratedFlagData(
              aspectRatio: 1.5,
              decoration: BoxDecoration(color: Color(0xFF111111)),
              decorationPosition: DecorationPosition.background,
              padding: EdgeInsets.all(8),
              height: 100,
              width: 150,
              flagChild: childWidget,
            ),
        isFalse,
      );

      expect(
        data1 ==
            const DecoratedFlagData(
              aspectRatio: 1.5,
              decoration: BoxDecoration(color: Color(0xFF000000)),
              decorationPosition: DecorationPosition.foreground,
              padding: EdgeInsets.all(8),
              height: 100,
              width: 150,
              flagChild: childWidget,
            ),
        isFalse,
      );

      expect(
        data1 ==
            const DecoratedFlagData(
              aspectRatio: 1.5,
              decoration: BoxDecoration(color: Color(0xFF000000)),
              decorationPosition: DecorationPosition.background,
              padding: EdgeInsets.all(99),
              height: 100,
              width: 150,
              flagChild: childWidget,
            ),
        isFalse,
      );

      expect(
        data1 ==
            const DecoratedFlagData(
              aspectRatio: 1.5,
              decoration: BoxDecoration(color: Color(0xFF000000)),
              decorationPosition: DecorationPosition.background,
              padding: EdgeInsets.all(8),
              height: 999,
              width: 150,
              flagChild: childWidget,
            ),
        isFalse,
      );

      expect(
        data1 ==
            const DecoratedFlagData(
              aspectRatio: 1.5,
              decoration: BoxDecoration(color: Color(0xFF000000)),
              decorationPosition: DecorationPosition.background,
              padding: EdgeInsets.all(8),
              height: 100,
              width: 999,
              flagChild: childWidget,
            ),
        isFalse,
      );

      expect(
        data1 ==
            const DecoratedFlagData(
              aspectRatio: 1.5,
              decoration: BoxDecoration(color: Color(0xFF000000)),
              decorationPosition: DecorationPosition.background,
              padding: EdgeInsets.all(8),
              height: 100,
              width: 150,
              flagChild: Text("other"),
            ),
        isFalse,
      );
    });
  });
}
