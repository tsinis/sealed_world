import "package:sealed_languages/src/helpers/natural_language/natural_language_getters.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("NaturalLanguageGettersExtension", () {
      final value = NaturalLanguage.list
          .firstWhere((language) => language.bibliographicCode != null);

      test("iso639one", () => expect(value.iso639one, value.codeShort));

      test("iso639twoT", () => expect(value.iso639twoT, value.code));

      test(
        "iso639twoB",
        () => expect(value.iso639twoB, value.bibliographicCode),
      );
    });
