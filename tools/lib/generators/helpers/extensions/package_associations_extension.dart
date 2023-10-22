import "package:change_case/change_case.dart";
import "package:sealed_currencies/sealed_currencies.dart";

import "../../../models/package.dart";

extension PackageAssociationsExtension on Package {
  Type get type =>
      whenConstOrNull(
        sealedLanguages: NaturalLanguage,
        sealedCurrencies: FiatCurrency,
      ) ??
      NaturalLanguage;

  String get classPrefix =>
      whenConstOrNull(
        sealedLanguages: "Lang",
        sealedCurrencies: "Fiat",
      ) ??
      "";

  List<IsoStandardized> get dataList =>
      whenConstOrNull(
        sealedLanguages: NaturalLanguage.list,
        sealedCurrencies: FiatCurrency.list,
      ) ??
      const [];

  String get dataFilePrefix =>
      whenConstOrNull(sealedCurrencies: "fiat_currencies") ??
      "${type.toString().toSnakeCase()}s";

  String get dataRepresent => whenConst(
        sealedLanguages: Language,
        sealedCountries: "Country",
        sealedCurrencies: Currency,
        worldCountries: "world",
      ).toString().toLowerCase();

  String get isoCodeAssociated =>
      whenConstOrNull(
        sealedLanguages: "639-2",
        sealedCurrencies: "4217 (Alpha)",
      ) ??
      "";

  String get isoCodeOtherAssociated =>
      whenConstOrNull(
        sealedLanguages: "639-1",
        sealedCurrencies: "4217 (Numeric)",
      ) ??
      "";

  String get umpirskyRepoUrl =>
      "https://github.com/umpirsky/$dataRepresent-list";
}
