part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MdlFactory._(FiatMdl _) implements FiatMdl {
  const _MdlFactory() : this._(const FiatMdl._());
}

/// A class that represents the Moldovan Leu currency.
final class FiatMdl extends FiatCurrency {
  /// {@template sealed_world.currency_mdl_constructor}
  /// Creates a instance of [FiatMdl] (Moldovan Leu currency).
  ///
  /// ISO 4217 Alpha code: `MDL`, ISO 4217 Numeric code: `498`.
  /// {@endtemplate}
  const factory FiatMdl() = _MdlFactory;

  const FiatMdl._()
    : super(
        code: "MDL",
        name: "Moldovan Leu",
        symbol: "L",
        alternateSymbols: const ["lei"],
        codeNumeric: "498",
        namesNative: const ["leu moldovenesc"],
        subunit: "Ban",
      );
}
