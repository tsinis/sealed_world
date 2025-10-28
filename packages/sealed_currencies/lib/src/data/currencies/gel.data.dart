part of "../../model/currency/currency.dart";

extension type const _GelFactory._(FiatGel _) implements FiatGel {
  const _GelFactory() : this._(const FiatGel._());
}

/// A class that represents the Georgian Lari currency.
class FiatGel extends FiatCurrency {
  /// {@template sealed_world.currency_gel_constructor}
  /// Creates a instance of [FiatGel] (Georgian Lari currency).
  ///
  /// ISO 4217 Alpha code: `GEL`, ISO 4217 Numeric code: `981`.
  /// {@endtemplate}
  const factory FiatGel() = _GelFactory;

  const FiatGel._()
    : super(
        code: "GEL",
        name: "Georgian Lari",
        symbol: "₾",
        alternateSymbols: const ["lari"],
        codeNumeric: "981",
        namesNative: const ["ქართული ლარი"],
        subunit: "Tetri",
      );
}
