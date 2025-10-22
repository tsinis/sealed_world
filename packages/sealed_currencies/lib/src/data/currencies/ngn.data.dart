part of "../../model/currency/currency.dart";

extension type const _NgnFactory._(FiatNgn _) implements FiatNgn {
  const _NgnFactory() : this._(const FiatNgn._());
}

/// A class that represents the the Nigerian Naira currency.
class FiatNgn extends FiatCurrency {
  /// {@template sealed_world.currency_ngn_constructor}
  /// Creates a instance of [FiatNgn] (Nigerian Naira currency).
  ///
  /// ISO 4217 Alpha code: `NGN`, ISO 4217 Numeric code: `566`.
  /// {@endtemplate}
  const factory FiatNgn() = _NgnFactory;

  const FiatNgn._()
    : super(
        code: "NGN",
        name: "Nigerian Naira",
        symbol: "₦",
        htmlEntity: "&#x20A6;",
        codeNumeric: "566",
        namesNative: const ["Nigerian naira"],
        smallestDenomination: 50,
        subunit: "Kobo",
        unitFirst: true,
      );
}
