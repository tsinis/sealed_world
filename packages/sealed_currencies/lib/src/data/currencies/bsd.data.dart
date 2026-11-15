part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _BsdFactory._(FiatBsd _) implements FiatBsd {
  const new() : this._(const FiatBsd._());
}

/// A class that represents the Bahamian Dollar currency.
final class FiatBsd extends FiatCurrency {
  /// {@template sealed_world.currency_bsd_constructor}
  /// Creates a instance of [FiatBsd] (Bahamian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `BSD`, ISO 4217 Numeric code: `044`.
  /// {@endtemplate}
  const factory() = _BsdFactory;

  const new _()
    : super(
        code: "BSD",
        name: "Bahamian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"B$"],
        disambiguateSymbol: "BSD",
        htmlEntity: r"$",
        codeNumeric: "044",
        namesNative: const ["Bahamian dollar"],
        subunit: "Cent",
        unitFirst: true,
      );
}
