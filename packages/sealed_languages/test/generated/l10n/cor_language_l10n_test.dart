// ignore_for_file: lines_longer_than_80_chars, avoid-non-ascii-symbols

import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/translated_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/translated_name.dart";

import "package:test/test.dart";

void main() => group(
      "$LangCor() L10N",
      () {
        const value = LangCor();

        test("has translation for 'af' locale", () {
          const expectedName = "Kornies";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAfr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAfr()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAfr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAfr(), name: expectedName)),
          );
        });
        test("has translation for 'am' locale", () {
          const expectedName = "ኮርኒሽ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAmh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAmh()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAmh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAmh(), name: expectedName)),
          );
        });
        test("has translation for 'ar' locale", () {
          const expectedName = "الكورنية";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAra()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAra(), name: expectedName)),
          );
        });
        test("has translation for 'as' locale", () {
          const expectedName = "কোৰ্নিচ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAsm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAsm()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAsm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAsm(), name: expectedName)),
          );
        });
        test("has translation for 'az' locale", () {
          const expectedName = "korn";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAze()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAze()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAze(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAze(), name: expectedName)),
          );
        });
        test("has translation for 'be' locale", () {
          const expectedName = "корнская";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBel()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBel(), name: expectedName)),
          );
        });
        test("has translation for 'bg' locale", () {
          const expectedName = "корнуолски";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBul(), name: expectedName)),
          );
        });
        test("has translation for 'bn' locale", () {
          const expectedName = "কর্ণিশ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBen()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBen()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBen(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBen(), name: expectedName)),
          );
        });
        test("has translation for 'br' locale", () {
          const expectedName = "kerneveureg";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBre()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBre()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBre(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBre(), name: expectedName)),
          );
        });
        test("has translation for 'bs' locale", () {
          const expectedName = "korniški";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBos()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBos()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBos(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBos(), name: expectedName)),
          );
        });
        test("has translation for 'bs_Cyrl' locale", () {
          const expectedName = "корнишки";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBos(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBos(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangBos(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'ca' locale", () {
          const expectedName = "còrnic";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangCat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCat(), name: expectedName)),
          );
        });
        test("has translation for 'ce' locale", () {
          const expectedName = "корнуоллийн";

          final translated = value.maybeTranslation(
            const BasicLocale(LangChe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangChe()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangChe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChe(), name: expectedName)),
          );
        });
        test("has translation for 'cs' locale", () {
          const expectedName = "kornština";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCes()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangCes()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCes(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCes(), name: expectedName)),
          );
        });
        test("has translation for 'cy' locale", () {
          const expectedName = "Cernyweg";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCym()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangCym()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCym(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCym(), name: expectedName)),
          );
        });
        test("has translation for 'da' locale", () {
          const expectedName = "cornisk";

          final translated = value.maybeTranslation(
            const BasicLocale(LangDan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangDan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDan(), name: expectedName)),
          );
        });
        test("has translation for 'de' locale", () {
          const expectedName = "Kornisch";

          final translated = value.maybeTranslation(
            const BasicLocale(LangDeu()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangDeu()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDeu(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDeu(), name: expectedName)),
          );
        });
        test("has translation for 'el' locale", () {
          const expectedName = "Κόρνις";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEll()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEll()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEll(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEll(), name: expectedName)),
          );
        });
        test("has translation for 'en' locale", () {
          const expectedName = "Cornish";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEng()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEng()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEng(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEng(), name: expectedName)),
          );
        });
        test("has translation for 'es' locale", () {
          const expectedName = "córnico";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSpa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSpa()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSpa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSpa(), name: expectedName)),
          );
        });
        test("has translation for 'et' locale", () {
          const expectedName = "korni";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEst()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEst()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEst(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEst(), name: expectedName)),
          );
        });
        test("has translation for 'eu' locale", () {
          const expectedName = "kornubiera";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEus()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEus(), name: expectedName)),
          );
        });
        test("has translation for 'fa' locale", () {
          const expectedName = "کرنوالی";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFas()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFas(), name: expectedName)),
          );
        });
        test("has translation for 'ff_Adlm' locale", () {
          const expectedName = "𞤑𞤮𞤪𞤲𞤭𞥅𞤪𞤫";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFul(), script: ScriptAdlm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFul(), script: ScriptAdlm()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFul(),
                name: expectedName,
                script: ScriptAdlm(),
              ),
            ),
          );
        });
        test("has translation for 'fi' locale", () {
          const expectedName = "korni";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFin(), name: expectedName)),
          );
        });
        test("has translation for 'fo' locale", () {
          const expectedName = "corniskt";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFao()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFao(), name: expectedName)),
          );
        });
        test("has translation for 'fr' locale", () {
          const expectedName = "cornique";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFra()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFra(), name: expectedName)),
          );
        });
        test("has translation for 'ga' locale", () {
          const expectedName = "Coirnis";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGle()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangGle()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGle(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGle(), name: expectedName)),
          );
        });
        test("has translation for 'gd' locale", () {
          const expectedName = "Còrnais";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGla()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangGla()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGla(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGla(), name: expectedName)),
          );
        });
        test("has translation for 'gl' locale", () {
          const expectedName = "córnico";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGlg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangGlg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGlg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGlg(), name: expectedName)),
          );
        });
        test("has translation for 'gu' locale", () {
          const expectedName = "કોર્નિશ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangGuj()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangGuj()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangGuj(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGuj(), name: expectedName)),
          );
        });
        test("has translation for 'he' locale", () {
          const expectedName = "קורנית";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHeb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHeb()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHeb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHeb(), name: expectedName)),
          );
        });
        test("has translation for 'hi' locale", () {
          const expectedName = "कोर्निश";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHin(), name: expectedName)),
          );
        });
        test("has translation for 'hr' locale", () {
          const expectedName = "kornski";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHrv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHrv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHrv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHrv(), name: expectedName)),
          );
        });
        test("has translation for 'hu' locale", () {
          const expectedName = "korni";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHun()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHun()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHun(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHun(), name: expectedName)),
          );
        });
        test("has translation for 'hy' locale", () {
          const expectedName = "կոռներեն";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHye()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHye()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHye(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHye(), name: expectedName)),
          );
        });
        test("has translation for 'ia' locale", () {
          const expectedName = "cornico";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIna()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangIna()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIna(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIna(), name: expectedName)),
          );
        });
        test("has translation for 'id' locale", () {
          const expectedName = "Kornish";

          final translated = value.maybeTranslation(
            const BasicLocale(LangInd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangInd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangInd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangInd(), name: expectedName)),
          );
        });
        test("has translation for 'ig' locale", () {
          const expectedName = "Kọnịsh";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIbo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangIbo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIbo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIbo(), name: expectedName)),
          );
        });
        test("has translation for 'is' locale", () {
          const expectedName = "kornbreska";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIsl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangIsl()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIsl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIsl(), name: expectedName)),
          );
        });
        test("has translation for 'it' locale", () {
          const expectedName = "cornico";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIta()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangIta()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIta(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIta(), name: expectedName)),
          );
        });
        test("has translation for 'ja' locale", () {
          const expectedName = "コーンウォール語";

          final translated = value.maybeTranslation(
            const BasicLocale(LangJpn()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangJpn()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangJpn(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangJpn(), name: expectedName)),
          );
        });
        test("has translation for 'jv' locale", () {
          const expectedName = "Kernowek";

          final translated = value.maybeTranslation(
            const BasicLocale(LangJav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangJav()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangJav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangJav(), name: expectedName)),
          );
        });
        test("has translation for 'ka' locale", () {
          const expectedName = "კორნული";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKat(), name: expectedName)),
          );
        });
        test("has translation for 'kk' locale", () {
          const expectedName = "корниш";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKaz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKaz()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKaz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKaz(), name: expectedName)),
          );
        });
        test("has translation for 'km' locale", () {
          const expectedName = "កូនីស";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKhm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKhm()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKhm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKhm(), name: expectedName)),
          );
        });
        test("has translation for 'kn' locale", () {
          const expectedName = "ಕೋರ್ನಿಷ್";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKan(), name: expectedName)),
          );
        });
        test("has translation for 'ko' locale", () {
          const expectedName = "콘월어";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKor(), name: expectedName)),
          );
        });
        test("has translation for 'ks' locale", () {
          const expectedName = "کورنِش";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKas()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKas(), name: expectedName)),
          );
        });
        test("has translation for 'ku' locale", () {
          const expectedName = "kornî";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKur()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKur(), name: expectedName)),
          );
        });
        test("has translation for 'kw' locale", () {
          const expectedName = "kernewek";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangCor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCor(), name: expectedName)),
          );
        });
        test("has translation for 'ky' locale", () {
          const expectedName = "корнишче";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKir()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKir(), name: expectedName)),
          );
        });
        test("has translation for 'lb' locale", () {
          const expectedName = "Kornesch";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLtz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLtz()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLtz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLtz(), name: expectedName)),
          );
        });
        test("has translation for 'lo' locale", () {
          const expectedName = "ຄໍນິຊ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLao()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLao(), name: expectedName)),
          );
        });
        test("has translation for 'lt' locale", () {
          const expectedName = "kornų";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLit()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLit()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLit(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLit(), name: expectedName)),
          );
        });
        test("has translation for 'lv' locale", () {
          const expectedName = "korniešu";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLav()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLav(), name: expectedName)),
          );
        });
        test("has translation for 'mi' locale", () {
          const expectedName = "Kōnihi";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMri()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMri(), name: expectedName)),
          );
        });
        test("has translation for 'mk' locale", () {
          const expectedName = "корнски";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMkd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMkd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMkd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMkd(), name: expectedName)),
          );
        });
        test("has translation for 'ml' locale", () {
          const expectedName = "കോർണിഷ്";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMal()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMal()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMal(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMal(), name: expectedName)),
          );
        });
        test("has translation for 'mn' locale", () {
          const expectedName = "корны";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMon(), name: expectedName)),
          );
        });
        test("has translation for 'mr' locale", () {
          const expectedName = "कोर्निश";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMar()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMar()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMar(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMar(), name: expectedName)),
          );
        });
        test("has translation for 'ms' locale", () {
          const expectedName = "Cornish";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMsa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMsa()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMsa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMsa(), name: expectedName)),
          );
        });
        test("has translation for 'mt' locale", () {
          const expectedName = "Korniku";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMlt()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMlt()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMlt(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMlt(), name: expectedName)),
          );
        });
        test("has translation for 'my' locale", () {
          const expectedName = "ခိုနီရှ်";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMya()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMya()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMya(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMya(), name: expectedName)),
          );
        });
        test("has translation for 'nb' locale", () {
          const expectedName = "kornisk";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNob()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNob()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNob(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNob(), name: expectedName)),
          );
        });
        test("has translation for 'ne' locale", () {
          const expectedName = "कोर्निश";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNep()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNep()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNep(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNep(), name: expectedName)),
          );
        });
        test("has translation for 'nl' locale", () {
          const expectedName = "Cornisch";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNld()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNld()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNld(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNld(), name: expectedName)),
          );
        });
        test("has translation for 'nn' locale", () {
          const expectedName = "kornisk";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNno()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNno()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNno(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNno(), name: expectedName)),
          );
        });
        test("has translation for 'no' locale", () {
          const expectedName = "kornisk";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNor(), name: expectedName)),
          );
        });
        test("has translation for 'or' locale", () {
          const expectedName = "କୋର୍ନିସ୍";

          final translated = value.maybeTranslation(
            const BasicLocale(LangOri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangOri()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangOri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOri(), name: expectedName)),
          );
        });
        test("has translation for 'pa' locale", () {
          const expectedName = "ਕੋਰਨਿਸ਼";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangPan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPan(), name: expectedName)),
          );
        });
        test("has translation for 'pl' locale", () {
          const expectedName = "kornijski";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangPol()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPol(), name: expectedName)),
          );
        });
        test("has translation for 'ps' locale", () {
          const expectedName = "کورنيشي";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangPus()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPus(), name: expectedName)),
          );
        });
        test("has translation for 'pt' locale", () {
          const expectedName = "córnico";

          final translated = value.maybeTranslation(
            const BasicLocale(LangPor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangPor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPor(), name: expectedName)),
          );
        });
        test("has translation for 'qu' locale", () {
          const expectedName = "Córnico Simi";

          final translated = value.maybeTranslation(
            const BasicLocale(LangQue()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangQue()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangQue(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangQue(), name: expectedName)),
          );
        });
        test("has translation for 'rm' locale", () {
          const expectedName = "cornic";

          final translated = value.maybeTranslation(
            const BasicLocale(LangRoh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangRoh()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRoh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRoh(), name: expectedName)),
          );
        });
        test("has translation for 'ro' locale", () {
          const expectedName = "cornică";

          final translated = value.maybeTranslation(
            const BasicLocale(LangRon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangRon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRon(), name: expectedName)),
          );
        });
        test("has translation for 'ru' locale", () {
          const expectedName = "корнийский";

          final translated = value.maybeTranslation(
            const BasicLocale(LangRus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangRus()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRus(), name: expectedName)),
          );
        });
        test("has translation for 'sc' locale", () {
          const expectedName = "còrnicu";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSrd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSrd(), name: expectedName)),
          );
        });
        test("has translation for 'sd' locale", () {
          const expectedName = "ڪورنش";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSnd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSnd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSnd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSnd(), name: expectedName)),
          );
        });
        test("has translation for 'se' locale", () {
          const expectedName = "kornagiella";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSme()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSme()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSme(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSme(), name: expectedName)),
          );
        });
        test("has translation for 'si' locale", () {
          const expectedName = "කෝනීසියානු";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSin(), name: expectedName)),
          );
        });
        test("has translation for 'sk' locale", () {
          const expectedName = "kornčina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSlk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSlk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSlk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSlk(), name: expectedName)),
          );
        });
        test("has translation for 'sl' locale", () {
          const expectedName = "kornijščina";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSlv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSlv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSlv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSlv(), name: expectedName)),
          );
        });
        test("has translation for 'so' locale", () {
          const expectedName = "Kornish";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSom()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSom()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSom(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSom(), name: expectedName)),
          );
        });
        test("has translation for 'sq' locale", () {
          const expectedName = "kornisht";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSqi()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSqi()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSqi(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSqi(), name: expectedName)),
          );
        });
        test("has translation for 'sr' locale", () {
          const expectedName = "корнволски";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSrp()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSrp()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSrp(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSrp(), name: expectedName)),
          );
        });
        test("has translation for 'sr_Latn' locale", () {
          const expectedName = "kornvolski";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSrp(), script: ScriptLatn()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSrp(), script: ScriptLatn()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSrp(),
                name: expectedName,
                script: ScriptLatn(),
              ),
            ),
          );
        });
        test("has translation for 'sv' locale", () {
          const expectedName = "korniska";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSwe()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSwe(), name: expectedName)),
          );
        });
        test("has translation for 'sw' locale", () {
          const expectedName = "Kikorni";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSwa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSwa()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSwa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSwa(), name: expectedName)),
          );
        });
        test("has translation for 'ta' locale", () {
          const expectedName = "கார்னிஷ்";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTam()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTam()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTam(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTam(), name: expectedName)),
          );
        });
        test("has translation for 'te' locale", () {
          const expectedName = "కోర్నిష్";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTel()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTel(), name: expectedName)),
          );
        });
        test("has translation for 'th' locale", () {
          const expectedName = "คอร์นิช";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTha()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTha()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTha(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTha(), name: expectedName)),
          );
        });
        test("has translation for 'ti' locale", () {
          const expectedName = "ኮርንኛ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTir()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTir(), name: expectedName)),
          );
        });
        test("has translation for 'tk' locale", () {
          const expectedName = "korn dili";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTuk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTuk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTuk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTuk(), name: expectedName)),
          );
        });
        test("has translation for 'tl' locale", () {
          const expectedName = "Cornish";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTgl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTgl()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTgl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgl(), name: expectedName)),
          );
        });
        test("has translation for 'to' locale", () {
          const expectedName = "lea fakakoniuali";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTon(), name: expectedName)),
          );
        });
        test("has translation for 'tr' locale", () {
          const expectedName = "Kernevekçe";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTur()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTur(), name: expectedName)),
          );
        });
        test("has translation for 'ug' locale", () {
          const expectedName = "كورنىشچە";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUig()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangUig()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUig(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUig(), name: expectedName)),
          );
        });
        test("has translation for 'uk' locale", () {
          const expectedName = "корнійська";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUkr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangUkr()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUkr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUkr(), name: expectedName)),
          );
        });
        test("has translation for 'ur' locale", () {
          const expectedName = "کورنش";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangUrd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUrd(), name: expectedName)),
          );
        });
        test("has translation for 'uz' locale", () {
          const expectedName = "kornishcha";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUzb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangUzb()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUzb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUzb(), name: expectedName)),
          );
        });
        test("has translation for 'vi' locale", () {
          const expectedName = "Tiếng Cornwall";

          final translated = value.maybeTranslation(
            const BasicLocale(LangVie()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangVie()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangVie(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangVie(), name: expectedName)),
          );
        });
        test("has translation for 'yi' locale", () {
          const expectedName = "קארניש";

          final translated = value.maybeTranslation(
            const BasicLocale(LangYid()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangYid()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangYid(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangYid(), name: expectedName)),
          );
        });
        test("has translation for 'yo' locale", () {
          const expectedName = "Èdè Kọ́nììṣì";

          final translated = value.maybeTranslation(
            const BasicLocale(LangYor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangYor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangYor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangYor(), name: expectedName)),
          );
        });
        test("has translation for 'zh' locale", () {
          const expectedName = "凯尔特文";

          final translated = value.maybeTranslation(
            const BasicLocale(LangZho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangZho()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangZho(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZho(), name: expectedName)),
          );
        });
        test("has translation for 'zh_Hant' locale", () {
          const expectedName = "康瓦耳文";

          final translated = value.maybeTranslation(
            const BasicLocale(LangZho(), script: ScriptHant()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangZho(), script: ScriptHant()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangZho(),
                name: expectedName,
                script: ScriptHant(),
              ),
            ),
          );
        });
        test("has translation for 'zu' locale", () {
          const expectedName = "isi-Cornish";

          final translated = value.maybeTranslation(
            const BasicLocale(LangZul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangZul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangZul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZul(), name: expectedName)),
          );
        });
      },
      tags: "generated",
    );
