part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _GipFactory._(FiatGip _) implements FiatGip {
  const _GipFactory() : this._(const FiatGip._());
}

/// A class that represents the Gibraltar Pound currency.
final class FiatGip extends FiatCurrency {
  /// {@template sealed_world.currency_gip_constructor}
  /// Creates a instance of [FiatGip] (Gibraltar Pound currency).
  ///
  /// ISO 4217 Alpha code: `GIP`, ISO 4217 Numeric code: `292`.
  /// {@endtemplate}
  const factory FiatGip() = _GipFactory;

  const FiatGip._()
    : super(
        code: "GIP",
        name: "Gibraltar Pound",
        symbol: "£",
        disambiguateSymbol: "GIP",
        htmlEntity: "&#x00A3;",
        codeNumeric: "292",
        namesNative: const ["Gibraltar pound"],
        subunit: "Penny",
        unitFirst: true,
      );
}
