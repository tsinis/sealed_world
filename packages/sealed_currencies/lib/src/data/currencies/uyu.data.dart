part of "../../model/currency/currency.dart";

extension type const _UyuFactory._(FiatUyu _) implements FiatUyu {
  const _UyuFactory() : this._(const FiatUyu._());
}

/// A class that represents the the Uruguayan Peso currency.
class FiatUyu extends FiatCurrency {
  /// {@template sealed_world.currency_uyu_constructor}
  /// Creates a instance of [FiatUyu] (Uruguayan Peso currency).
  ///
  /// ISO 4217 Alpha code: `UYU`, ISO 4217 Numeric code: `858`.
  /// {@endtemplate}
  const factory FiatUyu() = _UyuFactory;

  const FiatUyu._()
    : super(
        code: "UYU",
        name: "Uruguayan Peso",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: r"$U",
        alternateSymbols: const [r"$U"],
        htmlEntity: r"$U",
        codeNumeric: "858",
        namesNative: const ["peso uruguayo"],
        smallestDenomination: 100,
        subunit: "Centésimo",
        unitFirst: true,
      );
}
