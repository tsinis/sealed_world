// ignore_for_file: avoid_print, prefer-match-file-name

import "package:sealed_currencies/sealed_currencies.dart";

void main() {
  print(FiatCurrency.listExtended.length); // Prints: "171".

  final serbianDinar = FiatCurrency.fromCode("RSD");
  print(serbianDinar.name); // Prints: "Serbian Dinar".

  final maybeEuro = FiatCurrency.maybeFromValue(
    "Euro",
    where: (currency) => currency.namesNative.first,
  );
  print(maybeEuro == const FiatEur()); // Prints: true.
  print(maybeEuro?.toString(short: false));
  /*
  Prints: "FiatCurrency(code: "EUR", name: "Euro", decimalMark: ",",
  thousandsSeparator: ".", symbol: r"€", htmlEntity: "€", codeNumeric: "978",
  namesNative: ["Euro"], priority: 2, smallestDenomination: 1, subunit: "Cent",
  subunitToUnit: 100, unitFirst: true,)".
  */

  /// Translations:
  // Prints German translations of all available regular currencies.
  final germanNames = FiatCurrency.list.commonNamesMap(
    options: const LocaleMappingOptions(mainLocale: BasicLocale(LangDeu())),
  );

  print(
    """Fully translated to German: ${germanNames.length == FiatCurrency.list.length}""",
  ); // Prints: "Fully translated to German: true".
  for (final deuTranslation in germanNames.entries) {
    print("German name of ${deuTranslation.key.name}: ${deuTranslation.value}");
  }

  print(
    serbianDinar.maybeCommonNameFor(const BasicLocale(LangPol())),
  ); // Prints Polish name of RSD: "dinar serbski".
}
