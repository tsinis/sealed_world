import "package:languages_dart/src/model/language_family/language_family.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
void main() => group("$NaturalLanguageFamily", () {
      final value = NaturalLanguageFamily.list.last;
      final array = {value, NaturalLanguageFamily.list.first};

      group("fields", () {
        for (final element in NaturalLanguageFamily.list) {
          test(
            "of $NaturalLanguageFamily: ${element.name}",
            () => expect(element.name.isNotEmpty, isTrue),
          );
        }
      });

      group("equality", () {
        test("basic", () {
          expect(NaturalLanguageFamily.list.last == value, isTrue);
          expect(
            NaturalLanguageFamily.fromName(
                  NaturalLanguageFamily.list.last.name,
                ) ==
                value,
            isTrue,
          );
          expect(
            NaturalLanguageFamily.fromName(
                  NaturalLanguageFamily.list.last.name,
                ) ==
                NaturalLanguageFamily.list.last,
            isTrue,
          );
        });

        test("with $Set", () {
          expect(array.length == 2, isTrue);
          array.addAll(array);
          expect(array.length == 2, isTrue);
          array.add(value);
          expect(array.length == 2, isTrue);
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
          () => expect(
            NaturalLanguageFamily.maybeFromValue(value),
            isNull,
          ),
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

        test(
          "with empty families",
          () => expect(
            () => NaturalLanguageFamily.maybeFromValue(
              value.name,
              families: const [],
            ),
            throwsA(isA<AssertionError>()),
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
    });
