part of "../../model/currency/currency.dart";

extension type const _AmdFactory._(FiatAmd _) implements FiatAmd {
  const _AmdFactory() : this._(const FiatAmd._());
}

/// A class that represents the Armenian Dram currency.
class FiatAmd extends FiatCurrency {
  /// {@template sealed_world.currency_amd_constructor}
  /// Creates a instance of [FiatAmd] (Armenian Dram currency).
  ///
  /// ISO 4217 Alpha code: `AMD`, ISO 4217 Numeric code: `051`.
  /// {@endtemplate}
  const factory FiatAmd() = _AmdFactory;

  const FiatAmd._()
    : super(
        code: "AMD",
        name: "Armenian Dram",
        symbol: "դր.",
        alternateSymbols: const ["dram"],
        codeNumeric: "051",
        namesNative: const ["Հայկական Դրամ"],
        smallestDenomination: 10,
        subunit: "Luma",
      );
}
