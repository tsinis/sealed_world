part of "../../model/currency/currency.dart";

extension type const _KrwFactory._(FiatKrw _) implements FiatKrw {
  const _KrwFactory() : this._(const FiatKrw._());
}

/// A class that represents the the South Korean Won currency.
class FiatKrw extends FiatCurrency {
  /// {@template sealed_world.currency_krw_constructor}
  /// Creates a instance of [FiatKrw] (South Korean Won currency).
  ///
  /// ISO 4217 Alpha code: `KRW`, ISO 4217 Numeric code: `410`.
  /// {@endtemplate}
  const factory FiatKrw() = _KrwFactory;

  const FiatKrw._()
    : super(
        code: "KRW",
        name: "South Korean Won",
        symbol: "₩",
        htmlEntity: "&#x20A9;",
        codeNumeric: "410",
        namesNative: const ["원"],
        subunitToUnit: 1,
        unitFirst: true,
      );
}
