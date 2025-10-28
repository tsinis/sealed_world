part of "../../model/currency/currency.dart";

extension type const _BdtFactory._(FiatBdt _) implements FiatBdt {
  const _BdtFactory() : this._(const FiatBdt._());
}

/// A class that represents the Bangladeshi Taka currency.
class FiatBdt extends FiatCurrency {
  /// {@template sealed_world.currency_bdt_constructor}
  /// Creates a instance of [FiatBdt] (Bangladeshi Taka currency).
  ///
  /// ISO 4217 Alpha code: `BDT`, ISO 4217 Numeric code: `050`.
  /// {@endtemplate}
  const factory FiatBdt() = _BdtFactory;

  const FiatBdt._()
    : super(
        code: "BDT",
        name: "Bangladeshi Taka",
        symbol: "৳",
        alternateSymbols: const ["Tk"],
        codeNumeric: "050",
        namesNative: const ["টাকা"],
        subunit: "Paisa",
        unitFirst: true,
      );
}
