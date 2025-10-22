part of "../../model/currency/currency.dart";

extension type const _VndFactory._(FiatVnd _) implements FiatVnd {
  const _VndFactory() : this._(const FiatVnd._());
}

/// A class that represents the Vietnamese Dong currency.
class FiatVnd extends FiatCurrency {
  /// {@template sealed_world.currency_vnd_constructor}
  /// Creates a instance of [FiatVnd] (Vietnamese Dong currency).
  ///
  /// ISO 4217 Alpha code: `VND`, ISO 4217 Numeric code: `704`.
  /// {@endtemplate}
  const factory FiatVnd() = _VndFactory;

  const FiatVnd._()
    : super(
        code: "VND",
        name: "Vietnamese Dong",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "₫",
        htmlEntity: "&#x20AB;",
        codeNumeric: "704",
        namesNative: const ["đồng Việt Nam"],
        smallestDenomination: 100,
        subunit: "Hào",
        subunitToUnit: 1,
      );
}
