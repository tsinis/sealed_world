part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _UzsFactory._(FiatUzs _) implements FiatUzs {
  const _UzsFactory() : this._(const FiatUzs._());
}

/// A class that represents the Uzbekistani Som currency.
final class FiatUzs extends FiatCurrency {
  /// {@template sealed_world.currency_uzs_constructor}
  /// Creates a instance of [FiatUzs] (Uzbekistani Som currency).
  ///
  /// ISO 4217 Alpha code: `UZS`, ISO 4217 Numeric code: `860`.
  /// {@endtemplate}
  const factory FiatUzs() = _UzsFactory;

  const FiatUzs._()
    : super(
        code: "UZS",
        name: "Uzbekistani Som",
        symbol: "so'm",
        alternateSymbols: const ["so‘m", "сўм", "сум", "s", "с"],
        codeNumeric: "860",
        namesNative: const ["Oʻzbekiston soʻmi"],
        smallestDenomination: 100,
        subunit: "Tiyin",
      );
}
