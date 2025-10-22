part of "../../model/currency/currency.dart";

extension type const _FkpFactory._(FiatFkp _) implements FiatFkp {
  const _FkpFactory() : this._(const FiatFkp._());
}

/// A class that represents the Falkland Pound currency.
class FiatFkp extends FiatCurrency {
  /// {@template sealed_world.currency_fkp_constructor}
  /// Creates a instance of [FiatFkp] (Falkland Pound currency).
  ///
  /// ISO 4217 Alpha code: `FKP`, ISO 4217 Numeric code: `238`.
  /// {@endtemplate}
  const factory FiatFkp() = _FkpFactory;

  const FiatFkp._()
    : super(
        code: "FKP",
        name: "Falkland Pound",
        symbol: "£",
        alternateSymbols: const ["FK£"],
        disambiguateSymbol: "FK£",
        htmlEntity: "&#x00A3;",
        codeNumeric: "238",
        namesNative: const ["Falkland Islands pound"],
        subunit: "Penny",
      );
}
