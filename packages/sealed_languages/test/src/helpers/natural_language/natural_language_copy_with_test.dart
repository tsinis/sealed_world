import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/helpers/natural_language/natural_language_copy_with.dart";
import "package:test/test.dart";

void main() {
  group("NaturalLanguageCopyWith", () {
    const english = LangEng();

    test("copyWith should return a new instance with updated name", () {
      final americanEnglish = english.copyWith(name: "American English");

      expect(americanEnglish.name, "American English");
      expect(americanEnglish.code, english.code);
      expect(americanEnglish.codeShort, english.codeShort);
      expect(americanEnglish.namesNative, english.namesNative);
      expect(americanEnglish.bibliographicCode, english.bibliographicCode);
      expect(americanEnglish.family, english.family);
      expect(americanEnglish.isRightToLeft, english.isRightToLeft);
    });

    test("copyWith should return a same instance without updated name", () {
      final americanEnglish = english.copyWith();

      expect(americanEnglish.name, english.name);
      expect(americanEnglish.code, english.code);
      expect(americanEnglish.codeShort, english.codeShort);
      expect(americanEnglish.namesNative, english.namesNative);
      expect(americanEnglish.bibliographicCode, english.bibliographicCode);
      expect(americanEnglish.family, english.family);
      expect(americanEnglish.isRightToLeft, english.isRightToLeft);
    });
  });
}
