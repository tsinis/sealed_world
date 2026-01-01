part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _IlsFactory._(FiatIls _) implements FiatIls {
  const _IlsFactory() : this._(const FiatIls._());
}

/// A class that represents the Israeli New Shekel currency.
final class FiatIls extends FiatCurrency {
  /// {@template sealed_world.currency_ils_constructor}
  /// Creates a instance of [FiatIls] (Israeli New Shekel currency).
  ///
  /// ISO 4217 Alpha code: `ILS`, ISO 4217 Numeric code: `376`.
  /// {@endtemplate}
  const factory FiatIls() = _IlsFactory;

  const FiatIls._()
    : super(
        code: "ILS",
        name: "Israeli New Shekel",
        symbol: "₪",
        alternateSymbols: const ["ש״ח", "NIS"],
        htmlEntity: "&#x20AA;",
        codeNumeric: "376",
        namesNative: const ["שקל חדש"],
        smallestDenomination: 10,
        subunit: "Agora",
        unitFirst: true,
      );
}
