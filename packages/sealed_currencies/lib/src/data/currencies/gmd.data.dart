part of "../../model/currency/currency.dart";

extension type const _GmdFactory._(FiatGmd _) implements FiatGmd {
  const _GmdFactory() : this._(const FiatGmd._());
}

/// A class that represents the the Gambian Dalasi currency.
class FiatGmd extends FiatCurrency {
  /// {@template sealed_world.currency_gmd_constructor}
  /// Creates a instance of [FiatGmd] (Gambian Dalasi currency).
  ///
  /// ISO 4217 Alpha code: `GMD`, ISO 4217 Numeric code: `270`.
  /// {@endtemplate}
  const factory FiatGmd() = _GmdFactory;

  const FiatGmd._()
    : super(
        code: "GMD",
        name: "Gambian Dalasi",
        symbol: "D",
        codeNumeric: "270",
        namesNative: const ["Gambian dalasi"],
        subunit: "Butut",
      );
}
