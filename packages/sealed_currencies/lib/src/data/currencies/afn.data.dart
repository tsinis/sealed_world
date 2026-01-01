part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _AfnFactory._(FiatAfn _) implements FiatAfn {
  const _AfnFactory() : this._(const FiatAfn._());
}

/// A class that represents the Afghan Afghani currency.
final class FiatAfn extends FiatCurrency {
  /// {@template sealed_world.currency_afn_constructor}
  /// Creates a instance of [FiatAfn] (Afghan Afghani currency).
  ///
  /// ISO 4217 Alpha code: `AFN`, ISO 4217 Numeric code: `971`.
  /// {@endtemplate}
  const factory FiatAfn() = _AfnFactory;

  const FiatAfn._()
    : super(
        code: "AFN",
        name: "Afghan Afghani",
        symbol: "؋",
        alternateSymbols: const ["Af", "Afs"],
        codeNumeric: "971",
        namesNative: const ["افغانی"],
        smallestDenomination: 100,
        subunit: "Pul",
      );
}
