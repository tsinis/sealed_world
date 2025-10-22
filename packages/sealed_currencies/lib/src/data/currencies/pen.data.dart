part of "../../model/currency/currency.dart";

extension type const _PenFactory._(FiatPen _) implements FiatPen {
  const _PenFactory() : this._(const FiatPen._());
}

/// A class that represents the the Peruvian Sol currency.
class FiatPen extends FiatCurrency {
  /// {@template sealed_world.currency_pen_constructor}
  /// Creates a instance of [FiatPen] (Peruvian Sol currency).
  ///
  /// ISO 4217 Alpha code: `PEN`, ISO 4217 Numeric code: `604`.
  /// {@endtemplate}
  const factory FiatPen() = _PenFactory;

  const FiatPen._()
    : super(
        code: "PEN",
        name: "Peruvian Sol",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "S/",
        htmlEntity: "S/",
        codeNumeric: "604",
        namesNative: const ["sol peruano"],
        subunit: "Céntimo",
        unitFirst: true,
      );
}
