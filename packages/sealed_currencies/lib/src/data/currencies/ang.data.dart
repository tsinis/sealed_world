// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

part of "../../model/currency/currency.dart";

extension type const _AngFactory._(FiatAng _) implements FiatAng {
  const _AngFactory() : this._(const FiatAng._());
}

/// A class that represents the Netherlands Antillean Guilder currency.
@Deprecated("Use `FiatXcg()` instead")
class FiatAng extends FiatCurrency {
  /// {@template sealed_world.currency_ang_constructor}
  /// Creates a instance of [FiatAng] (Netherlands Antillean Guilder currency).
  ///
  /// ISO 4217 Alpha code: `ANG`, ISO 4217 Numeric code: `532`.
  /// {@endtemplate}
  @Deprecated("Use `FiatXcg()` instead")
  const factory FiatAng() = _AngFactory;

  const FiatAng._()
    : super(
        code: "ANG",
        name: "Netherlands Antillean Guilder",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "ƒ",
        alternateSymbols: const ["NAƒ", "NAf", "f"],
        htmlEntity: "&#x0192;",
        codeNumeric: "532",
        namesNative: const ["Antilliaanse gulden"],
        subunit: "Cent",
        unitFirst: true,
      );
}
