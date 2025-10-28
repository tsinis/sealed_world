part of "../../model/currency/currency.dart";

extension type const _YerFactory._(FiatYer _) implements FiatYer {
  const _YerFactory() : this._(const FiatYer._());
}

/// A class that represents the Yemeni Rial currency.
class FiatYer extends FiatCurrency {
  /// {@template sealed_world.currency_yer_constructor}
  /// Creates a instance of [FiatYer] (Yemeni Rial currency).
  ///
  /// ISO 4217 Alpha code: `YER`, ISO 4217 Numeric code: `886`.
  /// {@endtemplate}
  const factory FiatYer() = _YerFactory;

  const FiatYer._()
    : super(
        code: "YER",
        name: "Yemeni Rial",
        symbol: "﷼",
        htmlEntity: "&#xFDFC;",
        codeNumeric: "886",
        namesNative: const ["ريال يمني"],
        smallestDenomination: 100,
        subunit: "Fils",
      );
}
