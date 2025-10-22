part of "../../model/currency/currency.dart";

extension type const _CnyFactory._(FiatCny _) implements FiatCny {
  const _CnyFactory() : this._(const FiatCny._());
}

/// A class that represents the the Chinese Renminbi Yuan currency.
class FiatCny extends FiatCurrency {
  /// {@template sealed_world.currency_cny_constructor}
  /// Creates a instance of [FiatCny] (Chinese Renminbi Yuan currency).
  ///
  /// ISO 4217 Alpha code: `CNY`, ISO 4217 Numeric code: `156`.
  /// {@endtemplate}
  const factory FiatCny() = _CnyFactory;

  const FiatCny._()
    : super(
        code: "CNY",
        name: "Chinese Renminbi Yuan",
        symbol: "¥",
        alternateSymbols: const ["CN¥", "元", "CN元"],
        htmlEntity: "￥",
        codeNumeric: "156",
        namesNative: const ["人民币"],
        subunit: "Fen",
        unitFirst: true,
      );
}
