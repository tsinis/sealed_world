part of "../../model/currency/currency.dart";

extension type const _SdgFactory._(FiatSdg _) implements FiatSdg {
  const _SdgFactory() : this._(const FiatSdg._());
}

/// A class that represents the the Sudanese Pound currency.
class FiatSdg extends FiatCurrency {
  /// {@template sealed_world.currency_sdg_constructor}
  /// Creates a instance of [FiatSdg] (Sudanese Pound currency).
  ///
  /// ISO 4217 Alpha code: `SDG`, ISO 4217 Numeric code: `938`.
  /// {@endtemplate}
  const factory FiatSdg() = _SdgFactory;

  const FiatSdg._()
    : super(
        code: "SDG",
        name: "Sudanese Pound",
        symbol: "ج.س",
        disambiguateSymbol: "SDG",
        codeNumeric: "938",
        namesNative: const ["جنيه سوداني"],
        subunit: "Piastre",
        unitFirst: true,
      );
}
