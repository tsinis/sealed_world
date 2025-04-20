// ignore_for_file: avoid-passing-default-values

import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/helpers/extensions/upper_case_iso_map_extension.dart";
import "package:sealed_languages/src/model/core/upper_case_iso_map.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("UpperCaseIsoMapExtension", () {
      const eng = "ENG";
      const nonEng = "DE";
      const defaultMap = <String, NaturalLanguage>{eng: LangEng()};
      const map = UpperCaseIsoMap(defaultMap, exactLength: null);

      test("codes", () => expect(map.codes, defaultMap.keys));

      group("copyWith", () {
        const mapOther = {"DEU": LangDeu(), "SPA": LangSpa()};

        test("should copy values from other map with exactLength", () {
          final copy = map.copyWith(mapOther);
          expect(copy[eng], const LangEng());
          expect(copy["spa"], const LangSpa());
          expect(copy[" dEU "], const LangDeu());
          expect(copy[nonEng], isNull);
          expect(copy.defaultValue, isNull);
          expect(copy.exactLength, eng.length);
        });

        test("should copy values from other map without exactLength", () {
          final copy = map.copyWith({nonEng: const LangDeu()});
          expect(copy[eng], const LangEng());
          expect(copy["spa"], isNull);
          expect(copy[nonEng], isNotNull);
          expect(copy.defaultValue, isNull);
          expect(copy.exactLength, isNull);
        });
      });

      group("findByCodeOrThrow", () {
        test("should return defaultValue when key is not present", () {
          const defaultValue = LangRus();
          const mapOther =
              UpperCaseIsoMap(defaultMap, defaultValue: defaultValue);
          expect(mapOther[nonEng], defaultValue);
          expect(mapOther.findByCodeOrThrow(nonEng), defaultValue);
        });

        test("should return null if there is no exactLength match", () {
          const mapOther = UpperCaseIsoMap(defaultMap, exactLength: 1);
          expect(mapOther[eng], isNull);
          expect(() => mapOther.findByCodeOrThrow(eng), throwsStateError);
        });

        test("should return null if there is no maxLength match", () {
          const mapOther = UpperCaseIsoMap(
            defaultMap,
            exactLength: null,
            maxLength: 2,
            minLength: 1,
          );
          expect(mapOther[eng], isNull);
          expect(() => mapOther.findByCodeOrThrow(eng), throwsStateError);
        });

        test("should return null if there is no minLength match", () {
          const mapOther = UpperCaseIsoMap(
            defaultMap,
            exactLength: null,
            maxLength: 5,
            minLength: 4,
          );
          expect(mapOther[eng], isNull);
          expect(() => mapOther.findByCodeOrThrow(eng), throwsStateError);
        });

        test(
          "should return null when key is not present and no defaultValue",
          () {
            expect(map[nonEng], isNull);
            expect(() => map.findByCodeOrThrow(nonEng), throwsStateError);
          },
        );

        test("should interpret keys as ISO standardized codes", () {
          expect(map[eng], isNotNull);
          expect(map.findByCodeOrThrow(eng).name, equals("English"));
        });
      });

      group("maybeFindByCode", () {
        test("should return defaultValue when key is not present", () {
          const defaultValue = LangRus();
          const mapOther =
              UpperCaseIsoMap(defaultMap, defaultValue: defaultValue);
          expect(mapOther[nonEng], defaultValue);
          expect(mapOther.maybeFindByCode(nonEng), defaultValue);
        });

        test("should return null if there is no exactLength match", () {
          const mapOther = UpperCaseIsoMap(defaultMap, exactLength: 1);
          expect(mapOther[eng], isNull);
          expect(mapOther.maybeFindByCode(eng), isNull);
        });

        test("should return null if there is no maxLength match", () {
          const mapOther = UpperCaseIsoMap(
            defaultMap,
            exactLength: null,
            maxLength: 2,
            minLength: 1,
          );
          expect(mapOther[eng], isNull);
          expect(mapOther.maybeFindByCode(eng), isNull);
        });

        test("should return null if there is no minLength match", () {
          const mapOther = UpperCaseIsoMap(
            defaultMap,
            exactLength: null,
            maxLength: 5,
            minLength: 4,
          );
          expect(mapOther[eng], isNull);
          expect(mapOther.maybeFindByCode(eng), isNull);
        });

        test(
          "should return null when key is not present and no defaultValue",
          () {
            expect(map[nonEng], isNull);
            expect(map.maybeFindByCode(nonEng), isNull);
          },
        );

        test("should interpret keys as ISO standardized codes", () {
          expect(map[eng], isNotNull);
          expect(map.maybeFindByCode(eng), isNotNull);
          expect(map.maybeFindByCode(eng)?.name, equals("English"));
        });
      });
    });
