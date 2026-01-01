part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _SspFactory._(FiatSsp _) implements FiatSsp {
  const _SspFactory() : this._(const FiatSsp._());
}

/// A class that represents the South Sudanese Pound currency.
final class FiatSsp extends FiatCurrency {
  /// {@template sealed_world.currency_ssp_constructor}
  /// Creates a instance of [FiatSsp] (South Sudanese Pound currency).
  ///
  /// ISO 4217 Alpha code: `SSP`, ISO 4217 Numeric code: `728`.
  /// {@endtemplate}
  const factory FiatSsp() = _SspFactory;

  const FiatSsp._()
    : super(
        code: "SSP",
        name: "South Sudanese Pound",
        symbol: "£",
        disambiguateSymbol: "SSP",
        htmlEntity: "&#x00A3;",
        codeNumeric: "728",
        namesNative: const ["South Sudanese pound"],
        smallestDenomination: 5,
        subunit: "piaster",
      );
}
