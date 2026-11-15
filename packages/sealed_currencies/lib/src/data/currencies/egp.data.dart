part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _EgpFactory._(FiatEgp _) implements FiatEgp {
  const new() : this._(const FiatEgp._());
}

/// A class that represents the Egyptian Pound currency.
final class FiatEgp extends FiatCurrency {
  /// {@template sealed_world.currency_egp_constructor}
  /// Creates a instance of [FiatEgp] (Egyptian Pound currency).
  ///
  /// ISO 4217 Alpha code: `EGP`, ISO 4217 Numeric code: `818`.
  /// {@endtemplate}
  const factory() = _EgpFactory;

  const new _()
    : super(
        code: "EGP",
        name: "Egyptian Pound",
        symbol: "ج.م",
        alternateSymbols: const ["LE", "E£", "L.E."],
        htmlEntity: "&#x00A3;",
        codeNumeric: "818",
        namesNative: const ["جنيه مصرى"],
        smallestDenomination: 25,
        subunit: "Piastre",
        unitFirst: true,
      );
}
