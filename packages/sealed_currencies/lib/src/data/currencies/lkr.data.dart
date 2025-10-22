part of "../../model/currency/currency.dart";

extension type const _LkrFactory._(FiatLkr _) implements FiatLkr {
  const _LkrFactory() : this._(const FiatLkr._());
}

/// A class that represents the the Sri Lankan Rupee currency.
class FiatLkr extends FiatCurrency {
  /// {@template sealed_world.currency_lkr_constructor}
  /// Creates a instance of [FiatLkr] (Sri Lankan Rupee currency).
  ///
  /// ISO 4217 Alpha code: `LKR`, ISO 4217 Numeric code: `144`.
  /// {@endtemplate}
  const factory FiatLkr() = _LkrFactory;

  const FiatLkr._()
    : super(
        code: "LKR",
        name: "Sri Lankan Rupee",
        symbol: "₨",
        alternateSymbols: const ["රු", "ரூ", "SLRs", "/-"],
        disambiguateSymbol: "SLRs",
        htmlEntity: "&#8360;",
        codeNumeric: "144",
        namesNative: const ["ශ්‍රී ලංකා රුපියල්"],
        smallestDenomination: 100,
        subunit: "Cent",
      );
}
