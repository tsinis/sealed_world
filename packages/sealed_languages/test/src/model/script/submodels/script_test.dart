import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/src/helpers/extensions/sealed_world_json_string_extension.dart";
import "package:sealed_languages/src/helpers/script/script_json.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/interfaces/json_encodable.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

class _ScriptTest extends Script {
  const _ScriptTest()
      : super.permissive(name: "name", code: "", codeNumeric: "", date: "");
}

void main() => group("$Script", () {
      final value = Script.list.last;
      final array = {value, Script.list.first};

      test("interfaces", () {
        expect(value, isA<IsoStandardized>());
        expect(value, isA<JsonEncodable>());
      });

      assertTest(
        "permissive constructor",
        () => const _ScriptTest().code,
        shouldThrow: false,
        alsoExpect: () => expect(const _ScriptTest().code, isEmpty),
      );

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

      group("maps O(1) access time check", () {
        for (final element in Script.list) {
          performanceTest("of $Script: ${element.name}", () {
            expect(Script.map[element.code], element);
            expect(Script.codeMap[element.code], element);
            expect(Script.codeNumericMap[element.codeNumeric], element);
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
        performanceTest(
          "with proper name",
          () => expect(Script.fromName(value.name), value),
        );

        performanceTest(
          "with proper name uppercase",
          () => expect(Script.fromName(value.name.toUpperCase()), value),
        );

        performanceTest(
          "with proper name lowercase",
          () => expect(Script.fromName(value.name.toLowerCase()), value),
        );

        performanceTest(
          "with wrong name",
          () => expect(
            () => Script.fromName(value.toString()),
            throwsStateError,
          ),
        );

        assertTest(
          "with empty scripts",
          () => Script.fromName(value.name, const []),
        );
      });

      group("fromCode", () {
        performanceTest(
          "with proper code",
          () => expect(Script.fromCode(value.code), value),
        );

        performanceTest(
          "with proper code uppercase",
          () => expect(Script.fromCode(value.code.toUpperCase()), value),
        );

        performanceTest(
          "with proper code lowercase",
          () => expect(Script.fromCode(value.code.toLowerCase()), value),
        );

        performanceTest(
          "with wrong length code",
          () =>
              expect(() => Script.fromCode(value.toString()), throwsStateError),
        );

        performanceTest(
          "with wrong value code",
          () => expect(() => Script.fromCode("code"), throwsStateError),
        );

        assertTest(
          "with empty scripts",
          () => Script.fromCode(value.code, const []),
        );
      });

      group("fromCodeNumeric", () {
        performanceTest(
          "with proper code",
          () => expect(Script.fromCodeNumeric(value.codeNumeric), value),
        );

        performanceTest(
          "with proper code uppercase",
          () => expect(
            Script.fromCodeNumeric(value.codeNumeric.toUpperCase()),
            value,
          ),
        );

        performanceTest(
          "with proper code lowercase",
          () => expect(
            Script.fromCodeNumeric(value.codeNumeric.toLowerCase()),
            value,
          ),
        );

        performanceTest(
          "with wrong code",
          () => expect(
            () => Script.fromCodeNumeric(value.toString()),
            throwsStateError,
          ),
        );

        assertTest(
          "with empty scripts",
          () => Script.fromCodeNumeric(value.codeNumeric, const []),
        );
      });

      group("fromAnyCode", () {
        performanceTest(
          "with proper non-numeric code",
          () => expect(Script.fromAnyCode(value.code), value),
        );

        performanceTest(
          "with proper non-numeric code uppercase",
          () => expect(Script.fromAnyCode(value.code.toUpperCase()), value),
        );

        performanceTest(
          "with proper non-numeric code lowercase",
          () => expect(Script.fromAnyCode(value.code.toLowerCase()), value),
        );

        performanceTest(
          "with proper numeric code",
          () => expect(Script.fromAnyCode(value.codeNumeric), value),
        );

        performanceTest(
          "with wrong code",
          () => expect(
            () => Script.fromAnyCode(value.toString()),
            throwsStateError,
          ),
        );

        assertTest(
          "with empty scripts",
          () => Script.fromAnyCode(value.code, const []),
        );
      });

      group("toJson", () {
        for (final element in Script.list) {
          performanceTest("compared to $Script: ${element.name}", () {
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
        performanceTest(
          "with proper value, without where",
          () => expect(Script.maybeFromValue(value.code), value),
        );

        performanceTest(
          "with proper value, with where",
          () => expect(
            Script.maybeFromValue(value.name, where: (script) => script.name),
            value,
          ),
        );

        performanceTest(
          "with wrong value, without where",
          () => expect(Script.maybeFromValue(value), isNull),
        );

        performanceTest(
          "with wrong value, with where",
          () => expect(
            Script.maybeFromValue(value, where: (script) => script.name),
            isNull,
          ),
        );

        assertTest(
          "with empty scripts",
          () => Script.maybeFromValue(value.name, scripts: const []),
        );

        performanceTest(
          "with custom scripts",
          () => expect(
            Script.maybeFromValue(value.code, scripts: array),
            value,
          ),
        );
      });

      group("maybeFromAnyCode", () {
        randomElementTest(
          "with random element from list",
          Script.list,
          (random) => expect(Script.maybeFromAnyCode(random.code), random),
        );

        performanceTest(
          "with proper non-numeric code",
          () => expect(Script.maybeFromAnyCode(value.code), value),
        );

        performanceTest(
          "with proper non-numeric code uppercase",
          () =>
              expect(Script.maybeFromAnyCode(value.code.toUpperCase()), value),
        );

        performanceTest(
          "with proper non-numeric code lowercase",
          () =>
              expect(Script.maybeFromAnyCode(value.code.toLowerCase()), value),
        );

        performanceTest(
          "with proper numeric code",
          () => expect(Script.maybeFromAnyCode(value.codeNumeric), value),
        );

        performanceTest(
          "with wrong code",
          () => expect(
            Script.maybeFromAnyCode(value.toString()),
            isNull,
          ),
        );

        performanceTest(
          "with null code",
          () => expect(Script.maybeFromAnyCode(null), isNull),
        );

        assertTest(
          "with empty scripts",
          () => Script.maybeFromAnyCode(value.code, const []),
        );
      });

      group("asserts", () {
        assertTest(
          "not",
          () => Script(
            name: value.name,
            code: value.code,
            codeNumeric: value.codeNumeric,
            date: value.date,
            pva: value.pva,
          ),
          shouldThrow: false,
        );

        assertTest(
          "empty name",
          () => Script(
            name: "",
            code: value.code,
            codeNumeric: value.codeNumeric,
            date: value.date,
            pva: value.pva,
          ),
        );

        assertTest(
          "codeNumeric length",
          () => Script(
            name: value.name,
            code: value.code,
            codeNumeric: value.code,
            date: value.date,
            pva: value.pva,
          ),
        );

        assertTest(
          "code length",
          () => Script(
            name: value.name,
            code: value.codeNumeric,
            codeNumeric: value.code,
            date: value.date,
            pva: value.pva,
          ),
        );

        assertTest(
          "pva length",
          () => Script(
            name: value.name,
            code: value.code,
            codeNumeric: value.code,
            date: value.date,
            pva: "",
          ),
        );
      });

      group("maybeFromCode", () {
        randomElementTest(
          "with random element from list",
          Script.list,
          (random) => expect(Script.maybeFromCode(random.code), random),
        );

        performanceTest(
          "with proper non-numeric code",
          () => expect(Script.maybeFromCode(value.code), value),
        );

        performanceTest(
          "with proper non-numeric code uppercase",
          () => expect(Script.maybeFromCode(value.code.toUpperCase()), value),
        );

        performanceTest(
          "with proper non-numeric code lowercase",
          () => expect(Script.maybeFromCode(value.code.toLowerCase()), value),
        );

        performanceTest(
          "with proper numeric code",
          () => expect(Script.maybeFromCode(value.codeNumeric), isNull),
        );

        performanceTest(
          "with wrong code",
          () => expect(Script.maybeFromCode(value.toString()), isNull),
        );

        performanceTest(
          "with null code",
          () => expect(Script.maybeFromCode(null), isNull),
        );

        assertTest(
          "with empty scripts",
          () => Script.maybeFromCode(value.code, const []),
        );
      });

      group("maybeFromCodeNumeric", () {
        randomElementTest(
          "with random element from list",
          Script.list,
          (random) =>
              expect(Script.maybeFromCodeNumeric(random.codeNumeric), random),
        );

        performanceTest(
          "with proper non-numeric code",
          () => expect(Script.maybeFromCodeNumeric(value.code), isNull),
        );

        performanceTest(
          "with proper numeric code",
          () => expect(Script.maybeFromCodeNumeric(value.codeNumeric), value),
        );

        performanceTest(
          "with wrong code",
          () => expect(Script.maybeFromCodeNumeric(value.toString()), isNull),
        );

        performanceTest(
          "with null code",
          () => expect(Script.maybeFromCodeNumeric(null), isNull),
        );

        assertTest(
          "with empty scripts",
          () => Script.maybeFromCodeNumeric(value.codeNumeric, const []),
        );
      });

      group("formatToStandardCode", () {
        randomElementTest(
          "with random element from list and uppercase code",
          Script.list,
          (random) => expect(
            Script.formatToStandardCode(random.code.toUpperCase()),
            random.code,
          ),
        );

        randomElementTest(
          "with random element from list and lowercase code",
          Script.list,
          (random) => expect(
            Script.formatToStandardCode(random.code.toLowerCase()),
            random.code,
          ),
        );
      });
    });
