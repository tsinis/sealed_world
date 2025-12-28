part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _StnFactory._(FiatStn _) implements FiatStn {
  const _StnFactory() : this._(const FiatStn._());
}

/// A class that represents the São Tomé and Príncipe Second Dobra currency.
final class FiatStn extends FiatCurrency {
  /// {@template sealed_world.currency_stn_constructor}
  /// Creates a instance of [FiatStn] (São Tomé and Príncipe Second Dobra currency).
  ///
  /// ISO 4217 Alpha code: `STN`, ISO 4217 Numeric code: `930`.
  /// {@endtemplate}
  const factory FiatStn() = _StnFactory;

  const FiatStn._()
    : super(
        code: "STN",
        name: "São Tomé and Príncipe Second Dobra",
        symbol: "Db",
        disambiguateSymbol: "STN",
        codeNumeric: "930",
        namesNative: const ["dobra são-tomense"],
        smallestDenomination: 10,
        subunit: "Cêntimo",
      );
}
