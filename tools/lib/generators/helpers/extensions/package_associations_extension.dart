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

  List<IsoStandardized> get dataList => whenConst(
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

  String get isoCodeAssociated => whenConst(
        sealedLanguages: "639-2",
        sealedCurrencies: "4217 (Alpha)",
        sealedCountries: "3166-1 Alpha-3",
      );

  String get isoCodeOtherAssociated => whenConst(
        sealedLanguages: "639-1",
        sealedCurrencies: "4217 (Numeric)",
        sealedCountries: "3166-1 Alpha-2",
      );

  String get umpirskyRepoUrl =>
      "https://github.com/umpirsky/$dataRepresent-list";
}
