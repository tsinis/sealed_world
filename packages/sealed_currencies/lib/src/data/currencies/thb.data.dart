part of "../../model/currency/currency.dart";

extension type const _ThbFactory._(FiatThb _) implements FiatThb {
  const _ThbFactory() : this._(const FiatThb._());
}

/// A class that represents the the Thai Baht currency.
class FiatThb extends FiatCurrency {
  /// {@template sealed_world.currency_thb_constructor}
  /// Creates a instance of [FiatThb] (Thai Baht currency).
  ///
  /// ISO 4217 Alpha code: `THB`, ISO 4217 Numeric code: `764`.
  /// {@endtemplate}
  const factory FiatThb() = _ThbFactory;

  const FiatThb._()
    : super(
        code: "THB",
        name: "Thai Baht",
        symbol: "฿",
        htmlEntity: "&#x0E3F;",
        codeNumeric: "764",
        namesNative: const ["บาทไทย"],
        subunit: "Satang",
        unitFirst: true,
      );
}
