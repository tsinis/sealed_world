part of "../../model/currency/currency.dart";

extension type const _BtnFactory._(FiatBtn _) implements FiatBtn {
  const _BtnFactory() : this._(const FiatBtn._());
}

/// A class that represents the Bhutanese Ngultrum currency.
class FiatBtn extends FiatCurrency {
  /// {@template sealed_world.currency_btn_constructor}
  /// Creates a instance of [FiatBtn] (Bhutanese Ngultrum currency).
  ///
  /// ISO 4217 Alpha code: `BTN`, ISO 4217 Numeric code: `064`.
  /// {@endtemplate}
  const factory FiatBtn() = _BtnFactory;

  const FiatBtn._()
    : super(
        code: "BTN",
        name: "Bhutanese Ngultrum",
        symbol: "Nu.",
        alternateSymbols: const ["Nu"],
        codeNumeric: "064",
        namesNative: const ["དངུལ་ཀྲམ"],
        smallestDenomination: 5,
        subunit: "Chertrum",
      );
}
