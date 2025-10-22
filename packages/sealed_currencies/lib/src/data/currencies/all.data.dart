part of "../../model/currency/currency.dart";

extension type const _AllFactory._(FiatAll _) implements FiatAll {
  const _AllFactory() : this._(const FiatAll._());
}

/// A class that represents the the Albanian Lek currency.
class FiatAll extends FiatCurrency {
  /// {@template sealed_world.currency_all_constructor}
  /// Creates a instance of [FiatAll] (Albanian Lek currency).
  ///
  /// ISO 4217 Alpha code: `ALL`, ISO 4217 Numeric code: `008`.
  /// {@endtemplate}
  const factory FiatAll() = _AllFactory;

  const FiatAll._()
    : super(
        code: "ALL",
        name: "Albanian Lek",
        symbol: "L",
        alternateSymbols: const ["Lek"],
        disambiguateSymbol: "Lek",
        codeNumeric: "008",
        namesNative: const ["Leku Shqiptar"],
        smallestDenomination: 100,
        subunit: "Qintar",
      );
}
