part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ZwgFactory._(FiatZwg _) implements FiatZwg {
  const _ZwgFactory() : this._(const FiatZwg._());
}

/// A class that represents the Zimbabwe Gold currency.
final class FiatZwg extends FiatCurrency {
  /// {@template sealed_world.currency_zwg_constructor}
  /// Creates a instance of [FiatZwg] (Zimbabwe Gold currency).
  ///
  /// ISO 4217 Alpha code: `ZWG`, ISO 4217 Numeric code: `924`.
  /// {@endtemplate}
  const factory FiatZwg() = _ZwgFactory;

  const FiatZwg._()
    : super(
        code: "ZWG",
        name: "Zimbabwe Gold",
        symbol: "ZiG",
        disambiguateSymbol: "ZWG",
        codeNumeric: "924",
        namesNative: const ["Zimbabwe Gold"],
        subunit: "cent",
      );
}
