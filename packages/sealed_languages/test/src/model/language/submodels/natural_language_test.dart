import "package:sealed_languages/src/helpers/extensions/sealed_world_json_string_extension.dart";
import "package:sealed_languages/src/helpers/natural_language/natural_language_json.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/interfaces/json_encodable.dart";
import "package:sealed_languages/src/interfaces/translated.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("$NaturalLanguage", () {
      final value = NaturalLanguage.list.last;
      final array = {value, NaturalLanguage.list.first};

      test("interfaces", () {
        expect(value, isA<IsoStandardized>());
        expect(value, isA<JsonEncodable>());
        expect(value, isA<Translated>());
      });

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
            expect(element.codeOther, element.codeShort);
            expect(element.isRightToLeft, isA<bool>());
            expect(element.namesNative, isA<List<String>>());
            expect(element.namesNative, isNotEmpty);
            expect(element.code, isA<String>());
            expect(element.code, isNotEmpty);
            expect(element.scripts, isNotEmpty);
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

        test(
          "with empty languages",
          () => expect(
            () => NaturalLanguage.fromName(value.name, const []),
            throwsA(isA<AssertionError>()),
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

        test(
          "with empty languages",
          () => expect(
            () => NaturalLanguage.fromCode(value.code, const []),
            throwsA(isA<AssertionError>()),
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

        test(
          "with empty languages",
          () => expect(
            () => NaturalLanguage.fromCodeShort(value.codeShort, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("toJson", () {
        for (final element in NaturalLanguage.list) {
          test("compared to $NaturalLanguage: ${element.name}", () {
            final json = element.toJson();
            expect(json, isNotEmpty);
            final decoded = json.tryParse(NaturalLanguageJson.fromMap);
            expect(
              decoded?.toString(short: false),
              json.parse(NaturalLanguageJson.fromMap).toString(short: false),
            );
            expect(element.bibliographicCode, decoded?.bibliographicCode);
            expect(element.family, decoded?.family);
            expect(element.codeShort, decoded?.codeShort);
            expect(element.isRightToLeft, decoded?.isRightToLeft);
            expect(element.namesNative, decoded?.namesNative);
            expect(element.code, decoded?.code);
            expect(element.scripts, decoded?.scripts);
          });
        }
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

      group("translations", () {
        const min = 57;
        test("every language should have at least $min translations", () {
          for (final translated in NaturalLanguage.list) {
            expect(translated.translations.length, greaterThanOrEqualTo(min));
            expect(
              translated.translations.every((l10n) => l10n.name.isNotEmpty),
              isTrue,
            );
          }
        });
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
          "empty name",
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
          "name",
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

        test(
          "empty scripts",
          () => expect(
            () => NaturalLanguage(
              name: value.name,
              codeShort: value.codeShort,
              namesNative: value.namesNative,
              code: value.code,
              scripts: const {},
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
