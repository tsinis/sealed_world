import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/widgets/currency/currency_tile.dart";

void main() => group("$CurrencyTile", () {
      test(
        "constructor",
        () => expect(
          CurrencyTile(FiatCurrency.list.first).autofocus,
          isNotNull,
        ),
      );
    });
