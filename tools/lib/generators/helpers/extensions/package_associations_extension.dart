import "package:change_case/change_case.dart";
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

  List<TranslatedName> translations(String code) => when(
        sealedCurrencies: () => FiatCurrency.fromCode(code),
        sealedCountries: () => WorldCountry.fromCode(code),
        sealedLanguages: () => NaturalLanguage.fromCode(code),
      ).translations;

  String get dataFilePrefix => whenConst(
        sealedLanguages: "${type.toString().toSnakeCase()}s",
        sealedCurrencies: "fiat_currencies",
        sealedCountries: "official_world_countries",
      );

  String get dataRepresent => whenConst(
        sealedLanguages: Language,
        sealedCountries: Country,
        sealedCurrencies: Currency,
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
