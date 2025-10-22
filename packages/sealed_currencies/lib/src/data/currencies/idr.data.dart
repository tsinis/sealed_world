part of "../../model/currency/currency.dart";

extension type const _IdrFactory._(FiatIdr _) implements FiatIdr {
  const _IdrFactory() : this._(const FiatIdr._());
}

/// A class that represents the the Indonesian Rupiah currency.
class FiatIdr extends FiatCurrency {
  /// {@template sealed_world.currency_idr_constructor}
  /// Creates a instance of [FiatIdr] (Indonesian Rupiah currency).
  ///
  /// ISO 4217 Alpha code: `IDR`, ISO 4217 Numeric code: `360`.
  /// {@endtemplate}
  const factory FiatIdr() = _IdrFactory;

  const FiatIdr._()
    : super(
        code: "IDR",
        name: "Indonesian Rupiah",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "Rp",
        codeNumeric: "360",
        namesNative: const ["Rupiah"],
        smallestDenomination: 5000,
        subunit: "Sen",
        unitFirst: true,
      );
}
