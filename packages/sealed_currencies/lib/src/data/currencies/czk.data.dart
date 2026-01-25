part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _CzkFactory._(FiatCzk _) implements FiatCzk {
  const _CzkFactory() : this._(const FiatCzk._());
}

/// A class that represents the Czech Koruna currency.
final class FiatCzk extends FiatCurrency {
  /// {@template sealed_world.currency_czk_constructor}
  /// Creates a instance of [FiatCzk] (Czech Koruna currency).
  ///
  /// ISO 4217 Alpha code: `CZK`, ISO 4217 Numeric code: `203`.
  /// {@endtemplate}
  const factory FiatCzk() = _CzkFactory;

  const FiatCzk._()
    : super(
        code: "CZK",
        name: "Czech Koruna",
        decimalMark: ",",
        thousandsSeparator: " ",
        symbol: "Kč",
        codeNumeric: "203",
        namesNative: const ["Koruna česká"],
        smallestDenomination: 100,
        subunit: "Haléř",
      );
}
