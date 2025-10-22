// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

part of "../../model/currency/currency.dart";

extension type const _ZwlFactory._(FiatZwl _) implements FiatZwl {
  const _ZwlFactory() : this._(const FiatZwl._());
}

/// A class that represents the Zimbabwean Dollar currency.
@Deprecated("Use `FiatZwg()` instead")
class FiatZwl extends FiatCurrency {
  /// {@template sealed_world.currency_zwl_constructor}
  /// Creates a instance of [FiatZwl] (Zimbabwean Dollar currency).
  ///
  /// ISO 4217 Alpha code: `ZWL`, ISO 4217 Numeric code: `932`.
  /// {@endtemplate}
  @Deprecated("Use `FiatZwg()` instead")
  const factory FiatZwl() = _ZwlFactory;

  const FiatZwl._()
    : super(
        code: "ZWL",
        name: "Zimbabwean Dollar",
        decimalMark: ",",
        thousandsSeparator: " ",
        symbol: r"Z$",
        codeNumeric: "932",
        namesNative: const ["Zimbabwe Dollar"],
        subunit: "Cent",
        unitFirst: true,
      );
}
