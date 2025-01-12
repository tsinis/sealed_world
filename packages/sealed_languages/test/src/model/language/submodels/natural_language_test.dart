import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/language_translations.dart";
import "package:sealed_languages/src/helpers/extensions/sealed_world_json_string_extension.dart";
import "package:sealed_languages/src/helpers/natural_language/natural_language_json.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/interfaces/json_encodable.dart";
import "package:sealed_languages/src/interfaces/named.dart";
import "package:sealed_languages/src/interfaces/translated.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

class _NaturalLanguageTest extends NaturalLanguage {
  const _NaturalLanguageTest() : super.permissive(name: " ", code: "");
}

void main() => group("$NaturalLanguage", () {
      final value = NaturalLanguage.list.last;
      final array = {value, NaturalLanguage.list.first};

      test("interfaces", () {
        expect(value, isA<IsoStandardized>());
        expect(value, isA<IsoTranslated>());
        expect(value, isA<JsonEncodable>());
        expect(value, isA<Language>());
        expect(value, isA<Named>());
        expect(value, isA<Translated>());
      });

      assertTest(
        "permissive constructor",
        () => const _NaturalLanguageTest().code,
        shouldThrow: false,
        alsoExpect: () => expect(const _NaturalLanguageTest().code, isEmpty),
      );

      group("fields", () {
        for (final element in NaturalLanguage.list) {
          test("of $NaturalLanguage: ${element.name}", () {
            if (element.bibliographicCode == null) {
              expect(element.bibliographicCode, isNull);
            } else {
              expect(element.bibliographicCode, isA<String>());
              expect(element.bibliographicCode, isNotEmpty);
            }
            expect(element.family.name, isNotEmpty);
            expect(element.codeShort, isA<String>());
            expect(element.codeShort, isNotEmpty);
            expect(element.codeOther, element.codeShort);
            expect(element.internationalName, element.name);
            expect(element.isRightToLeft, isA<bool>());
            expect(element.namesNative, isA<List<String>>());
            expect(element.namesNative, isNotEmpty);
            expect(element.code, isA<String>());
            expect(element.code, isNotEmpty);
            expect(element.scripts, isNotEmpty);
          });
        }
      });

      group("maps O(1) access time check", () {
        for (final element in NaturalLanguage.list) {
          performanceTest("of $NaturalLanguage: ${element.name}", () {
            expect(NaturalLanguage.map[element.code], element);
            expect(NaturalLanguage.codeMap[element.code], element);
            expect(NaturalLanguage.codeShortMap[element.codeShort], element);
          });
        }
      });

      group("equality", () {
        test("basic", () {
          expect(NaturalLanguage.list.first, isNot(equals(value)));
          expect(NaturalLanguage.list.last, same(value));
          expect(
            NaturalLanguage.fromName(NaturalLanguage.list.last.name),
            same(value),
          );
          expect(
            NaturalLanguage.fromName(NaturalLanguage.list.last.name),
            same(NaturalLanguage.list.last),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(NaturalLanguage.fromName(array.last.name));
          expect(array.length, 2);
        });
      });

      test("toString", () {
        expect(value.toString(short: false), contains(value.codeShort));
        expect(value.toString().contains(value.codeShort), isFalse);
      });

      group("fromName", () {
        performanceTest(
          "with proper name",
          () => expect(NaturalLanguage.fromName(value.name), value),
        );

        performanceTest(
          "with wrong name",
          () => expect(
            () => NaturalLanguage.fromName(value.toString()),
            throwsStateError,
          ),
        );

        assertTest(
          "with empty languages",
          () => NaturalLanguage.fromName(value.name, const []),
        );
      });

      group("fromCode", () {
        group("with custom array", () {
          performanceTest(
            "with proper code",
            () => expect(NaturalLanguage.fromCode(value.code, array), value),
          );

          performanceTest(
            "with proper code lowercase",
            () => expect(
              NaturalLanguage.fromCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => NaturalLanguage.fromCode(value.toString(), array),
              throwsStateError,
            ),
          );

          assertTest(
            "with empty languages",
            () => NaturalLanguage.fromCode(value.code, const []),
          );
        });

        group("without custom array", () {
          performanceTest(
            "with proper code",
            () => expect(NaturalLanguage.fromCode(value.code), value),
          );

          performanceTest(
            "with proper code lowercase",
            () => expect(
              NaturalLanguage.fromCode(value.code.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => NaturalLanguage.fromCode(value.toString()),
              throwsStateError,
            ),
          );
        });
      });

      group("fromCodeShort", () {
        group("with custom array", () {
          performanceTest(
            "with proper code",
            () => expect(
              NaturalLanguage.fromCodeShort(value.codeShort, array),
              value,
            ),
          );

          performanceTest(
            "with proper code lowercase",
            () => expect(
              NaturalLanguage.fromCodeShort(
                value.codeShort.toLowerCase(),
                array,
              ),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => NaturalLanguage.fromCodeShort(value.toString(), array),
              throwsStateError,
            ),
          );

          assertTest(
            "with empty languages",
            () => NaturalLanguage.fromCodeShort(value.codeShort, const []),
          );
        });
        group("without custom array", () {
          performanceTest(
            "with proper code",
            () => expect(NaturalLanguage.fromCodeShort(value.codeShort), value),
          );

          performanceTest(
            "with proper code lowercase",
            () => expect(
              NaturalLanguage.fromCodeShort(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => NaturalLanguage.fromCodeShort(value.toString()),
              throwsStateError,
            ),
          );
        });
      });

      group("fromAnyCode", () {
        group("with custom array", () {
          performanceTest(
            "with proper short code",
            () => expect(
              NaturalLanguage.fromAnyCode(value.codeShort, array),
              value,
            ),
          );

          performanceTest(
            "with proper regular code",
            () => expect(NaturalLanguage.fromAnyCode(value.code, array), value),
          );

          performanceTest(
            "with proper short code lowercase",
            () => expect(
              NaturalLanguage.fromAnyCode(value.codeShort.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with proper regular code lowercase",
            () => expect(
              NaturalLanguage.fromAnyCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => NaturalLanguage.fromAnyCode(value.toString(), array),
              throwsStateError,
            ),
          );

          assertTest(
            "with empty languages",
            () => NaturalLanguage.fromAnyCode(value.codeShort, const []),
          );
        });

        group("without custom array", () {
          randomElementTest(
            "with random element from list and lowercase code",
            NaturalLanguage.list,
            (random) => expect(
              NaturalLanguage.fromAnyCode(random.code.toLowerCase()),
              random,
            ),
          );

          performanceTest(
            "with proper short code",
            () => expect(NaturalLanguage.fromAnyCode(value.codeShort), value),
          );

          performanceTest(
            "with proper regular code",
            () => expect(NaturalLanguage.fromAnyCode(value.code), value),
          );

          performanceTest(
            "with proper short code lowercase",
            () => expect(
              NaturalLanguage.fromAnyCode(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with proper regular code lowercase",
            () => expect(
              NaturalLanguage.fromAnyCode(value.code.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => NaturalLanguage.fromAnyCode(value.toString()),
              throwsStateError,
            ),
          );
        });
      });

      group("toJson", () {
        for (final element in NaturalLanguage.list) {
          test("compared to $NaturalLanguage: ${element.name}", () {
            final json = element.toJson();
            expect(json, isNotEmpty);
            final decoded = json.tryParse(NaturalLanguageJson.fromMap);
            expect(
              decoded?.toString(short: false),
              json.parse(NaturalLanguageJson.fromMap).toString(short: false),
            );
            expect(element.bibliographicCode, decoded?.bibliographicCode);
            expect(element.family, decoded?.family);
            expect(element.codeShort, decoded?.codeShort);
            expect(element.isRightToLeft, decoded?.isRightToLeft);
            expect(element.namesNative, decoded?.namesNative);
            expect(element.code, decoded?.code);
            expect(element.scripts, decoded?.scripts);
          });
        }
      });

      group("maybeFromValue", () {
        performanceTest(
          "with proper value, without where",
          () => expect(NaturalLanguage.maybeFromValue(value.code), value),
        );

        performanceTest(
          "with proper value, with where",
          () => expect(
            NaturalLanguage.maybeFromValue(
              value.name,
              where: (lang) => lang.name,
            ),
            value,
          ),
        );

        performanceTest(
          "with wrong value, without where",
          () => expect(NaturalLanguage.maybeFromValue(value), isNull),
        );

        performanceTest(
          "with wrong value, with where",
          () => expect(
            NaturalLanguage.maybeFromValue(
              value,
              where: (lang) => lang.name,
            ),
            isNull,
          ),
        );

        assertTest(
          "with empty languages",
          () => NaturalLanguage.maybeFromValue(
            value.name,
            languages: const [],
          ),
        );

        performanceTest(
          "with custom languages",
          () => expect(
            NaturalLanguage.maybeFromValue(value.code, languages: array),
            value,
          ),
        );
      });

      group("maybeFromAnyCode", () {
        group("with custom array", () {
          performanceTest(
            "with proper short code",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.codeShort, array),
              value,
            ),
          );

          performanceTest(
            "with proper regular code",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.code, array),
              value,
            ),
          );

          performanceTest(
            "with proper short code lowercase",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(
                value.codeShort.toLowerCase(),
                array,
              ),
              value,
            ),
          );

          performanceTest(
            "with proper regular code lowercase",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.toString(), array),
              isNull,
            ),
          );

          performanceTest(
            "with null code",
            () => expect(NaturalLanguage.maybeFromAnyCode(null, array), isNull),
          );

          assertTest(
            "with empty languages",
            () => NaturalLanguage.fromAnyCode(value.codeShort, const []),
          );
        });

        group("without custom array", () {
          randomElementTest(
            "with random element from list and lowercase code",
            NaturalLanguage.list,
            (random) => expect(
              NaturalLanguage.maybeFromAnyCode(random.code.toLowerCase()),
              random,
            ),
          );

          performanceTest(
            "with proper short code",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.codeShort),
              value,
            ),
          );

          performanceTest(
            "with proper regular code",
            () => expect(NaturalLanguage.maybeFromAnyCode(value.code), value),
          );

          performanceTest(
            "with proper short code lowercase",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with proper regular code lowercase",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.code.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              NaturalLanguage.maybeFromAnyCode(value.toString()),
              isNull,
            ),
          );

          performanceTest(
            "with null code",
            () => expect(NaturalLanguage.maybeFromAnyCode(null), isNull),
          );
        });
      });

      group("maybeFromCodeShort", () {
        group("with custom array", () {
          performanceTest(
            "with proper short code",
            () => expect(
              NaturalLanguage.maybeFromCodeShort(value.codeShort, array),
              value,
            ),
          );

          performanceTest(
            "with proper short code lowercase",
            () => expect(
              NaturalLanguage.maybeFromCodeShort(
                value.codeShort.toLowerCase(),
                array,
              ),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              NaturalLanguage.maybeFromCodeShort(value.toString(), array),
              isNull,
            ),
          );

          performanceTest(
            "with null code",
            () =>
                expect(NaturalLanguage.maybeFromCodeShort(null, array), isNull),
          );

          assertTest(
            "with empty languages",
            () => NaturalLanguage.maybeFromCodeShort(value.codeShort, const []),
          );
        });

        group("without custom array", () {
          randomElementTest(
            "with random element from list and lowercase code",
            NaturalLanguage.list,
            (random) => expect(
              NaturalLanguage.maybeFromCodeShort(
                random.codeShort.toLowerCase(),
              ),
              random,
            ),
          );

          performanceTest(
            "with proper short code",
            () => expect(
              NaturalLanguage.maybeFromCodeShort(value.codeShort),
              value,
            ),
          );

          performanceTest(
            "with proper short code lowercase",
            () => expect(
              NaturalLanguage.maybeFromCodeShort(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              NaturalLanguage.maybeFromCodeShort(value.toString()),
              isNull,
            ),
          );

          performanceTest(
            "with null code",
            () => expect(NaturalLanguage.maybeFromCodeShort(null), isNull),
          );
        });
      });

      group("maybeFromCode", () {
        group("with custom array", () {
          performanceTest(
            "with proper regular code",
            () => expect(
              NaturalLanguage.maybeFromCode(value.code, array),
              value,
            ),
          );
          performanceTest(
            "with proper regular code lowercase",
            () => expect(
              NaturalLanguage.maybeFromCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              NaturalLanguage.maybeFromCode(value.toString(), array),
              isNull,
            ),
          );

          performanceTest(
            "with null code",
            () => expect(NaturalLanguage.maybeFromCode(null, array), isNull),
          );

          assertTest(
            "with empty languages",
            () => NaturalLanguage.maybeFromCode(value.code, const []),
          );
        });

        group("without custom array", () {
          randomElementTest(
            "with random element from list and lowercase code",
            NaturalLanguage.list,
            (random) => expect(
              NaturalLanguage.maybeFromCode(random.code.toLowerCase()),
              random,
            ),
          );

          performanceTest(
            "with proper regular code",
            () => expect(NaturalLanguage.maybeFromCode(value.code), value),
          );

          performanceTest(
            "with proper regular code lowercase",
            () => expect(
              NaturalLanguage.maybeFromCode(value.code.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              NaturalLanguage.maybeFromCode(value.toString()),
              isNull,
            ),
          );

          performanceTest(
            "with null code",
            () => expect(NaturalLanguage.maybeFromCode(null), isNull),
          );
        });
      });

      group("translations", () {
        final min = kSealedLanguagesSupportedLanguages.length + 1;

        test("every language should have at least $min translations", () {
          for (final translated in NaturalLanguage.list) {
            expect(translated.translations.length, greaterThanOrEqualTo(min));
            expect(
              translated.translations.every((l10n) => l10n.name.isNotEmpty),
              isTrue,
            );
          }
        });

        test(
          "returns empty list on custom class with no translations",
          () => expect(const _NaturalLanguageTest().translations, isEmpty),
        );
      });

      group("asserts", () {
        assertTest(
          "not",
          () => NaturalLanguage(
            name: value.name,
            codeShort: value.codeShort,
            namesNative: value.namesNative,
            code: value.code,
          ),
          shouldThrow: false,
        );

        assertTest(
          "empty name",
          () => NaturalLanguage(
            name: "",
            codeShort: value.codeShort,
            namesNative: value.namesNative,
            code: value.code,
          ),
        );

        assertTest(
          "name",
          () => NaturalLanguage(
            name: "",
            codeShort: value.codeShort,
            namesNative: value.namesNative,
            code: value.code,
          ),
        );

        assertTest(
          "codeShort length",
          () => NaturalLanguage(
            name: value.name,
            codeShort: value.code,
            namesNative: value.namesNative,
            code: value.code,
          ),
        );

        assertTest(
          "code length",
          () => NaturalLanguage(
            name: value.name,
            codeShort: value.codeShort,
            namesNative: value.namesNative,
            code: value.codeShort,
          ),
        );

        assertTest(
          "empty namesNative",
          () => NaturalLanguage(
            name: value.name,
            codeShort: value.codeShort,
            namesNative: const [],
            code: value.code,
          ),
        );

        assertTest(
          "bibliographicCode length",
          () => NaturalLanguage(
            name: value.name,
            codeShort: value.codeShort,
            namesNative: value.namesNative,
            code: value.code,
            bibliographicCode: value.codeShort,
          ),
        );

        assertTest(
          "empty scripts",
          () => NaturalLanguage(
            name: value.name,
            codeShort: value.codeShort,
            namesNative: value.namesNative,
            code: value.code,
            scripts: const {},
          ),
        );
      });
    });
