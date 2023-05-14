// ignore_for_file: avoid_print

import "package:sealed_currencies/sealed_currencies.dart";

void main() {
  print(FiatCurrency.list.length); // Prints: "169".

  final serbianDinar = FiatCurrency.fromCode("RSD");
  print(serbianDinar.name); // Prints: "Serbian Dinar".

  final maybeEuro = FiatCurrency.maybeFromValue(
    "Euro",
    where: (currency) => currency.namesNative.first,
  );
  print(maybeEuro?.toString(short: false));
  /*
  Prints: "FiatCurrency(code: EUR, priority: 2, name: Euro, namesNative: [Euro],
  symbol: €, disambiguateSymbol: null, alternateSymbols: null, subunit: Cent,
  subunitToUnit: 100, unitFirst: true, htmlEntity: €, decimalMark: ",",
  thousandsSeparator: ".", codeNumeric: 978, smallestDenomination: 1)".
  */

  /// [Currency] is a sealed class, it means
  /// this `whenOrNull` can be used same way as switch:
  /// ```dart
  /// switch (currency) {
  ///  case FiatDkk():
  ///  case FiatIsk():
  ///  case FiatNok():
  ///  case FiatSek():
  ///    return true;
  ///  case FiatCzk():
  ///    return false;
  ///  default:
  ///    return null;
  ///}
  /// ```
  bool? isVikingKrone(FiatCurrency currency) => currency.whenOrNull(
        fiatDkk: () => true,
        fiatIsk: () => true,
        fiatNok: () => true,
        fiatSek: () => true,
        fiatCzk: () => false,
      );

  print(isVikingKrone(const FiatNok())); // Prints "true".
  print(isVikingKrone(serbianDinar)); // Prints "null".
  print(isVikingKrone(const FiatCzk())); // Prints "false".

  FiatCurrency.list
      .where((currency) => currency.symbol?.contains("kr") ?? false)
      .forEach(print);
  // Prints:
  // Currency(code: DKK)
  // Currency(code: ISK)
  // Currency(code: NOK)
  // Currency(code: SEK).
}
