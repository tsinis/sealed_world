import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

void main() => group("NaturalLanguageJson", () {
  group("fromMap", () {
    test("throws ArgumentError when codes missing", () {
      expect(() => NaturalLanguageJson.fromMap(const {}), throwsArgumentError);
    });

    test("deserializes NaturalLanguage from map", () {
      final map = {
        "code": "TST",
        "codeShort": "TS",
        "family": const IndoEuropean().name,
        "isRightToLeft": false,
        "name": "Testish",
        "namesNative": const ["Testish"],
        "scripts": const ["Latn"],
      };

      final language = NaturalLanguageJson.fromMap(map);

      expect(language, isA<LangCustom>());
      expect(language.code, "TST");
      expect(language.codeShort, "TS");
      expect(language.name, "Testish");
      expect(language.namesNative, const ["Testish"]);
      expect(language.family, const IndoEuropean());
      expect(language.isRightToLeft, isFalse);
      expect(language.scripts, const {ScriptLatn()});
    });
  });
});
