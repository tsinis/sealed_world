part of "../../model/currency/currency.dart";

extension type const _BbdFactory._(FiatBbd _) implements FiatBbd {
  const _BbdFactory() : this._(const FiatBbd._());
}

/// A class that represents the the Barbadian Dollar currency.
class FiatBbd extends FiatCurrency {
  /// {@template sealed_world.currency_bbd_constructor}
  /// Creates a instance of [FiatBbd] (Barbadian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `BBD`, ISO 4217 Numeric code: `052`.
  /// {@endtemplate}
  const factory FiatBbd() = _BbdFactory;

  const FiatBbd._()
    : super(
        code: "BBD",
        name: "Barbadian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"Bds$"],
        disambiguateSymbol: r"Bds$",
        htmlEntity: r"$",
        codeNumeric: "052",
        namesNative: const ["Barbadian dollar"],
        subunit: "Cent",
        unitFirst: true,
      );
}
