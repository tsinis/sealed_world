import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:test/test.dart";

// ignore: prefer-correct-identifier-length, just for testing.
enum _WorldCountryTest { de, rus }

void main() => group("$WorldCountry", () {
  final value = WorldCountry.list.first;
  final officialList = List<WorldCountry>.unmodifiable(
    WorldCountry.list.take(WorldCountry.list.length - 1),
  );
  final array = {officialList.last, value};

  test("interfaces", () {
    expect(value, isA<Country>());
    expect(value, isA<IsoStandardized>());
    expect(value, isA<IsoTranslated>());
    expect(value, isA<JsonEncodable>());
    expect(value, isA<Named>());
  });

  performanceTest("compile and non compile time constructors equality", () {
    expect(WorldCountry.abw(), CountryAbw());
    expect(WorldCountry.abw(), const CountryAbw());
    expect(const WorldCountry.abw(), CountryAbw());
    expect(const WorldCountry.abw(), const CountryAbw());
  });

  assertTest(
    "permissive constructor",
    () => WorldCountry.list.last.tld,
    shouldThrow: false,
    alsoExpect: () => expect(WorldCountry.list.last.tld, isEmpty),
  );

  test("compareTo", () => expect(value.compareTo(array.first), isNot(isZero)));

  group("some countries should be fully translated", () {
    /// This is a comprehensive list of countries that ensure the availability of
    /// translations for every language in the countries `list`.
    ///
    /// It is important to note that while other languages may not be included in
    /// this list, they may still have translations available for most common
    /// countries, but there may be some missing translations for rarer languages.
    /// Every country contains more than 114 translations of it's name.
    ///
    /// Includes all the Material localizations in [kMaterialSupportedLanguages](https://api.flutter.dev/flutter/flutter_localizations/kMaterialSupportedLanguages.html)
    /// with a two letter code and much more (for example on top of that it also
    /// provides translations for the following languages):
    /// - Abkhaz (ABK)
    /// - Aragonese (ARG)
    /// - Breton (BRE)
    /// - Chechen (CHE)
    /// - Chuvash (CHV)
    /// - Dzongkha (DZO)
    /// - Esperanto (EPO)
    /// - Ewe (EWE)
    /// - Faroese (FAO)
    /// - Western Frisian (FRY)
    /// - Fula (Fulah/Pulaar/Pular) (FUL)
    /// - (Scottish) Gaelic (GLA)
    /// - Irish (GLE)
    /// - Hausa (HAU)
    /// - Igbo (IBO)
    /// - Interlingue (ILE)
    /// - Interlingua (INA)
    /// - Javanese (JAV)
    /// - Kashmiri (KAS)
    /// - Luxembourgish (Letzeburgesch) (LTZ)
    /// - Maltese (MLT)
    /// - Māori (MRI)
    /// - Occitan (OCI)
    /// - Quechua (QUE)
    /// - Romansh (ROH)
    /// - Sindhi (SND)
    /// - Somali (SOM)
    /// - Sardinian (SRD)
    /// - Tigrinya (TIR)
    /// - Tonga (Tonga Islands) (TON)
    /// - Turkmen (TUK)
    /// - Uyghur (UIG)
    /// - Xhosa (XHO)
    /// - Yoruba (YOR)
    /// That are not listed in Material one, and much more.
    const kSealedCountriesSupportedLanguages = <NaturalLanguage>[
      LangAbk(),
      LangAfr(),
      LangAmh(),
      LangAra(),
      LangArg(),
      LangAsm(),
      LangAze(),
      LangBel(),
      LangBen(),
      LangBos(),
      LangBre(),
      LangBul(),
      LangCat(),
      LangCes(),
      LangChe(),
      LangChv(),
      LangCym(),
      LangDan(),
      LangDeu(),
      LangDzo(),
      LangEll(),
      LangEng(),
      LangEpo(),
      LangEst(),
      LangEus(),
      LangEwe(),
      LangFao(),
      LangFas(),
      LangFin(),
      LangFra(),
      LangFry(),
      LangFul(),
      LangGla(),
      LangGle(),
      LangGlg(),
      LangGuj(),
      LangHau(),
      LangHeb(),
      LangHin(),
      LangHrv(),
      LangHun(),
      LangHye(),
      LangIbo(),
      LangIle(),
      LangIna(),
      LangInd(),
      LangIsl(),
      LangIta(),
      LangJav(),
      LangJpn(),
      LangKan(),
      LangKas(),
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
      LangMlt(),
      LangMon(),
      LangMri(),
      LangMsa(),
      LangMya(),
      LangNep(),
      LangNld(),
      LangNob(),
      LangNor(),
      LangOci(),
      LangOri(),
      LangPan(),
      LangPol(),
      LangPor(),
      LangPus(),
      LangQue(),
      LangRoh(),
      LangRon(),
      LangRus(),
      LangSin(),
      LangSlk(),
      LangSlv(),
      LangSnd(),
      LangSom(),
      LangSpa(),
      LangSqi(),
      LangSrd(),
      LangSrp(),
      LangSwa(),
      LangSwe(),
      LangTam(),
      LangTel(),
      LangTgl(),
      LangTha(),
      LangTir(),
      LangTon(),
      LangTuk(),
      LangTur(),
      LangUig(),
      LangUkr(),
      LangUrd(),
      LangUzb(),
      LangVie(),
      LangXho(),
      LangYor(),
      LangZho(),
      LangZul(),
    ];

    final langs = <NaturalLanguage>{};

    for (final language in kSealedCountriesSupportedLanguages) {
      test("${language.internationalName} should have all translations", () {
        final translation = WorldCountry.list.commonNamesMap(
          options: LocaleMappingOptions(mainLocale: BasicTypedLocale(language)),
        );
        if (translation.length == WorldCountry.list.length) langs.add(language);
        expect(
          translation.length,
          greaterThanOrEqualTo(WorldCountry.list.length),
          reason:
              'Language "${language.internationalName}" is expected to have '
              "full translations for all ${WorldCountry.list.length} countries",
        );
      });
    }

    test(
      "should be equal",
      () => expect(langs, containsAll(kSealedCountriesSupportedLanguages)),
    );
  });

  group("fields", () {
    final officialCountries = WorldCountry.list.where(
      (country) => country.isOfficiallyAssigned,
    );

    for (final element in officialCountries) {
      test("of $WorldCountry: ${element.name.common}", () {
        if (element.postalCode == null) {
          expect(element.postalCode, isNull);
        } else {
          expect(element.postalCode?.format, isNotEmpty);
          expect(element.postalCode?.regExpPattern, isNotEmpty);
        }
        expect(
          element.capitalInfo?.capital.deFacto,
          element.capitalInfo == null ? isNull : isNotEmpty,
        );
        expect(
          element.capitalInfo?.latLng,
          element.capitalInfo == null ? isNull : isNotNull,
        );
        expect(element.fifa, element.fifa == null ? isNull : isNotEmpty);
        if (element.gini == null) {
          expect(element.gini, isNull);
        } else {
          expect(element.gini?.year, isPositive);
          expect(element.gini?.coefficient, isPositive);
        }
        expect(element.demonyms, isNotEmpty);
        expect(element.demonyms.first.language, const LangEng());
        expect(
          element.bordersCodes,
          element.bordersCodes == null ? isNull : isNotEmpty,
        );
        expect(
          element.subregion?.name,
          element.subregion == null ? isNull : isNotEmpty,
        );
        expect(element.idd.root, isPositive);
        expect(element.idd.suffixes, isNotEmpty);
        expect(
          element.currencies,
          element.currencies == null ? isNull : isNotEmpty,
        );
        expect(element.cioc, element.cioc == null ? isNull : isNotEmpty);
        for (final zone in element.timezones) {
          expect(zone.length, 9);
          expect(zone.startsWith(WorldCountryDateTime.utcString), isTrue);
          // ignore: avoid-substring, no emojis here.
          expect(zone.substring(6, 7), ":");
        }
        expect(element.startOfWeek.name, isNotEmpty);
        expect(element.startOfWeek, isA<Enum>());
        expect(element.hasCoatOfArms, isA<bool>());
        expect(element.landlocked, isA<bool>());
        expect(element.unMember, isA<bool>());
        expect(element.independent, isA<bool>());
        expect(element.timezones, isA<List<String>>());
        expect(element.timezones, isNotEmpty);
        expect(
          element.car.sign,
          element.car.sign == null ? isNull : isNotEmpty,
        );
        expect(element.car.isRightSide, isA<bool>());
        expect(element.population, isNonNegative);
        expect(element.areaMetric, isNonNegative);
        expect(element.maps.googleMaps, isNotEmpty);
        expect(element.maps.openStreetMaps, isNotEmpty);
        expect(element.emoji, isNotEmpty);
        expect(element.latLng.longitude, isA<double>());
        expect(element.latLng.latitude, isA<double>());
        expect(element.l10n.mapper, isNotNull);
        expect(element.languages, isNotEmpty);
        expect(element.continent.name, isNotEmpty);
        expect(element.altSpellings, isNotEmpty);
        expect(element.code, isA<String>());
        expect(element.code, isNotEmpty);
        expect(element.codeNumeric, isA<String>());
        expect(element.codeNumeric, isNotEmpty);
        expect(element.codeShort, isA<String>());
        expect(element.codeShort, isNotEmpty);
        expect(element.namesNative, isNotEmpty);
        expect(element.tld, isNotEmpty);
        expect(element.codeOther, element.codeShort);
        expect(element.internationalName, element.name.common);
        for (final domain in element.tld) {
          expect(domain, isNotEmpty);
        }
      });
    }
  });

  group("maps O(1) access time check", () {
    for (final element in officialList) {
      performanceTest("of $WorldCountry: ${element.name.common}", () {
        expect(WorldCountry.map[element.code], element);
        expect(WorldCountry.codeMap[element.code], element);
        expect(WorldCountry.codeShortMap[element.codeShort], element);
        expect(WorldCountry.codeNumericMap[element.codeNumeric], element);
      });
    }
  });

  group("equality", () {
    test("basic", () {
      expect(WorldCountry.list.last, isNot(equals(value)));
      expect(WorldCountry.list.first, same(value));
      expect(
        WorldCountry.fromCodeShort(WorldCountry.list.first.codeShort),
        same(value),
      );
      expect(
        WorldCountry.fromCodeShort(WorldCountry.list.last.codeShort),
        same(WorldCountry.list.last),
      );
    });

    test("with ${array.runtimeType}", () {
      final length = array.length;
      expect(length, 2);
      array.addAll(List.of(array));
      expect(array.length, length);
      array.add(WorldCountry.fromCodeShort(value.codeShort));
      expect(length, array.length);
    });

    performanceTest("with ${Map<WorldCountry, Object>}", () {
      final map = <WorldCountry, int>{
        CountryAbw(): 4,
        const CountryAbw(): 3,
        WorldCountry.abw(): 2,
        // ignore: equal_keys_in_map, it's a test.
        const WorldCountry.abw(): 1,
        WorldCountry.fromCode("ABW"): 0,
      };
      expect(map.entries.single.key, CountryAbw());
      expect(map.entries.single.key, const CountryAbw());
      expect(map.entries.single.key, WorldCountry.abw());
      expect(map.entries.single.key, const WorldCountry.abw());
      expect(map.entries.single.value, isZero);
    });
  });

  test("toString", () {
    expect(value.toString(short: false), contains(value.code));
    expect(value.toString().contains(value.codeShort), isFalse);
  });

  group("fromCodeShort", () {
    group("with custom array", () {
      performanceTest(
        "with proper code",
        () => expect(WorldCountry.fromCodeShort(value.codeShort, array), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(
          WorldCountry.fromCodeShort(value.codeShort.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => WorldCountry.fromCodeShort(value.toString(), array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.fromCodeShort(value.codeShort, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "from $Enum",
        () => expect(
          WorldCountry.fromCodeShort(_WorldCountryTest.de),
          const CountryDeu(),
        ),
      );

      performanceTest(
        "with proper code",
        () => expect(WorldCountry.fromCodeShort(value.codeShort), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(
          WorldCountry.fromCodeShort(value.codeShort.toLowerCase()),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => WorldCountry.fromCodeShort(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("fromCode", () {
    group("with custom array", () {
      performanceTest(
        "with proper code",
        () => expect(WorldCountry.fromCode(value.code, array), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(
          WorldCountry.fromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => WorldCountry.fromCode(value.toString(), array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.fromCode(value.code, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "from $Enum",
        () => expect(
          WorldCountry.fromCode(_WorldCountryTest.rus),
          const CountryRus(),
        ),
      );

      performanceTest(
        "with proper code",
        () => expect(WorldCountry.fromCode(value.code), value),
      );

      performanceTest(
        "with proper code lowercase",
        () => expect(WorldCountry.fromCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(() => WorldCountry.fromCode(value), throwsStateError),
      );
    });
  });

  group("fromCodeNumeric", () {
    group("with custom array", () {
      performanceTest(
        "with proper code",
        () => expect(
          WorldCountry.fromCodeNumeric(value.codeNumeric, array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => WorldCountry.fromCodeNumeric(value, array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.fromCodeNumeric(value.codeNumeric, const []),
      );
    });

    group("without custom array", () {
      test(
        "from int",
        () => expect(WorldCountry.fromCodeNumeric(100), const CountryBgr()),
      );

      performanceTest(
        "with proper code",
        () => expect(WorldCountry.fromCodeNumeric(value.codeNumeric), value),
      );

      performanceTest(
        "with wrong code",
        () =>
            expect(() => WorldCountry.fromCodeNumeric(value), throwsStateError),
      );
    });
  });

  group("fromAnyCode", () {
    group("with custom array", () {
      performanceTest(
        "with numeric code",
        () => expect(
          WorldCountry.fromAnyCode(array.last.codeNumeric, array),
          array.last,
        ),
      );

      performanceTest(
        "with short code",
        () => expect(WorldCountry.fromAnyCode(value.codeShort, array), value),
      );

      performanceTest(
        "with short code lowercase",
        () => expect(
          WorldCountry.fromAnyCode(value.codeShort.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with regular code",
        () => expect(WorldCountry.fromAnyCode(value.code, array), value),
      );

      performanceTest(
        "with regular code lowercase",
        () => expect(
          WorldCountry.fromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => WorldCountry.fromAnyCode(value, array),
          throwsStateError,
        ),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.fromAnyCode(value.codeNumeric, const []),
      );
    });

    group("without custom array", () {
      test(
        "from int",
        () => expect(WorldCountry.fromAnyCode(100), const CountryBgr()),
      );

      test(
        "from $Enum",
        () => expect(
          WorldCountry.fromAnyCode(_WorldCountryTest.rus),
          const CountryRus(),
        ),
      );

      performanceTest(
        "with numeric code",
        () => expect(
          WorldCountry.fromAnyCode(array.last.codeNumeric),
          array.last,
        ),
      );

      performanceTest(
        "with short code",
        () => expect(WorldCountry.fromAnyCode(value.codeShort), value),
      );

      performanceTest(
        "with short code lowercase",
        () => expect(
          WorldCountry.fromAnyCode(value.codeShort.toLowerCase()),
          value,
        ),
      );

      performanceTest(
        "with regular code",
        () => expect(WorldCountry.fromAnyCode(value.code), value),
      );

      performanceTest(
        "with regular code lowercase",
        () => expect(WorldCountry.fromAnyCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(
          () => WorldCountry.fromAnyCode(value.toString()),
          throwsStateError,
        ),
      );
    });
  });

  group("toJson", () {
    for (final element in WorldCountry.list) {
      test("compared to $WorldCountry: ${element.name.common}", () {
        final json = element.toJson();
        expect(json, isNotEmpty);
        final decoded = WorldCountryJson.fromMap(jsonDecode(json));
        expect(element.code, decoded.code);
        expect(element.postalCode, decoded.postalCode);
        expect(element.capitalInfo, decoded.capitalInfo);
        expect(element.fifa, decoded.fifa);
        expect(element.gini, decoded.gini);
        expect(element.demonyms, decoded.demonyms);
        expect(element.bordersCodes, decoded.bordersCodes);
        expect(element.subregion, decoded.subregion);
        expect(element.idd, decoded.idd);
        expect(element.currencies, decoded.currencies);
        expect(element.cioc, decoded.cioc);
        expect(element.startOfWeek, decoded.startOfWeek);
        expect(element.hasCoatOfArms, decoded.hasCoatOfArms);
        expect(element.landlocked, decoded.landlocked);
        expect(element.unMember, decoded.unMember);
        expect(element.independent, decoded.independent);
        expect(element.timezones, decoded.timezones);
        expect(element.car, decoded.car);
        expect(element.population, decoded.population);
        expect(element.areaMetric, decoded.areaMetric);
        expect(element.maps, decoded.maps);
        expect(element.emoji, decoded.emoji);
        expect(element.latLng, decoded.latLng);
        expect(element.languages, decoded.languages);
        expect(element.continent, decoded.continent);
        expect(element.altSpellings, decoded.altSpellings);
        expect(element.codeNumeric, decoded.codeNumeric);
        expect(element.codeShort, decoded.codeShort);
        expect(element.namesNative, decoded.namesNative);
        expect(element.tld, decoded.tld);
      });
    }
  });

  group("maybeFromValue", () {
    performanceTest(
      "with proper value, without where",
      () => expect(WorldCountry.maybeFromValue(value.code), value),
    );

    performanceTest(
      "with proper value, with where",
      () => expect(
        WorldCountry.maybeFromValue(
          value.code,
          where: (country) => country.code,
        ),
        value,
      ),
    );

    performanceTest(
      "with wrong value, without where",
      () => expect(WorldCountry.maybeFromValue(value), isNull),
    );

    performanceTest(
      "with wrong value, with where",
      () => expect(
        WorldCountry.maybeFromValue(
          value,
          where: (country) => country.codeShort,
        ),
        isNull,
      ),
    );

    assertTest(
      "with empty countries",
      () => WorldCountry.maybeFromValue(value.codeShort, countries: const []),
    );

    performanceTest(
      "with custom countries",
      () => expect(
        WorldCountry.maybeFromValue(value.code, countries: array),
        value,
      ),
    );
  });

  group("maybeFromAnyCode", () {
    group("with custom array", () {
      performanceTest(
        "with numeric code",
        () => expect(
          WorldCountry.maybeFromAnyCode(array.last.codeNumeric, array),
          array.last,
        ),
      );

      performanceTest(
        "with short code",
        () => expect(
          WorldCountry.maybeFromAnyCode(value.codeShort, array),
          value,
        ),
      );

      performanceTest(
        "with short code lowercase",
        () => expect(
          WorldCountry.maybeFromAnyCode(value.codeShort.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with regular code",
        () => expect(WorldCountry.maybeFromAnyCode(value.code, array), value),
      );

      performanceTest(
        "with regular code lowercase",
        () => expect(
          WorldCountry.maybeFromAnyCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(WorldCountry.maybeFromAnyCode(value, array), isNull),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.maybeFromAnyCode(value.code, const []),
      );
    });

    group("without custom array", () {
      test(
        "from int",
        () => expect(WorldCountry.maybeFromAnyCode(100), const CountryBgr()),
      );

      test(
        "from $Enum",
        () => expect(
          WorldCountry.maybeFromAnyCode(_WorldCountryTest.rus),
          const CountryRus(),
        ),
      );

      performanceTest(
        "with numeric code",
        () => expect(
          WorldCountry.maybeFromAnyCode(array.last.codeNumeric),
          array.last,
        ),
      );

      performanceTest(
        "with short code",
        () => expect(WorldCountry.maybeFromAnyCode(value.codeShort), value),
      );

      performanceTest(
        "with short code lowercase",
        () => expect(
          WorldCountry.maybeFromAnyCode(value.codeShort.toLowerCase()),
          value,
        ),
      );

      performanceTest(
        "with regular code",
        () => expect(WorldCountry.maybeFromAnyCode(value.code), value),
      );

      performanceTest(
        "with regular code lowercase",
        () => expect(
          WorldCountry.maybeFromAnyCode(value.code.toLowerCase()),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(WorldCountry.maybeFromAnyCode(value), isNull),
      );
    });
  });

  group("maybeFromCodeNumeric", () {
    group("with custom array", () {
      performanceTest(
        "with numeric code",
        () => expect(
          WorldCountry.maybeFromCodeNumeric(array.last.codeNumeric, array),
          array.last,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(WorldCountry.maybeFromCodeNumeric(value, array), isNull),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.maybeFromCodeNumeric(value.codeNumeric, const []),
      );
    });

    group("without custom array", () {
      test(
        "from int",
        () =>
            expect(WorldCountry.maybeFromCodeNumeric(100), const CountryBgr()),
      );

      performanceTest(
        "with numeric code",
        () => expect(
          WorldCountry.maybeFromCodeNumeric(array.last.codeNumeric),
          array.last,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(WorldCountry.maybeFromCodeNumeric(value), isNull),
      );
    });
  });

  group("maybeFromCode", () {
    group("with custom array", () {
      performanceTest(
        "with regular code",
        () => expect(WorldCountry.maybeFromCode(value.code, array), value),
      );

      performanceTest(
        "with regular code lowercase",
        () => expect(
          WorldCountry.maybeFromCode(value.code.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () =>
            expect(WorldCountry.maybeFromCode(value.toString(), array), isNull),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.maybeFromCode(value.code, const []),
      );
    });

    group("without custom array", () {
      performanceTest(
        "from $Enum",
        () => expect(
          WorldCountry.maybeFromCode(_WorldCountryTest.rus),
          const CountryRus(),
        ),
      );

      performanceTest(
        "with regular code",
        () => expect(WorldCountry.maybeFromCode(value.code), value),
      );

      performanceTest(
        "with regular code lowercase",
        () =>
            expect(WorldCountry.maybeFromCode(value.code.toLowerCase()), value),
      );

      performanceTest(
        "with wrong code",
        () => expect(WorldCountry.maybeFromCode(value), isNull),
      );
    });
  });

  group("maybeFromCodeShort", () {
    group("with custom array", () {
      performanceTest(
        "with short code",
        () => expect(
          WorldCountry.maybeFromCodeShort(value.codeShort, array),
          value,
        ),
      );

      performanceTest(
        "with short code lowercase",
        () => expect(
          WorldCountry.maybeFromCodeShort(value.codeShort.toLowerCase(), array),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(WorldCountry.maybeFromCodeShort(value, array), isNull),
      );

      assertTest(
        "with empty countries",
        () => WorldCountry.maybeFromCodeShort(value.codeShort, const []),
      );
    });

    group("without custom array", () {
      test(
        "from $Enum",
        () => expect(
          WorldCountry.maybeFromCodeShort(_WorldCountryTest.de),
          const CountryDeu(),
        ),
      );

      performanceTest(
        "with short code",
        () => expect(WorldCountry.maybeFromCodeShort(value.codeShort), value),
      );

      performanceTest(
        "with short code lowercase",
        () => expect(
          WorldCountry.maybeFromCodeShort(value.codeShort.toLowerCase()),
          value,
        ),
      );

      performanceTest(
        "with wrong code",
        () => expect(WorldCountry.maybeFromCodeShort(value), isNull),
      );
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: const [],
        latLng: value.latLng,
        maps: value.maps,
        namesNative: const [],
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: const [],
        currencies: value.currencies,
      ),
      shouldThrow: false,
    );

    assertTest(
      "code length",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.codeShort,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
      ),
    );

    assertTest(
      "codeNumeric length",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeShort,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
      ),
    );

    assertTest(
      "codeShort length",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.code,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
      ),
    );

    assertTest(
      "emoji length",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: "",
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
      ),
    );

    assertTest(
      "altSpellings empty",
      () => WorldCountry(
        name: value.name,
        altSpellings: const [],
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
      ),
    );

    assertTest(
      "timezones empty",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: const [],
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
      ),
    );

    assertTest(
      "cioc length",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
        cioc: "",
      ),
    );

    assertTest(
      "fifa length",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
        fifa: "",
      ),
    );

    assertTest(
      "bordersCodes empty",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
        bordersCodes: const [],
      ),
    );

    assertTest(
      "regionalBlocs empty",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: value.tld,
        demonyms: value.demonyms,
        currencies: value.currencies,
        regionalBlocs: const [],
      ),
    );

    assertTest(
      "tld empty",
      () => WorldCountry(
        name: value.name,
        altSpellings: value.altSpellings,
        areaMetric: value.areaMetric,
        code: value.code,
        codeNumeric: value.codeNumeric,
        codeShort: value.codeShort,
        continent: value.continent,
        emoji: value.emoji,
        idd: value.idd,
        languages: value.languages,
        latLng: value.latLng,
        maps: value.maps,
        namesNative: value.namesNative,
        population: value.population,
        timezones: value.timezones,
        tld: const [],
        demonyms: value.demonyms,
        currencies: value.currencies,
        regionalBlocs: value.regionalBlocs,
      ),
    );
  });
});
