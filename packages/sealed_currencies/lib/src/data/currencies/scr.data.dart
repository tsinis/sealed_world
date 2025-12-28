part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _ScrFactory._(FiatScr _) implements FiatScr {
  const _ScrFactory() : this._(const FiatScr._());
}

/// A class that represents the Seychellois Rupee currency.
final class FiatScr extends FiatCurrency {
  /// {@template sealed_world.currency_scr_constructor}
  /// Creates a instance of [FiatScr] (Seychellois Rupee currency).
  ///
  /// ISO 4217 Alpha code: `SCR`, ISO 4217 Numeric code: `690`.
  /// {@endtemplate}
  const factory FiatScr() = _ScrFactory;

  const FiatScr._()
    : super(
        code: "SCR",
        name: "Seychellois Rupee",
        symbol: "₨",
        alternateSymbols: const ["SRe", "SR"],
        disambiguateSymbol: "SRe",
        htmlEntity: "&#x20A8;",
        codeNumeric: "690",
        namesNative: const ["roupie seychelloise"],
        subunit: "Cent",
      );
}
