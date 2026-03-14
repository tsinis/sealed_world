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
