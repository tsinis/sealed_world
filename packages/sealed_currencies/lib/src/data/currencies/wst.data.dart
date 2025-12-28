part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _WstFactory._(FiatWst _) implements FiatWst {
  const _WstFactory() : this._(const FiatWst._());
}

/// A class that represents the Samoan Tala currency.
final class FiatWst extends FiatCurrency {
  /// {@template sealed_world.currency_wst_constructor}
  /// Creates a instance of [FiatWst] (Samoan Tala currency).
  ///
  /// ISO 4217 Alpha code: `WST`, ISO 4217 Numeric code: `882`.
  /// {@endtemplate}
  const factory FiatWst() = _WstFactory;

  const FiatWst._()
    : super(
        code: "WST",
        name: "Samoan Tala",
        symbol: "T",
        alternateSymbols: const [r"WS$", "SAT", "ST"],
        disambiguateSymbol: r"WS$",
        codeNumeric: "882",
        namesNative: const ["Samoa tālā"],
        smallestDenomination: 10,
        subunit: "Sene",
      );
}
