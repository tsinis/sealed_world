part of "../../model/currency/currency.dart";

extension type const _XcdFactory._(FiatXcd _) implements FiatXcd {
  const _XcdFactory() : this._(const FiatXcd._());
}

/// A class that represents the the East Caribbean Dollar currency.
class FiatXcd extends FiatCurrency {
  /// {@template sealed_world.currency_xcd_constructor}
  /// Creates a instance of [FiatXcd] (East Caribbean Dollar currency).
  ///
  /// ISO 4217 Alpha code: `XCD`, ISO 4217 Numeric code: `951`.
  /// {@endtemplate}
  const factory FiatXcd() = _XcdFactory;

  const FiatXcd._()
    : super(
        code: "XCD",
        name: "East Caribbean Dollar",
        symbol: r"$",
        alternateSymbols: const [r"EC$"],
        disambiguateSymbol: r"EX$",
        htmlEntity: r"$",
        codeNumeric: "951",
        namesNative: const ["East Caribbean dollar"],
        subunit: "Cent",
        unitFirst: true,
      );
}
