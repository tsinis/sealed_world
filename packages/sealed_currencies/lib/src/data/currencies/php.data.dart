part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _PhpFactory._(FiatPhp _) implements FiatPhp {
  const _PhpFactory() : this._(const FiatPhp._());
}

/// A class that represents the Philippine Peso currency.
final class FiatPhp extends FiatCurrency {
  /// {@template sealed_world.currency_php_constructor}
  /// Creates a instance of [FiatPhp] (Philippine Peso currency).
  ///
  /// ISO 4217 Alpha code: `PHP`, ISO 4217 Numeric code: `608`.
  /// {@endtemplate}
  const factory FiatPhp() = _PhpFactory;

  const FiatPhp._()
    : super(
        code: "PHP",
        name: "Philippine Peso",
        symbol: "₱",
        alternateSymbols: const ["PHP", "PhP", "P"],
        htmlEntity: "&#x20B1;",
        codeNumeric: "608",
        namesNative: const ["Piso ng Pilipinas"],
        subunit: "Centavo",
        unitFirst: true,
      );
}
