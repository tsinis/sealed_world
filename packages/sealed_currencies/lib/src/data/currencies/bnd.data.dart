part of "../../model/currency/currency.dart";

extension type const _BndFactory._(FiatBnd _) implements FiatBnd {
  const _BndFactory() : this._(const FiatBnd._());
}

/// A class that represents the Brunei Dollar currency.
class FiatBnd extends FiatCurrency {
  /// {@template sealed_world.currency_bnd_constructor}
  /// Creates a instance of [FiatBnd] (Brunei Dollar currency).
  ///
  /// ISO 4217 Alpha code: `BND`, ISO 4217 Numeric code: `096`.
  /// {@endtemplate}
  const factory FiatBnd() = _BndFactory;

  const FiatBnd._()
    : super(
        code: "BND",
        name: "Brunei Dollar",
        symbol: r"$",
        alternateSymbols: const [r"B$"],
        disambiguateSymbol: "BND",
        htmlEntity: r"$",
        codeNumeric: "096",
        namesNative: const ["Ringgit Brunei"],
        subunit: "Sen",
        unitFirst: true,
      );
}
