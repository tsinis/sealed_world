import "package:languages_dart/src/model/language/language.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
void main() => group("$ProgrammingLanguage", () {
      const value = ProgrammingLanguage(name: "Dart");

      test("toString", () {
        expect(
          value.toString(short: false).contains(value.isLowLevel.toString()),
          isTrue,
        );
        expect(value.toString().contains(value.isLowLevel.toString()), isFalse);
      });
    });