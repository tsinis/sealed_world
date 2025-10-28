part of "../../model/currency/currency.dart";

extension type const _DjfFactory._(FiatDjf _) implements FiatDjf {
  const _DjfFactory() : this._(const FiatDjf._());
}

/// A class that represents the Djiboutian Franc currency.
class FiatDjf extends FiatCurrency {
  /// {@template sealed_world.currency_djf_constructor}
  /// Creates a instance of [FiatDjf] (Djiboutian Franc currency).
  ///
  /// ISO 4217 Alpha code: `DJF`, ISO 4217 Numeric code: `262`.
  /// {@endtemplate}
  const factory FiatDjf() = _DjfFactory;

  const FiatDjf._()
    : super(
        code: "DJF",
        name: "Djiboutian Franc",
        symbol: "Fdj",
        codeNumeric: "262",
        namesNative: const ["franc djibouti"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
