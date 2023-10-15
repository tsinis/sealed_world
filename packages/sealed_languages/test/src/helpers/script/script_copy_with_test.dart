import "package:sealed_languages/src/helpers/script/script_copy_with.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("ScriptCopyWith", () {
      final element = Script.list.first;

      test("copyWith should return a new instance with updated name", () {
        final copy = element.copyWith(name: 0.toString());

        expect(copy.name, 0.toString());
        expect(copy.code, element.code);
        expect(copy.codeNumeric, element.codeNumeric);
        expect(copy.date, element.date);
        expect(copy.pva, element.pva);
      });

      test("copyWith should return a same instance without updated name", () {
        final copy = element.copyWith();

        expect(copy.name, element.name);
        expect(copy.code, element.code);
        expect(copy.codeNumeric, element.codeNumeric);
        expect(copy.date, element.date);
        expect(copy.pva, element.pva);
      });
    });
