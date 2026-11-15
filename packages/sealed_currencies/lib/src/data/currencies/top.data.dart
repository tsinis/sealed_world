part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _TopFactory._(FiatTop _) implements FiatTop {
  const new() : this._(const FiatTop._());
}

/// A class that represents the Tongan Paʻanga currency.
final class FiatTop extends FiatCurrency {
  /// {@template sealed_world.currency_top_constructor}
  /// Creates a instance of [FiatTop] (Tongan Paʻanga currency).
  ///
  /// ISO 4217 Alpha code: `TOP`, ISO 4217 Numeric code: `776`.
  /// {@endtemplate}
  const factory() = _TopFactory;

  const new _()
    : super(
        code: "TOP",
        name: "Tongan Paʻanga",
        symbol: r"T$",
        alternateSymbols: const ["PT"],
        codeNumeric: "776",
        namesNative: const ["Tongan paʻanga"],
        subunit: "Seniti",
        unitFirst: true,
      );
}
