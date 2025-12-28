part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _AudFactory._(FiatAud _) implements FiatAud {
  const _AudFactory() : this._(const FiatAud._());
}

/// A class that represents the Australian Dollar currency.
final class FiatAud extends FiatCurrency {
  /// {@template sealed_world.currency_aud_constructor}
  /// Creates a instance of [FiatAud] (Australian Dollar currency).
  ///
  /// ISO 4217 Alpha code: `AUD`, ISO 4217 Numeric code: `036`.
  /// {@endtemplate}
  const factory FiatAud() = _AudFactory;

  const FiatAud._()
    : super(
        code: "AUD",
        name: "Australian Dollar",
        symbol: r"$",
        alternateSymbols: const [r"A$"],
        disambiguateSymbol: r"A$",
        htmlEntity: r"$",
        codeNumeric: "036",
        namesNative: const ["Australian dollar"],
        priority: 4,
        smallestDenomination: 5,
        subunit: "Cent",
        unitFirst: true,
      );
}
