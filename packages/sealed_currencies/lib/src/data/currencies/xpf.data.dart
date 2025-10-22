part of "../../model/currency/currency.dart";

extension type const _XpfFactory._(FiatXpf _) implements FiatXpf {
  const _XpfFactory() : this._(const FiatXpf._());
}

/// A class that represents the the Cfp Franc currency.
class FiatXpf extends FiatCurrency {
  /// {@template sealed_world.currency_xpf_constructor}
  /// Creates a instance of [FiatXpf] (Cfp Franc currency).
  ///
  /// ISO 4217 Alpha code: `XPF`, ISO 4217 Numeric code: `953`.
  /// {@endtemplate}
  const factory FiatXpf() = _XpfFactory;

  const FiatXpf._()
    : super(
        code: "XPF",
        name: "Cfp Franc",
        symbol: "Fr",
        alternateSymbols: const ["F"],
        codeNumeric: "953",
        namesNative: const ["franc pacifique"],
        smallestDenomination: 100,
        subunit: "Centime",
        subunitToUnit: 1,
      );
}
