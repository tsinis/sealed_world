part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _CrcFactory._(FiatCrc _) implements FiatCrc {
  const _CrcFactory() : this._(const FiatCrc._());
}

/// A class that represents the Costa Rican Colón currency.
final class FiatCrc extends FiatCurrency {
  /// {@template sealed_world.currency_crc_constructor}
  /// Creates a instance of [FiatCrc] (Costa Rican Colón currency).
  ///
  /// ISO 4217 Alpha code: `CRC`, ISO 4217 Numeric code: `188`.
  /// {@endtemplate}
  const factory FiatCrc() = _CrcFactory;

  const FiatCrc._()
    : super(
        code: "CRC",
        name: "Costa Rican Colón",
        decimalMark: ",",
        thousandsSeparator: ".",
        symbol: "₡",
        alternateSymbols: const ["¢"],
        htmlEntity: "&#x20A1;",
        codeNumeric: "188",
        namesNative: const ["colón costarricense"],
        smallestDenomination: 500,
        subunit: "Céntimo",
        unitFirst: true,
      );
}
