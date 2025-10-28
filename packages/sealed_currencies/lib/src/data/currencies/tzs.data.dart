part of "../../model/currency/currency.dart";

extension type const _TzsFactory._(FiatTzs _) implements FiatTzs {
  const _TzsFactory() : this._(const FiatTzs._());
}

/// A class that represents the Tanzanian Shilling currency.
class FiatTzs extends FiatCurrency {
  /// {@template sealed_world.currency_tzs_constructor}
  /// Creates a instance of [FiatTzs] (Tanzanian Shilling currency).
  ///
  /// ISO 4217 Alpha code: `TZS`, ISO 4217 Numeric code: `834`.
  /// {@endtemplate}
  const factory FiatTzs() = _TzsFactory;

  const FiatTzs._()
    : super(
        code: "TZS",
        name: "Tanzanian Shilling",
        symbol: "Sh",
        codeNumeric: "834",
        namesNative: const ["Shilingi ya Tanzania"],
        smallestDenomination: 5000,
        subunit: "Cent",
        unitFirst: true,
      );
}
