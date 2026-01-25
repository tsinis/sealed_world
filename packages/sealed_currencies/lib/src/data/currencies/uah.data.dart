part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _UahFactory._(FiatUah _) implements FiatUah {
  const _UahFactory() : this._(const FiatUah._());
}

/// A class that represents the Ukrainian Hryvnia currency.
final class FiatUah extends FiatCurrency {
  /// {@template sealed_world.currency_uah_constructor}
  /// Creates a instance of [FiatUah] (Ukrainian Hryvnia currency).
  ///
  /// ISO 4217 Alpha code: `UAH`, ISO 4217 Numeric code: `980`.
  /// {@endtemplate}
  const factory FiatUah() = _UahFactory;

  const FiatUah._()
    : super(
        code: "UAH",
        name: "Ukrainian Hryvnia",
        symbol: "₴",
        htmlEntity: "&#x20B4;",
        codeNumeric: "980",
        namesNative: const ["українська гривня"],
        subunit: "Kopiyka",
      );
}
