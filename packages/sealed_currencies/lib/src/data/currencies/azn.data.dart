part of "../../model/currency/currency.dart";

extension type const _AznFactory._(FiatAzn _) implements FiatAzn {
  const _AznFactory() : this._(const FiatAzn._());
}

/// A class that represents the Azerbaijani Manat currency.
class FiatAzn extends FiatCurrency {
  /// {@template sealed_world.currency_azn_constructor}
  /// Creates a instance of [FiatAzn] (Azerbaijani Manat currency).
  ///
  /// ISO 4217 Alpha code: `AZN`, ISO 4217 Numeric code: `944`.
  /// {@endtemplate}
  const factory FiatAzn() = _AznFactory;

  const FiatAzn._()
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
