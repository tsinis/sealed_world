part of "../../model/currency/currency.dart";

extension type const _SarFactory._(FiatSar _) implements FiatSar {
  const _SarFactory() : this._(const FiatSar._());
}

/// A class that represents the Saudi Riyal currency.
class FiatSar extends FiatCurrency {
  /// {@template sealed_world.currency_sar_constructor}
  /// Creates a instance of [FiatSar] (Saudi Riyal currency).
  ///
  /// ISO 4217 Alpha code: `SAR`, ISO 4217 Numeric code: `682`.
  /// {@endtemplate}
  const factory FiatSar() = _SarFactory;

  const FiatSar._()
    : super(
        code: "SAR",
        name: "Saudi Riyal",
        symbol: "ر.س",
        alternateSymbols: const ["SR", "﷼"],
        htmlEntity: "&#xFDFC;",
        codeNumeric: "682",
        namesNative: const ["ريال سعودي"],
        smallestDenomination: 5,
        subunit: "Hallallah",
        unitFirst: true,
      );
}
