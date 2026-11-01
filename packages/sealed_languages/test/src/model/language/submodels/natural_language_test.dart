// ignore_for_file: prefer_const_constructors, equal_keys_in_map, it's a test.
// ignore_for_file: avoid-duplicate-test-assertions

import "dart:convert";
import "dart:math";

import "package:sealed_languages/src/helpers/natural_language/natural_language_json.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/interfaces/iso_translated.dart";
import "package:sealed_languages/src/interfaces/json_encodable.dart";
import "package:sealed_languages/src/interfaces/named.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:sealed_languages/src/typedefs/typedefs.dart";
import "package:test/test.dart";

void main() => group("$NaturalLanguage", () {
  final value = NaturalLanguage.list.last;
  final array = {value, NaturalLanguage.list.first};

  test("interfaces", () {
    expect(value, isA<IsoStandardized>());
    expect(value, isA<IsoTranslated>());
    expect(value, isA<JsonEncodable>());
    expect(value, isA<Language>());
    expect(value, isA<Named>());
    expect(value, isA<Comparable<IsoStandardized>>());
  });

  test(
    "compile and non compile time constructors equality",
    tags: "performance",
    () {
      expect(NaturalLanguage.aar(), LangAar());
      expect(NaturalLanguage.aar(), const LangAar());
      expect(const NaturalLanguage.aar(), LangAar());
      expect(const NaturalLanguage.aar(), const LangAar());
    },
  );

  group("assert permissive constructor", () {
    test(
      "not code",
      () => expect(() => const LangCustom(code: "code").code, returnsNormally),
    );

    test(
      "not codeShort",
      () => expect(
        () => const LangCustom(codeShort: "code").codeShort,
        returnsNormally,
      ),
    );

    test(
      "empty code and codeShort",
      () => expect(LangCustom.new, throwsA(isA<AssertionError>())),
    );
  });

  test("compareTo", () => expect(value.compareTo(array.last), isNot(isZero)));

  group("sealed switch expressions", () {
    // ignore: avoid-local-functions, it's a test.
    String? describe(NaturalLanguage language) => switch (language) {
      LangEng() => "english",
      LangSpa() => "spanish",
      LangCustom(:final code) when code.startsWith("X") => "custom-$code",
      NaturalLanguage(isRightToLeft: true) => "rtl",
      // ignore: avoid-wildcard-cases-with-sealed-classes, it's a test.
      _ => null,
    };

    test("matches generated subtypes", () {
      expect(describe(const LangEng()), "english");
      expect(describe(const LangSpa()), "spanish");
    });

    test("matches custom languages and guard", () {
      const custom = LangCustom(code: "XSA", codeShort: "xs");
      expect(describe(custom), "custom-XSA");
      expect(describe(const LangAra()), "rtl");
    });
  });

  group("fields", () {
    for (final element in NaturalLanguage.list) {
      test("of $NaturalLanguage: ${element.name}", () {
        if (element.bibliographicCode != null) {
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
      test("of $NaturalLanguage: ${element.name}", tags: "performance", () {
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

    test("with ${Map<NaturalLanguage, Object>}", tags: "performance", () {
      final map = <NaturalLanguage, int>{
        const LangAar(): 4,
        const LangAar(): 3,
        const NaturalLanguage.aar(): 2,
        const NaturalLanguage.aar(): 1,
        NaturalLanguage.fromCode("AAR"): 0,
      };
      expect(map.entries.single.key, const LangAar());
      expect(map.entries.single.key, const LangAar());
      expect(map.entries.single.key, const NaturalLanguage.aar());
      expect(map.entries.single.key, const NaturalLanguage.aar());
      expect(map.entries.single.value, isZero);
    });
  });

  test("toString", () {
    expect(value.toString(short: false), contains(value.codeShort));
    expect(value.toString().contains(value.codeShort), isFalse);
  });

  group("fromName", () {
    test(
      "with proper name",
      tags: "performance",
      () => expect(NaturalLanguage.fromName(value.name), value),
    );

    test(
      "with wrong name",
      tags: "performance",
      () => expect(
        () => NaturalLanguage.fromName(value.toString()),
        throwsStateError,
      ),
    );

    test(
      "with empty languages",
      () => expect(
        () => NaturalLanguage.fromName(value.name, const []),
        throwsA(isA<AssertionError>()),
      ),
    );
  });

  group("fromCode", () {
    group("with custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(NaturalLanguage.fromCode(value.code, array), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => NaturalLanguage.fromCode(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty languages",
        () => expect(
          () => NaturalLanguage.fromCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(NaturalLanguage.fromCode(value.code), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(NaturalLanguage.fromCode(value.code.toLowerCase()), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => NaturalLanguage.fromCode(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromCodeShort", () {
    group("with custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromCodeShort(value.codeShort, array),
          value,
        ),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromCodeShort(value.codeShort.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => NaturalLanguage.fromCodeShort(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty languages",
        () => expect(
          () => NaturalLanguage.fromCodeShort(value.codeShort, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });
    group("without custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(NaturalLanguage.fromCodeShort(value.codeShort), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromCodeShort(value.codeShort.toLowerCase()),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => NaturalLanguage.fromCodeShort(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromAnyCode", () {
    group("with custom array", () {
      test(
        "with proper short code",
        tags: "performance",
        () =>
            expect(NaturalLanguage.fromAnyCode(value.codeShort, array), value),
      );

      test(
        "with proper regular code",
        tags: "performance",
        () => expect(NaturalLanguage.fromAnyCode(value.code, array), value),
      );

      test(
        "with proper short code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromAnyCode(value.codeShort.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with proper regular code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => NaturalLanguage.fromAnyCode(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty languages",
        () => expect(
          () => NaturalLanguage.fromAnyCode(value.codeShort, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with random element from list and lowercase code",
        tags: "performance",
        () {
          final random = NaturalLanguage
              .list[Random.secure().nextInt(NaturalLanguage.list.length)];
          expect(
            NaturalLanguage.fromAnyCode(random.code.toLowerCase()),
            random,
          );
        },
      );

      test(
        "with proper short code",
        tags: "performance",
        () => expect(NaturalLanguage.fromAnyCode(value.codeShort), value),
      );

      test(
        "with proper regular code",
        tags: "performance",
        () => expect(NaturalLanguage.fromAnyCode(value.code), value),
      );

      test(
        "with proper short code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromAnyCode(value.codeShort.toLowerCase()),
          value,
        ),
      );

      test(
        "with proper regular code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.fromAnyCode(value.code.toLowerCase()),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
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
        final decoded = NaturalLanguageJson.fromMap(
          // ignore: avoid-type-casts, it's a test.
          jsonDecode(json) as JsonMap,
        );

        expect(element.bibliographicCode, decoded.bibliographicCode);
        expect(element.family, decoded.family);
        expect(element.codeShort, decoded.codeShort);
        expect(element.isRightToLeft, decoded.isRightToLeft);
        expect(element.namesNative, decoded.namesNative);
        expect(element.code, decoded.code);
        expect(element.scripts, decoded.scripts);
      });
    }
  });

  group("maybeFromValue", () {
    test(
      "with proper value, without where",
      tags: "performance",
      () => expect(NaturalLanguage.maybeFromValue(value.code), value),
    );

    test(
      "with proper value, with where",
      tags: "performance",
      () => expect(
        NaturalLanguage.maybeFromValue(value.name, where: (lang) => lang.name),
        value,
      ),
    );

    test(
      "with wrong value, without where",
      tags: "performance",
      () => expect(NaturalLanguage.maybeFromValue(value), isNull),
    );

    test(
      "with wrong value, with where",
      tags: "performance",
      () => expect(
        NaturalLanguage.maybeFromValue(value, where: (lang) => lang.name),
        isNull,
      ),
    );

    test(
      "with empty languages",
      () => expect(
        () => NaturalLanguage.maybeFromValue(value.name, languages: const []),
        throwsA(isA<AssertionError>()),
      ),
    );

    test(
      "with custom languages",
      tags: "performance",
      () => expect(
        NaturalLanguage.maybeFromValue(value.code, languages: array),
        value,
      ),
    );
  });

  group("maybeFromAnyCode", () {
    group("with custom array", () {
      test(
        "with proper short code",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromAnyCode(value.codeShort, array),
          value,
        ),
      );

      test(
        "with proper regular code",
        tags: "performance",
        () =>
            expect(NaturalLanguage.maybeFromAnyCode(value.code, array), value),
      );

      test(
        "with proper short code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromAnyCode(
            value.codeShort.toLowerCase(),
            array,
          ),
          value,
        ),
      );

      test(
        "with proper regular code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromAnyCode(value.toString(), array),
          isNull,
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromAnyCode(null, array), isNull),
      );

      test(
        "with empty languages",
        () => expect(
          () => NaturalLanguage.maybeFromAnyCode(value.codeShort, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with random element from list and lowercase code",
        tags: "performance",
        () {
          final random = NaturalLanguage
              .list[Random.secure().nextInt(NaturalLanguage.list.length)];
          expect(
            NaturalLanguage.maybeFromAnyCode(random.code.toLowerCase()),
            random,
          );
        },
      );

      test(
        "with proper short code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromAnyCode(value.codeShort), value),
      );

      test(
        "with proper regular code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromAnyCode(value.code), value),
      );

      test(
        "with proper short code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromAnyCode(value.codeShort.toLowerCase()),
          value,
        ),
      );

      test(
        "with proper regular code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromAnyCode(value.code.toLowerCase()),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () =>
            expect(NaturalLanguage.maybeFromAnyCode(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromAnyCode(null), isNull),
      );
    });
  });

  group("maybeFromCodeShort", () {
    group("with custom array", () {
      test(
        "with proper short code",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCodeShort(value.codeShort, array),
          value,
        ),
      );

      test(
        "with proper short code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCodeShort(
            value.codeShort.toLowerCase(),
            array,
          ),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCodeShort(value.toString(), array),
          isNull,
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromCodeShort(null, array), isNull),
      );

      test(
        "with empty languages",
        () => expect(
          () => NaturalLanguage.maybeFromCodeShort(value.codeShort, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with random element from list and lowercase code",
        tags: "performance",
        () {
          final random = NaturalLanguage
              .list[Random.secure().nextInt(NaturalLanguage.list.length)];
          expect(
            NaturalLanguage.maybeFromCodeShort(random.codeShort.toLowerCase()),
            random,
          );
        },
      );

      test(
        "with proper short code",
        tags: "performance",
        () =>
            expect(NaturalLanguage.maybeFromCodeShort(value.codeShort), value),
      );

      test(
        "with proper short code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCodeShort(value.codeShort.toLowerCase()),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCodeShort(value.toString()),
          isNull,
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromCodeShort(null), isNull),
      );
    });
  });

  group("maybeFromCode", () {
    group("with custom array", () {
      test(
        "with proper regular code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromCode(value.code, array), value),
      );
      test(
        "with proper regular code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCode(value.toString(), array),
          isNull,
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromCode(null, array), isNull),
      );

      test(
        "with empty languages",
        () => expect(
          () => NaturalLanguage.maybeFromCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with random element from list and lowercase code",
        tags: "performance",
        () {
          final random = NaturalLanguage
              .list[Random.secure().nextInt(NaturalLanguage.list.length)];
          expect(
            NaturalLanguage.maybeFromCode(random.code.toLowerCase()),
            random,
          );
        },
      );

      test(
        "with proper regular code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromCode(value.code), value),
      );

      test(
        "with proper regular code lowercase",
        tags: "performance",
        () => expect(
          NaturalLanguage.maybeFromCode(value.code.toLowerCase()),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromCode(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(NaturalLanguage.maybeFromCode(null), isNull),
      );
    });
  });

  group("asserts", () {
    test(
      "not",
      () => expect(
        () => LangCustom(
          name: value.name,
          codeShort: value.codeShort,
          namesNative: value.namesNative,
          code: value.code,
        ),
        returnsNormally,
      ),
    );
  });
});
