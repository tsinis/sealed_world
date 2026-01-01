part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _NadFactory._(FiatNad _) implements FiatNad {
  const _NadFactory() : this._(const FiatNad._());
}

/// A class that represents the Namibian Dollar currency.
final class FiatNad extends FiatCurrency {
  /// {@template sealed_world.currency_nad_constructor}
  /// Creates a instance of [FiatNad] (Namibian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `NAD`, ISO 4217 Numeric code: `516`.
  /// {@endtemplate}
  const factory FiatNad() = _NadFactory;

  const FiatNad._()
    : super(
        code: "NAD",
        name: "Namibian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"N$"],
        disambiguateSymbol: r"N$",
        htmlEntity: r"$",
        codeNumeric: "516",
        namesNative: const ["Namibian dollar"],
        smallestDenomination: 5,
        subunit: "Cent",
      );
}
