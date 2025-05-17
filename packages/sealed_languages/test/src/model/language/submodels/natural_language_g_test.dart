import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/helpers/natural_language/natural_language_copy_with.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() {
  const value = LangDeu();
  final nonConst = LangDeu(); //ignore: prefer_const_constructors, it's test.
  // ignore: prefer_final_locals, prefer_const_constructors, it's a test.
  var varValue = LangDeu(); // ignore: prefer-type-over-var, it's a test.

  group("NaturalLanguageBoolGetters", () {
    test("boolean getter should work for compile-time const", () {
      expect(value.isAar, isFalse);
      expect(value.isDeu, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      expect(nonConst.isAar, isFalse);
      expect(nonConst.isDeu, isTrue);
    });

    test("boolean getter should work var declaration", () {
      expect(varValue.isAar, isFalse);
      expect(varValue.isDeu, isTrue);

      final string = const LangAar().code;

      NaturalLanguage copy = varValue.copyWith(name: string);
      expect(copy.isAar, isFalse);
      expect(copy.isDeu, isTrue);
      expect(copy.name, string);

      copy = varValue.copyWith(code: string);
      expect(copy.isDeu, isFalse);
      expect(copy.isAar, isTrue);
      expect(copy.code, string);
    });
  });

  group("NaturalLanguageFunctional", () {
    test("boolean getter should work for compile-time const", () {
      final maybeWhen = value.maybeWhen(
        langDeu: () => true,
        orElse: () => false,
      );
      expect(maybeWhen, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      final whenOrNull = nonConst.whenOrNull(langDeu: () => true);
      expect(whenOrNull, isTrue);
    });

    test("boolean getter should work var declaration", () {
      final maybeMap = value.maybeMap(
        langDeu: (_) => true,
        orElse: (_) => false,
      );
      expect(maybeMap, isTrue);
    });
  });
}
