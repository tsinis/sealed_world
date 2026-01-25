// ignore_for_file: avoid_print, prefer-match-file-name, prefer-static-class

import "package:sealed_currencies/sealed_currencies.dart";

void main() {
  print(FiatCurrency.listExtended.length); // Prints: "171".

  final serbianDinar = FiatCurrency.fromCode("Rsd");
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

  const customOne = FiatCustom(code: "XTS", name: "Codes Sandbox"); // Custom.
  print(describeCurrency(customOne)); // Prints: "Custom currency XTS".
  print(describeCurrency(serbianDinar)); // Prints: "Unit-first currency".
  print(describeCurrency(const FiatUsd())); // Prints: "United States Dollar".
  print(describeCurrency(const FiatErn())); // Prints: "Standard fiat currency".

  /// Translations:
  // Prints German translations of all available regular currencies.
  final germanNames = FiatCurrency.list.commonNamesMap(
    options: const LocaleMappingOptions(mainLocale: BasicLocale(.deu())),
  );

  print(
    """Fully translated to German: ${germanNames.length == FiatCurrency.list.length}""",
  ); // Prints: "Fully translated to German: true".
  for (final deuTranslation in germanNames.entries) {
    print("German name of ${deuTranslation.key.name}: ${deuTranslation.value}");
  }

  // Prints Polish name of RSD: "dinar serbski".
  print(serbianDinar.maybeCommonNameFor(const BasicLocale(.pol())));
}

String describeCurrency(FiatCurrency currency) => switch (currency) {
  FiatUsd() => currency.name,
  FiatCustom(:final code) when code.startsWith("X") => "Custom currency $code",
  FiatCurrency(:final unitFirst) when unitFirst => "Unit-first currency",
  // ignore: avoid-wildcard-cases-with-sealed-classes, just an example.
  _ => "Standard fiat currency",
};
