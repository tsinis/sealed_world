import "dart:convert";

import "package:sealed_countries/src/model/regional_bloc/world_bloc.dart";
import "package:test/test.dart";

import "../../test_data.dart";

void main() => group("$RegionalBloc", () {
      final value = RegionalBloc.list.last;
      final array = {value, RegionalBloc.list.first};

      group("fromName", () {
        test(
          "with proper name",
          () => expect(RegionalBloc.fromName(value.name), value),
        );

        test(
          "with wrong name",
          () => expect(
            () => RegionalBloc.fromName(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("fromAcronym", () {
        for (final element in RegionalBloc.list) {
          test(
            "${element.acronym} from map",
            () => expect(RegionalBloc.fromAcronym(element.acronym), element),
          );
        }

        test(
          "with proper acronym",
          () => expect(
            RegionalBloc.fromAcronym(value.acronym, RegionalBloc.list),
            value,
          ),
        );

        test(
          "with wrong acronym",
          () => expect(
            () => RegionalBloc.fromAcronym(value.toString(), RegionalBloc.list),
            throwsStateError,
          ),
        );
      });

      group("maybeFromAcronym", () {
        for (final element in RegionalBloc.list) {
          test(
            "${element.acronym} from map",
            () => expect(
              RegionalBloc.maybeFromAcronym(element.acronym),
              element,
            ),
          );
        }

        test(
          "with proper acronym",
          () => expect(RegionalBloc.maybeFromAcronym(value.acronym), value),
        );

        test(
          "with null input",
          () => expect(RegionalBloc.maybeFromAcronym(null), isNull),
        );

        test(
          "with wrong acronym and map",
          () => expect(
            RegionalBloc.maybeFromAcronym(value.toString()),
            isNull,
          ),
        );

        test(
          "with wrong acronym and list",
          () => expect(
            RegionalBloc.maybeFromAcronym(value.toString(), RegionalBloc.list),
            isNull,
          ),
        );
      });

      group("maybeFromValue", () {
        test(
          "with proper value, without where",
          () => expect(RegionalBloc.maybeFromValue(value.acronym), value),
        );

        test(
          "with proper value, with where",
          () => expect(
            RegionalBloc.maybeFromValue(
              value.name,
              where: (bloc) => bloc.name,
            ),
            value,
          ),
        );

        test(
          "with wrong value, without where",
          () => expect(RegionalBloc.maybeFromValue(value), isNull),
        );

        test(
          "with wrong value, with where",
          () => expect(
            RegionalBloc.maybeFromValue(
              value,
              where: (bloc) => bloc.toString(),
            ),
            isNull,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => RegionalBloc.maybeFromValue(
              value.name,
              regionalBlocs: const [],
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "with custom countries",
          () => expect(
            RegionalBloc.maybeFromValue(value.acronym, regionalBlocs: array),
            value,
          ),
        );
      });

      test("toString", () {
        final withOtherAcronyms =
            RegionalBloc.list.firstWhere((bloc) => bloc.otherAcronyms != null);
        expect(
          withOtherAcronyms.toString(short: false),
          contains(jsonEncode(withOtherAcronyms.otherAcronyms)),
        );
        expect(
          withOtherAcronyms
              .toString()
              .contains(jsonEncode(withOtherAcronyms.otherAcronyms)),
          isFalse,
        );
      });

      group("asserts", () {
        test(
          "acronym length",
          () => expect(
            () => RegionalBloc(
              acronym: TestData.emptyString,
              name: TestData.string,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "name length",
          () => expect(
            () => RegionalBloc(
              acronym: TestData.string,
              name: TestData.emptyString,
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("equality", () {
        test("basic", () {
          expect(RegionalBloc.list.first, isNot(equals(value)));
          expect(RegionalBloc.list.last, same(value));
          expect(RegionalBloc.fromName(array.first.name), same(value));
          expect(
            RegionalBloc.fromName(RegionalBloc.list.last.name),
            same(RegionalBloc.list.last),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(RegionalBloc.fromName(array.first.name));
          expect(array.length, 2);
        });
      });
    });
