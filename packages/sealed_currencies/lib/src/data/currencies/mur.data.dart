part of "../../model/currency/currency.dart";

extension type const _MurFactory._(FiatMur _) implements FiatMur {
  const _MurFactory() : this._(const FiatMur._());
}

/// A class that represents the Mauritian Rupee currency.
class FiatMur extends FiatCurrency {
  /// {@template sealed_world.currency_mur_constructor}
  /// Creates a instance of [FiatMur] (Mauritian Rupee currency).
  ///
  /// ISO 4217 Alpha code: `MUR`, ISO 4217 Numeric code: `480`.
  /// {@endtemplate}
  const factory FiatMur() = _MurFactory;

  const FiatMur._()
    : super(
        code: "MUR",
        name: "Mauritian Rupee",
        symbol: "₨",
        htmlEntity: "&#x20A8;",
        codeNumeric: "480",
        namesNative: const ["Roupie mauricienne"],
        smallestDenomination: 100,
        subunit: "Cent",
        unitFirst: true,
      );
}
