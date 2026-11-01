// ignore_for_file: prefer_const_constructors, equal_keys_in_map, it's a test.
// ignore_for_file: avoid-duplicate-test-assertions

import "dart:convert";
import "dart:math";

import "package:sealed_languages/src/helpers/script/script_json.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/interfaces/json_encodable.dart";
import "package:sealed_languages/src/model/script/submodels/script.dart";
import "package:test/test.dart";

void main() => group("$Script", () {
  final value = Script.list.last;
  final array = {value, Script.list.first};

  test("interfaces", () {
    expect(value, isA<IsoStandardized>());
    expect(value, isA<JsonEncodable>());
    expect(value, isA<Comparable<IsoStandardized>>());
  });

  test(
    "compile and non compile time constructors equality",
    tags: "performance",
    () {
      expect(Script.adlm(), ScriptAdlm());
      expect(Script.adlm(), const ScriptAdlm());
      expect(const Script.adlm(), ScriptAdlm());
      expect(const Script.adlm(), const ScriptAdlm());
    },
  );

  group("permissive constructor asserts", () {
    test(
      "not empty code",
      () => expect(() => ScriptCustom(code: " "), returnsNormally),
    );

    test(
      "not empty codeNumeric",
      () => expect(() => ScriptCustom(codeNumeric: " "), returnsNormally),
    );

    test(
      "empty codeNumeric and code",
      () => expect(ScriptCustom.new, throwsA(isA<AssertionError>())),
    );
  });

  test("compareTo", () => expect(value.compareTo(array.last), isNot(isZero)));

  group("sealed switch expressions", () {
    // ignore: avoid-local-functions, it's a test.
    String? describe(Script script) => switch (script) {
      ScriptLatn() => "latin",
      ScriptCyrl() => "cyrillic",
      ScriptCustom(:final codeNumeric) when codeNumeric.startsWith("9") =>
        "custom-$codeNumeric",
      Script(:final pva) when (pva?.contains("Arabic") ?? false) =>
        "arabic family",
      // ignore: avoid-wildcard-cases-with-sealed-classes, it's a test.
      _ => null,
    };

    test("matches generated subtypes", () {
      expect(describe(const ScriptLatn()), "latin");
      expect(describe(const ScriptCyrl()), "cyrillic");
    });

    test("matches custom scripts and guards", () {
      const custom = ScriptCustom(code: "ZZZZ", codeNumeric: "900");
      expect(describe(custom), "custom-900");
      expect(describe(const ScriptArab()), "arabic family");
    });
  });

  group("fields", () {
    for (final element in Script.list) {
      test("of $Script: ${element.name}", () {
        expect(element.codeOther, element.codeNumeric);
        expect(element.codeNumeric, isA<String>());
        expect(element.codeNumeric, isNotEmpty);
        expect(element.namesNative, isNull);
        expect(element.code, isA<String>());
        expect(element.code, isNotEmpty);
        expect(element.name, isA<String>());
        expect(element.name, isNotEmpty);
        expect(element.internationalName, element.name);
        expect(element.date, isA<String>());
        expect(element.date, isNotEmpty);

        if (element.pva == null) return;
        expect(element.pva, isA<String>());
        expect(element.pva, isNotEmpty);
      });
    }
  });

  group("maps O(1) access time check", () {
    for (final element in Script.list) {
      test("of $Script: ${element.name}", tags: "performance", () {
        expect(Script.map[element.code], element);
        expect(Script.codeMap[element.code], element);
        expect(Script.codeNumericMap[element.codeNumeric], element);
      });
    }
  });

  group("equality", () {
    test("basic", () {
      expect(Script.list.first, isNot(equals(value)));
      expect(Script.list.last, same(value));
      expect(Script.fromName(Script.list.last.name), same(value));
      expect(Script.fromName(Script.list.last.name), same(Script.list.last));
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      expect(array.length, 2);
      array.add(Script.fromName(array.last.name));
      expect(array.length, 2);
    });

    test("with ${Map<Script, Object>}", tags: "performance", () {
      final map = <Script, int>{
        ScriptAdlm(): 4,
        const ScriptAdlm(): 3,
        Script.adlm(): 2,
        const Script.adlm(): 1,
        Script.fromCode("ADLM"): 0,
      };
      expect(map.entries.single.key, ScriptAdlm());
      expect(map.entries.single.key, const ScriptAdlm());
      expect(map.entries.single.key, Script.adlm());
      expect(map.entries.single.key, const Script.adlm());
      expect(map.entries.single.value, isZero);
    });
  });

  test("toString", () {
    expect(value.toString(short: false), contains(value.codeNumeric));
    expect(value.toString().contains(value.codeNumeric), isFalse);
  });

  group("fromName", () {
    test(
      "with proper name",
      tags: "performance",
      () => expect(Script.fromName(value.name), value),
    );

    test(
      "with proper name uppercase",
      tags: "performance",
      () => expect(Script.fromName(value.name.toUpperCase()), value),
    );

    test(
      "with proper name lowercase",
      tags: "performance",
      () => expect(Script.fromName(value.name.toLowerCase()), value),
    );

    test(
      "with wrong name",
      tags: "performance",
      () => expect(() => Script.fromName(value.toString()), throwsStateError),
    );

    test(
      "with empty array",
      () => expect(
        () => Script.fromName(value.name, const []),
        throwsA(isA<AssertionError>()),
      ),
    );
  });

  group("fromCode", () {
    group("with custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(Script.fromCode(value.code, array), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(Script.fromCode(value.code.toLowerCase(), array), value),
      );

      test(
        "with wrong length code",
        tags: "performance",
        () => expect(
          () => Script.fromCode(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with wrong value code",
        tags: "performance",
        () => expect(() => Script.fromCode("code", array), throwsStateError),
      );

      test(
        "with empty array",
        () => expect(
          () => Script.fromCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(Script.fromCode(value.code), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(Script.fromCode(value.code.toLowerCase()), value),
      );

      test(
        "with wrong length code",
        tags: "performance",
        () => expect(() => Script.fromCode(value.toString()), throwsStateError),
      );

      test(
        "with wrong value code",
        tags: "performance",
        () => expect(() => Script.fromCode("code"), throwsStateError),
      );
    });
  });

  group("fromCodeNumeric", () {
    group("with custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(Script.fromCodeNumeric(value.codeNumeric, array), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(
          Script.fromCodeNumeric(value.codeNumeric.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => Script.fromCodeNumeric(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty array",
        () => expect(
          () => Script.fromCodeNumeric(value.codeNumeric, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(Script.fromCodeNumeric(value.codeNumeric), value),
      );

      test(
        "with proper code uppercase",
        tags: "performance",
        () => expect(
          Script.fromCodeNumeric(value.codeNumeric.toUpperCase()),
          value,
        ),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(
          Script.fromCodeNumeric(value.codeNumeric.toLowerCase()),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => Script.fromCodeNumeric(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromAnyCode", () {
    group("with custom array", () {
      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.fromAnyCode(value.code, array), value),
      );
      test(
        "with proper non-numeric code lowercase",
        tags: "performance",
        () =>
            expect(Script.fromAnyCode(value.code.toLowerCase(), array), value),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(Script.fromAnyCode(value.codeNumeric, array), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => Script.fromAnyCode(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty array",
        () => expect(
          () => Script.fromAnyCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.fromAnyCode(value.code), value),
      );

      test(
        "with proper non-numeric code uppercase",
        tags: "performance",
        () => expect(Script.fromAnyCode(value.code.toUpperCase()), value),
      );

      test(
        "with proper non-numeric code lowercase",
        tags: "performance",
        () => expect(Script.fromAnyCode(value.code.toLowerCase()), value),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(Script.fromAnyCode(value.codeNumeric), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => Script.fromAnyCode(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("toJson", () {
    for (final element in Script.list) {
      test("compared to $Script: ${element.name}", () {
        final json = element.toJson();
        expect(json, isNotEmpty);
        final decoded = ScriptJson.fromMap(
          // ignore: avoid-type-casts, it's a test.
          jsonDecode(json) as Map<String, Object?>,
        );

        expect(element.codeOther, decoded.codeNumeric);
        expect(element.code, decoded.code);
        expect(element.name, decoded.name);
        expect(element.date, decoded.date);
        expect(element.pva, decoded.pva);
      });
    }
  });

  group("maybeFromValue", () {
    test(
      "with proper value, without where",
      tags: "performance",
      () => expect(Script.maybeFromValue(value.code), value),
    );

    test(
      "with proper value, with where",
      tags: "performance",
      () => expect(
        Script.maybeFromValue(value.name, where: (script) => script.name),
        value,
      ),
    );

    test(
      "with wrong value, without where",
      tags: "performance",
      () => expect(Script.maybeFromValue(value), isNull),
    );

    test(
      "with wrong value, with where",
      tags: "performance",
      () => expect(
        Script.maybeFromValue(value, where: (script) => script.name),
        isNull,
      ),
    );

    test(
      "with empty array",
      () => expect(
        () => Script.maybeFromValue(value.name, scripts: const []),
        throwsA(isA<AssertionError>()),
      ),
    );

    test(
      "with custom scripts",
      tags: "performance",
      () => expect(Script.maybeFromValue(value.code, scripts: array), value),
    );
  });

  group("maybeFromAnyCode", () {
    group("with custom array", () {
      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.code, array), value),
      );

      test(
        "with proper non-numeric code uppercase",
        tags: "performance",
        () => expect(
          Script.maybeFromAnyCode(value.code.toUpperCase(), array),
          value,
        ),
      );

      test(
        "with proper non-numeric code lowercase",
        tags: "performance",
        () => expect(
          Script.maybeFromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.codeNumeric, array), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.toString(), array), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(null, array), isNull),
      );

      test(
        "with empty array",
        () => expect(
          () => Script.maybeFromAnyCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test("with random element from list", tags: "performance", () {
        final random = Script.list[Random.secure().nextInt(Script.list.length)];
        expect(Script.maybeFromAnyCode(random.code), random);
      });

      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.code), value),
      );

      test(
        "with proper non-numeric code uppercase",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.code.toUpperCase()), value),
      );

      test(
        "with proper non-numeric code lowercase",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.code.toLowerCase()), value),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.codeNumeric), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(Script.maybeFromAnyCode(null), isNull),
      );
    });
  });

  group("asserts", () {
    test(
      "not",
      () => expect(
        () => ScriptCustom(
          name: value.name,
          code: value.code,
          codeNumeric: value.codeNumeric,
          date: value.date,
          pva: value.pva,
        ),
        returnsNormally,
      ),
    );
  });

  group("maybeFromCode", () {
    group("with custom array", () {
      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.code, array), value),
      );

      test(
        "with proper non-numeric code uppercase",
        tags: "performance",
        () => expect(
          Script.maybeFromCode(value.code.toUpperCase(), array),
          value,
        ),
      );

      test(
        "with proper non-numeric code lowercase",
        tags: "performance",
        () => expect(
          Script.maybeFromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.codeNumeric, array), isNull),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.toString(), array), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(Script.maybeFromCode(null, array), isNull),
      );

      test(
        "with empty array",
        () => expect(
          () => Script.maybeFromCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });
    group("without custom array", () {
      test("with random element from list", tags: "performance", () {
        final random = Script.list[Random.secure().nextInt(Script.list.length)];
        expect(Script.maybeFromCode(random.code), random);
      });

      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.code), value),
      );

      test(
        "with proper non-numeric code uppercase",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.code.toUpperCase()), value),
      );

      test(
        "with proper non-numeric code lowercase",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.code.toLowerCase()), value),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.codeNumeric), isNull),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(Script.maybeFromCode(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(Script.maybeFromCode(null), isNull),
      );
    });
  });

  group("maybeFromCodeNumeric", () {
    group("with custom array", () {
      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.maybeFromCodeNumeric(value.code, array), isNull),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(
          Script.maybeFromCodeNumeric(value.codeNumeric, array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          Script.maybeFromCodeNumeric(value.toString(), array),
          isNull,
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(Script.maybeFromCodeNumeric(null, array), isNull),
      );

      test(
        "with empty array",
        () => expect(
          () => Script.maybeFromCodeNumeric(value.codeNumeric, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test("with random element from list", tags: "performance", () {
        final random = Script.list[Random.secure().nextInt(Script.list.length)];
        expect(Script.maybeFromCodeNumeric(random.codeNumeric), random);
      });

      test(
        "with proper non-numeric code",
        tags: "performance",
        () => expect(Script.maybeFromCodeNumeric(value.code), isNull),
      );

      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(Script.maybeFromCodeNumeric(value.codeNumeric), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(Script.maybeFromCodeNumeric(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(Script.maybeFromCodeNumeric(null), isNull),
      );
    });
  });

  group("formatToStandardCode", () {
    test(
      "with random element from list and uppercase code",
      tags: "performance",
      () {
        final random = Script.list[Random.secure().nextInt(Script.list.length)];
        expect(
          Script.formatToStandardCode(random.code.toUpperCase()),
          random.code,
        );
      },
    );

    test(
      "with random element from list and lowercase code",
      tags: "performance",
      () {
        final random = Script.list[Random.secure().nextInt(Script.list.length)];
        expect(
          Script.formatToStandardCode(random.code.toLowerCase()),
          random.code,
        );
      },
    );
  });
});
