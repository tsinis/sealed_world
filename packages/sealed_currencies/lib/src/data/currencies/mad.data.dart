part of "../../model/currency/currency.dart";

extension type const _MadFactory._(FiatMad _) implements FiatMad {
  const _MadFactory() : this._(const FiatMad._());
}

/// A class that represents the the Moroccan Dirham currency.
class FiatMad extends FiatCurrency {
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
