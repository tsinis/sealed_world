part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _OmrFactory._(FiatOmr _) implements FiatOmr {
  const _OmrFactory() : this._(const FiatOmr._());
}

/// A class that represents the Omani Rial currency.
final class FiatOmr extends FiatCurrency {
  /// {@template sealed_world.currency_omr_constructor}
  /// Creates a instance of [FiatOmr] (Omani Rial currency).
  ///
  /// ISO 4217 Alpha code: `OMR`, ISO 4217 Numeric code: `512`.
  /// {@endtemplate}
  const factory FiatOmr() = _OmrFactory;

  const FiatOmr._()
    : super(
        code: "OMR",
        name: "Omani Rial",
        symbol: "ر.ع.",
        htmlEntity: "&#xFDFC;",
        codeNumeric: "512",
        namesNative: const ["ريال عماني"],
        smallestDenomination: 5,
        subunit: "Baisa",
        subunitToUnit: 1000,
        unitFirst: true,
      );
}
