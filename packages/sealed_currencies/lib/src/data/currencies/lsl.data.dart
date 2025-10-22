part of "../../model/currency/currency.dart";

extension type const _LslFactory._(FiatLsl _) implements FiatLsl {
  const _LslFactory() : this._(const FiatLsl._());
}

/// A class that represents the the Lesotho Loti currency.
class FiatLsl extends FiatCurrency {
  /// {@template sealed_world.currency_lsl_constructor}
  /// Creates a instance of [FiatLsl] (Lesotho Loti currency).
  ///
  /// ISO 4217 Alpha code: `LSL`, ISO 4217 Numeric code: `426`.
  /// {@endtemplate}
  const factory FiatLsl() = _LslFactory;

  const FiatLsl._()
    : super(
        code: "LSL",
        name: "Lesotho Loti",
        symbol: "L",
        alternateSymbols: const ["M"],
        disambiguateSymbol: "M",
        codeNumeric: "426",
        namesNative: const ["Lesotho loti"],
        subunit: "Sente",
      );
}
