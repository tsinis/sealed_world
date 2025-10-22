part of "../../model/currency/currency.dart";

extension type const _ZmwFactory._(FiatZmw _) implements FiatZmw {
  const _ZmwFactory() : this._(const FiatZmw._());
}

/// A class that represents the the Zambian Kwacha currency.
class FiatZmw extends FiatCurrency {
  /// {@template sealed_world.currency_zmw_constructor}
  /// Creates a instance of [FiatZmw] (Zambian Kwacha currency).
  ///
  /// ISO 4217 Alpha code: `ZMW`, ISO 4217 Numeric code: `967`.
  /// {@endtemplate}
  const factory FiatZmw() = _ZmwFactory;

  const FiatZmw._()
    : super(
        code: "ZMW",
        name: "Zambian Kwacha",
        symbol: "K",
        disambiguateSymbol: "ZMW",
        codeNumeric: "967",
        namesNative: const ["Zambian kwacha"],
        smallestDenomination: 5,
        subunit: "Ngwee",
        unitFirst: true,
      );
}
