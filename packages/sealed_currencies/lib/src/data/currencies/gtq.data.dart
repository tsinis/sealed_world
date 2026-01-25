part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _GtqFactory._(FiatGtq _) implements FiatGtq {
  const _GtqFactory() : this._(const FiatGtq._());
}

/// A class that represents the Guatemalan Quetzal currency.
final class FiatGtq extends FiatCurrency {
  /// {@template sealed_world.currency_gtq_constructor}
  /// Creates a instance of [FiatGtq] (Guatemalan Quetzal currency).
  ///
  /// ISO 4217 Alpha code: `GTQ`, ISO 4217 Numeric code: `320`.
  /// {@endtemplate}
  const factory FiatGtq() = _GtqFactory;

  const FiatGtq._()
    : super(
        code: "GTQ",
        name: "Guatemalan Quetzal",
        symbol: "Q",
        codeNumeric: "320",
        namesNative: const ["quetzal guatemalteco"],
        subunit: "Centavo",
        unitFirst: true,
      );
}
