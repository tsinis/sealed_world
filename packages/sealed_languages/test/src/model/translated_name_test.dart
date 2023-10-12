import "package:sealed_languages/src/helpers/extensions/sealed_world_json_string_extension.dart";
import "package:sealed_languages/src/helpers/extensions/translated_name_extension.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

void main() => group("$TranslatedName", () {
      const string = "1";
      final value = TranslatedName(
        NaturalLanguage.list.first,
        name: string,
        fullName: string,
        script: Script.list.last,
      );

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
          expect(array.length, 2);
          array.add(
            TranslatedName(
              value.language,
              name: value.name,
              fullName: value.fullName,
            ),
          );
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
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty official",
          () {
            expect(
              () => TranslatedName(
                NaturalLanguage.list.first,
                name: value.name,
                fullName: "",
              ),
              throwsA(isA<AssertionError>()),
            );
            expect(
              () => TranslatedName(
                value.language,
                name: value.name,
                fullName: "",
              ),
              throwsA(isA<AssertionError>()),
            );
          },
        );

        test(
          "empty common",
          () {
            expect(
              () => TranslatedName(
                NaturalLanguage.list.first,
                name: "",
                fullName: value.fullName,
              ),
              throwsA(isA<AssertionError>()),
            );

            expect(
              () => TranslatedName(
                value.language,
                name: "",
                fullName: value.fullName,
              ),
              throwsA(isA<AssertionError>()),
            );
          },
        );
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(TranslatedNameExtension.fromMap));
      });
    });
