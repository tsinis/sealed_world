part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _XdrFactory._(FiatXdr _) implements FiatXdr {
  const _XdrFactory() : this._(const FiatXdr._());
}

/// A class that represents the Special Drawing Rights currency.
final class FiatXdr extends FiatCurrency {
  /// {@template sealed_world.currency_xdr_constructor}
  /// Creates a instance of [FiatXdr] (Special Drawing Rights currency).
  ///
  /// ISO 4217 Alpha code: `XDR`, ISO 4217 Numeric code: `960`.
  /// {@endtemplate}
  const factory FiatXdr() = _XdrFactory;

  const FiatXdr._()
    : super(
        code: "XDR",
        name: "Special Drawing Rights",
        symbol: "SDR",
        alternateSymbols: const ["XDR"],
        htmlEntity: r"$",
        codeNumeric: "960",
        namesNative: const ["Derechos especiales de giro"],
        smallestDenomination: 0,
        subunitToUnit: 1,
      );
}
