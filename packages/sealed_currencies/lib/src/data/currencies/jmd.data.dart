part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _JmdFactory._(FiatJmd _) implements FiatJmd {
  const new() : this._(const FiatJmd._());
}

/// A class that represents the Jamaican Dollar currency.
final class FiatJmd extends FiatCurrency {
  /// {@template sealed_world.currency_jmd_constructor}
  /// Creates a instance of [FiatJmd] (Jamaican Dollar currency).
  ///
  /// ISO 4217 Alpha code: `JMD`, ISO 4217 Numeric code: `388`.
  /// {@endtemplate}
  const factory() = _JmdFactory;

  const new _()
    : super(
        code: "JMD",
        name: "Jamaican Dollar",
        symbol: r"$",
        alternateSymbols: const [r"J$"],
        disambiguateSymbol: r"J$",
        htmlEntity: r"$",
        codeNumeric: "388",
        namesNative: const ["Jamaican dollar"],
        subunit: "Cent",
        unitFirst: true,
      );
}
