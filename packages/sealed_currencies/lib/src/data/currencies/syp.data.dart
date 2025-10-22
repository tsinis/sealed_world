part of "../../model/currency/currency.dart";

extension type const _SypFactory._(FiatSyp _) implements FiatSyp {
  const _SypFactory() : this._(const FiatSyp._());
}

/// A class that represents the the Syrian Pound currency.
class FiatSyp extends FiatCurrency {
  /// {@template sealed_world.currency_syp_constructor}
  /// Creates a instance of [FiatSyp] (Syrian Pound currency).
  ///
  /// ISO 4217 Alpha code: `SYP`, ISO 4217 Numeric code: `760`.
  /// {@endtemplate}
  const factory FiatSyp() = _SypFactory;

  const FiatSyp._()
    : super(
        code: "SYP",
        name: "Syrian Pound",
        symbol: "£S",
        alternateSymbols: const ["£", "ل.س", "LS", "الليرة السورية"],
        htmlEntity: "&#x00A3;",
        codeNumeric: "760",
        namesNative: const ["الليرة السورية"],
        smallestDenomination: 100,
        subunit: "Piastre",
      );
}
