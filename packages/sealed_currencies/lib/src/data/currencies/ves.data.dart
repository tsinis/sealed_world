part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _VesFactory._(FiatVes _) implements FiatVes {
  const new() : this._(const FiatVes._());
}

/// A class that represents the Venezuelan Bolívar Soberano currency.
final class FiatVes extends FiatCurrency {
  /// {@template sealed_world.currency_ves_constructor}
  /// Creates a instance of [FiatVes] (Venezuelan Bolívar Soberano currency).
  ///
  /// ISO 4217 Alpha code: `VES`, ISO 4217 Numeric code: `928`.
  /// {@endtemplate}
  const factory() = _VesFactory;

  const new _()
    : super(
        code: "VES",
        name: "Venezuelan Bolívar Soberano",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "Bs",
        alternateSymbols: const ["Bs.S"],
        codeNumeric: "928",
        namesNative: const ["Bolívar Soberano"],
        subunit: "Céntimo",
        unitFirst: true,
      );
}
