part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _MadFactory._(FiatMad _) implements FiatMad {
  const _MadFactory() : this._(const FiatMad._());
}

/// A class that represents the Moroccan Dirham currency.
final class FiatMad extends FiatCurrency {
  /// {@template sealed_world.currency_mad_constructor}
  /// Creates a instance of [FiatMad] (Moroccan Dirham currency).
  ///
  /// ISO 4217 Alpha code: `MAD`, ISO 4217 Numeric code: `504`.
  /// {@endtemplate}
  const factory FiatMad() = _MadFactory;

  const FiatMad._()
    : super(
        code: "MAD",
        name: "Moroccan Dirham",
        symbol: "د.م.",
        codeNumeric: "504",
        namesNative: const ["درهم مغربي"],
        subunit: "Centime",
      );
}
