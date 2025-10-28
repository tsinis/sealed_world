part of "../../model/currency/currency.dart";

extension type const _LakFactory._(FiatLak _) implements FiatLak {
  const _LakFactory() : this._(const FiatLak._());
}

/// A class that represents the Laotian Kip currency.
class FiatLak extends FiatCurrency {
  /// {@template sealed_world.currency_lak_constructor}
  /// Creates a instance of [FiatLak] (Laotian Kip currency).
  ///
  /// ISO 4217 Alpha code: `LAK`, ISO 4217 Numeric code: `418`.
  /// {@endtemplate}
  const factory FiatLak() = _LakFactory;

  const FiatLak._()
    : super(
        code: "LAK",
        name: "Laotian Kip",
        symbol: "₭",
        alternateSymbols: const ["₭N"],
        htmlEntity: "&#x20AD;",
        codeNumeric: "418",
        namesNative: const ["ເງີນກີບລາວ"],
        smallestDenomination: 10,
        subunit: "Att",
      );
}
