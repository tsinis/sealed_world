part of "../../model/currency/currency.dart";

extension type const _SleFactory._(FiatSle _) implements FiatSle {
  const _SleFactory() : this._(const FiatSle._());
}

/// A class that represents the Sierra Leonean Leone currency.
class FiatSle extends FiatCurrency {
  /// {@template sealed_world.currency_sle_constructor}
  /// Creates a instance of [FiatSle] (Sierra Leonean Leone currency).
  ///
  /// ISO 4217 Alpha code: `SLE`, ISO 4217 Numeric code: `925`.
  /// {@endtemplate}
  const factory FiatSle() = _SleFactory;

  const FiatSle._()
    : super(
        code: "SLE",
        name: "Sierra Leonean Leone",
        symbol: "Le",
        disambiguateSymbol: "SLE",
        codeNumeric: "925",
        namesNative: const ["Sierra Leonean leone"],
        smallestDenomination: 1000,
        subunit: "Cent",
      );
}
