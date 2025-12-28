part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _PgkFactory._(FiatPgk _) implements FiatPgk {
  const _PgkFactory() : this._(const FiatPgk._());
}

/// A class that represents the Papua New Guinean Kina currency.
final class FiatPgk extends FiatCurrency {
  /// {@template sealed_world.currency_pgk_constructor}
  /// Creates a instance of [FiatPgk] (Papua New Guinean Kina currency).
  ///
  /// ISO 4217 Alpha code: `PGK`, ISO 4217 Numeric code: `598`.
  /// {@endtemplate}
  const factory FiatPgk() = _PgkFactory;

  const FiatPgk._()
    : super(
        code: "PGK",
        name: "Papua New Guinean Kina",
        symbol: "K",
        disambiguateSymbol: "PGK",
        codeNumeric: "598",
        namesNative: const ["Papua New Guinean kina"],
        smallestDenomination: 5,
        subunit: "Toea",
      );
}
