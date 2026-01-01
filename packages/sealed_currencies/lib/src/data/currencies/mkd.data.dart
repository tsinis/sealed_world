part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MkdFactory._(FiatMkd _) implements FiatMkd {
  const _MkdFactory() : this._(const FiatMkd._());
}

/// A class that represents the Macedonian Denar currency.
final class FiatMkd extends FiatCurrency {
  /// {@template sealed_world.currency_mkd_constructor}
  /// Creates a instance of [FiatMkd] (Macedonian Denar currency).
  ///
  /// ISO 4217 Alpha code: `MKD`, ISO 4217 Numeric code: `807`.
  /// {@endtemplate}
  const factory FiatMkd() = _MkdFactory;

  const FiatMkd._()
    : super(
        code: "MKD",
        name: "Macedonian Denar",
        symbol: "ден",
        codeNumeric: "807",
        namesNative: const ["Македонски денар"],
        smallestDenomination: 100,
        subunit: "Deni",
      );
}
