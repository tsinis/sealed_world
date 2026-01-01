part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MxnFactory._(FiatMxn _) implements FiatMxn {
  const _MxnFactory() : this._(const FiatMxn._());
}

/// A class that represents the Mexican Peso currency.
final class FiatMxn extends FiatCurrency {
  /// {@template sealed_world.currency_mxn_constructor}
  /// Creates a instance of [FiatMxn] (Mexican Peso currency).
  ///
  /// ISO 4217 Alpha code: `MXN`, ISO 4217 Numeric code: `484`.
  /// {@endtemplate}
  const factory FiatMxn() = _MxnFactory;

  const FiatMxn._()
    : super(
        code: "MXN",
        name: "Mexican Peso",
        symbol: r"$",
        alternateSymbols: const [r"MEX$"],
        disambiguateSymbol: r"MEX$",
        htmlEntity: r"$",
        codeNumeric: "484",
        namesNative: const ["Peso Mexicano"],
        smallestDenomination: 5,
        subunit: "Centavo",
        unitFirst: true,
      );
}
