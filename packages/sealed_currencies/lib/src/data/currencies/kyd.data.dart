part of "../../model/currency/submodels/fiat_currency.dart";

extension type const _KydFactory._(FiatKyd _) implements FiatKyd {
  const _KydFactory() : this._(const FiatKyd._());
}

/// A class that represents the Cayman Islands Dollar currency.
final class FiatKyd extends FiatCurrency {
  /// {@template sealed_world.currency_kyd_constructor}
  /// Creates a instance of [FiatKyd] (Cayman Islands Dollar currency).
  ///
  /// ISO 4217 Alpha code: `KYD`, ISO 4217 Numeric code: `136`.
  /// {@endtemplate}
  const factory FiatKyd() = _KydFactory;

  const FiatKyd._()
    : super(
        code: "KYD",
        name: "Cayman Islands Dollar",
        symbol: r"$",
        alternateSymbols: const [r"CI$"],
        disambiguateSymbol: r"CI$",
        htmlEntity: r"$",
        codeNumeric: "136",
        namesNative: const ["Cayman Islands dollar"],
        subunit: "Cent",
        unitFirst: true,
      );
}
