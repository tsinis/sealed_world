part of "../../model/currency/currency.dart";

extension type const _KwdFactory._(FiatKwd _) implements FiatKwd {
  const _KwdFactory() : this._(const FiatKwd._());
}

/// A class that represents the the Kuwaiti Dinar currency.
class FiatKwd extends FiatCurrency {
  /// {@template sealed_world.currency_kwd_constructor}
  /// Creates a instance of [FiatKwd] (Kuwaiti Dinar currency).
  ///
  /// ISO 4217 Alpha code: `KWD`, ISO 4217 Numeric code: `414`.
  /// {@endtemplate}
  const factory FiatKwd() = _KwdFactory;

  const FiatKwd._()
    : super(
        code: "KWD",
        name: "Kuwaiti Dinar",
        symbol: "د.ك",
        alternateSymbols: const ["K.D."],
        codeNumeric: "414",
        namesNative: const ["دينار كويتي"],
        smallestDenomination: 5,
        subunit: "Fils",
        subunitToUnit: 1000,
        unitFirst: true,
      );
}
