part of "../../model/currency/currency.dart";

extension type const _BsdFactory._(FiatBsd _) implements FiatBsd {
  const _BsdFactory() : this._(const FiatBsd._());
}

/// A class that represents the the Bahamian Dollar currency.
class FiatBsd extends FiatCurrency {
  /// {@template sealed_world.currency_bsd_constructor}
  /// Creates a instance of [FiatBsd] (Bahamian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `BSD`, ISO 4217 Numeric code: `044`.
  /// {@endtemplate}
  const factory FiatBsd() = _BsdFactory;

  const FiatBsd._()
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
