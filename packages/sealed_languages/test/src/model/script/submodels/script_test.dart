import "package:sealed_languages/src/helpers/extensions/sealed_world_json_string_extension.dart";
import "package:sealed_languages/src/helpers/script/script_json.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/interfaces/json_encodable.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("$Script", () {
      final value = Script.list.last;
      final array = {value, Script.list.first};

      test("interfaces", () {
        expect(value, isA<IsoStandardized>());
        expect(value, isA<JsonEncodable>());
      });

      group("fields", () {
        for (final element in Script.list) {
          test("of $Script: ${element.name}", () {
            expect(element.codeOther, element.codeNumeric);
            expect(element.codeNumeric, isA<String>());
            expect(element.codeNumeric, isNotEmpty);
            expect(element.namesNative, isNull);
            expect(element.code, isA<String>());
            expect(element.code, isNotEmpty);
            expect(element.name, isA<String>());
            expect(element.name, isNotEmpty);
            expect(element.date, isA<String>());
            expect(element.date, isNotEmpty);
            if (element.pva == null) return expect(element.pva, isNull);
            expect(element.pva, isA<String>());
            expect(element.pva, isNotEmpty);
          });
        }
      });

      group("equality", () {
        test("basic", () {
          expect(Script.list.first, isNot(equals(value)));
          expect(Script.list.last, same(value));
          expect(
            Script.fromName(Script.list.last.name),
            same(value),
          );
          expect(
            Script.fromName(Script.list.last.name),
            same(Script.list.last),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(Script.fromName(array.last.name));
          expect(array.length, 2);
        });
      });

      test("toString", () {
        expect(value.toString(short: false), contains(value.codeNumeric));
        expect(value.toString().contains(value.codeNumeric), isFalse);
      });

      group("fromName", () {
        test(
          "with proper name",
          () => expect(Script.fromName(value.name), value),
        );

        test(
          "with wrong name",
          () => expect(
            () => Script.fromName(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("fromCode", () {
        test(
          "with proper code",
          () => expect(Script.fromCode(value.code), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => Script.fromCodeNumeric(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("fromCodeNumeric", () {
        test(
          "with proper code",
          () => expect(
            Script.fromCodeNumeric(value.codeNumeric),
            value,
          ),
        );

        test(
          "with wrong code",
          () => expect(
            () => Script.fromCodeNumeric(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("toJson", () {
        for (final element in Script.list) {
          test("compared to $Script: ${element.name}", () {
            final json = element.toJson();
            expect(json, isNotEmpty);
            final decoded = json.tryParse(ScriptJson.fromMap);
            expect(
              decoded?.toString(short: false),
              json.parse(ScriptJson.fromMap).toString(short: false),
            );
            expect(element.codeOther, decoded?.codeNumeric);
            expect(element.code, decoded?.code);
            expect(element.name, decoded?.name);
            expect(element.date, decoded?.date);
            expect(element.pva, decoded?.pva);
          });
        }
      });

      group("maybeFromValue", () {
        test(
          "with proper value, without where",
          () => expect(
            Script.maybeFromValue(value.code),
            value,
          ),
        );

        test(
          "with proper value, with where",
          () => expect(
            Script.maybeFromValue(
              value.name,
              where: (lang) => lang.name,
            ),
            value,
          ),
        );

        test(
          "with wrong value, without where",
          () => expect(
            Script.maybeFromValue(value),
            isNull,
          ),
        );

        test(
          "with wrong value, with where",
          () => expect(
            Script.maybeFromValue(
              value,
              where: (lang) => lang.name,
            ),
            isNull,
          ),
        );

        test(
          "with empty scripts",
          () => expect(
            () => Script.maybeFromValue(
              value.name,
              scripts: const [],
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "with custom scripts",
          () => expect(
            Script.maybeFromValue(value.code, scripts: array),
            value,
          ),
        );
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => Script(
              name: value.name,
              code: value.code,
              codeNumeric: value.codeNumeric,
              date: value.date,
              pva: value.pva,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty name",
          () => expect(
            () => Script(
              name: "",
              code: value.code,
              codeNumeric: value.codeNumeric,
              date: value.date,
              pva: value.pva,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "codeNumeric length",
          () => expect(
            () => Script(
              name: value.name,
              code: value.code,
              codeNumeric: value.code,
              date: value.date,
              pva: value.pva,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "code length",
          () => expect(
            () => Script(
              name: value.name,
              code: value.codeNumeric,
              codeNumeric: value.code,
              date: value.date,
              pva: value.pva,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "pva length",
          () => expect(
            () => Script(
              name: value.name,
              code: value.code,
              codeNumeric: value.code,
              date: value.date,
              pva: "",
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
