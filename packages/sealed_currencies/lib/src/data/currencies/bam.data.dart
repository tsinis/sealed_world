part of "../../model/currency/currency.dart";

extension type const _BamFactory._(FiatBam _) implements FiatBam {
  const _BamFactory() : this._(const FiatBam._());
}

/// A class that represents the the Convertible Mark currency.
class FiatBam extends FiatCurrency {
  /// {@template sealed_world.currency_bam_constructor}
  /// Creates a instance of [FiatBam] (Convertible Mark currency).
  ///
  /// ISO 4217 Alpha code: `BAM`, ISO 4217 Numeric code: `977`.
  /// {@endtemplate}
  const factory FiatBam() = _BamFactory;

  const FiatBam._()
    : super(
        code: "BAM",
        name: "Convertible Mark",
        symbol: "КМ",
        alternateSymbols: const ["KM"],
        codeNumeric: "977",
        namesNative: const ["Konvertibilna marka", "Конвертибилна марка"],
        smallestDenomination: 5,
        subunit: "Fening",
        unitFirst: true,
      );
}
