part of "../../model/currency/currency.dart";

extension type const _FjdFactory._(FiatFjd _) implements FiatFjd {
  const _FjdFactory() : this._(const FiatFjd._());
}

/// A class that represents the Fijian Dollar currency.
class FiatFjd extends FiatCurrency {
  /// {@template sealed_world.currency_fjd_constructor}
  /// Creates a instance of [FiatFjd] (Fijian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `FJD`, ISO 4217 Numeric code: `242`.
  /// {@endtemplate}
  const factory FiatFjd() = _FjdFactory;

  const FiatFjd._()
    : super(
        code: "FJD",
        name: "Fijian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"FJ$"],
        disambiguateSymbol: r"FJ$",
        htmlEntity: r"$",
        codeNumeric: "242",
        namesNative: const ["Fijian dollar"],
        smallestDenomination: 5,
        subunit: "Cent",
      );
}
