part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ArsFactory._(FiatArs _) implements FiatArs {
  const _ArsFactory() : this._(const FiatArs._());
}

/// A class that represents the Argentine Peso currency.
final class FiatArs extends FiatCurrency {
  /// {@template sealed_world.currency_ars_constructor}
  /// Creates a instance of [FiatArs] (Argentine Peso currency).
  ///
  /// ISO 4217 Alpha code: `ARS`, ISO 4217 Numeric code: `032`.
  /// {@endtemplate}
  const factory FiatArs() = _ArsFactory;

  const FiatArs._()
    : super(
        code: "ARS",
        name: "Argentine Peso",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: r"$",
        alternateSymbols: const [r"AR$"],
        disambiguateSymbol: r"AR$",
        htmlEntity: r"$",
        codeNumeric: "032",
        namesNative: const ["Argentine peso"],
        subunit: "Centavo",
        unitFirst: true,
      );
}
