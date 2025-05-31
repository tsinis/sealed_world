import "dart:io";

import "package:sealed_countries/sealed_countries.dart";
import "package:sealed_countries/src/helpers/extensions/iterable_fiat_currency_extension.dart";
import "package:test/test.dart";

void main() => group("IterableFiatCurrencyExtension", () {
  group("byCountryMap()", () {
    test("with custom map", () {
      final map = FiatCurrency.list.byCountryMap(
        custom: const {
          FiatUsd(): [CountryCan()],
        },
      );
      expect(map[const FiatUsd()], const [CountryCan()]);
      expect(map.length, FiatCurrency.list.length);
    });

    test("with mapper", () {
      final map = FiatCurrency.list.byCountryMap(
        mapper: (_, countries) => countries.take(1).toList(growable: false),
      );
      expect(map[const FiatUsd()]?.single, const CountryUsa());
      expect(map.length, FiatCurrency.list.length);
    });

    test("compare to README", () {
      final buffer = StringBuffer(
        "| Code | Currency | Main Country | Other Countries |\n"
        "| ---- | -------- | ------------ | --------------- |\n",
      );

      final map = FiatCurrency.list.byCountryMap()
        ..forEach(
          (currency, countries) => buffer.writeln(
            "| ${currency.code} | ${currency.internationalName} | "
            // ignore: avoid-non-ascii-symbols, this is just a test.
            "${countries.firstOrNull?.emoji ?? '🇺🇳'} "
            "${countries.firstOrNull?.internationalName ?? 'Unassociated'} | "
            "${countries.skip(1).map((i) => i.emoji).join()} |",
          ),
        );
      expect(map.length, FiatCurrency.list.length);

      buffer.writeln("\n> Generated (by test) file, do not edit manually.");
      final readmeFile = File("lib/src/collections/README.currencies.md");
      final newContent = buffer.toString();

      expect(
        readmeFile.readAsStringSync(),
        newContent,
        reason:
            "${readmeFile.path} was updated. Please review and commit the changes"
            " if they are correct.",
        skip: false,
      );

      readmeFile.writeAsStringSync(newContent);
    });
  });
});
