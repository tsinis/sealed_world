part of "../../model/currency/currency.dart";

extension type const _EurFactory._(FiatEur _) implements FiatEur {
  const _EurFactory() : this._(const FiatEur._());
}

/// A class that represents the Euro currency.
class FiatEur extends FiatCurrency {
  /// {@template sealed_world.currency_eur_constructor}
  /// Creates a instance of [FiatEur] (Euro currency).
  ///
  /// ISO 4217 Alpha code: `EUR`, ISO 4217 Numeric code: `978`.
  /// {@endtemplate}
  const factory FiatEur() = _EurFactory;

  const FiatEur._()
    : super(
        code: "EUR",
        name: "Euro",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "€",
        htmlEntity: "€",
        codeNumeric: "978",
        namesNative: const ["Euro"],
        priority: 2,
        subunit: "Cent",
        unitFirst: true,
      );
}
