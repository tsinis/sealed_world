part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _RonFactory._(FiatRon _) implements FiatRon {
  const _RonFactory() : this._(const FiatRon._());
}

/// A class that represents the Romanian Leu currency.
final class FiatRon extends FiatCurrency {
  /// {@template sealed_world.currency_ron_constructor}
  /// Creates a instance of [FiatRon] (Romanian Leu currency).
  ///
  /// ISO 4217 Alpha code: `RON`, ISO 4217 Numeric code: `946`.
  /// {@endtemplate}
  const factory FiatRon() = _RonFactory;

  const FiatRon._()
    : super(
        code: "RON",
        name: "Romanian Leu",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "Lei",
        codeNumeric: "946",
        namesNative: const ["Leu românesc"],
        subunit: "Bani",
      );
}
