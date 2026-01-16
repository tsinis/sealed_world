import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("BasicFlagExtensionCopyWith", () {
  test("copyWith", () {
    const original = BasicFlag(
      FlagProperties([ColorsProperties(Color(0xFFFFFFFF))]),
    );
    expect(original.key, isNull);
    const copyKey = Key("copy");

    final copy = original.copyWith(key: copyKey);
    expect(copy.key, isNot(original.key));
    expect(copy.key, copyKey);
    expect(copy, isA<BasicFlag>());
    expect(copy, isNot(original));

    expect(copy.copyWith().key, copyKey);
  });

  group("copyWithTheme", () {
    const smallTheme = FlagThemeData.small();

    test("applies FlagThemeData.small properties", () {
      const original = BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFFFFFFFF))]),
      );
      expect(original.height, isNull);
      expect(original.decoration, isNull);

      final copy = original.copyWithTheme(theme: smallTheme);

      expect(copy, isA<BasicFlag>());
      expect(copy, isNot(original));
      expect(copy.height, equals(18));
      expect(
        copy.decoration,
        equals(
          const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
      );
    });

    test("preserves original values when theme is null", () {
      const original = BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFFFFFFFF))]),
        height: 50,
        aspectRatio: 2,
      );

      final copy = original.copyWithTheme();

      expect(copy.height, equals(50));
      expect(copy.aspectRatio, equals(2));
    });

    test("allows overriding key separately from theme", () {
      const original = BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFFFFFFFF))]),
      );
      const copyKey = Key("themed-copy");

      final copy = original.copyWithTheme(theme: smallTheme, key: copyKey);

      expect(copy.key, equals(copyKey));
      expect(copy.height, equals(18));
    });
  });
});
