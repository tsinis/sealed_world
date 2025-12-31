// ignore_for_file: avoid-returning-void

import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
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

  performanceTest("compile and non compile time constructors equality", () {
    expect(Script.adlm(), ScriptAdlm());
    expect(Script.adlm(), const ScriptAdlm());
    expect(const Script.adlm(), ScriptAdlm());
    expect(const Script.adlm(), const ScriptAdlm());
  });

  group('permissive constructor asserts', () {
    assertTest(
      "not empty code",
      () => ScriptCustom(code: " "),
      shouldThrow: false,
    );

    assertTest(
      "not empty codeNumeric",
      () => ScriptCustom(codeNumeric: " "),
      shouldThrow: false,
    );

    assertTest("empty codeNumeric and code", ScriptCustom.new);
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
        if (element.pva == null) return expect(element.pva, isNull);
        expect(element.pva, isA<String>());
        expect(element.pva, isNotEmpty);
      });
    }
  });

  group("maps O(1) access time check", () {
    for (final element in Script.list) {
      performanceTest("of $Script: ${element.name}", () {
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
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(Script.fromName(array.last.name));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });

    performanceTest("with ${Map<Script, Object>}", () {
      final map = <Script, int>{
        ScriptAdlm(): 4,
        const ScriptAdlm(): 3,
        Script.adlm(): 2,
        // ignore: equal_keys_in_map, it's a test.
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
    performanceTest(
      "with proper name",
      () => expect(Script.fromName(value.name), value),
    );

    performanceTest(
      "with proper name uppercase",
      () => expect(Script.fromName(value.name.toUpperCase()), value),
    );

    performanceTest(
      "with proper name lowercase",
      () => expect(Script.fromName(value.name.toLowerCase()), value),
    );

    performanceTest(
      "with wrong name",
      () => expect(() => Script.fromName(value.toString()), throwsStateError),
    );

    assertTest("with empty array", () => Script.fromName(value.name, const []));
  });

  group("fromCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper code",
        () => expect(Script.fromCode(value.code, array), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(Script.fromCode(value.code.toLowerCase(), array), value),
      );

      performanceTest(
        "with wrong length code",
        () => expect(
          () => Script.fromCode(value.toString(), array),
          throwsStateError,
        ),
      );

      performanceTest(
        "with wrong value code",
        () => expect(() => Script.fromCode("code", array), throwsStateError),
      );

      assertTest(
        "with empty array",
        () => Script.fromCode(value.code, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper code",
        () => expect(Script.fromCode(value.code), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(Script.fromCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with wrong length code",
        () => expect(() => Script.fromCode(value.toString()), throwsStateError),
      );

      performanceTest(
        "with wrong value code",
        () => expect(() => Script.fromCode("code"), throwsStateError),
      );
    });
  });

  group("fromCodeNumeric", () {
    group("with custom array", () {
      performanceTest(
        "with proper code",
        () => expect(Script.fromCodeNumeric(value.codeNumeric, array), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(
          Script.fromCodeNumeric(value.codeNumeric.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => Script.fromCodeNumeric(value.toString()),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty array",
        () => Script.fromCodeNumeric(value.codeNumeric, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper code",
        () => expect(Script.fromCodeNumeric(value.codeNumeric), value),
      );

      performanceTest(
        "with proper code uppercase",
        () => expect(
          Script.fromCodeNumeric(value.codeNumeric.toUpperCase()),
          value,
        ),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(
          Script.fromCodeNumeric(value.codeNumeric.toLowerCase()),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => Script.fromCodeNumeric(value.toString()),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty array",
        () => Script.fromCodeNumeric(value.codeNumeric, const []),
      );
    });
  });

  group("fromAnyCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.fromAnyCode(value.code, array), value),
      );
      performanceTest(
        "with proper non-numeric code lowercase",
        () =>
            expect(Script.fromAnyCode(value.code.toLowerCase(), array), value),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(Script.fromAnyCode(value.codeNumeric, array), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => Script.fromAnyCode(value.toString(), array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty array",
        () => Script.fromAnyCode(value.code, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.fromAnyCode(value.code), value),
      );

      performanceTest(
        "with proper non-numeric code uppercase",
        () => expect(Script.fromAnyCode(value.code.toUpperCase()), value),
      );

      performanceTest(
        "with proper non-numeric code lowercase",
        () => expect(Script.fromAnyCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(Script.fromAnyCode(value.codeNumeric), value),
      );

      performanceTest(
        "with wrong code",
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
    performanceTest(
      "with proper value, without where",
      () => expect(Script.maybeFromValue(value.code), value),
    );

    performanceTest(
      "with proper value, with where",
      () => expect(
        Script.maybeFromValue(value.name, where: (script) => script.name),
        value,
      ),
    );

    performanceTest(
      "with wrong value, without where",
      () => expect(Script.maybeFromValue(value), isNull),
    );

    performanceTest(
      "with wrong value, with where",
      () => expect(
        Script.maybeFromValue(value, where: (script) => script.name),
        isNull,
      ),
    );

    assertTest(
      "with empty array",
      () => Script.maybeFromValue(value.name, scripts: const []),
    );

    performanceTest(
      "with custom scripts",
      () => expect(Script.maybeFromValue(value.code, scripts: array), value),
    );
  });

  group("maybeFromAnyCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.maybeFromAnyCode(value.code, array), value),
      );

      performanceTest(
        "with proper non-numeric code uppercase",
        () => expect(
          Script.maybeFromAnyCode(value.code.toUpperCase(), array),
          value,
        ),
      );

      performanceTest(
        "with proper non-numeric code lowercase",
        () => expect(
          Script.maybeFromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(Script.maybeFromAnyCode(value.codeNumeric, array), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(Script.maybeFromAnyCode(value.toString(), array), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(Script.maybeFromAnyCode(null, array), isNull),
      );

      assertTest(
        "with empty array",
        () => Script.maybeFromAnyCode(value.code, const []),
      );
    });

    group("without custom array", () {
      randomElementTest(
        "with random element from list",
        Script.list,
        (random) => expect(Script.maybeFromAnyCode(random.code), random),
      );

      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.maybeFromAnyCode(value.code), value),
      );

      performanceTest(
        "with proper non-numeric code uppercase",
        () => expect(Script.maybeFromAnyCode(value.code.toUpperCase()), value),
      );

      performanceTest(
        "with proper non-numeric code lowercase",
        () => expect(Script.maybeFromAnyCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(Script.maybeFromAnyCode(value.codeNumeric), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(Script.maybeFromAnyCode(value.toString()), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(Script.maybeFromAnyCode(null), isNull),
      );
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => ScriptCustom(
        name: value.name,
        code: value.code,
        codeNumeric: value.codeNumeric,
        date: value.date,
        pva: value.pva,
      ),
      shouldThrow: false,
    );
  });

  group("maybeFromCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.maybeFromCode(value.code, array), value),
      );

      performanceTest(
        "with proper non-numeric code uppercase",
        () => expect(
          Script.maybeFromCode(value.code.toUpperCase(), array),
          value,
        ),
      );

      performanceTest(
        "with proper non-numeric code lowercase",
        () => expect(
          Script.maybeFromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(Script.maybeFromCode(value.codeNumeric, array), isNull),
      );

      performanceTest(
        "with wrong code",
        () => expect(Script.maybeFromCode(value.toString(), array), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(Script.maybeFromCode(null, array), isNull),
      );

      assertTest(
        "with empty array",
        () => Script.maybeFromCode(value.code, const []),
      );
    });
    group("without custom array", () {
      randomElementTest(
        "with random element from list",
        Script.list,
        (random) => expect(Script.maybeFromCode(random.code), random),
      );

      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.maybeFromCode(value.code), value),
      );

      performanceTest(
        "with proper non-numeric code uppercase",
        () => expect(Script.maybeFromCode(value.code.toUpperCase()), value),
      );

      performanceTest(
        "with proper non-numeric code lowercase",
        () => expect(Script.maybeFromCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(Script.maybeFromCode(value.codeNumeric), isNull),
      );

      performanceTest(
        "with wrong code",
        () => expect(Script.maybeFromCode(value.toString()), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(Script.maybeFromCode(null), isNull),
      );
    });
  });

  group("maybeFromCodeNumeric", () {
    group("with custom array", () {
      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.maybeFromCodeNumeric(value.code, array), isNull),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(
          Script.maybeFromCodeNumeric(value.codeNumeric, array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          Script.maybeFromCodeNumeric(value.toString(), array),
          isNull,
        ),
      );

      performanceTest(
        "with null code",
        () => expect(Script.maybeFromCodeNumeric(null, array), isNull),
      );

      assertTest(
        "with empty array",
        () => Script.maybeFromCodeNumeric(value.codeNumeric, const []),
      );
    });

    group("without custom array", () {
      randomElementTest(
        "with random element from list",
        Script.list,
        (random) =>
            expect(Script.maybeFromCodeNumeric(random.codeNumeric), random),
      );

      performanceTest(
        "with proper non-numeric code",
        () => expect(Script.maybeFromCodeNumeric(value.code), isNull),
      );

      performanceTest(
        "with proper numeric code",
        () => expect(Script.maybeFromCodeNumeric(value.codeNumeric), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(Script.maybeFromCodeNumeric(value.toString()), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(Script.maybeFromCodeNumeric(null), isNull),
      );
    });
  });

  group("formatToStandardCode", () {
    randomElementTest(
      "with random element from list and uppercase code",
      Script.list,
      (random) => expect(
        Script.formatToStandardCode(random.code.toUpperCase()),
        random.code,
      ),
    );

    randomElementTest(
      "with random element from list and lowercase code",
      Script.list,
      (random) => expect(
        Script.formatToStandardCode(random.code.toLowerCase()),
        random.code,
      ),
    );
  });
});
