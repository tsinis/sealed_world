part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _AwgFactory._(FiatAwg _) implements FiatAwg {
  const new() : this._(const FiatAwg._());
}

/// A class that represents the Aruban Florin currency.
final class FiatAwg extends FiatCurrency {
  /// {@template sealed_world.currency_awg_constructor}
  /// Creates a instance of [FiatAwg] (Aruban Florin currency).
  ///
  /// ISO 4217 Alpha code: `AWG`, ISO 4217 Numeric code: `533`.
  /// {@endtemplate}
  const factory() = _AwgFactory;

  const new _()
    : super(
        code: "AWG",
        name: "Aruban Florin",
        symbol: "ƒ",
        alternateSymbols: const ["Afl"],
        htmlEntity: "&#x0192;",
        codeNumeric: "533",
        namesNative: const ["Arubaanse florijn"],
        smallestDenomination: 5,
        subunit: "Cent",
      );
}
