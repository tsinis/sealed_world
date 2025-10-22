part of "../../model/currency/currency.dart";

extension type const _KpwFactory._(FiatKpw _) implements FiatKpw {
  const _KpwFactory() : this._(const FiatKpw._());
}

/// A class that represents the the North Korean Won currency.
class FiatKpw extends FiatCurrency {
  /// {@template sealed_world.currency_kpw_constructor}
  /// Creates a instance of [FiatKpw] (North Korean Won currency).
  ///
  /// ISO 4217 Alpha code: `KPW`, ISO 4217 Numeric code: `408`.
  /// {@endtemplate}
  const factory FiatKpw() = _KpwFactory;

  const FiatKpw._()
    : super(
        code: "KPW",
        name: "North Korean Won",
        symbol: "₩",
        htmlEntity: "&#x20A9;",
        codeNumeric: "408",
        namesNative: const ["조선 민주주의 인민 공화국 원"],
        subunit: "Chŏn",
      );
}
