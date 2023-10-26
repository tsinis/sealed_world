// ignore_for_file: avoid-non-null-assertion

import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/country/country.dart";
import "../../model/country/submodels/country_name.dart";
import "../extensions/country_submodels/country_name_extension.dart";

/// Provides extension methods for getting the names of a `WorldCountry` object.
extension WorldCountryNames on WorldCountry {
  /// Returns the common and native names of the country as a single string.
  ///
  /// The `separator` parameter is an optional string that determines the
  /// separator to use between the names. The `skipFirst` parameter is an
  /// optional boolean that determines whether to skip the first name in the
  /// list of names. Returns a string representing the common and native names
  /// of the country, separated by `separator`.
  String namesCommonNative({String separator = "/", bool skipFirst = false}) =>
      _namesNativeBuilder(
        (countryName) => countryName.common,
        separator: separator,
        skipFirst: skipFirst,
      );

  /// Returns the official and native names of the country as a single string.
  ///
  /// The `separator` parameter is an optional string that determines the
  /// separator to use between the names. The `skipFirst` parameter is an
  /// optional boolean that determines whether to skip the first name in the
  /// list of names. Returns a string representing the official and native names
  /// of the country, separated by `separator`.
  String namesOfficialNative({
    String separator = "/",
    bool skipFirst = false,
  }) =>
      _namesNativeBuilder(
        (countryName) => countryName.official,
        separator: separator,
        skipFirst: skipFirst,
      );

  /// Returns the translated name of the country in the given `language`.
  ///
  /// The `language` parameter is an optional `NaturalLanguage` object that
  /// represents the language to translate the name to. If `language` is `null`,
  /// `null` is returned. If `language` is the default `LangEng` object, the
  /// `name` property of the `WorldCountry` object is returned directly.
  /// Otherwise, the `translations` property of the `WorldCountry` object is
  /// searched for a `CountryName` object with a matching `language` property.
  /// If a matching `CountryName` object is found, it is returned. Otherwise,
  /// `null` is returned.
  @Deprecated("Please use `maybeTranslation()` or `translation()` instead")
  TranslatedName? nameTranslated([
    NaturalLanguage? language = const LangEng(),
  ]) {
    if (language == null) return null;
    if (language == const LangEng()) return name;

    return _nameTranslated(language);
  }

  /// Returns the Arabic name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangAra())`/`translation(LangAra())` instead",
  )
  TranslatedName get nameArabic => _nameTranslated(const LangAra())!;

  /// Returns the Breton name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangBre())`/`translation(LangBre())` instead",
  )
  TranslatedName get nameBreton => _nameTranslated(const LangBre())!;

  /// Returns the Chinese name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangZho())`/`translation(LangZho())` instead",
  )
  TranslatedName get nameChinese => _nameTranslated(const LangZho())!;

  /// Returns the Croatian name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangHrv())`/`translation(LangHrv())` instead",
  )
  TranslatedName get nameCroatian => _nameTranslated(const LangHrv())!;

  /// Returns the Czech name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangCes())`/`translation(LangCes())` instead",
  )
  TranslatedName get nameCzech => _nameTranslated(const LangCes())!;

  /// Returns the Dutch name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangNld())`/`translation(LangNld())` instead",
  )
  TranslatedName get nameDutch => _nameTranslated(const LangNld())!;

  /// Returns the English name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangEng())`/`translation(LangEng())` instead",
  )
  TranslatedName get nameEnglish => name; // Just to follow the pattern.

  /// Returns the Estonian name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangEst())`/`translation(LangEst())` instead",
  )
  TranslatedName get nameEstonian => _nameTranslated(const LangEst())!;

  /// Returns the Finnish name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangFin())`/`translation(LangFin())` instead",
  )
  TranslatedName get nameFinnish => _nameTranslated(const LangFin())!;

  /// Returns the French name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangFra())`/`translation(LangFra())` instead",
  )
  TranslatedName get nameFrench => _nameTranslated(const LangFra())!;

  /// Returns the German name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangDeu())`/`translation(LangDeu())` instead",
  )
  TranslatedName get nameGerman => _nameTranslated(const LangDeu())!;

  /// Returns the Hungarian name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangHun())`/`translation(LangHun())` instead",
  )
  TranslatedName get nameHungarian => _nameTranslated(const LangHun())!;

  /// Returns the Italian name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangIta())`/`translation(LangIta())` instead",
  )
  TranslatedName get nameItalian => _nameTranslated(const LangIta())!;

  /// Returns the Japanese name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangJpn())`/`translation(LangJpn())` instead",
  )
  TranslatedName get nameJapanese => _nameTranslated(const LangJpn())!;

  /// Returns the Korean name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangKor())`/`translation(LangKor())` instead",
  )
  TranslatedName get nameKorean => _nameTranslated(const LangKor())!;

  /// Returns the Persian name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangFas())`/`translation(LangFas())` instead",
  )
  TranslatedName get namePersian => _nameTranslated(const LangFas())!;

  /// Returns the Polish name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangPol())`/`translation(LangPol())` instead",
  )
  TranslatedName get namePolish => _nameTranslated(const LangPol())!;

  /// Returns the Portuguese name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangPor())`/`translation(LangPor())` instead",
  )
  TranslatedName get namePortuguese => _nameTranslated(const LangPor())!;

  /// Returns the Russian name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangRus())`/`translation(LangRus())` instead",
  )
  TranslatedName get nameRussian => _nameTranslated(const LangRus())!;

  /// Returns the Serbian name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangSrp())`/`translation(LangSrp())` instead",
  )
  TranslatedName get nameSerbian => _nameTranslated(const LangSrp())!;

  /// Returns the Slovak name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangSlk())`/`translation(LangSlk())` instead",
  )
  TranslatedName get nameSlovak => _nameTranslated(const LangSlk())!;

  /// Returns the Spanish name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangSpa())`/`translation(LangSpa())` instead",
  )
  TranslatedName get nameSpanish => _nameTranslated(const LangSpa())!;

  /// Returns the Swedish name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangSwe())`/`translation(LangSwe())` instead",
  )
  TranslatedName get nameSwedish => _nameTranslated(const LangSwe())!;

  /// Returns the Turkish name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangTur())`/`translation(LangTur())` instead",
  )
  TranslatedName get nameTurkish => _nameTranslated(const LangTur())!;

  /// Returns the Urdu name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangUrd())`/`translation(LangUrd())` instead",
  )
  TranslatedName get nameUrdu => _nameTranslated(const LangUrd())!;

  /// Returns the Welsh name of the country.
  @Deprecated(
    "Please use `maybeTranslation(LangCym())`/`translation(LangCym())` instead",
  )
  TranslatedName get nameWelsh => _nameTranslated(const LangCym())!;

  String _namesNativeBuilder(
    String Function(CountryName countryName) toName, {
    String separator = "/",
    bool skipFirst = false,
  }) {
    final names = namesNative.map(toName).toSet();
    if (skipFirst && names.length > 1) names.remove(names.first);

    return names.join(separator);
  }

  TranslatedName? _nameTranslated(NaturalLanguage language) {
    for (final countryName in translations) {
      if (countryName.language == language) return countryName;
    }

    return null;
  }
}
