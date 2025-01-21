// ignore_for_file: lines_longer_than_80_chars, avoid-non-ascii-symbols

import "package:sealed_countries/src/data/official_world_countries.data.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group(
      "$CountryIsr() L10N",
      () {
        const value = CountryIsr();

        test("has translation for 'en' locale", () {
          const expectedName = "Israel";
          const expectedFullName = "State of Israel";
          final translated = value.maybeTranslation(
            const BasicLocale(LangEng()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEng()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEng(), script: ScriptCyrs()),
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
          const expectedName = "Израел";
          const expectedFullName = "Држава Израел";
          final translated = value.maybeTranslation(
            const BasicLocale(LangSrp()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSrp()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSrp(), script: ScriptCyrs()),
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
          const expectedName = "إسرائيل";
          const expectedFullName = "دولة إسرائيل";
          final translated = value.maybeTranslation(
            const BasicLocale(LangAra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAra()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAra(), script: ScriptCyrs()),
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
          const expectedName = "Israel";
          const expectedFullName = "Stad Israel";
          final translated = value.maybeTranslation(
            const BasicLocale(LangBre()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBre()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBre(), script: ScriptCyrs()),
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
          const expectedName = "Izrael";
          const expectedFullName = "Stát Izrael";
          final translated = value.maybeTranslation(
            const BasicLocale(LangCes()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangCes()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCes(), script: ScriptCyrs()),
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
          const expectedName = "Israel";
          const expectedFullName = "State of Israel";
          final translated = value.maybeTranslation(
            const BasicLocale(LangCym()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangCym()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCym(), script: ScriptCyrs()),
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
          const expectedName = "Israel";
          const expectedFullName = "Staat Israel";
          final translated = value.maybeTranslation(
            const BasicLocale(LangDeu()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangDeu()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDeu(), script: ScriptCyrs()),
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
          const expectedName = "Iisrael";
          const expectedFullName = "Iisraeli Riik";
          final translated = value.maybeTranslation(
            const BasicLocale(LangEst()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEst()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEst(), script: ScriptCyrs()),
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
          const expectedName = "Israel";
          const expectedFullName = "Israelin valtio";
          final translated = value.maybeTranslation(
            const BasicLocale(LangFin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFin()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFin(), script: ScriptCyrs()),
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
          const expectedName = "Israël";
          const expectedFullName = "État d'Israël";
          final translated = value.maybeTranslation(
            const BasicLocale(LangFra()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFra()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFra(), script: ScriptCyrs()),
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
          const expectedName = "Izrael";
          const expectedFullName = "Država Izrael";
          final translated = value.maybeTranslation(
            const BasicLocale(LangHrv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHrv()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHrv(), script: ScriptCyrs()),
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
          const expectedName = "Izrael";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicLocale(LangHun()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHun()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHun(), script: ScriptCyrs()),
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
          const expectedName = "Israele";
          const expectedFullName = "Stato di Israele";
          final translated = value.maybeTranslation(
            const BasicLocale(LangIta()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangIta()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIta(), script: ScriptCyrs()),
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
          const expectedName = "イスラエル";
          const expectedFullName = "イスラエル国";
          final translated = value.maybeTranslation(
            const BasicLocale(LangJpn()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangJpn()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangJpn(), script: ScriptCyrs()),
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
          const expectedName = "이스라엘";
          const expectedFullName = "이스라엘국";
          final translated = value.maybeTranslation(
            const BasicLocale(LangKor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKor()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKor(), script: ScriptCyrs()),
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
          const expectedName = "Israël";
          const expectedFullName = "Staat Israël";
          final translated = value.maybeTranslation(
            const BasicLocale(LangNld()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNld()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNld(), script: ScriptCyrs()),
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
          const expectedName = "فلسطين اشغالی";
          const expectedFullName = expectedName;
          final translated = value.maybeTranslation(
            const BasicLocale(LangFas()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFas()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFas(), script: ScriptCyrs()),
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
          const expectedName = "Izrael";
          const expectedFullName = "Państwo Izrael";
          final translated = value.maybeTranslation(
            const BasicLocale(LangPol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangPol()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPol(), script: ScriptCyrs()),
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
          const expectedName = "Israel";
          const expectedFullName = "Estado de Israel";
          final translated = value.maybeTranslation(
            const BasicLocale(LangPor()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangPor()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangPor(), script: ScriptCyrs()),
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
          const expectedName = "Израиль";
          const expectedFullName = "Государство Израиль";
          final translated = value.maybeTranslation(
            const BasicLocale(LangRus()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangRus()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRus(), script: ScriptCyrs()),
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
          const expectedName = "Izrael";
          const expectedFullName = "Izraelský štát";
          final translated = value.maybeTranslation(
            const BasicLocale(LangSlk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSlk()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSlk(), script: ScriptCyrs()),
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
          const expectedName = "Israel";
          const expectedFullName = "Estado de Israel";
          final translated = value.maybeTranslation(
            const BasicLocale(LangSpa()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSpa()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSpa(), script: ScriptCyrs()),
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
          const expectedName = "Israel";
          const expectedFullName = "Staten Israel";
          final translated = value.maybeTranslation(
            const BasicLocale(LangSwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSwe()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSwe(), script: ScriptCyrs()),
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
          const expectedName = "İsrail";
          const expectedFullName = "İsrail Devleti";
          final translated = value.maybeTranslation(
            const BasicLocale(LangTur()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTur()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTur(), script: ScriptCyrs()),
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
          const expectedName = "اسرائیل";
          const expectedFullName = "ریاستِ اسرائیل";
          final translated = value.maybeTranslation(
            const BasicLocale(LangUrd()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangUrd()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangUrd(), script: ScriptCyrs()),
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
          const expectedName = "以色列";
          const expectedFullName = "以色列国";
          final translated = value.maybeTranslation(
            const BasicLocale(LangZho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangZho()),
          );
          expect(commonMapTranslation, expectedName);
          expect(translated?.fullName, expectedFullName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangZho(), script: ScriptCyrs()),
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
        test("has translation for 'am' locale", () {
          const expectedName = "እስራኤል";

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
        test("has translation for 'as' locale", () {
          const expectedName = "ইজৰাইল";

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
          const expectedName = "İsrail";

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
          const expectedName = "Ізраіль";

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
          const expectedName = "Израел";

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
        test("has translation for 'bm' locale", () {
          const expectedName = "Isirayeli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBam()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBam()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBam(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBam(), name: expectedName)),
          );
        });
        test("has translation for 'bn' locale", () {
          const expectedName = "ইজরায়েল";

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
        test("has translation for 'bs' locale", () {
          const expectedName = "Izrael";

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
        test("has translation for 'ce' locale", () {
          const expectedName = "Израиль";

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
        test("has translation for 'dz' locale", () {
          const expectedName = "ཨིས་ར་ཡེལ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangDzo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangDzo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDzo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDzo(), name: expectedName)),
          );
        });
        test("has translation for 'ee' locale", () {
          const expectedName = "Israel nutome";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEwe()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEwe()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEwe(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEwe(), name: expectedName)),
          );
        });
        test("has translation for 'el' locale", () {
          const expectedName = "Ισραήλ";

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
        test("has translation for 'eo' locale", () {
          const expectedName = "Israelo";

          final translated = value.maybeTranslation(
            const BasicLocale(LangEpo()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangEpo()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangEpo(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangEpo(), name: expectedName)),
          );
        });
        test("has translation for 'ff' locale", () {
          const expectedName = "Israa’iila";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFul()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFul()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFul(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFul(), name: expectedName)),
          );
        });
        test("has translation for 'fo' locale", () {
          const expectedName = "Ísrael";

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
        test("has translation for 'fy' locale", () {
          const expectedName = "Israël";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFry()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFry()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFry(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFry(), name: expectedName)),
          );
        });
        test("has translation for 'ga' locale", () {
          const expectedName = "Iosrael";

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
          const expectedName = "Iosrael";

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
        test("has translation for 'gu' locale", () {
          const expectedName = "ઇઝરાઇલ";

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
        test("has translation for 'ha' locale", () {
          const expectedName = "Iziraʼila";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHau()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHau()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHau(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHau(), name: expectedName)),
          );
        });
        test("has translation for 'he' locale", () {
          const expectedName = "ישראל";

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
          const expectedName = "इज़राइल";

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
        test("has translation for 'hy' locale", () {
          const expectedName = "Իսրայել";

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
        test("has translation for 'is' locale", () {
          const expectedName = "Ísrael";

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
        test("has translation for 'jv' locale", () {
          const expectedName = "Israèl";

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
          const expectedName = "ისრაელი";

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
        test("has translation for 'ki' locale", () {
          const expectedName = "Israeli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKik()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKik()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKik(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKik(), name: expectedName)),
          );
        });
        test("has translation for 'kk' locale", () {
          const expectedName = "Израиль";

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
          const expectedName = "អ៊ីស្រាអែល";

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
          const expectedName = "ಇಸ್ರೇಲ್";

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
        test("has translation for 'ks' locale", () {
          const expectedName = "اِسرایٖل";

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
          const expectedName = "Îsraêl";

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
        test("has translation for 'ky' locale", () {
          const expectedName = "Израиль";

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
        test("has translation for 'lg' locale", () {
          const expectedName = "Yisirayeri";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLug()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLug()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLug(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLug(), name: expectedName)),
          );
        });
        test("has translation for 'ln' locale", () {
          const expectedName = "Isirayelɛ";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLin(), name: expectedName)),
          );
        });
        test("has translation for 'lo' locale", () {
          const expectedName = "ອິສຣາເອວ";

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
          const expectedName = "Izraelis";

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
        test("has translation for 'lu' locale", () {
          const expectedName = "Isirayele";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLub()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLub()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLub(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLub(), name: expectedName)),
          );
        });
        test("has translation for 'lv' locale", () {
          const expectedName = "Izraēla";

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
        test("has translation for 'mg' locale", () {
          const expectedName = "Israely";

          final translated = value.maybeTranslation(
            const BasicLocale(LangMlg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangMlg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangMlg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangMlg(), name: expectedName)),
          );
        });
        test("has translation for 'mk' locale", () {
          const expectedName = "Израел";

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
          const expectedName = "ഇസ്രായേൽ";

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
          const expectedName = "Израиль";

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
          const expectedName = "इस्त्राइल";

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
        test("has translation for 'mt' locale", () {
          const expectedName = "Iżrael";

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
          const expectedName = "အစ္စရေး";

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
        test("has translation for 'nd' locale", () {
          const expectedName = "Isuraeli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNde()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNde()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNde(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNde(), name: expectedName)),
          );
        });
        test("has translation for 'ne' locale", () {
          const expectedName = "इजरायल";

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
        test("has translation for 'or' locale", () {
          const expectedName = "ଇସ୍ରାଏଲ୍";

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
          const expectedName = "ਇਜ਼ਰਾਈਲ";

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
        test("has translation for 'ps' locale", () {
          const expectedName = "اسراييل";

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
        test("has translation for 'rn' locale", () {
          const expectedName = "Isiraheli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangRun()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangRun()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangRun(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangRun(), name: expectedName)),
          );
        });
        test("has translation for 'sd' locale", () {
          const expectedName = "اسرائيل";

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
        test("has translation for 'sg' locale", () {
          const expectedName = "Israëli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSag()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSag()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSag(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSag(), name: expectedName)),
          );
        });
        test("has translation for 'si' locale", () {
          const expectedName = "ඊශ්‍රායලය";

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
        test("has translation for 'sl' locale", () {
          const expectedName = "Izrael";

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
        test("has translation for 'sn' locale", () {
          const expectedName = "Izuraeri";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSna()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSna()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSna(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSna(), name: expectedName)),
          );
        });
        test("has translation for 'so' locale", () {
          const expectedName = "Israaʼiil";

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
          const expectedName = "Izrael";

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
        test("has translation for 'sw' locale", () {
          const expectedName = "Israeli";

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
          const expectedName = "இஸ்ரேல்";

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
          const expectedName = "ఇజ్రాయెల్";

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
        test("has translation for 'tg' locale", () {
          const expectedName = "Исроил";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTgk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTgk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTgk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTgk(), name: expectedName)),
          );
        });
        test("has translation for 'th' locale", () {
          const expectedName = "อิสราเอล";

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
          const expectedName = "እስራኤል";

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
          const expectedName = "Ysraýyl";

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
        test("has translation for 'to' locale", () {
          const expectedName = "ʻIsileli";

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
        test("has translation for 'tt' locale", () {
          const expectedName = "Израиль";

          final translated = value.maybeTranslation(
            const BasicLocale(LangTat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangTat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangTat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangTat(), name: expectedName)),
          );
        });
        test("has translation for 'ug' locale", () {
          const expectedName = "ئىسرائىلىيە";

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
          const expectedName = "Ізраїль";

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
        test("has translation for 'uz' locale", () {
          const expectedName = "Isroil";

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
        test("has translation for 'wo' locale", () {
          const expectedName = "Israyel";

          final translated = value.maybeTranslation(
            const BasicLocale(LangWol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangWol()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangWol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangWol(), name: expectedName)),
          );
        });
        test("has translation for 'yi' locale", () {
          const expectedName = "ישראל";

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
          const expectedName = "Orílẹ́ède Iserẹli";

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
        test("has translation for 'zu' locale", () {
          const expectedName = "kwa-Israel";

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
        test("has translation for 'av' locale", () {
          const expectedName = "Гlизраил";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAva()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAva()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAva(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAva(), name: expectedName)),
          );
        });
        test("has translation for 'ba' locale", () {
          const expectedName = "Израиль";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBak()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBak()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBak(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBak(), name: expectedName)),
          );
        });
        test("has translation for 'bo' locale", () {
          const expectedName = "ཨི་སི་ར་ཨེལ།";

          final translated = value.maybeTranslation(
            const BasicLocale(LangBod()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangBod()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangBod(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangBod(), name: expectedName)),
          );
        });
        test("has translation for 'co' locale", () {
          const expectedName = "Israele";

          final translated = value.maybeTranslation(
            const BasicLocale(LangCos()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangCos()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangCos(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangCos(), name: expectedName)),
          );
        });
        test("has translation for 'cu' locale", () {
          const expectedName = "Їꙁдраил҄ь";

          final translated = value.maybeTranslation(
            const BasicLocale(LangChu()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangChu()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangChu(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChu(), name: expectedName)),
          );
        });
        test("has translation for 'cv' locale", () {
          const expectedName = "Израиль";

          final translated = value.maybeTranslation(
            const BasicLocale(LangChv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangChv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangChv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangChv(), name: expectedName)),
          );
        });
        test("has translation for 'dv' locale", () {
          const expectedName = "އިސްރާއީލު";

          final translated = value.maybeTranslation(
            const BasicLocale(LangDiv()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangDiv()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangDiv(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangDiv(), name: expectedName)),
          );
        });
        test("has translation for 'fj' locale", () {
          const expectedName = "Isireli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangFij()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangFij()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangFij(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangFij(), name: expectedName)),
          );
        });
        test("has translation for 'ht' locale", () {
          const expectedName = "Izrayèl";

          final translated = value.maybeTranslation(
            const BasicLocale(LangHat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangHat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangHat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangHat(), name: expectedName)),
          );
        });
        test("has translation for 'kv' locale", () {
          const expectedName = "Израиль";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKom()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKom()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKom(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKom(), name: expectedName)),
          );
        });
        test("has translation for 'kw' locale", () {
          const expectedName = "Ysrael";

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
        test("has translation for 'li' locale", () {
          const expectedName = "Israël";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLim()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLim()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLim(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLim(), name: expectedName)),
          );
        });
        test("has translation for 'mi' locale", () {
          const expectedName = "Iharaira";

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
        test("has translation for 'na' locale", () {
          const expectedName = "Iteraer";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNau()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNau()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNau(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNau(), name: expectedName)),
          );
        });
        test("has translation for 'nv' locale", () {
          const expectedName = "Ízrel Bikéyah";

          final translated = value.maybeTranslation(
            const BasicLocale(LangNav()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangNav()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangNav(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangNav(), name: expectedName)),
          );
        });
        test("has translation for 'oc' locale", () {
          const expectedName = "Israèl";

          final translated = value.maybeTranslation(
            const BasicLocale(LangOci()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangOci()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangOci(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOci(), name: expectedName)),
          );
        });
        test("has translation for 'os' locale", () {
          const expectedName = "Израиль";

          final translated = value.maybeTranslation(
            const BasicLocale(LangOss()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangOss()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangOss(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangOss(), name: expectedName)),
          );
        });
        test("has translation for 'qu' locale", () {
          const expectedName = "Israyil";

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
        test("has translation for 'rw' locale", () {
          const expectedName = "Isirayeli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKin()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKin()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKin(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKin(), name: expectedName)),
          );
        });
        test("has translation for 'sa' locale", () {
          const expectedName = "इस्रेल";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSan()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSan()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSan(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSan(), name: expectedName)),
          );
        });
        test("has translation for 'sc' locale", () {
          const expectedName = "Israele";

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
        test("has translation for 'ss' locale", () {
          const expectedName = "Ka-Israyeli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangSsw()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangSsw()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangSsw(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangSsw(), name: expectedName)),
          );
        });
        test("has translation for 'vo' locale", () {
          const expectedName = "Yisraelän";

          final translated = value.maybeTranslation(
            const BasicLocale(LangVol()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangVol()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangVol(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangVol(), name: expectedName)),
          );
        });
        test("has translation for 'wa' locale", () {
          const expectedName = "Israyel";

          final translated = value.maybeTranslation(
            const BasicLocale(LangWln()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangWln()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangWln(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangWln(), name: expectedName)),
          );
        });
        test("has translation for 'xh' locale", () {
          const expectedName = "E-Israel";

          final translated = value.maybeTranslation(
            const BasicLocale(LangXho()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangXho()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangXho(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangXho(), name: expectedName)),
          );
        });
        test("has translation for 'ab' locale", () {
          const expectedName = "Израиль";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAbk()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAbk()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangAbk(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangAbk(), name: expectedName)),
          );
        });
        test("has translation for 'af' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'an' locale", () {
          const expectedName = "Israel";

          final translated = value.maybeTranslation(
            const BasicLocale(LangArg()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangArg()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangArg(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangArg(), name: expectedName)),
          );
        });
        test("has translation for 'ca' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'da' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'eu' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'gl' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'ia' locale", () {
          const expectedName = "Israel";

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
          const expectedName = "Israel";

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
        test("has translation for 'ie' locale", () {
          const expectedName = "Israel";

          final translated = value.maybeTranslation(
            const BasicLocale(LangIle()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangIle()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangIle(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangIle(), name: expectedName)),
          );
        });
        test("has translation for 'ig' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'kl' locale", () {
          const expectedName = "Israel";

          final translated = value.maybeTranslation(
            const BasicLocale(LangKal()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangKal()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangKal(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKal(), name: expectedName)),
          );
        });
        test("has translation for 'la' locale", () {
          const expectedName = "Israël";

          final translated = value.maybeTranslation(
            const BasicLocale(LangLat()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangLat()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangLat(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangLat(), name: expectedName)),
          );
        });
        test("has translation for 'lb' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'ms' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'no' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'rm' locale", () {
          const expectedName = "Israel";

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
          const expectedName = "Israel";

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
        test("has translation for 'se' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'vi' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'za' locale", () {
          const expectedName = "Yijswzlez";

          final translated = value.maybeTranslation(
            const BasicLocale(LangZha()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangZha()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicLocale(LangZha(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZha(), name: expectedName)),
          );
        });
        test("has translation for 'nb' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'tl' locale", () {
          const expectedName = "Israel";

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
        test("has translation for 'az_Cyrl' locale", () {
          const expectedName = "Исраил";

          final translated = value.maybeTranslation(
            const BasicLocale(LangAze(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangAze(), script: ScriptCyrl()),
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
          const expectedName = "Израел";

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
        test("has translation for 'uz_Cyrl' locale", () {
          const expectedName = "Исроил";

          final translated = value.maybeTranslation(
            const BasicLocale(LangUzb(), script: ScriptCyrl()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangUzb(), script: ScriptCyrl()),
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
          const expectedName = "Orílɛ́ède Iserɛli";

          final translated = value.maybeTranslation(
            const BasicLocale(LangYor(), countryCode: "BJ"),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicLocale(LangYor(), countryCode: "BJ"),
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
