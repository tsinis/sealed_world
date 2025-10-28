part of "../../model/currency/currency.dart";

extension type const _KesFactory._(FiatKes _) implements FiatKes {
  const _KesFactory() : this._(const FiatKes._());
}

/// A class that represents the Kenyan Shilling currency.
class FiatKes extends FiatCurrency {
  /// {@template sealed_world.currency_kes_constructor}
  /// Creates a instance of [FiatKes] (Kenyan Shilling currency).
  ///
  /// ISO 4217 Alpha code: `KES`, ISO 4217 Numeric code: `404`.
  /// {@endtemplate}
  const factory FiatKes() = _KesFactory;

  const FiatKes._()
    : super(
        code: "KES",
        name: "Kenyan Shilling",
        symbol: "KSh",
        alternateSymbols: const ["Sh"],
        codeNumeric: "404",
        namesNative: const ["Shillingi ya Kenya"],
        smallestDenomination: 50,
        subunit: "Cent",
        unitFirst: true,
      );
}
