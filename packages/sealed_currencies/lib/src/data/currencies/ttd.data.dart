part of "../../model/currency/currency.dart";

extension type const _TtdFactory._(FiatTtd _) implements FiatTtd {
  const _TtdFactory() : this._(const FiatTtd._());
}

/// A class that represents the Trinidad & Tobago Dollar currency.
class FiatTtd extends FiatCurrency {
  /// {@template sealed_world.currency_ttd_constructor}
  /// Creates a instance of [FiatTtd] (Trinidad & Tobago Dollar currency).
  ///
  /// ISO 4217 Alpha code: `TTD`, ISO 4217 Numeric code: `780`.
  /// {@endtemplate}
  const factory FiatTtd() = _TtdFactory;

  const FiatTtd._()
    : super(
        code: "TTD",
        name: "Trinidad & Tobago Dollar",
        symbol: r"$",
        alternateSymbols: const [r"TT$"],
        disambiguateSymbol: r"TT$",
        htmlEntity: r"$",
        codeNumeric: "780",
        namesNative: const ["Trinidad & Tobago Dollar"],
        subunit: "Cent",
      );
}
