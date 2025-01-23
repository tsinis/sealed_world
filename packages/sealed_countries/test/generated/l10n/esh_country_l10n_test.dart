// ignore_for_file: lines_longer_than_80_chars, avoid-non-ascii-symbols

import "package:sealed_countries/src/data/official_world_countries.data.dart";
import "package:sealed_countries/src/model/locale/basic_typed_locale.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group(
      "$CountryEsh() L10N",
      () {
        const value = CountryEsh();

        test("has translation for 'en' locale", () {
          const expectedName = "Western Sahara";
          const expectedFullName = "Sahrawi Arab Democratic Republic";
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
          const expectedName = "Сахарска Република";
          const expectedFullName = "Сахарска Арапска Демократска Република";
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
          const expectedName = "الصحراء الغربية";
          const expectedFullName = "الجمهورية العربية الصحراوية الديمقراطية";
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
          const expectedName = "Sahara ar C'hornôg";
          const expectedFullName = "Republik Arab Saharaoui Demokratel";
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
          const expectedName = "Západní Sahara";
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
          const expectedName = "Western Sahara";
          const expectedFullName = "Sahrawi Arab Democratic Republic";
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
          const expectedName = "Westsahara";
          const expectedFullName = "Demokratische Arabische Republik Sahara";
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
          const expectedName = "Lääne-Sahara";
          const expectedFullName = expectedName;
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
          const expectedName = "Länsi-Sahara";
          const expectedFullName = expectedName;
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
          const expectedName = "Sahara Occidental";
          const expectedFullName = "République arabe sahraouie démocratique";
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
          const expectedName = "Zapadna Sahara";
          const expectedFullName = "Sahrawi Arab Demokratska Republika";
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
          const expectedName = "Nyugat-Szahara";
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
          const expectedName = "Sahara Occidentale";
          const expectedFullName = "Repubblica Araba Saharawi Democratica";
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
          const expectedName = "西サハラ";
          const expectedFullName = "サハラアラブ民主共和国";
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
          const expectedName = "서사하라";
          const expectedFullName = "사하라 아랍 민주 공화국";
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
          const expectedName = "Westelijke Sahara";
          const expectedFullName = "Sahrawi Arabische Democratische Republiek";
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
          const expectedName = "صحرای غربی";
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
          const expectedName = "Sahara Zachodnia";
          const expectedFullName = "Saharyjska Arabska Republika Demokratyczna";
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
          const expectedName = "Saara Ocidental";
          const expectedFullName = "República Árabe Saharaui Democrática";
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
          const expectedName = "Западная Сахара";
          const expectedFullName =
              "Сахарская Арабская Демократическая Республика";
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
          const expectedName = "Západná Sahara";
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
          const expectedName = "Sahara Occidental";
          const expectedFullName = "República Árabe Saharaui Democrática";
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
          const expectedName = "Västsahara";
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
          const expectedName = "Sahra Demokratik Arap Cumhuriyeti";
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
          const expectedName = "مغربی صحارا";
          const expectedFullName = "صحراوی عرب عوامی جمہوریہ";
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
          const expectedName = "西撒哈拉";
          const expectedFullName = "阿拉伯撒哈拉民主共和国";
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
          const expectedName = "Wes-Sahara";

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
        test("has translation for 'am' locale", () {
          const expectedName = "ምዕራባዊ ሳህራ";

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
          const expectedName = "পশ্চিমীয় ছাহাৰা";

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
          const expectedName = "Qərbi Saxara";

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
          const expectedName = "Заходняя Сахара";

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
          const expectedName = "Западна Сахара";

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
        test("has translation for 'bn' locale", () {
          const expectedName = "পশ্চিম সাহারা";

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
          const expectedName = "Zapadna Sahara";

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
          const expectedName = "Sàhara Occidental";

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
          const expectedName = "Малхбузен Саьхьара";

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
          const expectedName = "Vestsahara";

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
          const expectedName = "ནུབ་ཕྱོགས་ ས་ཧཱ་ར";

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
          const expectedName = "Ɣetoɖoƒe Sahara nutome";

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
          const expectedName = "Δυτική Σαχάρα";

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
          const expectedName = "Okcidenta Saharo";

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
          const expectedName = "Mendebaldeko Sahara";

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
        test("has translation for 'fo' locale", () {
          const expectedName = "Vestursahara";

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
          const expectedName = "Westelijke Sahara";

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
          const expectedName = "an Sahára Thiar";

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
          const expectedName = "Sathara an Iar";

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
          const expectedName = "O Sáhara Occidental";

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
          const expectedName = "પશ્ચિમી સહારા";

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
        test("has translation for 'he' locale", () {
          const expectedName = "סהרה המערבית";

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
          const expectedName = "पश्चिमी सहारा";

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
          const expectedName = "Արևմտյան Սահարա";

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
        test("has translation for 'ia' locale", () {
          const expectedName = "Sahara occidental";

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
        test("has translation for 'id' locale", () {
          const expectedName = "Sahara Barat";

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
          const expectedName = "Ọdịda Anyanwụ Sahara";

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
          const expectedName = "Vestur-Sahara";

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
          const expectedName = "Sahara Kulon";

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
          const expectedName = "დასავლეთ საჰარა";

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
        test("has translation for 'kk' locale", () {
          const expectedName = "Батыс Сахара";

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
          const expectedName = "សាហារ៉ាខាងលិច";

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
          const expectedName = "ಪಶ್ಚಿಮ ಸಹಾರಾ";

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
          const expectedName = "مشرِقی سَہارا";

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
        test("has translation for 'ku' locale", () {
          const expectedName = "Sahraya Rojava";

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
        test("has translation for 'ky' locale", () {
          const expectedName = "Батыш Сахара";

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
          const expectedName = "Westsahara";

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
        test("has translation for 'lo' locale", () {
          const expectedName = "ຊາຮາຣາຕາເວັນຕົກ";

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
          const expectedName = "Vakarų Sachara";

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
        test("has translation for 'lv' locale", () {
          const expectedName = "Rietumsahāra";

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
        test("has translation for 'mk' locale", () {
          const expectedName = "Западна Сахара";

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
          const expectedName = "പശ്ചിമ സഹാറ";

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
          const expectedName = "Баруун Сахар";

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
          const expectedName = "पश्चिम सहारा";

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
          const expectedName = "Sahara Barat";

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
          const expectedName = "is-Saħara tal-Punent";

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
          const expectedName = "အနောက် ဆာဟာရ";

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
          const expectedName = "Vest-Sahara";

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
          const expectedName = "पश्चिमी साहारा";

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
          const expectedName = "Vest-Sahara";

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
          const expectedName = "Vest-Sahara";

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
          const expectedName = "ପଶ୍ଚିମ ସାହାରା";

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
          const expectedName = "ਪੱਛਮੀ ਸਹਾਰਾ";

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
          const expectedName = "لويديځ صحارا";

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
          const expectedName = "Sahara Occidental";

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
          const expectedName = "Sahara Occidentala";

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
        test("has translation for 'ro' locale", () {
          const expectedName = "Sahara Occidentală";

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
          const expectedName = "اولهه صحارا";

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
          const expectedName = "Oarje-Sahára";

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
        test("has translation for 'si' locale", () {
          const expectedName = "බටහිර සහරාව";

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
          const expectedName = "Zahodna Sahara";

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
        test("has translation for 'so' locale", () {
          const expectedName = "Saxaraha Galbeed";

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
          const expectedName = "Saharaja Perëndimore";

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
          const expectedName = "Sahara Magharibi";

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
          const expectedName = "மேற்கு சஹாரா";

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
          const expectedName = "పడమటి సహారా";

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
        test("has translation for 'th' locale", () {
          const expectedName = "ซาฮาราตะวันตก";

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
          const expectedName = "ምዕራባዊ ሳህራ";

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
          const expectedName = "Günbatar Sahara";

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
          const expectedName = "Sahala fakahihifo";

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
        test("has translation for 'ug' locale", () {
          const expectedName = "غەربىي ساخارا";

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
          const expectedName = "Західна Сахара";

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
          const expectedName = "G‘arbiy Sahroi Kabir";

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
          const expectedName = "Tây Sahara";

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
        test("has translation for 'yo' locale", () {
          const expectedName = "Ìwọ̀òòrùn Sàhárà";

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
          const expectedName = "i-Western Sahara";

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
        test("has translation for 'cv' locale", () {
          const expectedName = "Анӑҫ Сахара";

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
        test("has translation for 'ff' locale", () {
          const expectedName = "𞤅𞤢𞥄𞤸𞤢𞤪𞤢 𞤖𞤭𞥅𞤲𞤢𞥄𞤪𞤭";

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
        test("has translation for 'ha' locale", () {
          const expectedName = "Yammacin Sahara";

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
        test("has translation for 'mi' locale", () {
          const expectedName = "Hahāra ki te Tonga";

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
          const expectedName = "Sahara otzidentale";

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
        test("has translation for 'tl' locale", () {
          const expectedName = "Kanlurang Sahara";

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
        test("has translation for 'xh' locale", () {
          const expectedName = "EWestern Sahara";

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
          const expectedName = "Мраҭашәаратәи Сахара";

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
          const expectedName = "Sahara occidental";

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
          const expectedName = "West-Sahara";

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
        test("has translation for 'kl' locale", () {
          const expectedName = "Sahara Killiit";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangKal()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangKal()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangKal(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangKal(), name: expectedName)),
          );
        });
        test("has translation for 'la' locale", () {
          const expectedName = "Sahara Occidentalis";

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
        test("has translation for 'ln' locale", () {
          const expectedName = "Sahara ya Limbɛ";

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
        test("has translation for 'oc' locale", () {
          const expectedName = "Saharà occidental";

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
        test("has translation for 'za' locale", () {
          const expectedName = "Sih Sahhahlah";

          final translated = value.maybeTranslation(
            const BasicTypedLocale(LangZha()),
            useLanguageFallback: false,
          );

          expect(translated?.name, expectedName);
          final commonMapTranslation = value.maybeCommonNameFor(
            const BasicTypedLocale(LangZha()),
          );
          expect(commonMapTranslation, expectedName);
          final unexpectedScriptTranslation = value.maybeTranslation(
            const BasicTypedLocale(LangZha(), script: ScriptCyrs()),
          );

          expect(unexpectedScriptTranslation?.name, expectedName);
          expect(
            value.translations,
            contains(const TranslatedName(LangZha(), name: expectedName)),
          );
        });
        test("has translation for 'bs_Cyrl' locale", () {
          const expectedName = "Западна Сахара";

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
        test("has translation for 'uz_Cyrl' locale", () {
          const expectedName = "Ғарбий Саҳрои Кабир";

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
          const expectedName = "Ìwɔ̀òòrùn Sàhárà";

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
