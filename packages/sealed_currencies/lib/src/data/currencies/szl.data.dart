part of "../../model/currency/currency.dart";

extension type const _SzlFactory._(FiatSzl _) implements FiatSzl {
  const _SzlFactory() : this._(const FiatSzl._());
}

/// A class that represents the the Swazi Lilangeni currency.
class FiatSzl extends FiatCurrency {
  /// {@template sealed_world.currency_szl_constructor}
  /// Creates a instance of [FiatSzl] (Swazi Lilangeni currency).
  ///
  /// ISO 4217 Alpha code: `SZL`, ISO 4217 Numeric code: `748`.
  /// {@endtemplate}
  const factory FiatSzl() = _SzlFactory;

  const FiatSzl._()
    : super(
        code: "SZL",
        name: "Swazi Lilangeni",
        symbol: "E",
        disambiguateSymbol: "SZL",
        codeNumeric: "748",
        namesNative: const ["Swazi lilangeni"],
        subunit: "Cent",
        unitFirst: true,
      );
}
