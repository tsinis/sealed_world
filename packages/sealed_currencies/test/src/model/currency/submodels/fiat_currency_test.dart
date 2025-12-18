// ignore_for_file: deprecated_member_use, it's TODO!
// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_currencies/currency_translations.dart";
import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_json.dart";
import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

class _FiatCurrencyTest extends FiatCurrency {
  const _FiatCurrencyTest() : super.permissive(code: "123", name: " ");
}

// ignore: avoid-high-cyclomatic-complexity, it's a test...
void main() => group("$FiatCurrency", () {
  final value = FiatCurrency.list.last;
  final array = {value, FiatCurrency.list.first};

  test("interfaces", () {
    expect(value, isA<Currency>());
    expect(value, isA<IsoStandardized>());
    expect(value, isA<IsoTranslated>());
    expect(value, isA<JsonEncodable>());
    expect(value, isA<Named>());
    expect(value, isA<Translated>());
  });

  performanceTest("compile and non compile time constructors equality", () {
    expect(FiatCurrency.aed(), FiatAed());
    expect(FiatCurrency.aed(), const FiatAed());
    expect(const FiatCurrency.aed(), FiatAed());
    expect(const FiatCurrency.aed(), const FiatAed());
  });

  assertTest(
    "permissive constructor",
    () => const _FiatCurrencyTest().codeNumeric,
    shouldThrow: false,
    alsoExpect: () => expect(const _FiatCurrencyTest().codeNumeric, isEmpty),
  );

  group("fields", () {
    for (final element in FiatCurrency.list) {
      test("of $FiatCurrency: ${element.name}", () {
        expect(element.code, isA<String>());
        expect(element.code, isNotEmpty);
        expect(element.name, isA<String>());
        expect(element.name, isNotEmpty);
        expect(element.codeNumeric, isA<String>());
        expect(element.codeNumeric, isNotEmpty);
        expect(element.codeOther, element.codeNumeric);
        expect(element.internationalName, element.name);
        expect(element.namesNative, isA<List<String>>());
        expect(element.namesNative, isNotEmpty);
        if (element.alternateSymbols == null) {
          expect(element.alternateSymbols, isNull);
        } else {
          expect(element.alternateSymbols, isA<List<String>>());
          expect(element.alternateSymbols, isNotEmpty);
        }
        expect(element.disambiguateSymbol, isA<String?>());
        expect(
          element.disambiguateSymbol,
          element.disambiguateSymbol == null ? isNull : isNotEmpty,
        );
        expect(element.htmlEntity, isA<String?>());
        expect(
          element.htmlEntity,
          element.htmlEntity == null ? isNull : isNotEmpty,
        );
        expect(element.subunit, isA<String?>());
        expect(element.subunit, element.subunit == null ? isNull : isNotEmpty);
        expect(element.symbol, isA<String?>());
        expect(element.symbol, element.symbol == null ? isNull : isNotEmpty);
        expect(element.priority, isPositive);
        expect(element.smallestDenomination, isNonNegative);
        expect(element.subunitToUnit, isPositive);
        expect(element.unitFirst, isA<bool>());
        expect(element.decimalMark, isA<String>());
        expect(element.thousandsSeparator, isA<String>());
        expect(element.translations, isNotEmpty);
      });
    }
  });

  test("compareTo", () => expect(value.compareTo(array.last), isNot(isZero)));

  group("maps O(1) access time check", () {
    for (final element in FiatCurrency.listExtended) {
      performanceTest("of $FiatCurrency: ${element.name}", () {
        expect(FiatCurrency.map[element.code], element);
        expect(FiatCurrency.codeMap[element.code], element);
        expect(
          FiatCurrency.codeNumericMap[element.codeNumeric],
          element,
          skip: element == const FiatAng(),
          reason: "XCG reuses same numeric code as ANG",
        );
      });
    }
  });

  group("equality", () {
    test("basic", () {
      expect(FiatCurrency.list.first, isNot(equals(value)));
      expect(FiatCurrency.list.last, same(value));
      expect(FiatCurrency.fromName(value.name), same(value));
      expect(
        FiatCurrency.fromName(FiatCurrency.list.last.name),
        same(FiatCurrency.list.last),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(FiatCurrency.fromName(array.last.name));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });

    performanceTest("with ${Map<FiatCurrency, Object>}", () {
      final map = <FiatCurrency, int>{
        FiatAed(): 4,
        const FiatAed(): 3,
        FiatCurrency.aed(): 2,
        // ignore: equal_keys_in_map, it's a test.
        const FiatCurrency.aed(): 1,
        FiatCurrency.fromCode("AED"): 0,
      };
      expect(map.entries.single.key, FiatAed());
      expect(map.entries.single.key, const FiatAed());
      expect(map.entries.single.key, FiatCurrency.aed());
      expect(map.entries.single.key, const FiatCurrency.aed());
      expect(map.entries.single.value, isZero);
    });
  });

  test("toString", () {
    expect(value.toString(short: false), contains(value.code));
    expect(value.toString().contains(value.name), isFalse);
  });

  group("fromName", () {
    performanceTest(
      "with proper name",
      () => expect(FiatCurrency.fromName(value.name), value),
    );

    performanceTest(
      "with proper name lowercase",
      () => expect(FiatCurrency.fromName(value.name.toLowerCase()), value),
    );

    performanceTest(
      "with proper name uppercase",
      () => expect(FiatCurrency.fromName(value.name.toUpperCase()), value),
    );

    performanceTest(
      "with wrong name",
      () => expect(
        () => FiatCurrency.fromName(value.toString()),
        throwsStateError,
      ),
    );

    assertTest(
      "with empty array",
      () => FiatCurrency.fromName(value.name, const []),
    );
  });

  group("fromCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper code",
        () => expect(FiatCurrency.fromCode(value.code, array), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(
          FiatCurrency.fromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => FiatCurrency.fromCode(value.toString(), array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty array",
        () => FiatCurrency.fromCode(value.code, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper code",
        () => expect(FiatCurrency.fromCode(value.code), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(FiatCurrency.fromCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => FiatCurrency.fromCode(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromCodeNumeric", () {
    group("with custom array", () {
      performanceTest(
        "with proper code",
        () => expect(
          FiatCurrency.fromCodeNumeric(value.codeNumeric, array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => FiatCurrency.fromCodeNumeric(value.toString(), array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty array",
        () => FiatCurrency.fromCodeNumeric(value.code, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with int code",
        () => expect(FiatCurrency.fromCodeNumeric(932), value),
      );

      performanceTest(
        "with proper code",
        () => expect(FiatCurrency.fromCodeNumeric(value.codeNumeric), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => FiatCurrency.fromCodeNumeric(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromAnyCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper numeric code",
        () => expect(FiatCurrency.fromAnyCode(value.codeNumeric, array), value),
      );

      performanceTest(
        "with proper alpha code",
        () => expect(FiatCurrency.fromAnyCode(value.code, array), value),
      );

      performanceTest(
        "with proper alpha code lowercase",
        () => expect(
          FiatCurrency.fromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => FiatCurrency.fromAnyCode(value.toString(), array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty array",
        () => FiatCurrency.fromAnyCode(value.code, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper numeric code",
        () => expect(FiatCurrency.fromAnyCode(value.codeNumeric), value),
      );

      performanceTest(
        "with proper alpha code",
        () => expect(FiatCurrency.fromAnyCode(value.code), value),
      );

      performanceTest(
        "with proper alpha code lowercase",
        () => expect(FiatCurrency.fromAnyCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => FiatCurrency.fromAnyCode(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("toJson", () {
    for (final element in FiatCurrency.list) {
      test("compared to $FiatCurrency: ${element.name}", () {
        final json = element.toJson();
        expect(json, isNotEmpty);
        final decoded = json.tryParse(FiatCurrencyJson.fromMap);
        expect(
          decoded?.toString(short: false),
          json.parse(FiatCurrencyJson.fromMap).toString(short: false),
        );
        expect(element.code, decoded?.code);
        expect(element.name, decoded?.name);
        expect(element.codeNumeric, decoded?.codeNumeric);
        expect(element.namesNative, decoded?.namesNative);
        expect(element.alternateSymbols, decoded?.alternateSymbols);
        expect(element.htmlEntity, decoded?.htmlEntity);
        expect(element.disambiguateSymbol, decoded?.disambiguateSymbol);
        expect(element.subunit, decoded?.subunit);
        expect(element.symbol, decoded?.symbol);
        expect(element.priority, decoded?.priority);
        expect(element.smallestDenomination, decoded?.smallestDenomination);
        expect(element.subunitToUnit, decoded?.subunitToUnit);
        expect(element.unitFirst, decoded?.unitFirst);
        expect(element.decimalMark, decoded?.decimalMark);
        expect(element.thousandsSeparator, decoded?.thousandsSeparator);
        expect(element.translations, decoded?.translations);
      });
    }
  });

  group("maybeFromValue", () {
    performanceTest(
      "with proper value, without where",
      () => expect(FiatCurrency.maybeFromValue(value.code), value),
    );

    performanceTest(
      "with proper value, with where",
      () => expect(
        FiatCurrency.maybeFromValue(
          value.code,
          where: (currency) => currency.code,
        ),
        value,
      ),
    );

    performanceTest(
      "with wrong value, without where",
      () => expect(FiatCurrency.maybeFromValue(value), isNull),
    );

    performanceTest(
      "with wrong value, with where",
      () => expect(
        FiatCurrency.maybeFromValue(value, where: (currency) => currency.name),
        isNull,
      ),
    );

    assertTest(
      "with empty languages",
      () => FiatCurrency.maybeFromValue(value.name, currencies: const []),
    );

    performanceTest(
      "with custom currencies",
      () => expect(
        FiatCurrency.maybeFromValue(value.code, currencies: array),
        value,
      ),
    );
  });

  group("maybeFromCodeNumeric", () {
    group("with custom array", () {
      performanceTest(
        "with proper alpha code",
        () => expect(
          FiatCurrency.maybeFromCodeNumeric(value.codeNumeric, array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          FiatCurrency.maybeFromCodeNumeric(value.toString(), array),
          isNull,
        ),
      );

      assertTest(
        "with empty array",
        () => FiatCurrency.maybeFromCodeNumeric(value.code, const []),
      );

      performanceTest(
        "with null code",
        () => expect(FiatCurrency.maybeFromCodeNumeric(null, array), isNull),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper alpha code",
        () =>
            expect(FiatCurrency.maybeFromCodeNumeric(value.codeNumeric), value),
      );

      performanceTest(
        "with wrong code",
        () =>
            expect(FiatCurrency.maybeFromCodeNumeric(value.toString()), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(FiatCurrency.maybeFromCodeNumeric(null), isNull),
      );
    });
  });

  group("maybeFromCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper alpha code",
        () => expect(FiatCurrency.maybeFromCode(value.code, array), value),
      );

      performanceTest(
        "with proper alpha code lowercase",
        () => expect(
          FiatCurrency.maybeFromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () =>
            expect(FiatCurrency.maybeFromCode(value.toString(), array), isNull),
      );

      assertTest(
        "with empty array",
        () => FiatCurrency.maybeFromCode(value.code, const []),
      );

      performanceTest(
        "with null code",
        () => expect(FiatCurrency.maybeFromCode(null, array), isNull),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper alpha code",
        () => expect(FiatCurrency.maybeFromCode(value.code), value),
      );

      performanceTest(
        "with proper alpha code lowercase",
        () =>
            expect(FiatCurrency.maybeFromCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(FiatCurrency.maybeFromCode(value.toString()), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(FiatCurrency.maybeFromCode(null), isNull),
      );
    });
  });

  group("maybeFromAnyCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper numeric code",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.codeNumeric, array),
          value,
        ),
      );

      performanceTest(
        "with proper alpha code",
        () => expect(FiatCurrency.maybeFromAnyCode(value.code, array), value),
      );

      performanceTest(
        "with proper alpha code lowercase",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.toString(), array),
          isNull,
        ),
      );

      assertTest(
        "with empty array",
        () => FiatCurrency.maybeFromAnyCode(value.code, const []),
      );

      performanceTest(
        "with null code",
        () => expect(FiatCurrency.maybeFromAnyCode(null, array), isNull),
      );
    });

    group("without custom array", () {
      performanceTest(
        "with proper numeric code",
        () => expect(FiatCurrency.maybeFromAnyCode(value.codeNumeric), value),
      );

      performanceTest(
        "with proper alpha code",
        () => expect(FiatCurrency.maybeFromAnyCode(value.code), value),
      );

      performanceTest(
        "with proper alpha code lowercase",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.code.toLowerCase()),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(FiatCurrency.maybeFromAnyCode(value.toString()), isNull),
      );

      performanceTest(
        "with null code",
        () => expect(FiatCurrency.maybeFromAnyCode(null), isNull),
      );
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: const [],
      ),
      shouldThrow: false,
    );

    assertTest(
      "empty name",
      () => FiatCurrency(
        code: value.code,
        name: "",
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: value.translations,
      ),
    );

    assertTest(
      "code length",
      () => FiatCurrency(
        code: value.name,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: value.translations,
      ),
    );

    assertTest(
      "codeNumeric length",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.name,
        translations: value.translations,
      ),
    );

    assertTest(
      "empty namesNative",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: const [],
        codeNumeric: value.codeNumeric,
        translations: value.translations,
      ),
    );

    assertTest(
      "empty htmlEntity",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: value.translations,
        htmlEntity: "",
      ),
    );

    assertTest(
      "empty subunit",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: value.translations,
        subunit: "",
      ),
    );

    assertTest(
      "empty symbol",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: value.translations,
        symbol: "",
      ),
    );

    assertTest(
      "empty alternateSymbols",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: value.translations,
        alternateSymbols: const [],
      ),
    );

    assertTest(
      "negative smallestDenomination",
      () => FiatCurrency(
        code: value.code,
        name: value.name,
        namesNative: value.namesNative,
        codeNumeric: value.codeNumeric,
        translations: value.translations,
        smallestDenomination: -1,
      ),
    );
  });

  group("translations", () {
    test("translation should always provide at least eng translation", () {
      const abkhazia = LangAbk();
      const nonExistCode = "000";
      int count = 0;
      for (final currency in FiatCurrency.list) {
        final maybeMissing = currency.maybeTranslation(
          const BasicLocale(abkhazia, countryCode: nonExistCode),
          useLanguageFallback: false,
        );
        if (maybeMissing != null) continue;
        count += 1;
        expect(
          currency.translation(
            const BasicLocale(abkhazia, countryCode: nonExistCode),
          ),
          // ignore: avoid-misused-test-matchers, it could be an exception.
          isNotNull,
        );
      }
      expect(count, isPositive);
    });

    test("there should be always minimum translations count available", () {
      final map = {for (final currency in FiatCurrency.list) currency: 0};

      for (final l10n in NaturalLanguage.list) {
        for (final currency in FiatCurrency.list) {
          final hasTranslationForValue = currency.maybeTranslation(
            BasicLocale(l10n),
          );
          if (hasTranslationForValue != null) {
            map[currency] = map[currency]! + 1;
          }
        }
      }

      final sortedList = map.entries.toList(growable: false)
        ..sort((a, b) => a.value.compareTo(b.value));
      expect(
        sortedList.first.value,
        kSealedCurrenciesSupportedLanguages.length + 2,
      );
    });

    test("there should be always translations for specific languages", () {
      final map = {for (final lang in NaturalLanguage.list) lang: 0};
      final missing = <NaturalLanguage, Set<FiatCurrency>>{};

      for (final l10n in NaturalLanguage.list) {
        for (final currency in FiatCurrency.list) {
          final translation = currency.maybeTranslation(BasicLocale(l10n));
          if (translation == null) {
            missing[l10n] = {...?missing[l10n], currency};
          } else {
            map[l10n] = map[l10n]! + 1;
          }
        }
      }

      final sortedList = map.entries.toList(growable: false)
        ..sort((a, b) => a.value.compareTo(b.value));
      final complete = sortedList.where(
        (item) => item.value >= FiatCurrency.list.length,
      );
      final sortedMap = Map.fromEntries(complete);
      final sortedLanguages = sortedMap.keys.toList(growable: false)
        ..sort((a, b) => a.code.compareTo(b.code));

      expect(sortedLanguages, containsAll(kMaterialSupportedLanguagesSealed));
      expect(sortedLanguages, containsAll(kCupertinoSupportedLanguagesSealed));
      expect(sortedLanguages, kSealedCurrenciesSupportedLanguages);

      for (final currency in FiatCurrency.list) {
        for (final l10n in kSealedCurrenciesSupportedLanguages) {
          if (l10n == const LangEng()) continue;
          expect(
            currency.translation(BasicLocale(l10n)),
            isNot(currency.translation(const BasicLocale(LangEng()))),
          );
        }
      }
    });

    group("commonNamesCacheMap", () {
      performanceTest(
        "languages in supported list should have all translations",
        () {
          for (final language in kSealedCurrenciesSupportedLanguages) {
            final cache = FiatCurrency.list.commonNamesCacheMap(
              BasicLocale(language, script: language.scripts.first),
            );
            expect(cache.length, FiatCurrency.list.length);
          }
        },
      );

      performanceTest(
        """some languages should have at least 2 translations of it's own name""",
        () {
          final cache = FiatCurrency.list.commonNamesCacheMap(
            const BasicLocale(LangKal()),
          );
          expect(cache.length, 2);
        },
      );
    });
  });
});
