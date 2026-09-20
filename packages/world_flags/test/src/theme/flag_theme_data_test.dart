// This file is part of stage 1 deprecation.
// ignore_for_file: deprecated_member_use_from_same_package
import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show Colors;
import "package:world_flags/src/theme/flag_theme_data.dart";

void main() => group("$FlagThemeData", () {
  const value = FlagThemeData(
    aspectRatio: 1.5,
    decoration: BoxDecoration(color: Colors.red),
    decorationPosition: DecorationPosition.background,
    padding: EdgeInsets.all(10),
    height: 100,
    width: 200,
  );

  test(
    "toString",
    () =>
        expect(value.toString(), startsWith("$FlagThemeData(aspectRatio: 1.5")),
  );

  test("fallback constructor creates all-null instance", () {
    // ignore: prefer_const_constructors, intentional non-const to hit runtime constructor.
    final fallback = FlagThemeData.fallback();
    expect(fallback.aspectRatio, isNull);
    expect(fallback.decoration, isNull);
    expect(fallback.decorationPosition, isNull);
    expect(fallback.padding, isNull);
    expect(fallback.height, isNull);
    expect(fallback.width, isNull);
    expect(fallback.flagChild, isNull);
  });

  group("copyWith", () {
    test("returns a new instance with updated values", () {
      final updated = value.copyWith(
        aspectRatio: 2,
        decoration: const BoxDecoration(color: Colors.blue),
        decorationPosition: DecorationPosition.foreground,
        padding: const EdgeInsets.all(20),
        height: 150,
        width: 250,
      );

      expect(updated.aspectRatio, 2.0);
      expect(updated.decoration, const BoxDecoration(color: Colors.blue));
      expect(updated.decorationPosition, DecorationPosition.foreground);
      expect(updated.padding, const EdgeInsets.all(20));
      expect(updated.height, 150);
      expect(updated.width, 250);
      expect(value, isNot(updated));
      expect(value.hashCode, isNot(updated.hashCode));
    });

    test("""returns a new instance with original values when no arguments are provided""", () {
      final updated = value.copyWith();

      expect(updated.aspectRatio, value.aspectRatio);
      expect(updated.decoration, value.decoration);
      expect(updated.decorationPosition, value.decorationPosition);
      expect(updated.padding, value.padding);
      expect(updated.height, value.height);
      expect(updated.width, value.width);
      expect(value, updated);
      expect(value.hashCode, updated.hashCode);
    });

    test("returns a new instance with mixed updated and original values", () {
      final updated = value.copyWith(aspectRatio: 2, height: 150);

      expect(updated.aspectRatio, 2.0);
      expect(updated.decoration, value.decoration);
      expect(updated.decorationPosition, value.decorationPosition);
      expect(updated.padding, value.padding);
      expect(updated.height, 150);
      expect(updated.width, value.width);
      expect(value, isNot(updated));
      expect(value.hashCode, isNot(updated.hashCode));
    });

    test("returns a new instance with updated child", () {
      const child = SizedBox(height: 10);
      final updated = value.copyWith(child: child);

      expect(updated.child, child);
      expect(updated.aspectRatio, value.aspectRatio);
      expect(updated.height, value.height);
    });
  });

  group("asserts", () {
    const negative = -1.0;

    assertTest("negative width", () => FlagThemeData(width: negative));
    assertTest("negative height", () => FlagThemeData(height: negative));

    assertTest(
      "negative aspectRatio",
      () => FlagThemeData(aspectRatio: negative),
    );

    assertTest(
      "small negative width",
      () => FlagThemeData.small(width: negative),
    );
    assertTest(
      "small negative height",
      () => FlagThemeData.small(height: negative),
    );

    assertTest(
      "small negative aspectRatio",
      () => FlagThemeData.small(aspectRatio: negative),
    );

    group("copyWith sentinel resets to null with negative values", () {
      test("resets height, width, aspectRatio to null with negative", () {
        final copy = value.copyWith(
          height: negative,
          width: negative,
          aspectRatio: negative,
        );
        expect(copy.height, isNull);
        expect(copy.width, isNull);
        expect(copy.specifiedAspectRatio, isNull);
      });
    });
  });

  group("fallback", () {
    test("creates an empty instance with all null properties", () {
      const fallback = FlagThemeData.fallback();
      expect(fallback.aspectRatio, isNull);
      expect(fallback.specifiedAspectRatio, isNull);
      expect(fallback.decoration, isNull);
      expect(fallback.decorationPosition, isNull);
      expect(fallback.padding, isNull);
      expect(fallback.height, isNull);
      expect(fallback.width, isNull);
      expect(fallback.child, isNull);
    });
  });

  group("equality", () {
    test("symmetric equality with specifiedAspectRatio", () {
      const a = FlagThemeData(aspectRatio: 1.5);
      const b = FlagThemeData(aspectRatio: 1.5);
      expect(a == b, isTrue);
      expect(b == a, isTrue);
      expect(a.hashCode, b.hashCode);

      const different = FlagThemeData(aspectRatio: 2);
      expect(a == different, isFalse);
    });
  });

  group("lerpStatic & lerp", () {
    const start = FlagThemeData(
      aspectRatio: 1,
      decoration: BoxDecoration(color: Colors.red),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(10),
      height: 100,
      width: 100,
      child: Text("start"),
    );

    const end = FlagThemeData(
      aspectRatio: 2,
      decoration: BoxDecoration(color: Colors.blue),
      decorationPosition: DecorationPosition.foreground,
      padding: EdgeInsets.all(20),
      height: 200,
      width: 200,
      child: Text("end"),
    );

    test("returns null if both are null", () {
      expect(FlagThemeData.lerpStatic(null, null, 0.5), isNull);
    });

    test("returns identical when identical", () {
      expect(FlagThemeData.lerpStatic(start, start, 0.5), same(start));
    });

    test("returns start values at t = 0.0", () {
      final result = FlagThemeData.lerpStatic(start, end, 0);
      expect(result?.aspectRatio, 1.0);
      expect(result?.height, 100.0);
      expect(result?.width, 100.0);
      expect(result?.decorationPosition, DecorationPosition.background);
      expect(result?.padding, const EdgeInsets.all(10));
    });

    test("returns end values at t = 1.0", () {
      final result = FlagThemeData.lerpStatic(start, end, 1);
      expect(result?.aspectRatio, 2.0);
      expect(result?.height, 200.0);
      expect(result?.width, 200.0);
      expect(result?.decorationPosition, DecorationPosition.foreground);
      expect(result?.padding, const EdgeInsets.all(20));
    });

    test("interpolates properties at t = 0.5", () {
      final result = FlagThemeData.lerpStatic(start, end, 0.5);
      expect(result?.aspectRatio, 1.5);
      expect(result?.height, 150.0);
      expect(result?.width, 150.0);
      expect(result?.decorationPosition, DecorationPosition.foreground);
      expect(result?.padding, const EdgeInsets.all(15));
    });

    test("instance lerp delegates to lerpStatic", () {
      final result = start.lerp(end, 0.5);
      expect(result.aspectRatio, 1.5);
      expect(result.height, 150.0);
      expect(result.width, 150.0);
    });

    test("instance lerp returns this if other is not FlagThemeData", () {
      expect(start.lerp(null, 0.5), same(start));
    });
  });
});
