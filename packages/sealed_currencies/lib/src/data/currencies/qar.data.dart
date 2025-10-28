part of "../../model/currency/currency.dart";

extension type const _QarFactory._(FiatQar _) implements FiatQar {
  const _QarFactory() : this._(const FiatQar._());
}

/// A class that represents the Qatari Riyal currency.
class FiatQar extends FiatCurrency {
  /// {@template sealed_world.currency_qar_constructor}
  /// Creates a instance of [FiatQar] (Qatari Riyal currency).
  ///
  /// ISO 4217 Alpha code: `QAR`, ISO 4217 Numeric code: `634`.
  /// {@endtemplate}
  const factory FiatQar() = _QarFactory;

  const FiatQar._()
    : super(
        code: "QAR",
        name: "Qatari Riyal",
        symbol: "ر.ق",
        alternateSymbols: const ["QR"],
        htmlEntity: "&#xFDFC;",
        codeNumeric: "634",
        namesNative: const ["ريال قطري"],
        subunit: "Dirham",
      );
}
