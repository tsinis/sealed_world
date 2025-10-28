part of "../../model/currency/currency.dart";

extension type const _VuvFactory._(FiatVuv _) implements FiatVuv {
  const _VuvFactory() : this._(const FiatVuv._());
}

/// A class that represents the Vanuatu Vatu currency.
class FiatVuv extends FiatCurrency {
  /// {@template sealed_world.currency_vuv_constructor}
  /// Creates a instance of [FiatVuv] (Vanuatu Vatu currency).
  ///
  /// ISO 4217 Alpha code: `VUV`, ISO 4217 Numeric code: `548`.
  /// {@endtemplate}
  const factory FiatVuv() = _VuvFactory;

  const FiatVuv._()
    : super(
        code: "VUV",
        name: "Vanuatu Vatu",
        symbol: "Vt",
        codeNumeric: "548",
        namesNative: const ["Vanuatu vatu"],
        subunitToUnit: 1,
        unitFirst: true,
      );
}
