part of "../../model/currency/currency.dart";

extension type const _BwpFactory._(FiatBwp _) implements FiatBwp {
  const _BwpFactory() : this._(const FiatBwp._());
}

/// A class that represents the Botswanan Pula currency.
class FiatBwp extends FiatCurrency {
  /// {@template sealed_world.currency_bwp_constructor}
  /// Creates a instance of [FiatBwp] (Botswanan Pula currency).
  ///
  /// ISO 4217 Alpha code: `BWP`, ISO 4217 Numeric code: `072`.
  /// {@endtemplate}
  const factory FiatBwp() = _BwpFactory;

  const FiatBwp._()
    : super(
        code: "BWP",
        name: "Botswanan Pula",
        symbol: "P",
        codeNumeric: "072",
        namesNative: const ["Botswana pula"],
        smallestDenomination: 5,
        subunit: "Thebe",
        unitFirst: true,
      );
}
