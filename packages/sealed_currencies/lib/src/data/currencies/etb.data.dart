part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _EtbFactory._(FiatEtb _) implements FiatEtb {
  const _EtbFactory() : this._(const FiatEtb._());
}

/// A class that represents the Ethiopian Birr currency.
final class FiatEtb extends FiatCurrency {
  /// {@template sealed_world.currency_etb_constructor}
  /// Creates a instance of [FiatEtb] (Ethiopian Birr currency).
  ///
  /// ISO 4217 Alpha code: `ETB`, ISO 4217 Numeric code: `230`.
  /// {@endtemplate}
  const factory FiatEtb() = _EtbFactory;

  const FiatEtb._()
    : super(
        code: "ETB",
        name: "Ethiopian Birr",
        symbol: "Br",
        disambiguateSymbol: "ETB",
        codeNumeric: "230",
        namesNative: const ["Ethiopian birr"],
        subunit: "Santim",
      );
}
