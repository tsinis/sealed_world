part of "../../model/currency/currency.dart";

extension type const _HufFactory._(FiatHuf _) implements FiatHuf {
  const _HufFactory() : this._(const FiatHuf._());
}

/// A class that represents the Hungarian Forint currency.
class FiatHuf extends FiatCurrency {
  /// {@template sealed_world.currency_huf_constructor}
  /// Creates a instance of [FiatHuf] (Hungarian Forint currency).
  ///
  /// ISO 4217 Alpha code: `HUF`, ISO 4217 Numeric code: `348`.
  /// {@endtemplate}
  const factory FiatHuf() = _HufFactory;

  const FiatHuf._()
    : super(
        code: "HUF",
        name: "Hungarian Forint",
        decimalMark: ",",
        thousandsSeparator: " ",
        symbol: "Ft",
        codeNumeric: "348",
        namesNative: const ["Magyar forint"],
        smallestDenomination: 5,
      );
}
