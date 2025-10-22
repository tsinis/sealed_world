// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

part of "../../model/currency/currency.dart";

extension type const _SllFactory._(FiatSll _) implements FiatSll {
  const _SllFactory() : this._(const FiatSll._());
}

/// A class that represents the Sierra Leonean Leone (Old) currency.
@Deprecated("Use `FiatSle()` instead")
class FiatSll extends FiatCurrency {
  /// {@template sealed_world.currency_sll_constructor}
  /// Creates a instance of [FiatSll] (Sierra Leonean Leone (Old) currency).
  ///
  /// ISO 4217 Alpha code: `SLL`, ISO 4217 Numeric code: `694`.
  /// {@endtemplate}
  @Deprecated("Use `FiatSle()` instead")
  const factory FiatSll() = _SllFactory;

  const FiatSll._()
    : super(
        code: "SLL",
        name: "Sierra Leonean Leone (Old)",
        symbol: "Le",
        disambiguateSymbol: "SLL",
        codeNumeric: "694",
        namesNative: const ["Sierra Leonean leone"],
        smallestDenomination: 1000,
        subunit: "Cent",
      );
}
