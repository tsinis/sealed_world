// ignore_for_file: prefer_const_constructors, equal_keys_in_map, it's a test.
// ignore_for_file: avoid-duplicate-test-assertions

import "dart:convert";

import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_json.dart";
import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:sealed_currencies/src/model/currency/submodels/fiat_currency.dart";
import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

void main() => group("$FiatCurrency", () {
  final value = FiatCurrency.list.last;
  final array = {value, FiatCurrency.list.first};

  test("interfaces", () {
    expect(value, isA<Currency>());
    expect(value, isA<IsoStandardized>());
    expect(value, isA<IsoTranslated>());
    expect(value, isA<JsonEncodable>());
    expect(value, isA<Named>());
  });

  test(
    "compile and non compile time constructors equality",
    tags: "performance",
    () {
      expect(FiatCurrency.aed(), FiatAed());
      expect(FiatCurrency.aed(), const FiatAed());
      expect(const FiatCurrency.aed(), FiatAed());
      expect(const FiatCurrency.aed(), const FiatAed());
    },
  );

  group("permissive constructor asserts", () {
    test(
      "not empty code",
      () => expect(() => const FiatCustom(code: "code").code, returnsNormally),
    );

    test(
      "not empty codeNumeric",
      () => expect(
        () => const FiatCustom(codeNumeric: "code").codeNumeric,
        returnsNormally,
      ),
    );

    test(
      "empty code and codeNumeric",
      () => expect(FiatCustom.new, throwsA(isA<AssertionError>())),
    );
  });

  group("some currencies should be fully translated", () {
    /// This is a comprehensive list of languages that ensure the availability
    /// of translations for every language in the natural language `list`.
    ///
    /// It is important to note that while other languages may not be included
    /// in this list, they may still have translations available for the most
    /// common languages, but there may be some missing translations for rarer
    /// languages. Every language contains more than 85 translations of it's
    /// name.
    ///
    /// Includes all the Material localizations in [kMaterialSupportedLanguages](https://api.flutter.dev/flutter/flutter_localizations/kMaterialSupportedLanguages.html)
    /// with a two letter code and much more (for example on top of that it also
    /// provides translations for the following languages):
    /// - Breton (BRE)
    /// - Irish (GLE)
    /// - Kashmiri (KAS)
    /// - Norwegian Nynorsk (NNO)
    /// - Romansh (ROH)
    /// - Tonga (TON)
    /// - Uyghur (UIG)
    /// That are not listed in Material one, and much more.

    /// This is a comprehensive list of currencies that ensure the availability
    /// of translations for every language in the currencies `list`.
    ///
    /// It is important to note that while other languages may not be included
    /// in this list, they may still have translations available for most common
    /// currencies, but there may be some missing translations for rarer
    /// languages. Every currency contains more than 79 translations of it's
    /// name.
    ///
    /// Includes all the Material localizations in [kMaterialSupportedLanguages](https://api.flutter.dev/flutter/flutter_localizations/kMaterialSupportedLanguages.html)
    /// with a two letter code and much more (for example on top of that it also
    /// provides translations for the following languages:
    /// - Breton (BRE)
    /// - Western Frisian (FRY)
    /// - (Scottish) Gaelic (GLA)
    /// - Irish (GLE)
    /// - Luxembourgish (Letzeburgesch) (LTZ)
    /// That are not listed in Material one, and much more.
    const kSealedCurrenciesSupportedLanguages = <NaturalLanguage>[
      LangAfr(),
      LangAmh(),
      LangAra(),
      LangAsm(),
      LangAze(),
      LangBel(),
      LangBen(),
      LangBos(),
      LangBre(),
      LangBul(),
      LangCat(),
      LangCes(),
      LangCym(),
      LangDan(),
      LangDeu(),
      LangEll(),
      LangEng(),
      LangEst(),
      LangEus(),
      LangFas(),
      LangFin(),
      LangFra(),
      LangFry(),
      LangGla(),
      LangGle(),
      LangGlg(),
      LangGuj(),
      LangHeb(),
      LangHin(),
      LangHrv(),
      LangHun(),
      LangHye(),
      LangInd(),
      LangIsl(),
      LangIta(),
      LangJpn(),
      LangKan(),
      LangKat(),
      LangKaz(),
      LangKhm(),
      LangKir(),
      LangKor(),
      LangLao(),
      LangLav(),
      LangLit(),
      LangLtz(),
      LangMal(),
      LangMar(),
      LangMkd(),
      LangMon(),
      LangMsa(),
      LangMya(),
      LangNep(),
      LangNld(),
      LangNno(),
      LangNob(),
      LangNor(),
      LangOri(),
      LangPan(),
      LangPol(),
      LangPor(),
      LangPus(),
      LangRoh(),
      LangRon(),
      LangRus(),
      LangSin(),
      LangSlk(),
      LangSlv(),
      LangSpa(),
      LangSqi(),
      LangSrp(),
      LangSwa(),
      LangSwe(),
      LangTam(),
      LangTel(),
      LangTgl(),
      LangTha(),
      LangTur(),
      LangUig(),
      LangUkr(),
      LangUrd(),
      LangUzb(),
      LangVie(),
      LangZho(),
      LangZul(),
    ];

    final langs = <NaturalLanguage>{};

    for (final language in kSealedCurrenciesSupportedLanguages) {
      test("${language.internationalName} should have all translations", () {
        final translation = FiatCurrency.list.commonNamesMap(
          options: LocaleMappingOptions(mainLocale: BasicLocale(language)),
        );
        if (translation.length == FiatCurrency.list.length) langs.add(language);
        expect(
          translation.length,
          greaterThanOrEqualTo(FiatCurrency.list.length),
          reason:
              'Language "${language.internationalName}" is expected to have '
              "full translations for all ${FiatCurrency.list.length} langs.",
        );
      });
    }

    test(
      "should be equal",
      () => expect(langs, containsAll(kSealedCurrenciesSupportedLanguages)),
    );
  });

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
        if (element.alternateSymbols != null) {
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
        expect(element.l10n.mapper, isNotNull);
      });
    }
  });

  test("compareTo", () => expect(value.compareTo(array.last), isNot(isZero)));

  group("maps O(1) access time check", () {
    for (final element in FiatCurrency.listExtended) {
      test("of $FiatCurrency: ${element.name}", tags: "performance", () {
        expect(FiatCurrency.map[element.code], element);
        expect(FiatCurrency.codeMap[element.code], element);
        expect(FiatCurrency.codeNumericMap[element.codeNumeric], element);
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
      expect(array.length, 2);
      array.add(FiatCurrency.fromName(array.last.name));
      expect(array.length, 2);
    });

    test("with ${Map<FiatCurrency, Object>}", tags: "performance", () {
      final map = <FiatCurrency, int>{
        FiatAed(): 4,
        const FiatAed(): 3,
        FiatCurrency.aed(): 2,
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

  group("sealed switch expressions", () {
    // ignore: avoid-local-functions, it's a test.
    String? describe(FiatCurrency currency) => switch (currency) {
      FiatUsd() => currency.code,
      FiatCustom(:final code) when code.startsWith("Z") =>
        "custom-prefix-$code",
      FiatCustom(:final codeNumeric) when codeNumeric.endsWith("9") =>
        "custom-numeric-$codeNumeric",
      // ignore: avoid-wildcard-cases-with-sealed-classes, it's a test.
      _ => null,
    };

    test("matches generated subtypes", () {
      expect(describe(.usd()), "USD");
      expect(describe(.eur()), isNull);
    });

    test("matches FiatCustom with prefix guard", () {
      FiatCurrency custom = const FiatCustom(code: "ZZZ");
      expect(describe(custom), "custom-prefix-ZZZ");
      custom = const FiatCustom(codeNumeric: "999");
      expect(describe(custom), "custom-numeric-999");
    });
  });

  test("toString", () {
    expect(value.toString(short: false), contains(value.code));
    expect(value.toString().contains(value.name), isFalse);
  });

  group("fromName", () {
    test(
      "with proper name",
      tags: "performance",
      () => expect(FiatCurrency.fromName(value.name), value),
    );

    test(
      "with proper name lowercase",
      tags: "performance",
      () => expect(FiatCurrency.fromName(value.name.toLowerCase()), value),
    );

    test(
      "with proper name uppercase",
      tags: "performance",
      () => expect(FiatCurrency.fromName(value.name.toUpperCase()), value),
    );

    test(
      "with wrong name",
      tags: "performance",
      () => expect(
        () => FiatCurrency.fromName(value.toString()),
        throwsStateError,
      ),
    );

    test(
      "with empty array",
      () => expect(
        () => FiatCurrency.fromName(value.name, const []),
        throwsA(isA<AssertionError>()),
      ),
    );
  });

  group("fromCode", () {
    group("with custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(FiatCurrency.fromCode(value.code, array), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(
          FiatCurrency.fromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => FiatCurrency.fromCode(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty array",
        () => expect(
          () => FiatCurrency.fromCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(FiatCurrency.fromCode(value.code), value),
      );

      test(
        "with proper code lowercase",
        tags: "performance",
        () => expect(FiatCurrency.fromCode(value.code.toLowerCase()), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => FiatCurrency.fromCode(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromCodeNumeric", () {
    group("with custom array", () {
      test(
        "with proper code",
        tags: "performance",
        () => expect(
          FiatCurrency.fromCodeNumeric(value.codeNumeric, array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => FiatCurrency.fromCodeNumeric(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty array",
        () => expect(
          () => FiatCurrency.fromCodeNumeric(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with int code",
        tags: "performance",
        () => expect(FiatCurrency.fromCodeNumeric(924), value),
      );

      test(
        "with proper code",
        tags: "performance",
        () => expect(FiatCurrency.fromCodeNumeric(value.codeNumeric), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => FiatCurrency.fromCodeNumeric(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromAnyCode", () {
    group("with custom array", () {
      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(FiatCurrency.fromAnyCode(value.codeNumeric, array), value),
      );

      test(
        "with proper alpha code",
        tags: "performance",
        () => expect(FiatCurrency.fromAnyCode(value.code, array), value),
      );

      test(
        "with proper alpha code lowercase",
        tags: "performance",
        () => expect(
          FiatCurrency.fromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          () => FiatCurrency.fromAnyCode(value.toString(), array),
          throwsStateError,
        ),
      );

      test(
        "with empty array",
        () => expect(
          () => FiatCurrency.fromAnyCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );
    });

    group("without custom array", () {
      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(FiatCurrency.fromAnyCode(value.codeNumeric), value),
      );

      test(
        "with proper alpha code",
        tags: "performance",
        () => expect(FiatCurrency.fromAnyCode(value.code), value),
      );

      test(
        "with proper alpha code lowercase",
        tags: "performance",
        () => expect(FiatCurrency.fromAnyCode(value.code.toLowerCase()), value),
      );

      test(
        "with wrong code",
        tags: "performance",
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
        // ignore: avoid-type-casts, it's a test.
        final decoded = FiatCurrencyJson.fromMap(jsonDecode(json) as JsonMap);
        expect(element.code, decoded.code);
        expect(element.name, decoded.name);
        expect(element.codeNumeric, decoded.codeNumeric);
        expect(element.namesNative, decoded.namesNative);
        expect(element.alternateSymbols, decoded.alternateSymbols);
        expect(element.htmlEntity, decoded.htmlEntity);
        expect(element.disambiguateSymbol, decoded.disambiguateSymbol);
        expect(element.subunit, decoded.subunit);
        expect(element.symbol, decoded.symbol);
        expect(element.priority, decoded.priority);
        expect(element.smallestDenomination, decoded.smallestDenomination);
        expect(element.subunitToUnit, decoded.subunitToUnit);
        expect(element.unitFirst, decoded.unitFirst);
        expect(element.decimalMark, decoded.decimalMark);
        expect(element.thousandsSeparator, decoded.thousandsSeparator);
      });
    }
  });

  group("maybeFromValue", () {
    test(
      "with proper value, without where",
      tags: "performance",
      () => expect(FiatCurrency.maybeFromValue(value.code), value),
    );

    test(
      "with proper value, with where",
      tags: "performance",
      () => expect(
        FiatCurrency.maybeFromValue(
          value.code,
          where: (currency) => currency.code,
        ),
        value,
      ),
    );

    test(
      "with wrong value, without where",
      tags: "performance",
      () => expect(FiatCurrency.maybeFromValue(value), isNull),
    );

    test(
      "with wrong value, with where",
      tags: "performance",
      () => expect(
        FiatCurrency.maybeFromValue(value, where: (currency) => currency.name),
        isNull,
      ),
    );

    test(
      "with empty languages",
      () => expect(
        () => FiatCurrency.maybeFromValue(value.name, currencies: const []),
        throwsA(isA<AssertionError>()),
      ),
    );

    test(
      "with custom currencies",
      tags: "performance",
      () => expect(
        FiatCurrency.maybeFromValue(value.code, currencies: array),
        value,
      ),
    );
  });

  group("maybeFromCodeNumeric", () {
    group("with custom array", () {
      test(
        "with proper alpha code",
        tags: "performance",
        () => expect(
          FiatCurrency.maybeFromCodeNumeric(value.codeNumeric, array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          FiatCurrency.maybeFromCodeNumeric(value.toString(), array),
          isNull,
        ),
      );

      test(
        "with empty array",
        () => expect(
          () => FiatCurrency.maybeFromCodeNumeric(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromCodeNumeric(null, array), isNull),
      );
    });

    group("without custom array", () {
      test(
        "with proper alpha code",
        tags: "performance",
        () =>
            expect(FiatCurrency.maybeFromCodeNumeric(value.codeNumeric), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () =>
            expect(FiatCurrency.maybeFromCodeNumeric(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromCodeNumeric(null), isNull),
      );
    });
  });

  group("maybeFromCode", () {
    group("with custom array", () {
      test(
        "with proper alpha code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromCode(value.code, array), value),
      );

      test(
        "with proper alpha code lowercase",
        tags: "performance",
        () => expect(
          FiatCurrency.maybeFromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () =>
            expect(FiatCurrency.maybeFromCode(value.toString(), array), isNull),
      );

      test(
        "with empty array",
        () => expect(
          () => FiatCurrency.maybeFromCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromCode(null, array), isNull),
      );
    });

    group("without custom array", () {
      test(
        "with proper alpha code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromCode(value.code), value),
      );

      test(
        "with proper alpha code lowercase",
        tags: "performance",
        () =>
            expect(FiatCurrency.maybeFromCode(value.code.toLowerCase()), value),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromCode(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromCode(null), isNull),
      );
    });
  });

  group("maybeFromAnyCode", () {
    group("with custom array", () {
      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.codeNumeric, array),
          value,
        ),
      );

      test(
        "with proper alpha code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromAnyCode(value.code, array), value),
      );

      test(
        "with proper alpha code lowercase",
        tags: "performance",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.toString(), array),
          isNull,
        ),
      );

      test(
        "with empty array",
        () => expect(
          () => FiatCurrency.maybeFromAnyCode(value.code, const []),
          throwsA(isA<AssertionError>()),
        ),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromAnyCode(null, array), isNull),
      );
    });

    group("without custom array", () {
      test(
        "with proper numeric code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromAnyCode(value.codeNumeric), value),
      );

      test(
        "with proper alpha code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromAnyCode(value.code), value),
      );

      test(
        "with proper alpha code lowercase",
        tags: "performance",
        () => expect(
          FiatCurrency.maybeFromAnyCode(value.code.toLowerCase()),
          value,
        ),
      );

      test(
        "with wrong code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromAnyCode(value.toString()), isNull),
      );

      test(
        "with null code",
        tags: "performance",
        () => expect(FiatCurrency.maybeFromAnyCode(null), isNull),
      );
    });
  });

  group("asserts", () {
    test(
      "not",
      () => expect(() => FiatCustom(code: value.code), returnsNormally),
    );
    test(
      "empty code",
      () => expect(() => FiatCustom(code: ""), throwsA(isA<AssertionError>())),
    );
    test(
      "empty codeNumeric",
      () => expect(
        () => FiatCustom(codeNumeric: " ".trim()),
        throwsA(isA<AssertionError>()),
      ),
    );
  });
});
