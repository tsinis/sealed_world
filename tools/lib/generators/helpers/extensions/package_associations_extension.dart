import "package:sealed_countries/sealed_countries.dart";

import "../../../models/package.dart";

extension PackageAssociationsExtension on Package {
  Type get type => whenConst(
    sealedLanguages: NaturalLanguage,
    sealedCurrencies: FiatCurrency,
    sealedCountries: WorldCountry,
  );

  String get classPrefix => whenConst(
    sealedLanguages: "Lang",
    sealedCurrencies: "Fiat",
    sealedCountries: "$Country",
  );

  List<IsoTranslated> get dataList => whenConst(
    sealedLanguages: NaturalLanguage.list,
    sealedCurrencies: FiatCurrency.list,
    sealedCountries: WorldCountry.list,
  );

  String get dataRepresent => whenConst(
    sealedLanguages: Language,
    sealedCurrencies: Currency,
    sealedCountries: Country,
  ).toString().toLowerCase();

  String get dataRepresentPlural => whenConst(
    sealedLanguages: "languages",
    sealedCurrencies: "currencies",
    sealedCountries: "countries",
  );

  String get isoCodeAssociated => whenConst(
    sealedLanguages: NaturalLanguage.standardCodeName,
    sealedCurrencies: FiatCurrency.standardCodeName,
    sealedCountries: WorldCountry.standardCodeName,
  );

  String get isoCodeOtherAssociated => whenConst(
    sealedLanguages: NaturalLanguage.standardCodeShortName,
    sealedCurrencies: FiatCurrency.standardCodeNumericName,
    sealedCountries: WorldCountry.standardCodeShortName,
  );

  String get umpirskyRepoUrl =>
      "https://github.com/umpirsky/$dataRepresent-list";
}
