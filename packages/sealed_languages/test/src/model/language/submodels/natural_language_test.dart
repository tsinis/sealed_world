import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
void main() => group("$NaturalLanguage", () {
      final value = NaturalLanguage.list.last;
      final array = {value, NaturalLanguage.list.first};

      group("fields", () {
        for (final element in NaturalLanguage.list) {
          test("of $NaturalLanguage: ${element.name}", () {
            if (element.bibliographicCode != null) {
              expect(element.bibliographicCode, isA<String>());
              expect(element.bibliographicCode, isNotEmpty);
            } else {
              expect(element.bibliographicCode, isNull);
            }
            expect(element.family.name, isNotEmpty);
            expect(element.code, isA<String>());
            expect(element.code, isNotEmpty);
            expect(element.isRightToLeft, isA<bool>());
            expect(element.namesNative, isA<List<String>>());
            expect(element.namesNative, isNotEmpty);
            expect(element.terminologicalCode, isA<String>());
            expect(element.terminologicalCode, isNotEmpty);
          });
        }
      });

      group("equality", () {
        test("basic", () {
          expect(NaturalLanguage.list.last == value, isTrue);
          expect(
            NaturalLanguage.fromName(
                  NaturalLanguage.list.last.name,
                ) ==
                value,
            isTrue,
          );
          expect(
            NaturalLanguage.fromName(
                  NaturalLanguage.list.last.name,
                ) ==
                NaturalLanguage.list.last,
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

      test("toString", () {
        expect(value.toString(short: false), contains(value.code));
        expect(value.toString().contains(value.code), isFalse);
      });

      group("fromName", () {
        test(
          "with proper name",
          () => expect(NaturalLanguage.fromName(value.name), value),
        );

        test(
          "with wrong name",
          () => expect(
            () => NaturalLanguage.fromName(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("fromCode", () {
        test(
          "with proper code",
          () => expect(NaturalLanguage.fromCode(value.code), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => NaturalLanguage.fromCode(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("maybeFromValue", () {
        test(
          "with proper value, without where",
          () => expect(
            NaturalLanguage.maybeFromValue(value.code),
            value,
          ),
        );

        test(
          "with proper value, with where",
          () => expect(
            NaturalLanguage.maybeFromValue(
              value.name,
              where: (lang) => lang.name,
            ),
            value,
          ),
        );

        test(
          "with wrong value, without where",
          () => expect(
            NaturalLanguage.maybeFromValue(value),
            isNull,
          ),
        );

        test(
          "with wrong value, with where",
          () => expect(
            NaturalLanguage.maybeFromValue(
              value,
              where: (lang) => lang.name,
            ),
            isNull,
          ),
        );

        test(
          "with empty languages",
          () => expect(
            () => NaturalLanguage.maybeFromValue(
              value.name,
              languages: const [],
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "with custom languages",
          () => expect(
            NaturalLanguage.maybeFromValue(value.code, languages: array),
            value,
          ),
        );
      });
    });
