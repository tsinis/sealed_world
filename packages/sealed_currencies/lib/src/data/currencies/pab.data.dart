part of "../../model/currency/currency.dart";

extension type const _PabFactory._(FiatPab _) implements FiatPab {
  const _PabFactory() : this._(const FiatPab._());
}

/// A class that represents the the Panamanian Balboa currency.
class FiatPab extends FiatCurrency {
  /// {@template sealed_world.currency_pab_constructor}
  /// Creates a instance of [FiatPab] (Panamanian Balboa currency).
  ///
  /// ISO 4217 Alpha code: `PAB`, ISO 4217 Numeric code: `590`.
  /// {@endtemplate}
  const factory FiatPab() = _PabFactory;

  const FiatPab._()
    : super(
        code: "PAB",
        name: "Panamanian Balboa",
        symbol: "B/.",
        codeNumeric: "590",
        namesNative: const ["Balboa panameño"],
        subunit: "Centésimo",
        unitFirst: true,
      );
}
