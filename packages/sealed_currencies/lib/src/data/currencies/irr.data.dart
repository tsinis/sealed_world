part of "../../model/currency/currency.dart";

extension type const _IrrFactory._(FiatIrr _) implements FiatIrr {
  const _IrrFactory() : this._(const FiatIrr._());
}

/// A class that represents the the Iranian Rial currency.
class FiatIrr extends FiatCurrency {
  /// {@template sealed_world.currency_irr_constructor}
  /// Creates a instance of [FiatIrr] (Iranian Rial currency).
  ///
  /// ISO 4217 Alpha code: `IRR`, ISO 4217 Numeric code: `364`.
  /// {@endtemplate}
  const factory FiatIrr() = _IrrFactory;

  const FiatIrr._()
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
