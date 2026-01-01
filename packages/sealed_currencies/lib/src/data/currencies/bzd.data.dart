part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _BzdFactory._(FiatBzd _) implements FiatBzd {
  const _BzdFactory() : this._(const FiatBzd._());
}

/// A class that represents the Belize Dollar currency.
final class FiatBzd extends FiatCurrency {
  /// {@template sealed_world.currency_bzd_constructor}
  /// Creates a instance of [FiatBzd] (Belize Dollar currency).
  ///
  /// ISO 4217 Alpha code: `BZD`, ISO 4217 Numeric code: `084`.
  /// {@endtemplate}
  const factory FiatBzd() = _BzdFactory;

  const FiatBzd._()
    : super(
        code: "BZD",
        name: "Belize Dollar",
        symbol: r"$",
        alternateSymbols: const [r"BZ$"],
        disambiguateSymbol: r"BZ$",
        htmlEntity: r"$",
        codeNumeric: "084",
        namesNative: const ["Belize dollar"],
        subunit: "Cent",
        unitFirst: true,
      );
}
