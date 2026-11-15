part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _IrrFactory._(FiatIrr _) implements FiatIrr {
  const new() : this._(const FiatIrr._());
}

/// A class that represents the Iranian Rial currency.
final class FiatIrr extends FiatCurrency {
  /// {@template sealed_world.currency_irr_constructor}
  /// Creates a instance of [FiatIrr] (Iranian Rial currency).
  ///
  /// ISO 4217 Alpha code: `IRR`, ISO 4217 Numeric code: `364`.
  /// {@endtemplate}
  const factory() = _IrrFactory;

  const new _()
    : super(
        code: "IRR",
        name: "Iranian Rial",
        symbol: "﷼",
        htmlEntity: "&#xFDFC;",
        codeNumeric: "364",
        namesNative: const ["ریال ایران"],
        smallestDenomination: 5000,
        unitFirst: true,
      );
}
