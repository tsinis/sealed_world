part of "../../model/currency/currency.dart";

extension type const _JpyFactory._(FiatJpy _) implements FiatJpy {
  const _JpyFactory() : this._(const FiatJpy._());
}

/// A class that represents the the Japanese Yen currency.
class FiatJpy extends FiatCurrency {
  /// {@template sealed_world.currency_jpy_constructor}
  /// Creates a instance of [FiatJpy] (Japanese Yen currency).
  ///
  /// ISO 4217 Alpha code: `JPY`, ISO 4217 Numeric code: `392`.
  /// {@endtemplate}
  const factory FiatJpy() = _JpyFactory;

  const FiatJpy._()
    : super(
        code: "JPY",
        name: "Japanese Yen",
        symbol: "¥",
        alternateSymbols: const ["円", "圓"],
        htmlEntity: "&#x00A5;",
        codeNumeric: "392",
        namesNative: const ["日本円"],
        priority: 6,
        subunitToUnit: 1,
        unitFirst: true,
      );
}
