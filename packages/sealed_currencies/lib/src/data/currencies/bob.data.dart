part of "../../model/currency/currency.dart";

extension type const _BobFactory._(FiatBob _) implements FiatBob {
  const _BobFactory() : this._(const FiatBob._());
}

/// A class that represents the the Bolivian Boliviano currency.
class FiatBob extends FiatCurrency {
  /// {@template sealed_world.currency_bob_constructor}
  /// Creates a instance of [FiatBob] (Bolivian Boliviano currency).
  ///
  /// ISO 4217 Alpha code: `BOB`, ISO 4217 Numeric code: `068`.
  /// {@endtemplate}
  const factory FiatBob() = _BobFactory;

  const FiatBob._()
    : super(
        code: "BOB",
        name: "Bolivian Boliviano",
        symbol: "Bs.",
        alternateSymbols: const ["Bs"],
        codeNumeric: "068",
        namesNative: const ["Bolivian boliviano"],
        smallestDenomination: 10,
        subunit: "Centavo",
        unitFirst: true,
      );
}
