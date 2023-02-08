// ignore_for_file: avoid_print

import "package:sealed_currencies/sealed_currencies.dart";

void main() {
  bool? isVikingKrone(Currency currency) {
    switch (currency) {
      case FiatDkk():
      case FiatIsk():
      case FiatNok():
      case FiatSek():
        return true;
      case FiatCzk():
        return false;
      default:
        return null;
    }
  }

  print(isVikingKrone(const FiatNok())); // Prints true.
  print(isVikingKrone(const FiatUsd())); // Prints null.
  print(isVikingKrone(const FiatCzk())); // Prints false.

  FiatCurrency.list
      .where(
        (currency) => currency.symbol?.contains("kr") ?? false,
      )
      .forEach(print);
  // Prints:
  // Currency(code: DKK)
  // Currency(code: ISK)
  // Currency(code: NOK)
  // Currency(code: SEK).
}
