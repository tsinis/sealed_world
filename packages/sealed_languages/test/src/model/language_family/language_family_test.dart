import "package:sealed_languages/src/model/language_family/language_family.dart";
import "package:test/test.dart";

void main() => group("$LanguageFamily", () {
  group("asserts", () {
    test(
      "not",
      () => expect(
        () => const LanguageFamily(name: "Valid Name"),
        returnsNormally,
      ),
    );

    test(
      "empty name",
      () => expect(
        () => LanguageFamily(name: ""),
        throwsA(isA<AssertionError>()),
      ),
    );
  });
});
