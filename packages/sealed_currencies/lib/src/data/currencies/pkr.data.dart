part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _PkrFactory._(FiatPkr _) implements FiatPkr {
  const _PkrFactory() : this._(const FiatPkr._());
}

/// A class that represents the Pakistani Rupee currency.
final class FiatPkr extends FiatCurrency {
  /// {@template sealed_world.currency_pkr_constructor}
  /// Creates a instance of [FiatPkr] (Pakistani Rupee currency).
  ///
  /// ISO 4217 Alpha code: `PKR`, ISO 4217 Numeric code: `586`.
  /// {@endtemplate}
  const factory FiatPkr() = _PkrFactory;

  const FiatPkr._()
    : super(
        code: "PKR",
        name: "Pakistani Rupee",
        symbol: "₨",
        alternateSymbols: const ["Rs"],
        disambiguateSymbol: "PKR",
        htmlEntity: "&#x20A8;",
        codeNumeric: "586",
        namesNative: const ["پاکستانی روپیہ"],
        smallestDenomination: 100,
        subunit: "Paisa",
        unitFirst: true,
      );
}
