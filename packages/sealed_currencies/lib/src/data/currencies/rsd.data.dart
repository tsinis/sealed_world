part of "../../model/currency/currency.dart";

extension type const _RsdFactory._(FiatRsd _) implements FiatRsd {
  const _RsdFactory() : this._(const FiatRsd._());
}

/// A class that represents the Serbian Dinar currency.
class FiatRsd extends FiatCurrency {
  /// {@template sealed_world.currency_rsd_constructor}
  /// Creates a instance of [FiatRsd] (Serbian Dinar currency).
  ///
  /// ISO 4217 Alpha code: `RSD`, ISO 4217 Numeric code: `941`.
  /// {@endtemplate}
  const factory FiatRsd() = _RsdFactory;

  const FiatRsd._()
    : super(
        code: "RSD",
        name: "Serbian Dinar",
        symbol: "РСД",
        alternateSymbols: const ["RSD", "din", "дин"],
        codeNumeric: "941",
        namesNative: const ["Српски динар", "Srpski dinar"],
        smallestDenomination: 100,
        subunit: "Para",
        unitFirst: true,
      );
}
