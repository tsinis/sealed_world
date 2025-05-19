import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("$ProgrammingLanguage", () {
  const value = ProgrammingLanguage(name: "Dart");

  test("toString", () {
    expect(value.toString(short: false), contains(value.isLowLevel.toString()));
    expect(value.toString().contains(value.isLowLevel.toString()), isFalse);
  });
});
