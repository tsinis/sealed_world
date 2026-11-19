import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_format.dart";
import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_getters.dart";
import "package:sealed_currencies/src/model/currency/submodels/fiat_currency.dart";
import "package:test/test.dart";

void main() => group("FiatCurrencyFormat", () {
  final valueWithoutDot = FiatCurrency.list.firstWhere(
    (cur) => cur.decimalMark != FiatCurrency.dot && cur.unitFirst,
  );

  group("tryFormat", () {
    test(
      "with null maybeValue",
      () => expect(valueWithoutDot.tryFormat(), isNull),
    );

    test(
      "with non-null maybeValue",
      () => expect(
        valueWithoutDot.tryFormat(-1000.9999),
        "${valueWithoutDot.unit} -1.000,9999",
      ),
    );
  });

  group("format", () {
    test("from double value", () {
      expect(
        valueWithoutDot.format(-1000.9999),
        "${valueWithoutDot.unit} -1.000,9999",
      );
      expect(valueWithoutDot.format(0.9999), "${valueWithoutDot.unit} 0,9999");
      expect(valueWithoutDot.format(1.9999), "${valueWithoutDot.unit} 1,9999");
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
        valueWithoutDot.format(100_000.9999),
        "${valueWithoutDot.unit} 100.000,9999",
      );

      expect(
        valueWithoutDot.format(1_000_000.9999),
        "${valueWithoutDot.unit} 1.000.000,9999",
      );
    });

    test("from int value", () {
      expect(valueWithoutDot.format(-1000), "${valueWithoutDot.unit} -1.000");
      expect(valueWithoutDot.format(0), "${valueWithoutDot.unit} 0");
      expect(valueWithoutDot.format(1), "${valueWithoutDot.unit} 1");
      expect(valueWithoutDot.format(10), "${valueWithoutDot.unit} 10");
      expect(valueWithoutDot.format(100), "${valueWithoutDot.unit} 100");
      expect(valueWithoutDot.format(1000), "${valueWithoutDot.unit} 1.000");
      expect(valueWithoutDot.format(10000), "${valueWithoutDot.unit} 10.000");
      expect(
        valueWithoutDot.format(100_000),
        "${valueWithoutDot.unit} 100.000",
      );

      expect(
        valueWithoutDot.format(1_000_000),
        "${valueWithoutDot.unit} 1.000.000",
      );
    });
  });

  group("format with fractionDigits", () {
    final unit = valueWithoutDot.unit;

    test("pads with zeros", () {
      expect(valueWithoutDot.format(1.5, fractionDigits: 2), "$unit 1,50");
      expect(valueWithoutDot.format(2, fractionDigits: 2), "$unit 2,00");
    });

    test("rounds the value", () {
      expect(
        valueWithoutDot.format(0.1 + 0.2, fractionDigits: 2),
        "$unit 0,30",
      );
      expect(
        valueWithoutDot.format(-1000.9999, fractionDigits: 2),
        "$unit -1.001,00",
      );
      expect(
        valueWithoutDot.format(1_234_567.891, fractionDigits: 2),
        "$unit 1.234.567,89",
      );
    });

    test("rounds the printed decimal, not its binary approximation", () {
      expect(valueWithoutDot.format(1.005, fractionDigits: 2), "$unit 1,01");
      expect(valueWithoutDot.format(2.675, fractionDigits: 2), "$unit 2,68");
      expect(valueWithoutDot.format(1.45, fractionDigits: 1), "$unit 1,5");
    });

    test("rounds half away from zero", () {
      expect(valueWithoutDot.format(-1.005, fractionDigits: 2), "$unit -1,01");
      expect(valueWithoutDot.format(-0.5, fractionDigits: 0), "$unit -1");
      expect(valueWithoutDot.format(0.125, fractionDigits: 2), "$unit 0,13");
    });

    test("carries into the integer part", () {
      expect(valueWithoutDot.format(9.995, fractionDigits: 2), "$unit 10,00");
      expect(
        valueWithoutDot.format(999.9999, fractionDigits: 3),
        "$unit 1.000,000",
      );
      expect(valueWithoutDot.format(0.995, fractionDigits: 0), "$unit 1");
    });

    test("drops the sign of a negative zero", () {
      expect(valueWithoutDot.format(-0.001, fractionDigits: 2), "$unit 0,00");
      expect(valueWithoutDot.format(-0.0, fractionDigits: 0), "$unit 0");
      expect(valueWithoutDot.format(-1e-7, fractionDigits: 2), "$unit 0,00");
    });

    test("falls back to toStringAsFixed for exponential values", () {
      expect(valueWithoutDot.format(1e21, fractionDigits: 2), "$unit 1e+21");
      expect(valueWithoutDot.format(1e-7, fractionDigits: 2), "$unit 0,00");
      expect(
        valueWithoutDot.format(double.nan, fractionDigits: 2),
        "$unit NaN",
      );
    });

    test("pads up to the maximum digits without binary noise", () {
      expect(
        valueWithoutDot.format(
          0.1,
          fractionDigits: FiatCurrency.maxDecimalDigits,
        ),
        "$unit 0,${"1".padRight(FiatCurrency.maxDecimalDigits, "0")}",
      );
    });

    test("throws a RangeError for out of range digits", () {
      expect(
        () => valueWithoutDot.format(
          1,
          fractionDigits: FiatCurrency.maxDecimalDigits + 1,
        ),
        throwsRangeError,
      );
      expect(
        () => valueWithoutDot.format(1, fractionDigits: -1),
        throwsRangeError,
      );
    });

    test(
      "drops the decimal part with zero digits",
      () => expect(valueWithoutDot.format(1.5, fractionDigits: 0), "$unit 2"),
    );

    test("keeps the default behavior with null", () {
      expect(valueWithoutDot.format(1.5), "$unit 1,5");
      expect(valueWithoutDot.format(2.0), "$unit 2,0");
    });

    test("with currency decimalDigits", () {
      const yen = FiatJpy();
      const euro = FiatEur();

      expect(
        euro.format(1.5, fractionDigits: euro.decimalDigits),
        "${euro.unit} 1,50",
      );
      expect(
        yen.format(1234.5, fractionDigits: yen.decimalDigits),
        "${yen.unit} 1,235",
      );
    });

    test(
      "with isRtl",
      () => expect(
        valueWithoutDot.format(1000, isRtl: true, fractionDigits: 2),
        "1.000,00 $unit",
      ),
    );
  });

  group("RTL support", () {
    test("addUnit flips unit position when isRtl is true", () {
      expect(valueWithoutDot.unitFirst, isTrue);
      expect(valueWithoutDot.addUnit("100"), "${valueWithoutDot.unit} 100");
      expect(
        valueWithoutDot.addUnit("100", isRtl: true),
        "100 ${valueWithoutDot.unit}",
      );
    });

    test("format with isRtl flips unit position", () {
      expect(
        valueWithoutDot.format(1000, isRtl: true),
        "1.000 ${valueWithoutDot.unit}",
      );
    });

    test("tryFormat with isRtl", () {
      expect(valueWithoutDot.tryFormat(null, true), isNull);
      expect(
        valueWithoutDot.tryFormat(1000, true),
        "1.000 ${valueWithoutDot.unit}",
      );
    });
  });
});
