part of "../../model/currency/currency.dart";

extension type const _BmdFactory._(FiatBmd _) implements FiatBmd {
  const _BmdFactory() : this._(const FiatBmd._());
}

/// A class that represents the Bermudian Dollar currency.
class FiatBmd extends FiatCurrency {
  /// {@template sealed_world.currency_bmd_constructor}
  /// Creates a instance of [FiatBmd] (Bermudian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `BMD`, ISO 4217 Numeric code: `060`.
  /// {@endtemplate}
  const factory FiatBmd() = _BmdFactory;

  const FiatBmd._()
    : super(
        code: "BMD",
        name: "Bermudian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"BD$"],
        disambiguateSymbol: r"BD$",
        htmlEntity: r"$",
        codeNumeric: "060",
        namesNative: const ["Bermudian dollars"],
        subunit: "Cent",
        unitFirst: true,
      );
}
