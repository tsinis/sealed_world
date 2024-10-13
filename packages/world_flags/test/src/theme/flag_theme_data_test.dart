import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
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
        () => expect(
          value.toString(),
          startsWith("$FlagThemeData(aspectRatio: 1.5"),
        ),
      );

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

        test(
          """returns a new instance with original values when no arguments are provided""",
          () {
            final updated = value.copyWith();

            expect(updated.aspectRatio, value.aspectRatio);
            expect(updated.decoration, value.decoration);
            expect(updated.decorationPosition, value.decorationPosition);
            expect(updated.padding, value.padding);
            expect(updated.height, value.height);
            expect(updated.width, value.width);
            expect(value, updated);
            expect(value.hashCode, updated.hashCode);
          },
        );

        test(
          "returns a new instance with mixed updated and original values",
          () {
            final updated = value.copyWith(aspectRatio: 2, height: 150);

            expect(updated.aspectRatio, 2.0);
            expect(updated.decoration, value.decoration);
            expect(updated.decorationPosition, value.decorationPosition);
            expect(updated.padding, value.padding);
            expect(updated.height, 150);
            expect(updated.width, value.width);
            expect(value, isNot(updated));
            expect(value.hashCode, isNot(updated.hashCode));
          },
        );
      });

      group("asserts", () {
        const negative = -1.0;

        assertTest("negative width", () => FlagThemeData(width: negative));
        assertTest("negative height", () => FlagThemeData(height: negative));

        assertTest(
          "negative aspectRatio",
          () => FlagThemeData(aspectRatio: negative),
        );
      });
    });
