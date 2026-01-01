part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ShpFactory._(FiatShp _) implements FiatShp {
  const _ShpFactory() : this._(const FiatShp._());
}

/// A class that represents the St. Helena Pound currency.
final class FiatShp extends FiatCurrency {
  /// {@template sealed_world.currency_shp_constructor}
  /// Creates a instance of [FiatShp] (St. Helena Pound currency).
  ///
  /// ISO 4217 Alpha code: `SHP`, ISO 4217 Numeric code: `654`.
  /// {@endtemplate}
  const factory FiatShp() = _ShpFactory;

  const FiatShp._()
    : super(
        code: "SHP",
        name: "St. Helena Pound",
        symbol: "£",
        disambiguateSymbol: "SHP",
        htmlEntity: "&#x00A3;",
        codeNumeric: "654",
        namesNative: const ["Saint Helena pound"],
        subunit: "Penny",
      );
}
