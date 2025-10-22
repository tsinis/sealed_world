part of "../../model/currency/currency.dart";

extension type const _MgaFactory._(FiatMga _) implements FiatMga {
  const _MgaFactory() : this._(const FiatMga._());
}

/// A class that represents the Malagasy Ariary currency.
class FiatMga extends FiatCurrency {
  /// {@template sealed_world.currency_mga_constructor}
  /// Creates a instance of [FiatMga] (Malagasy Ariary currency).
  ///
  /// ISO 4217 Alpha code: `MGA`, ISO 4217 Numeric code: `969`.
  /// {@endtemplate}
  const factory FiatMga() = _MgaFactory;

  const FiatMga._()
    : super(
        code: "MGA",
        name: "Malagasy Ariary",
        symbol: "Ar",
        codeNumeric: "969",
        namesNative: const ["ariary malagasy", "ariary malgache"],
        subunit: "Iraimbilanja",
        subunitToUnit: 5,
        unitFirst: true,
      );
}
