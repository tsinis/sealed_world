part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _SbdFactory._(FiatSbd _) implements FiatSbd {
  const _SbdFactory() : this._(const FiatSbd._());
}

/// A class that represents the Solomon Islands Dollar currency.
final class FiatSbd extends FiatCurrency {
  /// {@template sealed_world.currency_sbd_constructor}
  /// Creates a instance of [FiatSbd] (Solomon Islands Dollar currency).
  ///
  /// ISO 4217 Alpha code: `SBD`, ISO 4217 Numeric code: `090`.
  /// {@endtemplate}
  const factory FiatSbd() = _SbdFactory;

  const FiatSbd._()
    : super(
        code: "SBD",
        name: "Solomon Islands Dollar",
        symbol: r"$",
        alternateSymbols: const [r"SI$"],
        disambiguateSymbol: r"SI$",
        htmlEntity: r"$",
        codeNumeric: "090",
        namesNative: const ["Solomon Islands dollar"],
        smallestDenomination: 10,
        subunit: "Cent",
      );
}
