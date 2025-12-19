/// Provides data for world languages in the form of sealed classes.
library sealed_languages;

import 'package:sealed_languages/src/model/language/language.dart';

export "/src/helpers/extensions/iso_object_extension_type.dart";
export "/src/helpers/extensions/iso_string_extension_type.dart";
export "src/data/natural_language_families.data.dart";
export "src/helpers/extensions/basic_locale_extension.dart";
export "src/helpers/extensions/iso_comparable_extension.dart";
export "src/helpers/extensions/iso_translated_iterable_extension.dart";
export "src/helpers/extensions/locale_mapping_options_extension.dart";
export "src/helpers/extensions/sealed_world_iterable_extension.dart";
export "src/helpers/extensions/translated_extension.dart";
export "src/helpers/extensions/translated_name_extension.dart";
export "src/helpers/extensions/upper_case_iso_map_extension.dart";
export "src/helpers/natural_language/natural_language_copy_with.dart";
export "src/helpers/natural_language/natural_language_getters.dart";
export "src/helpers/natural_language/natural_language_json.dart";
export "src/helpers/script/script_copy_with.dart";
export "src/helpers/script/script_getters.dart";
export "src/helpers/script/script_json.dart";
export "src/helpers/utils/localization_delegate.dart";
export "src/interfaces/basic_localization_delegate.dart";
export "src/interfaces/iso_standardized.dart";
export "src/interfaces/iso_translated.dart";
export "src/interfaces/json_encodable.dart";
export "src/interfaces/named.dart";
export "src/model/core/basic_locale.dart";
export "src/model/core/locale_mapping_options.dart";
export "src/model/core/upper_case_iso_map.dart";
export "src/model/core/upper_case_map.dart";
export "src/model/language/language.dart";
export "src/model/language_family/language_family.dart";
export "src/model/script/writing_system.dart";
export "src/model/translated_name.dart";
export "src/typedefs/typedefs.dart";

// ignore_for_file: prefer-static-class

/// This is a comprehensive list of languages that ensure the availability of
/// translations for every language in the natural language `list`.
///
/// It is important to note that while other languages may not be included in
/// this list, they may still have translations available for the most common
/// languages, but there may be some missing translations for rarer languages.
/// Every language contains more than 85 translations of it's name.
///
/// Includes all the Material localizations in [kMaterialSupportedLanguages](https://api.flutter.dev/flutter/flutter_localizations/kMaterialSupportedLanguages.html)
/// with a two letter code and much more (for example on top of that it also
/// provides translations for the following languages):
/// - Breton (BRE)
/// - Irish (GLE)
/// - Kashmiri (KAS)
/// - Norwegian Nynorsk (NNO)
/// - Romansh (ROH)
/// - Tonga (TON)
/// - Uyghur (UIG)
/// That are not listed in Material one, and much more.
const kSealedLanguagesSupportedLanguages = <NaturalLanguage>[
  LangAfr(),
  LangAmh(),
  LangAra(),
  LangAsm(),
  LangAze(),
  LangBel(),
  LangBen(),
  LangBos(),
  LangBre(),
  LangBul(),
  LangCat(),
  LangCes(),
  LangCym(),
  LangDan(),
  LangDeu(),
  LangEll(),
  LangEng(),
  LangEst(),
  LangEus(),
  LangFas(),
  LangFin(),
  LangFra(),
  LangGle(),
  LangGlg(),
  LangGuj(),
  LangHeb(),
  LangHin(),
  LangHrv(),
  LangHun(),
  LangHye(),
  LangInd(),
  LangIsl(),
  LangIta(),
  LangJpn(),
  LangKan(),
  LangKas(),
  LangKat(),
  LangKaz(),
  LangKhm(),
  LangKir(),
  LangKor(),
  LangLao(),
  LangLav(),
  LangLit(),
  LangMal(),
  LangMar(),
  LangMkd(),
  LangMon(),
  LangMsa(),
  LangMya(),
  LangNep(),
  LangNld(),
  LangNno(),
  LangNob(),
  LangNor(),
  LangOri(),
  LangPan(),
  LangPol(),
  LangPor(),
  LangPus(),
  LangRoh(),
  LangRon(),
  LangRus(),
  LangSin(),
  LangSlk(),
  LangSlv(),
  LangSpa(),
  LangSqi(),
  LangSrp(),
  LangSwa(),
  LangSwe(),
  LangTam(),
  LangTel(),
  LangTgl(),
  LangTha(),
  LangTon(),
  LangTur(),
  LangUig(),
  LangUkr(),
  LangUrd(),
  LangUzb(),
  LangVie(),
  LangZho(),
  LangZul(),
];

