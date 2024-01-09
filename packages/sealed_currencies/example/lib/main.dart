// ignore_for_file: avoid_print, prefer-match-file-name

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
  Prints: "FiatCurrency(code: "EUR", name: "Euro", decimalMark: ",",
  thousandsSeparator: ".", symbol: "€", alternateSymbols: null,
  disambiguateSymbol: null, htmlEntity: "€", codeNumeric: "978", namesNative:
  ["Euro"], priority: 2, smallestDenomination: 1, subunit: "Cent",
  subunitToUnit: 100, unitFirst: true), translations: eurCurrencyTranslations".
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

  serbianDinar.toJson(); // Converts currency to a valid JSON.

  // Prints German translations of all available regular currencies.
  for (final currency in FiatCurrency.list) {
    print(
      """German name of ${currency.name}: ${currency.maybeTranslation(const LangDeu())?.name}""",
    );
  }

  print(const _FiatCustom().name); // Prints "Custom".
}

/// Creates a instance of the custom currency with permissive constructor.
class _FiatCustom extends FiatCurrency {
  const _FiatCustom()
      : super.permissive(
          code: "123",
          name: "Custom",
          codeNumeric: "",
          namesNative: const [],
          translations: const [],
        );
}
