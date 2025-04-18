import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/src/model/language_family/language_family.dart";
import "package:test/test.dart";

void main() => group("$NaturalLanguageFamily", () {
      final value = NaturalLanguageFamily.list.last;
      final array = {value, NaturalLanguageFamily.list.first};

      group("fields", () {
        for (final element in NaturalLanguageFamily.list) {
          test(
            "of $NaturalLanguageFamily: ${element.name}",
            () => expect(element.name, isNotEmpty),
          );
        }
      });

      group("equality", () {
        test("basic", () {
          expect(NaturalLanguageFamily.list.first, isNot(equals(value)));
          expect(NaturalLanguageFamily.list.last, same(value));
          expect(
            NaturalLanguageFamily.fromName(
              NaturalLanguageFamily.list.last.name,
            ),
            same(value),
          );
          expect(
            NaturalLanguageFamily.fromName(
              NaturalLanguageFamily.list.last.name,
            ),
            same(NaturalLanguageFamily.list.last),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          // ignore: avoid-duplicate-test-assertions, this is mutable array.
          expect(array.length, 2);
          array.add(NaturalLanguageFamily.fromName(array.first.name));
          // ignore: avoid-duplicate-test-assertions, this is mutable array.
          expect(array.length, 2);
        });
      });

      group("fromName", () {
        test(
          "with proper name",
          () => expect(NaturalLanguageFamily.fromName(value.name), value),
        );

        test(
          "with wrong name",
          () => expect(
            () => NaturalLanguageFamily.fromName(value.toString()),
            throwsStateError,
          ),
        );

        assertTest(
          "with empty families",
          () => NaturalLanguageFamily.fromName(value.name, const []),
        );
      });

      group("maybeFromValue", () {
        test(
          "with proper value, without where",
          () => expect(
            NaturalLanguageFamily.maybeFromValue(value.name),
            value,
          ),
        );

        test(
          "with proper value, with where",
          () => expect(
            NaturalLanguageFamily.maybeFromValue(
              value.name,
              where: (fam) => fam.name,
            ),
            value,
          ),
        );

        test(
          "with wrong value, without where",
          () => expect(NaturalLanguageFamily.maybeFromValue(value), isNull),
        );

        test(
          "with wrong value, with where",
          () => expect(
            NaturalLanguageFamily.maybeFromValue(
              value,
              where: (fam) => fam.name,
            ),
            isNull,
          ),
        );

        assertTest(
          "with empty families",
          () => NaturalLanguageFamily.maybeFromValue(
            value.name,
            families: const [],
          ),
        );

        test(
          "with custom families",
          () => expect(
            NaturalLanguageFamily.maybeFromValue(value.name, families: array),
            value,
          ),
        );
      });

      group("asserts", () {
        assertTest(
          "not",
          () => NaturalLanguageFamily(name: value.name),
          shouldThrow: false,
        );

        assertTest("empty name", () => NaturalLanguageFamily(name: ""));
      });
    });
