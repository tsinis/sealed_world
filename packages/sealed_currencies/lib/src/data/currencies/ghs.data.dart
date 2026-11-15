part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _GhsFactory._(FiatGhs _) implements FiatGhs {
  const new() : this._(const FiatGhs._());
}

/// A class that represents the Ghanaian Cedi currency.
final class FiatGhs extends FiatCurrency {
  /// {@template sealed_world.currency_ghs_constructor}
  /// Creates a instance of [FiatGhs] (Ghanaian Cedi currency).
  ///
  /// ISO 4217 Alpha code: `GHS`, ISO 4217 Numeric code: `936`.
  /// {@endtemplate}
  const factory() = _GhsFactory;

  const new _()
    : super(
        code: "GHS",
        name: "Ghanaian Cedi",
        symbol: "₵",
        alternateSymbols: const ["GH¢", "GH₵"],
        htmlEntity: "&#x20B5;",
        codeNumeric: "936",
        namesNative: const ["Ghanaian cedi"],
        subunit: "Pesewa",
        unitFirst: true,
      );
}
