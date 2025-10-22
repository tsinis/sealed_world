part of "../../model/currency/currency.dart";

extension type const _CadFactory._(FiatCad _) implements FiatCad {
  const _CadFactory() : this._(const FiatCad._());
}

/// A class that represents the the Canadian Dollar currency.
class FiatCad extends FiatCurrency {
  /// {@template sealed_world.currency_cad_constructor}
  /// Creates a instance of [FiatCad] (Canadian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `CAD`, ISO 4217 Numeric code: `124`.
  /// {@endtemplate}
  const factory FiatCad() = _CadFactory;

  const FiatCad._()
    : super(
        code: "CAD",
        name: "Canadian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"C$", r"CAD$"],
        disambiguateSymbol: r"C$",
        htmlEntity: r"$",
        codeNumeric: "124",
        namesNative: const ["Canadian dollar"],
        priority: 5,
        smallestDenomination: 5,
        subunit: "Cent",
        unitFirst: true,
      );
}
