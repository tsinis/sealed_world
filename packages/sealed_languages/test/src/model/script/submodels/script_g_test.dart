import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/script/script_copy_with.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() {
  const value = ScriptAdlm();
  final nonConst = ScriptAdlm(); //ignore: prefer_const_constructors, it's test.
  // ignore: prefer_final_locals, prefer_const_constructors, it's a test.
  var varValue = ScriptAdlm(); // ignore: prefer-type-over-var, it's a test.

  group("ScriptBoolGetters", () {
    test("boolean getter should work for compile-time const", () {
      expect(value.isLatn, isFalse);
      expect(value.isAdlm, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      expect(nonConst.isLatn, isFalse);
      expect(nonConst.isAdlm, isTrue);
    });

    test("boolean getter should work var declaration", () {
      expect(varValue.isLatn, isFalse);
      expect(varValue.isAdlm, isTrue);

      final string = const ScriptLatn().code;

      Script copy = varValue.copyWith(name: string);
      expect(copy.isLatn, isFalse);
      expect(copy.isAdlm, isTrue);
      expect(copy.name, string);

      copy = varValue.copyWith(code: string);
      expect(copy.isAdlm, isFalse);
      expect(copy.isLatn, isTrue);
      expect(copy.code, string);
    });
  });

  group("ScriptFunctional", () {
    test("boolean getter should work for compile-time const", () {
      final maybeWhen = value.maybeWhen(
        scriptAdlm: () => true,
        orElse: () => false,
      );
      expect(maybeWhen, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      final whenOrNull = nonConst.whenOrNull(scriptAdlm: () => true);
      expect(whenOrNull, isTrue);
    });

    test("boolean getter should work var declaration", () {
      final maybeMap = value.maybeMap(
        scriptAdlm: (_) => true,
        orElse: (_) => false,
      );
      expect(maybeMap, isTrue);
    });
  });
}
