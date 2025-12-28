part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _GbpFactory._(FiatGbp _) implements FiatGbp {
  const _GbpFactory() : this._(const FiatGbp._());
}

/// A class that represents the British Pound currency.
final class FiatGbp extends FiatCurrency {
  /// {@template sealed_world.currency_gbp_constructor}
  /// Creates a instance of [FiatGbp] (British Pound currency).
  ///
  /// ISO 4217 Alpha code: `GBP`, ISO 4217 Numeric code: `826`.
  /// {@endtemplate}
  const factory FiatGbp() = _GbpFactory;

  const FiatGbp._()
    : super(
        code: "GBP",
        name: "British Pound",
        symbol: "£",
        htmlEntity: "&#x00A3;",
        codeNumeric: "826",
        namesNative: const ["British pound"],
        priority: 3,
        subunit: "Penny",
        unitFirst: true,
      );
}
