part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _TmtFactory._(FiatTmt _) implements FiatTmt {
  const _TmtFactory() : this._(const FiatTmt._());
}

/// A class that represents the Turkmenistani Manat currency.
final class FiatTmt extends FiatCurrency {
  /// {@template sealed_world.currency_tmt_constructor}
  /// Creates a instance of [FiatTmt] (Turkmenistani Manat currency).
  ///
  /// ISO 4217 Alpha code: `TMT`, ISO 4217 Numeric code: `934`.
  /// {@endtemplate}
  const factory FiatTmt() = _TmtFactory;

  const FiatTmt._()
    : super(
        code: "TMT",
        name: "Turkmenistani Manat",
        symbol: "T",
        codeNumeric: "934",
        namesNative: const ["manat"],
        subunit: "Tenge",
      );
}
