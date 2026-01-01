part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _SgdFactory._(FiatSgd _) implements FiatSgd {
  const _SgdFactory() : this._(const FiatSgd._());
}

/// A class that represents the Singapore Dollar currency.
final class FiatSgd extends FiatCurrency {
  /// {@template sealed_world.currency_sgd_constructor}
  /// Creates a instance of [FiatSgd] (Singapore Dollar currency).
  ///
  /// ISO 4217 Alpha code: `SGD`, ISO 4217 Numeric code: `702`.
  /// {@endtemplate}
  const factory FiatSgd() = _SgdFactory;

  const FiatSgd._()
    : super(
        code: "SGD",
        name: "Singapore Dollar",
        symbol: r"$",
        alternateSymbols: const [r"S$"],
        disambiguateSymbol: r"S$",
        htmlEntity: r"$",
        codeNumeric: "702",
        namesNative: const [
          "Singapore dollar",
          "Singapura Dolar",
          "新加坡元",
          "சிங்கப்பூர் வெள்ளி",
        ],
        subunit: "Cent",
        unitFirst: true,
      );
}
