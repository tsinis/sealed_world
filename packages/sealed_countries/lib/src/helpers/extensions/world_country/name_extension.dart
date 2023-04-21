// ignore_for_file: avoid-non-null-assertion
import "../../../../sealed_countries.dart";

extension NameExtension on WorldCountry {
  String namesCommonNative({String separator = "/", bool skipFirst = false}) =>
      _namesNativeBuilder(
        (countryName) => countryName.common,
        separator: separator,
        skipFirst: skipFirst,
      );

  String namesOfficialNative({
    String separator = "/",
    bool skipFirst = false,
  }) =>
      _namesNativeBuilder(
        (countryName) => countryName.official,
        separator: separator,
        skipFirst: skipFirst,
      );

  CountryName? nameTranslated([NaturalLanguage? language = const LangEng()]) {
    if (language == null) return null;
    if (language == const LangEng()) return name;

    return _nameTranslated(language);
  }

  CountryName get nameArabic => _nameTranslated(const LangAra())!;
  CountryName get nameBreton => _nameTranslated(const LangBre())!;
  CountryName get nameChinese => _nameTranslated(const LangZho())!;
  CountryName get nameCroatian => _nameTranslated(const LangHrv())!;
  CountryName get nameCzech => _nameTranslated(const LangCes())!;
  CountryName get nameDutch => _nameTranslated(const LangNld())!;
  CountryName get nameEnglish => name; // Just to follow the pattern.
  CountryName get nameEstonian => _nameTranslated(const LangEst())!;
  CountryName get nameFinnish => _nameTranslated(const LangFin())!;
  CountryName get nameFrench => _nameTranslated(const LangFra())!;
  CountryName get nameGerman => _nameTranslated(const LangDeu())!;
  CountryName get nameHungarian => _nameTranslated(const LangHun())!;
  CountryName get nameItalian => _nameTranslated(const LangIta())!;
  CountryName get nameJapanese => _nameTranslated(const LangJpn())!;
  CountryName get nameKorean => _nameTranslated(const LangKor())!;
  CountryName get namePersian => _nameTranslated(const LangFas())!;
  CountryName get namePolish => _nameTranslated(const LangPol())!;
  CountryName get namePortuguese => _nameTranslated(const LangPor())!;
  CountryName get nameRussian => _nameTranslated(const LangRus())!;
  CountryName get nameSerbian => _nameTranslated(const LangSrp())!;
  CountryName get nameSlovak => _nameTranslated(const LangSlk())!;
  CountryName get nameSpanish => _nameTranslated(const LangSpa())!;
  CountryName get nameSwedish => _nameTranslated(const LangSwe())!;
  CountryName get nameTurkish => _nameTranslated(const LangTur())!;
  CountryName get nameUrdu => _nameTranslated(const LangUrd())!;
  CountryName get nameWelsh => _nameTranslated(const LangCym())!;

  String _namesNativeBuilder(
    String Function(CountryName countryName) toName, {
    String separator = "/",
    bool skipFirst = false,
  }) {
    final names = namesNative.map(toName).toSet();
    if (skipFirst && names.length > 1) names.remove(names.first);

    return names.join(separator);
  }

  CountryName? _nameTranslated(NaturalLanguage language) {
    for (final countryName in translations) {
      if (countryName.language == language) return countryName;
    }

    return null;
  }
}
