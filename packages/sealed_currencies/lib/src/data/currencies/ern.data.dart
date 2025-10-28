part of "../../model/currency/currency.dart";

extension type const _ErnFactory._(FiatErn _) implements FiatErn {
  const _ErnFactory() : this._(const FiatErn._());
}

/// A class that represents the Eritrean Nakfa currency.
class FiatErn extends FiatCurrency {
  /// {@template sealed_world.currency_ern_constructor}
  /// Creates a instance of [FiatErn] (Eritrean Nakfa currency).
  ///
  /// ISO 4217 Alpha code: `ERN`, ISO 4217 Numeric code: `232`.
  /// {@endtemplate}
  const factory FiatErn() = _ErnFactory;

  const FiatErn._()
    : super(
        code: "ERN",
        name: "Eritrean Nakfa",
        symbol: "Nfk",
        codeNumeric: "232",
        namesNative: const ["Eritrean nakfa"],
        subunit: "Cent",
      );
}
