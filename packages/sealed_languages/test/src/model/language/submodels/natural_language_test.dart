import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

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
            expect(element.codeShort, isA<String>());
            expect(element.codeShort, isNotEmpty);
            expect(element.isRightToLeft, isA<bool>());
            expect(element.namesNative, isA<List<String>>());
            expect(element.namesNative, isNotEmpty);
            expect(element.code, isA<String>());
            expect(element.code, isNotEmpty);
          });
        }
      });

      group("equality", () {
        test("basic", () {
          expect(NaturalLanguage.list.first, isNot(equals(value)));
          expect(NaturalLanguage.list.last, same(value));
          expect(
            NaturalLanguage.fromName(NaturalLanguage.list.last.name),
            same(value),
          );
          expect(
            NaturalLanguage.fromName(
              NaturalLanguage.list.last.name,
            ),
            same(NaturalLanguage.list.last),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(NaturalLanguage.fromName(array.last.name));
          expect(array.length, 2);
        });
      });

      test("toString", () {
        expect(value.toString(short: false), contains(value.codeShort));
        expect(value.toString().contains(value.codeShort), isFalse);
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
            () => NaturalLanguage.fromCodeShort(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("fromCodeShort", () {
        test(
          "with proper code",
          () => expect(NaturalLanguage.fromCodeShort(value.codeShort), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => NaturalLanguage.fromCodeShort(value.toString()),
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

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => NaturalLanguage(
              name: value.name,
              codeShort: value.codeShort,
              namesNative: value.namesNative,
              code: value.code,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty format",
          () => expect(
            () => NaturalLanguage(
              name: "",
              codeShort: value.codeShort,
              namesNative: value.namesNative,
              code: value.code,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "codeShort length",
          () => expect(
            () => NaturalLanguage(
              name: value.name,
              codeShort: value.code,
              namesNative: value.namesNative,
              code: value.code,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "code length",
          () => expect(
            () => NaturalLanguage(
              name: value.name,
              codeShort: value.codeShort,
              namesNative: value.namesNative,
              code: value.codeShort,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty namesNative",
          () => expect(
            () => NaturalLanguage(
              name: value.name,
              codeShort: value.codeShort,
              namesNative: const [],
              code: value.code,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "bibliographicCode length",
          () => expect(
            () => NaturalLanguage(
              name: value.name,
              codeShort: value.codeShort,
              namesNative: value.namesNative,
              code: value.code,
              bibliographicCode: value.codeShort,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
