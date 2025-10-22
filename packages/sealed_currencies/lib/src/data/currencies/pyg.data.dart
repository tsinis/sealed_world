part of "../../model/currency/currency.dart";

extension type const _PygFactory._(FiatPyg _) implements FiatPyg {
  const _PygFactory() : this._(const FiatPyg._());
}

/// A class that represents the the Paraguayan Guarani currency.
class FiatPyg extends FiatCurrency {
  /// {@template sealed_world.currency_pyg_constructor}
  /// Creates a instance of [FiatPyg] (Paraguayan Guarani currency).
  ///
  /// ISO 4217 Alpha code: `PYG`, ISO 4217 Numeric code: `600`.
  /// {@endtemplate}
  const factory FiatPyg() = _PygFactory;

  const FiatPyg._()
    : super(
        code: "PYG",
        name: "Paraguayan Guarani",
        symbol: "₲",
        htmlEntity: "&#x20B2;",
        codeNumeric: "600",
        namesNative: const ["Guaraní paraguayo"],
        smallestDenomination: 5000,
        subunit: "Céntimo",
        subunitToUnit: 1,
        unitFirst: true,
      );
}
