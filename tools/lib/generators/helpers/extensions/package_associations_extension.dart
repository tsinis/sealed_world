import "package:sealed_countries/sealed_countries.dart";

import "../../../models/package.dart";

extension PackageAssociationsExtension<T extends Package> on T? {
  Type get type =>
      this?.whenConst(
        sealedLanguages: NaturalLanguage,
        sealedCurrencies: FiatCurrency,
        sealedCountries: WorldCountry,
      ) ??
      Script;

  String get classPrefix =>
      this?.whenConst(
        sealedLanguages: "Lang",
        sealedCurrencies: "Fiat",
        sealedCountries: "$Country",
      ) ??
      "$Script";

  List<IsoTranslated>? get dataList => this?.whenConst(
    sealedLanguages: NaturalLanguage.list,
    sealedCurrencies: FiatCurrency.listExtended,
    sealedCountries: WorldCountry.list,
  );

  String? get dataRepresent => this
      ?.whenConst(
        sealedLanguages: Language,
        sealedCurrencies: Currency,
        sealedCountries: Country,
      )
      .toString()
      .toLowerCase();

  String get dataRepresentPlural =>
      this?.whenConst(
        sealedLanguages: "languages",
        sealedCurrencies: "currencies",
        sealedCountries: "countries",
      ) ??
      "scripts";

  String get isoCodeAssociated =>
      this?.whenConst(
        sealedLanguages: NaturalLanguage.standardCodeName,
        sealedCurrencies: FiatCurrency.standardCodeName,
        sealedCountries: WorldCountry.standardCodeName,
      ) ??
      Script.standardCodeName;

  String get isoCodeOtherAssociated =>
      this?.whenConst(
        sealedLanguages: NaturalLanguage.standardCodeShortName,
        sealedCurrencies: FiatCurrency.standardCodeNumericName,
        sealedCountries: WorldCountry.standardCodeShortName,
      ) ??
      Script.standardCodeNumericName;
}