/// Sealed languages version of the
/// `kMaterialSupportedLanguages`/`kWidgetsSupportedLanguages` lists.
///
/// Implementation of localized strings for the material widgets using
/// the `intl` package for date and time formatting.
/// Missing "FIL" (Filipino Pilipino, but mapped to Tagalog "tl") and
/// "GSW" (Swiss German Alemannic Alsatian, but mapped to Swiss German "de_CH")
/// languages.
const kMaterialSupportedLanguagesSealed = <NaturalLanguage>[
  LangAfr(),
  LangAmh(),
  LangAra(),
  LangAsm(),
  LangAze(),
  LangBel(),
  LangBul(),
  LangBen(),
  LangBos(),
  LangCat(),
  LangCes(),
  LangCym(),
  LangDan(),
  LangDeu(),
  LangEll(),
  LangEng(),
  LangSpa(),
  LangEst(),
  LangEus(),
  LangFas(),
  LangFin(),
  LangFra(),
  LangGlg(),
  LangGuj(),
  LangHeb(),
  LangHin(),
  LangHrv(),
  LangHun(),
  LangHye(),
  LangInd(),
  LangIsl(),
  LangIta(),
  LangJpn(),
  LangKat(),
  LangKaz(),
  LangKhm(),
  LangKan(),
  LangKor(),
  LangKir(),
  LangLao(),
  LangLit(),
  LangLav(),
  LangMkd(),
  LangMal(),
  LangMon(),
  LangMar(),
  LangMsa(),
  LangMya(),
  LangNob(),
  LangNep(),
  LangNld(),
  LangNor(),
  LangOri(),
  LangPan(),
  LangPol(),
  LangPus(), // Missing in kCupertinoSupportedLanguagesSealed.
  LangPor(),
  LangRon(),
  LangRus(),
  LangSin(),
  LangSlk(),
  LangSlv(),
  LangSqi(),
  LangSrp(),
  LangSwe(),
  LangSwa(),
  LangTam(),
  LangTel(),
  LangTha(),
  LangTgl(),
  LangTur(),
  LangUkr(),
  LangUrd(),
  LangUzb(),
  LangVie(),
  LangZho(),
  LangZul(),
];

/// Sealed languages version of the `kCupertinoSupportedLanguages` list.
///
/// Implementation of localized strings for the Cupertino widgets using
/// the `intl` package for date and time formatting.
/// Missing "FIL" (Filipino Pilipino, but mapped to Tagalog "tl") and
/// "GSW" (Swiss German Alemannic Alsatian, but mapped to Swiss German "de_CH")
/// languages.
///
/// The only difference from the [kMaterialSupportedLanguagesSealed] list
/// is the additional [LangPus] (Pashto (Pushto) language) in Material locales.
const kCupertinoSupportedLanguagesSealed = <NaturalLanguage>[
  LangAfr(),
  LangAmh(),
  LangAra(),
  LangAsm(),
  LangAze(),
  LangBel(),
  LangBul(),
  LangBen(),
  LangBos(),
  LangCat(),
  LangCes(),
  LangCym(),
  LangDan(),
  LangDeu(),
  LangEll(),
  LangEng(),
  LangSpa(),
  LangEst(),
  LangEus(),
  LangFas(),
  LangFin(),
  LangFra(),
  LangGlg(),
  LangGuj(),
  LangHeb(),
  LangHin(),
  LangHrv(),
  LangHun(),
  LangHye(),
  LangInd(),
  LangIsl(),
  LangIta(),
  LangJpn(),
  LangKat(),
  LangKaz(),
  LangKhm(),
  LangKan(),
  LangKor(),
  LangKir(),
  LangLao(),
  LangLit(),
  LangLav(),
  LangMkd(),
  LangMal(),
  LangMon(),
  LangMar(),
  LangMsa(),
  LangMya(),
  LangNob(),
  LangNep(),
  LangNld(),
  LangNor(),
  LangOri(),
  LangPan(),
  LangPol(),
  LangPor(),
  LangRon(),
  LangRus(),
  LangSin(),
  LangSlk(),
  LangSlv(),
  LangSqi(),
  LangSrp(),
  LangSwe(),
  LangSwa(),
  LangTam(),
  LangTel(),
  LangTha(),
  LangTgl(),
  LangTur(),
  LangUkr(),
  LangUrd(),
  LangUzb(),
  LangVie(),
  LangZho(),
  LangZul(),
];
