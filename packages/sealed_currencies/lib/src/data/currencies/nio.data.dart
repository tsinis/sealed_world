part of "../../model/currency/currency.dart";

extension type const _NioFactory._(FiatNio _) implements FiatNio {
  const _NioFactory() : this._(const FiatNio._());
}

/// A class that represents the Nicaraguan Córdoba currency.
class FiatNio extends FiatCurrency {
  /// {@template sealed_world.currency_nio_constructor}
  /// Creates a instance of [FiatNio] (Nicaraguan Córdoba currency).
  ///
  /// ISO 4217 Alpha code: `NIO`, ISO 4217 Numeric code: `558`.
  /// {@endtemplate}
  const factory FiatNio() = _NioFactory;

  const FiatNio._()
    : super(
        code: "NIO",
        name: "Nicaraguan Córdoba",
        symbol: r"C$",
        disambiguateSymbol: r"NIO$",
        codeNumeric: "558",
        namesNative: const ["córdoba nicaragüense"],
        smallestDenomination: 5,
        subunit: "Centavo",
        unitFirst: true,
      );
}
