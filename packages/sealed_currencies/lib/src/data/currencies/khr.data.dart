part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _KhrFactory._(FiatKhr _) implements FiatKhr {
  const _KhrFactory() : this._(const FiatKhr._());
}

/// A class that represents the Cambodian Riel currency.
final class FiatKhr extends FiatCurrency {
  /// {@template sealed_world.currency_khr_constructor}
  /// Creates a instance of [FiatKhr] (Cambodian Riel currency).
  ///
  /// ISO 4217 Alpha code: `KHR`, ISO 4217 Numeric code: `116`.
  /// {@endtemplate}
  const factory FiatKhr() = _KhrFactory;

  const FiatKhr._()
    : super(
        code: "KHR",
        name: "Cambodian Riel",
        symbol: "៛",
        htmlEntity: "&#x17DB;",
        codeNumeric: "116",
        namesNative: const ["រៀល"],
        smallestDenomination: 5000,
        subunit: "Sen",
      );
}
