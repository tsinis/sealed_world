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

      group("format", () {
        final valueWithoutDot = FiatCurrency.list.firstWhere(
          (cur) => cur.decimalMark != FiatCurrency.dot && cur.unitFirst,
        );
        test("from double value", () {
          expect(
            valueWithoutDot.format(-1000.9999),
            "${valueWithoutDot.unit} -1.000,9999",
          );
          expect(
            valueWithoutDot.format(0.9999),
            "${valueWithoutDot.unit} 0,9999",
          );
          expect(
            valueWithoutDot.format(1.9999),
            "${valueWithoutDot.unit} 1,9999",
          );
          expect(
            valueWithoutDot.format(10.9999),
            "${valueWithoutDot.unit} 10,9999",
          );
          expect(
            valueWithoutDot.format(100.9999),
            "${valueWithoutDot.unit} 100,9999",
          );
          expect(
            valueWithoutDot.format(1000.9999),
            "${valueWithoutDot.unit} 1.000,9999",
          );
          expect(
            valueWithoutDot.format(10000.9999),
            "${valueWithoutDot.unit} 10.000,9999",
          );
          expect(
            valueWithoutDot.format(100000.9999),
            "${valueWithoutDot.unit} 100.000,9999",
          );

          expect(
            valueWithoutDot.format(1000000.9999),
            "${valueWithoutDot.unit} 1.000.000,9999",
          );
        });

        test("from int value", () {
          expect(
            valueWithoutDot.format(-1000),
            "${valueWithoutDot.unit} -1.000",
          );
          expect(
            valueWithoutDot.format(0),
            "${valueWithoutDot.unit} 0",
          );
          expect(
            valueWithoutDot.format(1),
            "${valueWithoutDot.unit} 1",
          );
          expect(
            valueWithoutDot.format(10),
            "${valueWithoutDot.unit} 10",
          );
          expect(
            valueWithoutDot.format(100),
            "${valueWithoutDot.unit} 100",
          );
          expect(
            valueWithoutDot.format(1000),
            "${valueWithoutDot.unit} 1.000",
          );
          expect(
            valueWithoutDot.format(10000),
            "${valueWithoutDot.unit} 10.000",
          );
          expect(
            valueWithoutDot.format(100000),
            "${valueWithoutDot.unit} 100.000",
          );

          expect(
            valueWithoutDot.format(1000000),
            "${valueWithoutDot.unit} 1.000.000",
          );
        });
      });
    });
