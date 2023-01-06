import "package:currencies_dart/currencies_dart.dart";

// From root: dart run --enable-experiment=sealed-class example/main.dart
void main() {
  FiatCurrency currency = const FiatUsd();
  currency = const FiatRub();
  final array = {const FiatUsd(), const FiatRub(), const FiatUsd()};
  currency = const FiatUsd();
  array.add(currency);
}
