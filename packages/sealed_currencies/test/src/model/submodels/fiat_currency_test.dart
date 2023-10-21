import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_json.dart";
import "package:sealed_currencies/src/model/currency.dart";
import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

void main() => group("$FiatCurrency", () {
      final value = FiatCurrency.list.last;
      final array = {value, FiatCurrency.list.first};

      test("interfaces", () {
        expect(value, isA<IsoStandardized>());
        expect(value, isA<JsonEncodable>());
        expect(value, isA<Translated>());
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
        test(
          "with proper name",
          () => expect(FiatCurrency.fromName(value.name), value),
        );

        test(
          "with wrong name",
          () => expect(
            () => FiatCurrency.fromName(value.toString()),
            throwsStateError,
          ),
        );

        test(
          "with empty currencies",
          () => expect(
            () => FiatCurrency.fromName(value.name, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("fromCode", () {
        test(
          "with proper code",
          () => expect(FiatCurrency.fromCode(value.code), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => FiatCurrency.fromCode(value.toString()),
            throwsStateError,
          ),
        );

        test(
          "with empty currencies",
          () => expect(
            () => FiatCurrency.fromCode(value.code, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("fromCodeNumeric", () {
        test(
          "with proper code",
          () => expect(FiatCurrency.fromCodeNumeric(value.codeNumeric), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => FiatCurrency.fromCodeNumeric(value.toString()),
            throwsStateError,
          ),
        );

        test(
          "with empty currencies",
          () => expect(
            () => FiatCurrency.fromCodeNumeric(value.code, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
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
          });
        }
      });

      group("maybeFromValue", () {
        test(
          "with proper value, without where",
          () => expect(
            FiatCurrency.maybeFromValue(value.code),
            value,
          ),
        );

        test(
          "with proper value, with where",
          () => expect(
            FiatCurrency.maybeFromValue(
              value.code,
              where: (lang) => lang.code,
            ),
            value,
          ),
        );

        test(
          "with wrong value, without where",
          () => expect(
            FiatCurrency.maybeFromValue(value),
            isNull,
          ),
        );

        test(
          "with wrong value, with where",
          () => expect(
            FiatCurrency.maybeFromValue(
              value,
              where: (lang) => lang.name,
            ),
            isNull,
          ),
        );

        test(
          "with empty languages",
          () => expect(
            () => FiatCurrency.maybeFromValue(
              value.name,
              currencies: const [],
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "with custom languages",
          () => expect(
            FiatCurrency.maybeFromValue(value.code, currencies: array),
            value,
          ),
        );
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
            ),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty name",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: "",
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "code length",
          () => expect(
            () => FiatCurrency(
              code: value.name,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "codeNumeric length",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.name,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty namesNative",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: const [],
              codeNumeric: value.codeNumeric,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty htmlEntity",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
              htmlEntity: "",
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty subunit",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
              subunit: "",
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty symbol",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
              symbol: "",
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty alternateSymbols",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
              alternateSymbols: const [],
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "negative smallestDenomination",
          () => expect(
            () => FiatCurrency(
              code: value.code,
              name: value.name,
              namesNative: value.namesNative,
              codeNumeric: value.codeNumeric,
              smallestDenomination: -1,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
