part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _PenFactory._(FiatPen _) implements FiatPen {
  const new() : this._(const FiatPen._());
}

/// A class that represents the Peruvian Sol currency.
final class FiatPen extends FiatCurrency {
  /// {@template sealed_world.currency_pen_constructor}
  /// Creates a instance of [FiatPen] (Peruvian Sol currency).
  ///
  /// ISO 4217 Alpha code: `PEN`, ISO 4217 Numeric code: `604`.
  /// {@endtemplate}
  const factory() = _PenFactory;

  const new _()
    : super(
        code: "PEN",
        name: "Peruvian Sol",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "S/",
        htmlEntity: "S/",
        codeNumeric: "604",
        namesNative: const ["Sol peruano"],
        subunit: "Céntimo",
        unitFirst: true,
      );
}
