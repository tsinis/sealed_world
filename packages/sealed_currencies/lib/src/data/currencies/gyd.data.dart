part of "../../model/currency/currency.dart";

extension type const _GydFactory._(FiatGyd _) implements FiatGyd {
  const _GydFactory() : this._(const FiatGyd._());
}

/// A class that represents the the Guyanese Dollar currency.
class FiatGyd extends FiatCurrency {
  /// {@template sealed_world.currency_gyd_constructor}
  /// Creates a instance of [FiatGyd] (Guyanese Dollar currency).
  ///
  /// ISO 4217 Alpha code: `GYD`, ISO 4217 Numeric code: `328`.
  /// {@endtemplate}
  const factory FiatGyd() = _GydFactory;

  const FiatGyd._()
    : super(
        code: "GYD",
        name: "Guyanese Dollar",
        symbol: r"$",
        alternateSymbols: const [r"G$"],
        disambiguateSymbol: r"G$",
        htmlEntity: r"$",
        codeNumeric: "328",
        namesNative: const ["Guyanese dollar"],
        smallestDenomination: 100,
        subunit: "Cent",
      );
}
