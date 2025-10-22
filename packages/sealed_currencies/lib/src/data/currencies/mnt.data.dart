part of "../../model/currency/currency.dart";

extension type const _MntFactory._(FiatMnt _) implements FiatMnt {
  const _MntFactory() : this._(const FiatMnt._());
}

/// A class that represents the the Mongolian Tugrik currency.
class FiatMnt extends FiatCurrency {
  /// {@template sealed_world.currency_mnt_constructor}
  /// Creates a instance of [FiatMnt] (Mongolian Tugrik currency).
  ///
  /// ISO 4217 Alpha code: `MNT`, ISO 4217 Numeric code: `496`.
  /// {@endtemplate}
  const factory FiatMnt() = _MntFactory;

  const FiatMnt._()
    : super(
        code: "MNT",
        name: "Mongolian Tugrik",
        symbol: "₮",
        htmlEntity: "&#x20AE;",
        codeNumeric: "496",
        namesNative: const ["Монгол төгрөг"],
        smallestDenomination: 2000,
        subunit: "Möngö",
      );
}
