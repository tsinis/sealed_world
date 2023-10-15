import "package:sealed_languages/src/helpers/script/script_getters.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("ScriptGetters", () {
      final value = Script.list.first;
      test("iso15924Letter", () => expect(value.iso15924Letter, value.code));

      test(
        "iso15924Numeric",
        () => expect(value.iso15924Numeric, value.codeNumeric),
      );

      test("dateTime", () {
        for (final value in Script.list) {
          expect(value.dateTime, isA<DateTime>());

          final past =
              DateTime(2004, 5).subtract(const Duration(microseconds: 1));

          expect(value.dateTime.isAfter(past), isTrue);
          expect(value.dateTime.isBefore(DateTime.now()), isTrue);
        }
      });
    });
