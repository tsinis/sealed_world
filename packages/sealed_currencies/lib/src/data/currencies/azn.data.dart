part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _AznFactory._(FiatAzn _) implements FiatAzn {
  const new() : this._(const FiatAzn._());
}

/// A class that represents the Azerbaijani Manat currency.
final class FiatAzn extends FiatCurrency {
  /// {@template sealed_world.currency_azn_constructor}
  /// Creates a instance of [FiatAzn] (Azerbaijani Manat currency).
  ///
  /// ISO 4217 Alpha code: `AZN`, ISO 4217 Numeric code: `944`.
  /// {@endtemplate}
  const factory() = _AznFactory;

  const new _()
    : super(
        code: "AZN",
        name: "Azerbaijani Manat",
        symbol: "₼",
        alternateSymbols: const ["m", "man"],
        codeNumeric: "944",
        namesNative: const ["Azərbaycan manatı"],
        subunit: "Qəpik",
        unitFirst: true,
      );
}
