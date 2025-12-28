part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ChfFactory._(FiatChf _) implements FiatChf {
  const _ChfFactory() : this._(const FiatChf._());
}

/// A class that represents the Swiss Franc currency.
final class FiatChf extends FiatCurrency {
  /// {@template sealed_world.currency_chf_constructor}
  /// Creates a instance of [FiatChf] (Swiss Franc currency).
  ///
  /// ISO 4217 Alpha code: `CHF`, ISO 4217 Numeric code: `756`.
  /// {@endtemplate}
  const factory FiatChf() = _ChfFactory;

  const FiatChf._()
    : super(
        code: "CHF",
        name: "Swiss Franc",
        thousandsSeparator: "'",
        alternateSymbols: const ["SFr", "Fr"],
        codeNumeric: "756",
        namesNative: const ["Schweizer Franken"],
        smallestDenomination: 5,
        subunit: "Rappen",
        unitFirst: true,
      );
}
