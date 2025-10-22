part of "../../model/currency/currency.dart";

extension type const _CucFactory._(FiatCuc _) implements FiatCuc {
  const _CucFactory() : this._(const FiatCuc._());
}

/// A class that represents the Cuban Convertible Peso currency.
class FiatCuc extends FiatCurrency {
  /// {@template sealed_world.currency_cuc_constructor}
  /// Creates a instance of [FiatCuc] (Cuban Convertible Peso currency).
  ///
  /// ISO 4217 Alpha code: `CUC`, ISO 4217 Numeric code: `931`.
  /// {@endtemplate}
  const factory FiatCuc() = _CucFactory;

  const FiatCuc._()
    : super(
        code: "CUC",
        name: "Cuban Convertible Peso",
        symbol: r"$",
        alternateSymbols: const [r"CUC$"],
        disambiguateSymbol: r"CUC$",
        codeNumeric: "931",
        namesNative: const ["Peso Convertible"],
        subunit: "Centavo",
      );
}
