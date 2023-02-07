import "package:countries_dart/src/helpers/extensions/world_country/name_extension.dart";
import "package:countries_dart/src/model/country/country.dart";
import "package:languages_dart/languages_dart.dart";
import "package:test/test.dart";

void main() => group("NameExtension", () {
      const allTranslatedLanguages = [
        LangAra,
        LangBre,
        LangCes,
        LangCym,
        LangDeu,
        LangEst,
        LangFas,
        LangFin,
        LangFra,
        LangHrv,
        LangHun,
        LangIta,
        LangJpn,
        LangKor,
        LangNld,
        LangPol,
        LangPor,
        LangRus,
        LangSlk,
        LangSpa,
        LangSrp,
        LangSwe,
        LangTur,
        LangUrd,
        LangZho,
      ];

      group("nameTranslated", () {
        test("all translated languages", () {
          final map = <Type, int>{};
          for (final language in NaturalLanguage.list) {
            map[language.runtimeType] = 0;
            for (final country in WorldCountry.list) {
              final countryName = country.nameTranslated(language);
              if (countryName != null) {
                map[language.runtimeType] = map[language.runtimeType]! + 1;
              }
            }
          }
          map.removeWhere((key, value) => value == 0);
          expect(map.keys, containsAll(allTranslatedLanguages));
        });

        test(
          "with $Null input",
          () => expect(WorldCountry.list.first.nameTranslated(), isNull),
        );
      });

      group("namesCommonNative", () {
        final country = WorldCountry.list.first;

        test(
          "separator",
          () => expect(
            country.namesCommonNative(separator: "-"),
            """${country.namesNative.first.common}-${country.namesNative.last.common}""",
          ),
        );

        group("skipFirst", () {
          test(
            "with multiple names",
            () => expect(
              country.namesCommonNative(skipFirst: true),
              country.namesNative.last.common,
            ),
          );

          test(
            "with single name",
            () => expect(
              WorldCountry.list.elementAt(1).namesCommonNative(skipFirst: true),
              null,
            ),
          );
        });
      });

      group("translated getters", () {
        test("nameArabic", () {
          for (final country in WorldCountry.list) {
            expect(country.nameArabic, isNotNull);
          }
        });

        test("nameBreton", () {
          for (final country in WorldCountry.list) {
            expect(country.nameBreton, isNotNull);
          }
        });

        test("nameChinese", () {
          for (final country in WorldCountry.list) {
            expect(country.nameChinese, isNotNull);
          }
        });

        test("nameCroatian", () {
          for (final country in WorldCountry.list) {
            expect(country.nameCroatian, isNotNull);
          }
        });

        test("nameCzech", () {
          for (final country in WorldCountry.list) {
            expect(country.nameCzech, isNotNull);
          }
        });

        test("nameDutch", () {
          for (final country in WorldCountry.list) {
            expect(country.nameDutch, isNotNull);
          }
        });

        test("nameEnglish", () {
          for (final country in WorldCountry.list) {
            expect(country.nameEnglish, isNotNull);
          }
        });

        test("nameEstonian", () {
          for (final country in WorldCountry.list) {
            expect(country.nameEstonian, isNotNull);
          }
        });

        test("nameFinnish", () {
          for (final country in WorldCountry.list) {
            expect(country.nameFinnish, isNotNull);
          }
        });

        test("nameFrench", () {
          for (final country in WorldCountry.list) {
            expect(country.nameFrench, isNotNull);
          }
        });

        test("nameGerman", () {
          for (final country in WorldCountry.list) {
            expect(country.nameGerman, isNotNull);
          }
        });

        test("nameHungarian", () {
          for (final country in WorldCountry.list) {
            expect(country.nameHungarian, isNotNull);
          }
        });

        test("nameItalian", () {
          for (final country in WorldCountry.list) {
            expect(country.nameItalian, isNotNull);
          }
        });

        test("nameJapanese", () {
          for (final country in WorldCountry.list) {
            expect(country.nameJapanese, isNotNull);
          }
        });

        test("nameKorean", () {
          for (final country in WorldCountry.list) {
            expect(country.nameKorean, isNotNull);
          }
        });

        test("namePolish", () {
          for (final country in WorldCountry.list) {
            expect(country.namePolish, isNotNull);
          }
        });

        test("namePortuguese", () {
          for (final country in WorldCountry.list) {
            expect(country.namePortuguese, isNotNull);
          }
        });

        test("nameRussian", () {
          for (final country in WorldCountry.list) {
            expect(country.nameRussian, isNotNull);
          }
        });

        test("nameSlovak", () {
          for (final country in WorldCountry.list) {
            expect(country.nameSlovak, isNotNull);
          }
        });

        test("nameSpanish", () {
          for (final country in WorldCountry.list) {
            expect(country.nameSpanish, isNotNull);
          }
        });

        test("nameSwedish", () {
          for (final country in WorldCountry.list) {
            expect(country.nameSwedish, isNotNull);
          }
        });

        test("nameTurkish", () {
          for (final country in WorldCountry.list) {
            expect(country.nameTurkish, isNotNull);
          }
        });

        test("nameUrdu", () {
          for (final country in WorldCountry.list) {
            expect(country.nameUrdu, isNotNull);
          }
        });

        test("nameWelsh", () {
          for (final country in WorldCountry.list) {
            expect(country.nameWelsh, isNotNull);
          }
        });

        test("nameSerbian", () {
          for (final country in WorldCountry.list) {
            expect(country.nameSerbian, isNotNull);
          }
        });

        test("namePersian", () {
          for (final country in WorldCountry.list) {
            expect(country.namePersian, isNotNull);
          }
        });
      });
    });
