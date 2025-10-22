part of "../../model/currency/currency.dart";

extension type const _SosFactory._(FiatSos _) implements FiatSos {
  const _SosFactory() : this._(const FiatSos._());
}

/// A class that represents the Somali Shilling currency.
class FiatSos extends FiatCurrency {
  /// {@template sealed_world.currency_sos_constructor}
  /// Creates a instance of [FiatSos] (Somali Shilling currency).
  ///
  /// ISO 4217 Alpha code: `SOS`, ISO 4217 Numeric code: `706`.
  /// {@endtemplate}
  const factory FiatSos() = _SosFactory;

  const FiatSos._()
    : super(
        code: "SOS",
        name: "Somali Shilling",
        symbol: "Sh",
        alternateSymbols: const ["Sh.So"],
        codeNumeric: "706",
        namesNative: const ["Shilin soomaali", "شلن صومالي"],
        subunit: "Cent",
      );
}
