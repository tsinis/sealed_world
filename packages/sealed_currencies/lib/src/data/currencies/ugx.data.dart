part of "../../model/currency/currency.dart";

extension type const _UgxFactory._(FiatUgx _) implements FiatUgx {
  const _UgxFactory() : this._(const FiatUgx._());
}

/// A class that represents the the Ugandan Shilling currency.
class FiatUgx extends FiatCurrency {
  /// {@template sealed_world.currency_ugx_constructor}
  /// Creates a instance of [FiatUgx] (Ugandan Shilling currency).
  ///
  /// ISO 4217 Alpha code: `UGX`, ISO 4217 Numeric code: `800`.
  /// {@endtemplate}
  const factory FiatUgx() = _UgxFactory;

  const FiatUgx._()
    : super(
        code: "UGX",
        name: "Ugandan Shilling",
        symbol: "USh",
        codeNumeric: "800",
        namesNative: const ["Shilingi ya Uganda"],
        smallestDenomination: 1000,
        subunit: "Cent",
        subunitToUnit: 1,
      );
}
