// ignore_for_file: avoid-non-null-assertion
import "../../../../sealed_countries.dart";

extension NameExtension on WorldCountry {
  String? namesCommonNative({String separator = "/", bool skipFirst = false}) {
    final names = namesNative.map((cn) => cn.common).toSet();
    if (skipFirst) names.remove(names.first);

    return names.isEmpty ? null : names.join(separator);
  }

  CountryName? nameTranslated([NaturalLanguage? language]) {
    for (final countryName in translations) {
      if (countryName.language == language) return countryName;
    }

    return null;
  }

  CountryName get nameArabic => nameTranslated(const LangAra())!;
  CountryName get nameBreton => nameTranslated(const LangBre())!;
  CountryName get nameChinese => nameTranslated(const LangZho())!;
  CountryName get nameCroatian => nameTranslated(const LangHrv())!;
  CountryName get nameCzech => nameTranslated(const LangCes())!;
  CountryName get nameDutch => nameTranslated(const LangNld())!;
  CountryName get nameEnglish => name; // Just to follow the pattern.
  CountryName get nameEstonian => nameTranslated(const LangEst())!;
  CountryName get nameFinnish => nameTranslated(const LangFin())!;
  CountryName get nameFrench => nameTranslated(const LangFra())!;
  CountryName get nameGerman => nameTranslated(const LangDeu())!;
  CountryName get nameHungarian => nameTranslated(const LangHun())!;
  CountryName get nameItalian => nameTranslated(const LangIta())!;
  CountryName get nameJapanese => nameTranslated(const LangJpn())!;
  CountryName get nameKorean => nameTranslated(const LangKor())!;
  CountryName get namePersian => nameTranslated(const LangFas())!;
  CountryName get namePolish => nameTranslated(const LangPol())!;
  CountryName get namePortuguese => nameTranslated(const LangPor())!;
  CountryName get nameRussian => nameTranslated(const LangRus())!;
  CountryName get nameSerbian => nameTranslated(const LangSrp())!;
  CountryName get nameSlovak => nameTranslated(const LangSlk())!;
  CountryName get nameSpanish => nameTranslated(const LangSpa())!;
  CountryName get nameSwedish => nameTranslated(const LangSwe())!;
  CountryName get nameTurkish => nameTranslated(const LangTur())!;
  CountryName get nameUrdu => nameTranslated(const LangUrd())!;
  CountryName get nameWelsh => nameTranslated(const LangCym())!;
}
