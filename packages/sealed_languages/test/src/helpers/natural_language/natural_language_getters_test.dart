import "package:sealed_languages/src/helpers/natural_language/natural_language_copy_with.dart";
import "package:sealed_languages/src/helpers/natural_language/natural_language_getters.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:sealed_languages/src/model/language_family/submodels/natural_language_family.dart";
import "package:test/test.dart";

void main() => group("NaturalLanguageGetters", () {
  final value = NaturalLanguage.list.firstWhere(
    (language) => language.bibliographicCode != null,
  );

  test("iso639one", () => expect(value.iso639one, value.codeShort));

  test("iso639twoT", () => expect(value.iso639twoT, value.code));

  test("iso639twoB", () => expect(value.iso639twoB, value.bibliographicCode));

  group("isConstructed", () {
    test("bundled languages", () {
      const esperanto = LangEpo();
      expect(value.isConstructed, isFalse);
      expect(esperanto.isConstructed, isTrue);
    });

    test(
      "only the five bundled constructed languages",
      () => expect(
        NaturalLanguage.list.where((language) => language.isConstructed),
        unorderedEquals(const <NaturalLanguage>[
          LangEpo(),
          LangIdo(),
          LangIle(),
          LangIna(),
          LangVol(),
        ]),
      ),
    );

    test(
      "copy of a constructed language",
      () => expect(const LangEpo().copyWith().isConstructed, isTrue),
    );

    test("custom languages", () {
      const constructed = LangCustom(code: "TST", family: Constructed());
      expect(constructed.isConstructed, isTrue);
      expect(const LangCustom(code: "TST").isConstructed, isFalse);
    });
  });
});
