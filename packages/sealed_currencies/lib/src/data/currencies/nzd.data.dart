part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _NzdFactory._(FiatNzd _) implements FiatNzd {
  const _NzdFactory() : this._(const FiatNzd._());
}

/// A class that represents the New Zealand Dollar currency.
final class FiatNzd extends FiatCurrency {
  /// {@template sealed_world.currency_nzd_constructor}
  /// Creates a instance of [FiatNzd] (New Zealand Dollar currency).
  ///
  /// ISO 4217 Alpha code: `NZD`, ISO 4217 Numeric code: `554`.
  /// {@endtemplate}
  const factory FiatNzd() = _NzdFactory;

  const FiatNzd._()
    : super(
        code: "NZD",
        name: "New Zealand Dollar",
        symbol: r"$",
        alternateSymbols: const [r"NZ$"],
        disambiguateSymbol: r"NZ$",
        htmlEntity: r"$",
        codeNumeric: "554",
        namesNative: const ["New Zealand dollar", "tāra o Aotearoa"],
        smallestDenomination: 10,
        subunit: "Cent",
        unitFirst: true,
      );
}
