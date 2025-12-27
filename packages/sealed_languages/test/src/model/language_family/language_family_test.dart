import "package:_sealed_world_tests/tests/advanced_tests.dart";
import "package:sealed_languages/src/model/language_family/language_family.dart";
import "package:test/test.dart";

void main() => group("$LanguageFamily", () {
  group("asserts", () {
    assertTest(
      "not",
      () => LanguageFamily(name: "Valid Name"),
      shouldThrow: false,
    );

    assertTest("empty name", () => LanguageFamily(name: ""));
  });
});
