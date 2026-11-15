part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _AedFactory._(FiatAed _) implements FiatAed {
  const new() : this._(const FiatAed._());
}

/// A class that represents the United Arab Emirates Dirham currency.
final class FiatAed extends FiatCurrency {
  /// {@template sealed_world.currency_aed_constructor}
  /// Creates a instance of [FiatAed] (United Arab Emirates Dirham currency).
  ///
  /// ISO 4217 Alpha code: `AED`, ISO 4217 Numeric code: `784`.
  /// {@endtemplate}
  const factory() = _AedFactory;

  const new _()
    : super(
        code: "AED",
        name: "United Arab Emirates Dirham",
        symbol: "د.إ",
        alternateSymbols: const ["DH", "Dhs"],
        codeNumeric: "784",
        namesNative: const ["درهم إماراتي"],
        smallestDenomination: 25,
        subunit: "Fils",
      );
}
