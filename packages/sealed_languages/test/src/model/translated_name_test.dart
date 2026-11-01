import "dart:convert";

import "package:sealed_languages/src/helpers/extensions/translated_name_extension.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:sealed_languages/src/model/script/submodels/script.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

void main() => group("$TranslatedName", () {
  const string = "01";
  final value = TranslatedName(
    NaturalLanguage.list.first,
    name: string,
    fullName: string,
    script: Script.list.last,
  );

  test("toString", () {
    expect(value.toString(short: false), contains(value.script?.code));
    expect(value.toString(), isNot(contains(value.script?.code)));
  });

  group("equality", () {
    final other = TranslatedName(
      NaturalLanguage.list.last,
      name: string,
      fullName: string,
      countryCode: string,
    );
    final third = value.copyWith(countryCode: string);
    final fourth = value.copyWith(script: Script.list.first);
    final array = {value, other, third, fourth};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(
        value,
        equals(
          TranslatedName(
            array.first.language,
            name: value.name,
            fullName: value.fullName,
          ),
        ),
      );
      expect(
        array.first,
        equals(
          TranslatedName(
            value.language,
            name: value.name,
            fullName: value.fullName,
          ),
        ),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(
        TranslatedName(
          value.language,
          name: value.name,
          fullName: value.fullName,
        ),
      );
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    test(
      "not",
      () => expect(
        () => TranslatedName(
          value.language,
          name: value.name,
          fullName: value.fullName,
        ),
        returnsNormally,
      ),
    );

    test(
      "empty official",
      () => expect(
        () => TranslatedName(value.language, name: value.name, fullName: ""),
        throwsA(isA<AssertionError>()),
      ),
    );

    test(
      "empty common",
      () => expect(
        () => TranslatedName(
          NaturalLanguage.list.first,
          name: "",
          fullName: value.fullName,
        ),
        throwsA(isA<AssertionError>()),
      ),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      TranslatedNameExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
