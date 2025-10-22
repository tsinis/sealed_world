// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

part of "../../model/currency/currency.dart";

extension type const _HrkFactory._(FiatHrk _) implements FiatHrk {
  const _HrkFactory() : this._(const FiatHrk._());
}

/// A class that represents the Croatian Kuna currency.
@Deprecated("Use `FiatEur()` instead")
class FiatHrk extends FiatCurrency {
  /// {@template sealed_world.currency_hrk_constructor}
  /// Creates a instance of [FiatHrk] (Croatian Kuna currency).
  ///
  /// ISO 4217 Alpha code: `HRK`, ISO 4217 Numeric code: `191`.
  /// {@endtemplate}
  @Deprecated("Use `FiatEur()` instead")
  const factory FiatHrk() = _HrkFactory;

  const FiatHrk._()
    : super(
        code: "HRK",
        name: "Croatian Kuna",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "kn",
        codeNumeric: "191",
        namesNative: const ["hrvatska kuna"],
        subunit: "Lipa",
      );
}
