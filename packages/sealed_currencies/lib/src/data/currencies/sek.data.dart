part of "../../model/currency/currency.dart";

extension type const _SekFactory._(FiatSek _) implements FiatSek {
  const _SekFactory() : this._(const FiatSek._());
}

/// A class that represents the the Swedish Krona currency.
class FiatSek extends FiatCurrency {
  /// {@template sealed_world.currency_sek_constructor}
  /// Creates a instance of [FiatSek] (Swedish Krona currency).
  ///
  /// ISO 4217 Alpha code: `SEK`, ISO 4217 Numeric code: `752`.
  /// {@endtemplate}
  const factory FiatSek() = _SekFactory;

  const FiatSek._()
    : super(
        code: "SEK",
        name: "Swedish Krona",
        decimalMark: ",",
        thousandsSeparator: " ",
        symbol: "kr",
        alternateSymbols: const [":-"],
        disambiguateSymbol: "SEK",
        codeNumeric: "752",
        namesNative: const ["svensk krona"],
        smallestDenomination: 100,
        subunit: "Öre",
      );
}
