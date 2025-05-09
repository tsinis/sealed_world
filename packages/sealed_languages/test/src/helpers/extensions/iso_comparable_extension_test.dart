// ignore_for_file: avoid-passing-self-as-argument, avoid-self-compare

import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/iso_comparable_extension.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("IsoComparableExtension", () {
      // ignore: avoid-explicit-type-declaration, it's tests.
      const Script? nullScript = null;
      const adlm = ScriptAdlm();
      const arab = ScriptArab();
      const latn = ScriptLatn();
      final nonConst =
          ScriptAdlm(); //ignore: prefer_const_constructors, it's test.

      group("isSameAs", () {
        test("returns true when codes are equal", () {
          expect(adlm.isSameAs(adlm), isTrue);
          expect(adlm.isSameAs(nonConst), isTrue);
          expect(nonConst.isSameAs(adlm), isTrue);
        });

        test("returns false when codes are different", () {
          expect(adlm.isSameAs(arab), isFalse);
          expect(arab.isSameAs(latn), isFalse);
        });

        test(
          "returns false with null comparison",
          () => expect(adlm.isSameAs(nullScript), isFalse),
        );
      });

      group("less than operator (<)", () {
        test("returns true when first code alphabetically precedes second", () {
          expect(adlm < arab, isTrue);
          expect(arab < latn, isTrue);
        });

        test("returns false when codes are equal", () {
          expect(adlm < adlm, isFalse);
          expect(adlm < nonConst, isFalse);
        });

        test("returns false when first code alphabetically follows second", () {
          expect(arab < adlm, isFalse);
          expect(latn < arab, isFalse);
        });

        test(
          "returns false with null comparison",
          () => expect(adlm < nullScript, isFalse),
        );
      });

      group("less than or equal operator (<=)", () {
        test("returns true when first code alphabetically precedes second", () {
          expect(adlm <= arab, isTrue);
          expect(arab <= latn, isTrue);
        });

        test("returns true when codes are equal", () {
          expect(adlm <= adlm, isTrue);
          expect(adlm <= nonConst, isTrue);
        });

        test("returns false when first code alphabetically follows second", () {
          expect(arab <= adlm, isFalse);
          expect(latn <= arab, isFalse);
        });

        test(
          "returns false with null comparison",
          () => expect(adlm <= nullScript, isFalse),
        );
      });

      group("greater than operator (>)", () {
        test("returns true when first code alphabetically follows second", () {
          expect(arab > adlm, isTrue);
          expect(latn > arab, isTrue);
        });

        test("returns false when codes are equal", () {
          expect(adlm > adlm, isFalse);
          expect(adlm > nonConst, isFalse);
        });

        test(
          "returns false when first code alphabetically precedes second",
          () {
            expect(adlm > arab, isFalse);
            expect(arab > latn, isFalse);
          },
        );

        test(
          "returns false with null comparison",
          () => expect(adlm > nullScript, isFalse),
        );
      });

      group("greater than or equal operator (>=)", () {
        test("returns true when first code alphabetically follows second", () {
          expect(arab >= adlm, isTrue);
          expect(latn >= arab, isTrue);
        });

        test("returns true when codes are equal", () {
          expect(adlm >= adlm, isTrue);
          expect(adlm >= nonConst, isTrue);
        });

        test(
          "returns false when first code alphabetically precedes second",
          () {
            expect(adlm >= arab, isFalse);
            expect(arab >= latn, isFalse);
          },
        );

        test(
          "returns false with null comparison",
          () => expect(adlm >= nullScript, isFalse),
        );
      });

      test("comparison operators maintain transitivity", () {
        expect(adlm < arab, isTrue);
        expect(arab < latn, isTrue);
        expect(adlm < latn, isTrue);

        expect(latn > arab, isTrue);
        expect(arab > adlm, isTrue);
        expect(latn > adlm, isTrue);
      });

      test("default sort", () {
        final list = List.of(Script.list)..sort();
        expect(list, Script.list);
      });
    });
