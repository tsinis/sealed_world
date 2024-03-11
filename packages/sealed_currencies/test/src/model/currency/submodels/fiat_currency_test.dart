import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_currencies/currency_translations.dart";
import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_json.dart";
import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

class _FiatCurrencyTest extends FiatCurrency {
  const _FiatCurrencyTest()
      : super.permissive(
          code: "123",
          name: "name",
          codeNumeric: "",
          namesNative: const [],
          translations: const [],
        );
}

void main() => group("$FiatCurrency", () {
      const durationLimit = 30;
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

      assertTest(
        "permissive constructor",
        () => const _FiatCurrencyTest().codeNumeric,
        shouldThrow: false,
        alsoExpect: () =>
            expect(const _FiatCurrencyTest().codeNumeric, isEmpty),
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
            expect(element.namesNative, isA<List<String>>());
            expect(element.namesNative, isNotEmpty);
            if (element.alternateSymbols != null) {
              expect(element.alternateSymbols, isA<List<String>>());
              expect(element.alternateSymbols, isNotEmpty);
            } else {
              expect(element.alternateSymbols, isNull);
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
            expect(
              element.subunit,
              element.subunit == null ? isNull : isNotEmpty,
            );
            expect(element.symbol, isA<String?>());
            expect(
              element.symbol,
              element.symbol == null ? isNull : isNotEmpty,
            );
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

      group("equality", () {
        test("basic", () {
          expect(FiatCurrency.list.first, isNot(equals(value)));
          expect(FiatCurrency.list.last, same(value));
          expect(
            FiatCurrency.fromName(value.name),
            same(value),
          );
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
      });

      test("toString", () {
        expect(value.toString(short: false), contains(value.code));
        expect(value.toString().contains(value.name), isFalse);
      });

      group("fromName", () {
        performanceTest(
          "with proper name",
          () => expect(FiatCurrency.fromName(value.name), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with proper name lowercase",
          () => expect(FiatCurrency.fromName(value.name.toLowerCase()), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with proper name uppercase",
          () => expect(FiatCurrency.fromName(value.name.toUpperCase()), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with wrong name",
          () => expect(
            () => FiatCurrency.fromName(value.toString()),
            throwsStateError,
          ),
          durationLimit: durationLimit,
        );

        assertTest(
          "with empty currencies",
          () => FiatCurrency.fromName(value.name, const []),
        );
      });

      group("fromCode", () {
        performanceTest(
          "with proper code",
          () => expect(FiatCurrency.fromCode(value.code), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with proper code lowercase",
          () => expect(FiatCurrency.fromCode(value.code.toLowerCase()), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with wrong code",
          () => expect(
            () => FiatCurrency.fromCode(value.toString()),
            throwsStateError,
          ),
          durationLimit: durationLimit,
        );

        assertTest(
          "with empty currencies",
          () => FiatCurrency.fromCode(value.code, const []),
        );
      });

      group("fromCodeNumeric", () {
        performanceTest(
          "with proper code",
          () => expect(FiatCurrency.fromCodeNumeric(value.codeNumeric), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with wrong code",
          () => expect(
            () => FiatCurrency.fromCodeNumeric(value.toString()),
            throwsStateError,
          ),
          durationLimit: durationLimit,
        );

        assertTest(
          "with empty currencies",
          () => FiatCurrency.fromCodeNumeric(value.code, const []),
        );
      });

      group("fromAnyCode", () {
        performanceTest(
          "with proper numeric code",
          () => expect(FiatCurrency.fromAnyCode(value.codeNumeric), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with proper alpha code",
          () => expect(FiatCurrency.fromAnyCode(value.code), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with proper alpha code lowercase",
          () =>
              expect(FiatCurrency.fromAnyCode(value.code.toLowerCase()), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with wrong code",
          () => expect(
            () => FiatCurrency.fromAnyCode(value.toString()),
            throwsStateError,
          ),
          durationLimit: durationLimit,
        );

        assertTest(
          "with empty currencies",
          () => FiatCurrency.fromAnyCode(value.code, const []),
        );
      });

      group("toJson", () {
        for (final element in FiatCurrency.list) {
          performanceTest(
            "compared to $FiatCurrency: ${element.name}",
            () {
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
              expect(
                element.smallestDenomination,
                decoded?.smallestDenomination,
              );
              expect(element.subunitToUnit, decoded?.subunitToUnit);
              expect(element.unitFirst, decoded?.unitFirst);
              expect(element.decimalMark, decoded?.decimalMark);
              expect(element.thousandsSeparator, decoded?.thousandsSeparator);
              expect(element.translations, decoded?.translations);
            },
            durationLimit: durationLimit / 3,
          );
        }
      });

      group("maybeFromValue", () {
        performanceTest(
          "with proper value, without where",
          () => expect(
            FiatCurrency.maybeFromValue(value.code),
            value,
          ),
          durationLimit: durationLimit,
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
          durationLimit: durationLimit,
        );

        performanceTest(
          "with wrong value, without where",
          () => expect(
            FiatCurrency.maybeFromValue(value),
            isNull,
          ),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with wrong value, with where",
          () => expect(
            FiatCurrency.maybeFromValue(
              value,
              where: (currency) => currency.name,
            ),
            isNull,
          ),
          durationLimit: durationLimit,
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
          durationLimit: durationLimit,
        );
      });

      group("maybeFromAnyCode", () {
        performanceTest(
          "with proper numeric code",
          () => expect(FiatCurrency.maybeFromAnyCode(value.codeNumeric), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with proper alpha code",
          () => expect(FiatCurrency.maybeFromAnyCode(value.code), value),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with proper alpha code lowercase",
          () => expect(
            FiatCurrency.maybeFromAnyCode(value.code.toLowerCase()),
            value,
          ),
          durationLimit: durationLimit,
        );

        performanceTest(
          "with wrong code",
          () => expect(
            FiatCurrency.maybeFromAnyCode(value.toString()),
            isNull,
          ),
          durationLimit: durationLimit,
        );

        assertTest(
          "with empty currencies",
          () => FiatCurrency.maybeFromAnyCode(value.code, const []),
        );

        performanceTest(
          "with null code",
          () => expect(FiatCurrency.maybeFromAnyCode(null), isNull),
          durationLimit: durationLimit,
        );
      });

      group("asserts", () {
        assertTest(
          "not",
          () => FiatCurrency(
            code: value.code,
            name: value.name,
            namesNative: value.namesNative,
            codeNumeric: value.codeNumeric,
            translations: value.translations,
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
          "empty translations",
          () => FiatCurrency(
            code: value.code,
            name: value.name,
            namesNative: value.namesNative,
            codeNumeric: value.codeNumeric,
            translations: const [],
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
          const nonExistCode = "";
          var count = 0;
          for (final value in FiatCurrency.list) {
            final maybeMissing = value.maybeTranslation(
              abkhazia,
              countryCode: nonExistCode,
              useLanguageFallback: false,
            );
            if (maybeMissing != null) continue;
            count++;
            expect(
              value.translation(abkhazia, countryCode: nonExistCode),
              isNotNull,
            );
          }
          expect(count, isPositive);
        });

        test("there should be always minimum translations count available", () {
          final map = {
            for (final currency in FiatCurrency.list) currency: 0,
          };

          for (final l10n in NaturalLanguage.list) {
            for (final value in FiatCurrency.list) {
              final hasTranslationForValue = value.maybeTranslation(l10n);
              if (hasTranslationForValue != null) map[value] = map[value]! + 1;
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
            for (final value in FiatCurrency.list) {
              final hasTranslationForValue = value.maybeTranslation(l10n);
              if (hasTranslationForValue != null) {
                map[l10n] = map[l10n]! + 1;
              } else {
                missing[l10n] = {...?missing[l10n], value};
              }
            }
          }

          final sortedList = map.entries.toList(growable: false)
            ..sort((a, b) => a.value.compareTo(b.value));
          final complete = sortedList
              .where((item) => item.value >= FiatCurrency.list.length);
          final sortedMap = Map.fromEntries(complete);
          final sortedLanguages = sortedMap.keys.toList(growable: false)
            ..sort((a, b) => a.code.compareTo(b.code));

          expect(
            sortedLanguages,
            containsAll(kMaterialSupportedLanguagesSealed),
          );
          expect(
            sortedLanguages,
            containsAll(kSealedCurrenciesSupportedLanguages),
          );
          expect(sortedLanguages, kSealedCurrenciesSupportedLanguages);

          for (final currency in FiatCurrency.list) {
            for (final l10n in kSealedCurrenciesSupportedLanguages) {
              if (l10n == const LangEng()) continue;
              expect(
                currency.translation(l10n),
                isNot(currency.translation(const LangEng())),
              );
            }
          }
        });
      });
    });
