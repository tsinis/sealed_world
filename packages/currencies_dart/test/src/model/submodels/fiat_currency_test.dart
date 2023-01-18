import "package:currencies_dart/src/model/currency.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
void main() => group("$FiatCurrency", () {
      final value = FiatCurrency.list.last;
      final array = {value, FiatCurrency.list.first};

      group("equality", () {
        test("basic", () {
          expect(FiatCurrency.list.last == value, isTrue);
          expect(
            FiatCurrency.fromName(FiatCurrency.list.last.name) == value,
            isTrue,
          );
          expect(
            FiatCurrency.fromName(
                  FiatCurrency.list.last.name,
                ) ==
                FiatCurrency.list.last,
            isTrue,
          );
        });

        test("with $Set", () {
          expect(array.length == 2, isTrue);
          array.addAll(array);
          expect(array.length == 2, isTrue);
          array.add(value);
          expect(array.length == 2, isTrue);
        });
      });

      test("toString", () {
        expect(value.toString(short: false).contains(value.code), isTrue);
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

      group("unit", () {
        test("as symbol", () {
          final valueWithSymbol = FiatCurrency.list.firstWhere(
            (currency) => currency.symbol != null,
          );
          expect(valueWithSymbol.unit, valueWithSymbol.symbol);
        });
        test("as code", () {
          final valueWithoutSymbol = FiatCurrency.list.firstWhere(
            (currency) => currency.symbol == null,
          );
          expect(valueWithoutSymbol.unit, valueWithoutSymbol.code);
        });
      });
    });
