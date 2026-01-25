part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _BrlFactory._(FiatBrl _) implements FiatBrl {
  const _BrlFactory() : this._(const FiatBrl._());
}

/// A class that represents the Brazilian Real currency.
final class FiatBrl extends FiatCurrency {
  /// {@template sealed_world.currency_brl_constructor}
  /// Creates a instance of [FiatBrl] (Brazilian Real currency).
  ///
  /// ISO 4217 Alpha code: `BRL`, ISO 4217 Numeric code: `986`.
  /// {@endtemplate}
  const factory FiatBrl() = _BrlFactory;

  const FiatBrl._()
    : super(
        code: "BRL",
        name: "Brazilian Real",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: r"R$",
        htmlEntity: r"R$",
        codeNumeric: "986",
        namesNative: const ["real brasileiro"],
        smallestDenomination: 5,
        subunit: "Centavo",
        unitFirst: true,
      );
}
