// ignore_for_file: lines_longer_than_80_chars, avoid-non-ascii-symbols

import "package:sealed_countries/src/data/official_world_countries.data.dart";
import "package:sealed_countries/src/model/locale/basic_typed_locale.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group(
      "$CountryVgb() L10N",
      () {
        const value = CountryVgb();

        test("has translation for 'en' locale", () {
          const expectedName = "British Virgin Islands";
          const expectedFullName = "Virgin Islands";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEng()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEng()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEng(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangEng(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'sr' locale", () {
          const expectedName = "Британска Девичанска Острва";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSrp()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSrp()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSrp(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSrp(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ar' locale", () {
          const expectedName = "جزر العذراء";
          const expectedFullName = "جزر العذراء البريطانية";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAra()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangAra(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'br' locale", () {
          const expectedName = "Inizi Gwerc'h Breizhveurat";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBre()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBre()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBre(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangBre(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'cs' locale", () {
          const expectedName = "Britské Panenské ostrovy";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangCes()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangCes()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangCes(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangCes(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'cy' locale", () {
          const expectedName = "British Virgin Islands";
          const expectedFullName = "Virgin Islands";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangCym()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangCym()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangCym(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangCym(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'de' locale", () {
          const expectedName = "Britische Jungferninseln";
          const expectedFullName = "Jungferninseln";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangDeu()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangDeu()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangDeu(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangDeu(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'et' locale", () {
          const expectedName = "Briti Neitsisaared";
          const expectedFullName = "Neitsisaared";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEst()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEst()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEst(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangEst(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'fi' locale", () {
          const expectedName = "Neitsytsaaret";
          const expectedFullName = "Brittiläiset Neitsytsaaret";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFin()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFin(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'fr' locale", () {
          const expectedName = "Îles Vierges britanniques";
          const expectedFullName = "îles Vierges";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFra()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFra(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFra(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'hr' locale", () {
          const expectedName = "Britanski Djevičanski Otoci";
          const expectedFullName = "Djevičanski Otoci";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHrv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHrv()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHrv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangHrv(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'hu' locale", () {
          const expectedName = "Brit Virgin-szigetek";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHun()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHun()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHun(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangHun(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'it' locale", () {
          const expectedName = "Isole Vergini Britanniche";
          const expectedFullName = "Isole Vergini";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIta()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIta()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIta(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangIta(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ja' locale", () {
          const expectedName = "イギリス領ヴァージン諸島";
          const expectedFullName = "バージン諸島";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangJpn()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangJpn()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangJpn(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangJpn(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ko' locale", () {
          const expectedName = "영국령 버진아일랜드";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKor()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangKor(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'nl' locale", () {
          const expectedName = "Britse Maagdeneilanden";
          const expectedFullName = "Maagdeneilanden";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNld()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNld()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNld(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangNld(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'fa' locale", () {
          const expectedName = "جزایر ویرجین بریتانیا";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFas()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangFas(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'pl' locale", () {
          const expectedName = "Brytyjskie Wyspy Dziewicze";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPol()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangPol(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'pt' locale", () {
          const expectedName = "Ilhas Virgens";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPor()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangPor(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ru' locale", () {
          const expectedName = "Британские Виргинские острова";
          const expectedFullName = "Виргинские острова";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangRus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangRus()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangRus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangRus(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'sk' locale", () {
          const expectedName = "Panenské ostrovy";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSlk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSlk()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSlk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSlk(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'es' locale", () {
          const expectedName = "Islas Vírgenes del Reino Unido";
          const expectedFullName = "Islas Vírgenes";
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSpa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSpa()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSpa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSpa(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'sv' locale", () {
          const expectedName = "Brittiska Jungfruöarna";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSwe()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSwe(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'tr' locale", () {
          const expectedName = "Virjin Adaları";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTur()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangTur(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'ur' locale", () {
          const expectedName = "برطانوی جزائر ورجن";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUrd()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangUrd(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'zh' locale", () {
          const expectedName = "英属维尔京群岛";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangZho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangZho()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangZho(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangZho(),
                name: expectedName,
                fullName: expectedFullName,
              ),
            ),
          );
        });
        test("has translation for 'af' locale", () {
          const expectedName = "Britse Maagde-eilande";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAfr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAfr()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAfr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAfr(), name: expectedName)),
          );
        });
        test("has translation for 'ak' locale", () {
          const expectedName = "Britainfo Virgin Islands";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAka()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAka()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAka(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAka(), name: expectedName)),
          );
        });
        test("has translation for 'am' locale", () {
          const expectedName = "የእንግሊዝ ቨርጂን ደሴቶች";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAmh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAmh()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAmh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAmh(), name: expectedName)),
          );
        });
        test("has translation for 'as' locale", () {
          const expectedName = "ব্ৰিটিছ ভাৰ্জিন দ্বীপপুঞ্জ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAsm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAsm()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAsm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAsm(), name: expectedName)),
          );
        });
        test("has translation for 'az' locale", () {
          const expectedName = "Britaniyanın Virgin adaları";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAze()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAze()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAze(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAze(), name: expectedName)),
          );
        });
        test("has translation for 'be' locale", () {
          const expectedName = "Брытанскія Віргінскія астравы";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBel()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBel(), name: expectedName)),
          );
        });
        test("has translation for 'bg' locale", () {
          const expectedName = "Британски Вирджински острови";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBul(), name: expectedName)),
          );
        });
        test("has translation for 'bm' locale", () {
          const expectedName = "Angilɛ ka Sungurunnin Gun";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBam()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBam()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBam(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBam(), name: expectedName)),
          );
        });
        test("has translation for 'bn' locale", () {
          const expectedName = "ব্রিটিশ ভার্জিন দ্বীপপুঞ্জ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBen()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBen()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBen(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBen(), name: expectedName)),
          );
        });
        test("has translation for 'bs' locale", () {
          const expectedName = "Britanska Djevičanska ostrva";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBos()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBos()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangBos(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBos(), name: expectedName)),
          );
        });
        test("has translation for 'ca' locale", () {
          const expectedName = "Illes Verges Britàniques";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangCat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangCat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangCat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCat(), name: expectedName)),
          );
        });
        test("has translation for 'ce' locale", () {
          const expectedName = "Виргинийн гӀайренаш (Британи)";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangChe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangChe()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangChe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChe(), name: expectedName)),
          );
        });
        test("has translation for 'da' locale", () {
          const expectedName = "De Britiske Jomfruøer";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangDan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangDan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangDan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDan(), name: expectedName)),
          );
        });
        test("has translation for 'dz' locale", () {
          const expectedName = "ཝརཇིན་གླིང་ཚོམ་ བྲཱི་ཊིཤ་མངའ་ཁོངས";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangDzo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangDzo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangDzo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDzo(), name: expectedName)),
          );
        });
        test("has translation for 'ee' locale", () {
          const expectedName = "Britaintɔwo ƒe Virgin ƒudomekpowo nutome";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEwe()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEwe(), name: expectedName)),
          );
        });
        test("has translation for 'el' locale", () {
          const expectedName = "Βρετανικές Παρθένες Νήσοι";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEll()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEll()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEll(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEll(), name: expectedName)),
          );
        });
        test("has translation for 'eo' locale", () {
          const expectedName = "Britaj Virgulininsuloj";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEpo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEpo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEpo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEpo(), name: expectedName)),
          );
        });
        test("has translation for 'eu' locale", () {
          const expectedName = "Birjina uharte britainiarrak";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangEus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangEus()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangEus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEus(), name: expectedName)),
          );
        });
        test("has translation for 'ff' locale", () {
          const expectedName = "duuɗe kecce britanii";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFul(), name: expectedName)),
          );
        });
        test("has translation for 'fo' locale", () {
          const expectedName = "Stóra Bretlands Jomfrúoyggjar";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFao()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFao(), name: expectedName)),
          );
        });
        test("has translation for 'fy' locale", () {
          const expectedName = "Britse Maagdeneilannen";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangFry()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangFry()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangFry(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFry(), name: expectedName)),
          );
        });
        test("has translation for 'ga' locale", () {
          const expectedName = "Oileáin Bhriotanacha na Maighdean";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGle()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGle()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGle(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGle(), name: expectedName)),
          );
        });
        test("has translation for 'gd' locale", () {
          const expectedName = "Eileanan Breatannach na Maighdinn";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGla()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGla()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGla(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGla(), name: expectedName)),
          );
        });
        test("has translation for 'gl' locale", () {
          const expectedName = "Illas Virxes Británicas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGlg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGlg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGlg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGlg(), name: expectedName)),
          );
        });
        test("has translation for 'gu' locale", () {
          const expectedName = "બ્રિટિશ વર્જિન આઇલેન્ડ્સ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangGuj()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangGuj()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangGuj(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangGuj(), name: expectedName)),
          );
        });
        test("has translation for 'ha' locale", () {
          const expectedName = "Tsibirin Birjin Na Birtaniya";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHau()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHau()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHau(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHau(), name: expectedName)),
          );
        });
        test("has translation for 'he' locale", () {
          const expectedName = "איי הבתולה הבריטיים";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHeb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHeb()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHeb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHeb(), name: expectedName)),
          );
        });
        test("has translation for 'hi' locale", () {
          const expectedName = "ब्रिटिश वर्जिन द्वीपसमूह";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHin(), name: expectedName)),
          );
        });
        test("has translation for 'hy' locale", () {
          const expectedName = "Բրիտանական Վիրջինյան կղզիներ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangHye()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangHye()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangHye(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHye(), name: expectedName)),
          );
        });
        test("has translation for 'id' locale", () {
          const expectedName = "Kepulauan Virgin Britania Raya";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangInd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangInd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangInd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangInd(), name: expectedName)),
          );
        });
        test("has translation for 'ig' locale", () {
          const expectedName = "Agwaetiti British Virgin";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIbo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIbo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIbo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIbo(), name: expectedName)),
          );
        });
        test("has translation for 'is' locale", () {
          const expectedName = "Bresku Jómfrúaeyjar";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIsl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIsl()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIsl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIsl(), name: expectedName)),
          );
        });
        test("has translation for 'jv' locale", () {
          const expectedName = "Kapuloan Virgin Britania";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangJav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangJav()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangJav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangJav(), name: expectedName)),
          );
        });
        test("has translation for 'ka' locale", () {
          const expectedName = "ბრიტანეთის ვირჯინის კუნძულები";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKat(), name: expectedName)),
          );
        });
        test("has translation for 'ki' locale", () {
          const expectedName = "Visiwa vya Virgin vya Uingereza";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKik()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKik()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKik(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKik(), name: expectedName)),
          );
        });
        test("has translation for 'kk' locale", () {
          const expectedName = "Британдық Виргин аралдары";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKaz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKaz()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKaz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKaz(), name: expectedName)),
          );
        });
        test("has translation for 'km' locale", () {
          const expectedName = "កោះ​វឺជិន​ចក្រភព​អង់គ្លេស";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKhm()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKhm()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKhm(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKhm(), name: expectedName)),
          );
        });
        test("has translation for 'kn' locale", () {
          const expectedName = "ಬ್ರಿಟಿಷ್ ವರ್ಜಿನ್ ದ್ವೀಪಗಳು";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKan(), name: expectedName)),
          );
        });
        test("has translation for 'ks' locale", () {
          const expectedName = "بَرطانوی ؤرجِن جٔزیٖرٕ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKas()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKas(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKas(), name: expectedName)),
          );
        });
        test("has translation for 'ky' locale", () {
          const expectedName = "Виргин аралдары (Британия)";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKir()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKir(), name: expectedName)),
          );
        });
        test("has translation for 'lb' locale", () {
          const expectedName = "Britesch Joffereninselen";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLtz()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLtz()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLtz(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLtz(), name: expectedName)),
          );
        });
        test("has translation for 'lg' locale", () {
          const expectedName = "Bizinga ebya Virigini ebitwalibwa Bungereza";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLug()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLug()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLug(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLug(), name: expectedName)),
          );
        });
        test("has translation for 'ln' locale", () {
          const expectedName = "Bisanga bya Vierzi ya Angɛlɛtɛ́lɛ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLin(), name: expectedName)),
          );
        });
        test("has translation for 'lo' locale", () {
          const expectedName = "ໝູ່ເກາະ ເວີຈິນຂອງອັງກິດ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLao()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLao()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLao(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLao(), name: expectedName)),
          );
        });
        test("has translation for 'lt' locale", () {
          const expectedName = "Didžiosios Britanijos Mergelių Salos";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLit()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLit()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLit(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLit(), name: expectedName)),
          );
        });
        test("has translation for 'lu' locale", () {
          const expectedName = "Lutanda lua Vierzi wa Angeletele";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLub()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLub()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLub(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLub(), name: expectedName)),
          );
        });
        test("has translation for 'lv' locale", () {
          const expectedName = "Britu Virdžīnas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLav()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLav(), name: expectedName)),
          );
        });
        test("has translation for 'mg' locale", () {
          const expectedName = "Nosy britanika virijiny";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMlg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMlg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMlg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMlg(), name: expectedName)),
          );
        });
        test("has translation for 'mk' locale", () {
          const expectedName = "Британски Девствени Острови";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMkd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMkd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMkd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMkd(), name: expectedName)),
          );
        });
        test("has translation for 'ml' locale", () {
          const expectedName = "ബ്രിട്ടീഷ് വെർജിൻ ദ്വീപുകൾ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMal()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMal()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMal(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMal(), name: expectedName)),
          );
        });
        test("has translation for 'mn' locale", () {
          const expectedName = "Британийн Виржиний арлууд";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMon(), name: expectedName)),
          );
        });
        test("has translation for 'mr' locale", () {
          const expectedName = "ब्रिटिश व्हर्जिन बेटे";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMar()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMar()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMar(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMar(), name: expectedName)),
          );
        });
        test("has translation for 'ms' locale", () {
          const expectedName = "Kepulauan Virgin British";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMsa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMsa()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMsa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMsa(), name: expectedName)),
          );
        });
        test("has translation for 'mt' locale", () {
          const expectedName = "il-Gżejjer Verġni Brittaniċi";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMlt()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMlt()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMlt(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMlt(), name: expectedName)),
          );
        });
        test("has translation for 'my' locale", () {
          const expectedName = "ဗြိတိသျှ ဗာဂျင်း ကျွန်းစု";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMya()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMya()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMya(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMya(), name: expectedName)),
          );
        });
        test("has translation for 'nb' locale", () {
          const expectedName = "De britiske jomfruøyene";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNob()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNob()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNob(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNob(), name: expectedName)),
          );
        });
        test("has translation for 'ne' locale", () {
          const expectedName = "बेलायती भर्जिन टापुहरू";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNep()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNep()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNep(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNep(), name: expectedName)),
          );
        });
        test("has translation for 'nn' locale", () {
          const expectedName = "Dei britiske Jomfruøyane";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNno()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNno()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNno(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNno(), name: expectedName)),
          );
        });
        test("has translation for 'no' locale", () {
          const expectedName = "De britiske jomfruøyene";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangNor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangNor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangNor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNor(), name: expectedName)),
          );
        });
        test("has translation for 'or' locale", () {
          const expectedName = "ବ୍ରିଟିଶ୍‌ ଭର୍ଜିନ୍ ଦ୍ୱୀପପୁଞ୍ଜ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangOri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangOri()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangOri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOri(), name: expectedName)),
          );
        });
        test("has translation for 'pa' locale", () {
          const expectedName = "ਬ੍ਰਿਟਿਸ਼ ਵਰਜਿਨ ਟਾਪੂ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPan(), name: expectedName)),
          );
        });
        test("has translation for 'ps' locale", () {
          const expectedName = "بریتانوی ویګور ټاپوګان";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangPus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangPus()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangPus(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangPus(), name: expectedName)),
          );
        });
        test("has translation for 'qu' locale", () {
          const expectedName = "Islas Vírgenes Británicas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangQue()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangQue()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangQue(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangQue(), name: expectedName)),
          );
        });
        test("has translation for 'rm' locale", () {
          const expectedName = "Inslas Virginas Britannicas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangRoh()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangRoh()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangRoh(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRoh(), name: expectedName)),
          );
        });
        test("has translation for 'rn' locale", () {
          const expectedName = "Ibirwa by’isugi by’Abongereza";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangRun()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangRun()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangRun(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRun(), name: expectedName)),
          );
        });
        test("has translation for 'ro' locale", () {
          const expectedName = "Insulele Virgine Britanice";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangRon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangRon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangRon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRon(), name: expectedName)),
          );
        });
        test("has translation for 'sd' locale", () {
          const expectedName = "برطانوي ورجن ٻيٽ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSnd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSnd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSnd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSnd(), name: expectedName)),
          );
        });
        test("has translation for 'se' locale", () {
          const expectedName = "Brittania Virgin-sullot";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSme()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSme()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSme(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSme(), name: expectedName)),
          );
        });
        test("has translation for 'sg' locale", () {
          const expectedName = "Âzôâ Viîrîggo tî Anglëe";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSag()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSag()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSag(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSag(), name: expectedName)),
          );
        });
        test("has translation for 'si' locale", () {
          const expectedName = "බ්‍රිතාන්‍ය වර්ජින් දූපත්";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSin(), name: expectedName)),
          );
        });
        test("has translation for 'sl' locale", () {
          const expectedName = "Britanski Deviški otoki";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSlv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSlv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSlv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSlv(), name: expectedName)),
          );
        });
        test("has translation for 'sn' locale", () {
          const expectedName = "Zvitsuwa zveHingirandi";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSna()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSna()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSna(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSna(), name: expectedName)),
          );
        });
        test("has translation for 'so' locale", () {
          const expectedName = "Biritish Farjin Island";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSom()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSom()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSom(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSom(), name: expectedName)),
          );
        });
        test("has translation for 'sq' locale", () {
          const expectedName = "Ishujt e Virgjër Britanikë";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSqi()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSqi()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSqi(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSqi(), name: expectedName)),
          );
        });
        test("has translation for 'sw' locale", () {
          const expectedName = "Visiwa vya Virgin vya Uingereza";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSwa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSwa()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSwa(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSwa(), name: expectedName)),
          );
        });
        test("has translation for 'ta' locale", () {
          const expectedName = "பிரிட்டீஷ் கன்னித் தீவுகள்";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTam()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTam()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTam(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTam(), name: expectedName)),
          );
        });
        test("has translation for 'te' locale", () {
          const expectedName = "బ్రిటిష్ వర్జిన్ దీవులు";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTel()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTel()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTel(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTel(), name: expectedName)),
          );
        });
        test("has translation for 'tg' locale", () {
          const expectedName = "Ҷазираҳои Виргини Британия";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTgk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTgk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTgk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgk(), name: expectedName)),
          );
        });
        test("has translation for 'th' locale", () {
          const expectedName = "หมู่เกาะบริติชเวอร์จิน";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTha()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTha()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTha(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTha(), name: expectedName)),
          );
        });
        test("has translation for 'ti' locale", () {
          const expectedName = "ቨርጂን ደሴታት እንግሊዝ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTir()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTir()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTir(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTir(), name: expectedName)),
          );
        });
        test("has translation for 'tk' locale", () {
          const expectedName = "Britan Wirgin adalary";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTuk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTuk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTuk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTuk(), name: expectedName)),
          );
        });
        test("has translation for 'to' locale", () {
          const expectedName = "ʻOtumotu Vilikini fakapilitānia";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTon()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTon()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTon(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTon(), name: expectedName)),
          );
        });
        test("has translation for 'tt' locale", () {
          const expectedName = "Британия Виргин утраулары";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTat(), name: expectedName)),
          );
        });
        test("has translation for 'ug' locale", () {
          const expectedName = "ئەنگلىيە ۋىرگىن ئاراللىرى";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUig()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUig()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUig(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUig(), name: expectedName)),
          );
        });
        test("has translation for 'uk' locale", () {
          const expectedName = "Британські Віргінські острови";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUkr()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUkr()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUkr(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUkr(), name: expectedName)),
          );
        });
        test("has translation for 'uz' locale", () {
          const expectedName = "Britaniya Virgin orollari";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUzb()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUzb()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangUzb(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangUzb(), name: expectedName)),
          );
        });
        test("has translation for 'vi' locale", () {
          const expectedName = "Quần đảo Virgin thuộc Anh";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangVie()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangVie()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangVie(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangVie(), name: expectedName)),
          );
        });
        test("has translation for 'wo' locale", () {
          const expectedName = "Duni Wirsin yu Brëtaañ";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangWol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangWol()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangWol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangWol(), name: expectedName)),
          );
        });
        test("has translation for 'yo' locale", () {
          const expectedName = "Orílẹ́ède Etíkun Fágínì ti ìlú Bírítísì";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangYor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangYor()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangYor(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangYor(), name: expectedName)),
          );
        });
        test("has translation for 'zu' locale", () {
          const expectedName = "i-British Virgin Islands";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangZul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangZul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangZul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZul(), name: expectedName)),
          );
        });
        test("has translation for 'la' locale", () {
          const expectedName = "Britannicae Virginis Insulae";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangLat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangLat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangLat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLat(), name: expectedName)),
          );
        });
        test("has translation for 'cv' locale", () {
          const expectedName = "Британин Виргини утравӗсем";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangChv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangChv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangChv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChv(), name: expectedName)),
          );
        });
        test("has translation for 'ia' locale", () {
          const expectedName = "Insulas Virgine britannic";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIna()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIna()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIna(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIna(), name: expectedName)),
          );
        });
        test("has translation for 'ku' locale", () {
          const expectedName = "Giravên Vîrjînê yên Brîtanyayê";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKur()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKur(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKur(), name: expectedName)),
          );
        });
        test("has translation for 'mi' locale", () {
          const expectedName = "Ngā Moutere Puhi Piritene";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMri()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMri()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangMri(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMri(), name: expectedName)),
          );
        });
        test("has translation for 'sc' locale", () {
          const expectedName = "Ìsulas Vèrgines Britànnicas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSrd()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangSrd(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSrd(), name: expectedName)),
          );
        });
        test("has translation for 'xh' locale", () {
          const expectedName = "EBritish Virgin Islands";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangXho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangXho()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangXho(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangXho(), name: expectedName)),
          );
        });
        test("has translation for 'ab' locale", () {
          const expectedName = "Виргинтәи ад-хақәа (Британиаду)";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAbk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAbk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangAbk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAbk(), name: expectedName)),
          );
        });
        test("has translation for 'an' locale", () {
          const expectedName = "Islas Virchens Britanicas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangArg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangArg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangArg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangArg(), name: expectedName)),
          );
        });
        test("has translation for 'ie' locale", () {
          const expectedName = "Insules Vírginas (UR)";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangIle()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangIle()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangIle(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIle(), name: expectedName)),
          );
        });
        test("has translation for 'oc' locale", () {
          const expectedName = "Illas Verges britanicas";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangOci()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangOci()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangOci(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOci(), name: expectedName)),
          );
        });
        test("has translation for 'tl' locale", () {
          const expectedName = "British Virgin Islands";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangTgl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangTgl()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangTgl(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgl(), name: expectedName)),
          );
        });
        test("has translation for 'az_Cyrl' locale", () {
          const expectedName = "Британијанын Вирҝин адалары";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangAze(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangAze(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangAze(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'bs_Cyrl' locale", () {
          const expectedName = "Британска Дјевичанска острва";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangBos(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangBos(), script: ScriptCyrl()),
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
        test("has translation for 'mn_Cyrl' locale", () {
          const expectedName = "Британийн Виржиний Арлууд";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangMon(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangMon(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangMon(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'sw_KE' locale", () {
          const expectedName = "Visiwa vya Virgin vya Uingereza";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangSwa(), country: CountryKen()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangSwa(), country: CountryKen()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangSwa(),
                name: expectedName,
                countryCode: "KE",
              ),
            ),
          );
        });
        test("has translation for 'ug_Arab' locale", () {
          const expectedName = "ئەنگلىيەگە قاراشلىق ۋىرجىن ئارىلى";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUig(), script: ScriptArab()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUig(), script: ScriptArab()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangUig(),
                name: expectedName,
                script: ScriptArab(),
              ),
            ),
          );
        });
        test("has translation for 'uz_Cyrl' locale", () {
          const expectedName = "Британия Виргин ороллари";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangUzb(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangUzb(), script: ScriptCyrl()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangUzb(),
                name: expectedName,
                script: ScriptCyrl(),
              ),
            ),
          );
        });
        test("has translation for 'yo_BJ' locale", () {
          const expectedName = "Orílɛ́ède Etíkun Fágínì ti ìlú Bírítísì";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangYor(), country: CountryBen()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangYor(), country: CountryBen()),
          );
          expect(commonMapTranslation, expectedName);
          expect(
            value.translations,
            contains(
              const TranslatedName(
                LangYor(),
                name: expectedName,
                countryCode: "BJ",
              ),
            ),
          );
        });
      },
      tags: "generated",
    );
