part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _CupFactory._(FiatCup _) implements FiatCup {
  const _CupFactory() : this._(const FiatCup._());
}

/// A class that represents the Cuban Peso currency.
final class FiatCup extends FiatCurrency {
  /// {@template sealed_world.currency_cup_constructor}
  /// Creates a instance of [FiatCup] (Cuban Peso currency).
  ///
  /// ISO 4217 Alpha code: `CUP`, ISO 4217 Numeric code: `192`.
  /// {@endtemplate}
  const factory FiatCup() = _CupFactory;

  const FiatCup._()
    : super(
        code: "CUP",
        name: "Cuban Peso",
        symbol: r"$",
        alternateSymbols: const [r"$MN"],
        disambiguateSymbol: r"$MN",
        htmlEntity: "&#x20B1;",
        codeNumeric: "192",
        namesNative: const ["peso cubano"],
        subunit: "Centavo",
        unitFirst: true,
      );
}
