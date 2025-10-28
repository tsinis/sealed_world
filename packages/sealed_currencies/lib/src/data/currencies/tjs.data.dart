part of "../../model/currency/currency.dart";

extension type const _TjsFactory._(FiatTjs _) implements FiatTjs {
  const _TjsFactory() : this._(const FiatTjs._());
}

/// A class that represents the Tajikistani Somoni currency.
class FiatTjs extends FiatCurrency {
  /// {@template sealed_world.currency_tjs_constructor}
  /// Creates a instance of [FiatTjs] (Tajikistani Somoni currency).
  ///
  /// ISO 4217 Alpha code: `TJS`, ISO 4217 Numeric code: `972`.
  /// {@endtemplate}
  const factory FiatTjs() = _TjsFactory;

  const FiatTjs._()
    : super(
        code: "TJS",
        name: "Tajikistani Somoni",
        symbol: "ЅМ",
        codeNumeric: "972",
        namesNative: const ["Сомонӣ"],
        subunit: "Diram",
      );
}
