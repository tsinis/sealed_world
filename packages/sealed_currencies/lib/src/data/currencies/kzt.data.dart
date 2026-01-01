part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _KztFactory._(FiatKzt _) implements FiatKzt {
  const _KztFactory() : this._(const FiatKzt._());
}

/// A class that represents the Kazakhstani Tenge currency.
final class FiatKzt extends FiatCurrency {
  /// {@template sealed_world.currency_kzt_constructor}
  /// Creates a instance of [FiatKzt] (Kazakhstani Tenge currency).
  ///
  /// ISO 4217 Alpha code: `KZT`, ISO 4217 Numeric code: `398`.
  /// {@endtemplate}
  const factory FiatKzt() = _KztFactory;

  const FiatKzt._()
    : super(
        code: "KZT",
        name: "Kazakhstani Tenge",
        symbol: "₸",
        codeNumeric: "398",
        namesNative: const ["Қазақстан теңгесі", "Казахстанский тенге"],
        smallestDenomination: 100,
        subunit: "Tiyn",
      );
}
