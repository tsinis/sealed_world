import "package:sealed_languages/src/helpers/natural_language/natural_language_copy_with.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("NaturalLanguageCopyWith", () {
      final element = NaturalLanguage.list.first;

      test("copyWith should return a new instance with updated name", () {
        final copy = element.copyWith(name: 0.toString());

        expect(copy.name, 0.toString());
        expect(copy.code, element.code);
        expect(copy.codeShort, element.codeShort);
        expect(copy.namesNative, element.namesNative);
        expect(copy.bibliographicCode, element.bibliographicCode);
        expect(copy.family, element.family);
        expect(copy.isRightToLeft, element.isRightToLeft);
      });

      test("copyWith should return a same instance without updated name", () {
        final copy = element.copyWith();

        expect(copy.name, element.name);
        expect(copy.code, element.code);
        expect(copy.codeShort, element.codeShort);
        expect(copy.namesNative, element.namesNative);
        expect(copy.bibliographicCode, element.bibliographicCode);
        expect(copy.family, element.family);
        expect(copy.isRightToLeft, element.isRightToLeft);
      });
    });
