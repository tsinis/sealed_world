import "package:currencies_dart/currencies_dart.dart";

// From root: dart run --enable-experiment=sealed-class example/main.dart
void main() {
  bool? isUsd(Currency currency) {
    if (currency == const FiatUsd()) return true;
    switch (currency) {
      case FiatUsd():
        return true;
      case FiatRub():
        return false;
      default:
        return null;
    }
  }

  FiatCurrency currency = const FiatUsd();
  print(isUsd(currency));
  currency = const FiatRub();
  print(isUsd(currency));
  print(isUsd(const FiatCzk()));
}
