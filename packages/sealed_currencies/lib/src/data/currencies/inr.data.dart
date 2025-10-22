part of "../../model/currency/currency.dart";

extension type const _InrFactory._(FiatInr _) implements FiatInr {
  const _InrFactory() : this._(const FiatInr._());
}

/// A class that represents the the Indian Rupee currency.
class FiatInr extends FiatCurrency {
  /// {@template sealed_world.currency_inr_constructor}
  /// Creates a instance of [FiatInr] (Indian Rupee currency).
  ///
  /// ISO 4217 Alpha code: `INR`, ISO 4217 Numeric code: `356`.
  /// {@endtemplate}
  const factory FiatInr() = _InrFactory;

  const FiatInr._()
    : super(
        code: "INR",
        name: "Indian Rupee",
        symbol: "₹",
        alternateSymbols: const ["Rs", "৳", "૱", "௹", "रु", "₨"],
        htmlEntity: "&#x20b9;",
        codeNumeric: "356",
        namesNative: const ["रुपया"],
        smallestDenomination: 50,
        subunit: "Paisa",
        unitFirst: true,
      );
}
