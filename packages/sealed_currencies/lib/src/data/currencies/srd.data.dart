part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _SrdFactory._(FiatSrd _) implements FiatSrd {
  const new() : this._(const FiatSrd._());
}

/// A class that represents the Surinamese Dollar currency.
final class FiatSrd extends FiatCurrency {
  /// {@template sealed_world.currency_srd_constructor}
  /// Creates a instance of [FiatSrd] (Surinamese Dollar currency).
  ///
  /// ISO 4217 Alpha code: `SRD`, ISO 4217 Numeric code: `968`.
  /// {@endtemplate}
  const factory() = _SrdFactory;

  const new _()
    : super(
        code: "SRD",
        name: "Surinamese Dollar",
        symbol: r"$",
        disambiguateSymbol: "SRD",
        codeNumeric: "968",
        namesNative: const ["Surinamese dollar"],
        subunit: "Cent",
      );
}
