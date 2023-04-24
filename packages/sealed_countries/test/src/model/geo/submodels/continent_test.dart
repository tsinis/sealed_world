import "package:sealed_countries/src/model/geo/submodels/continent.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
void main() => group("$Continent", () {
      final value = Continent.list.last;
      final array = {value, Continent.list.first};

      group("fromName", () {
        test(
          "with proper name",
          () => expect(Continent.fromName(value.name), value),
        );

        test(
          "with wrong name",
          () => expect(
            () => Continent.fromName(value.toString()),
            throwsStateError,
          ),
        );
      });

      group("maybeFromValue", () {
        test(
          "with proper value, without where",
          () => expect(
            Continent.maybeFromValue(value.name),
            value,
          ),
        );

        test(
          "with proper value, with where",
          () => expect(
            Continent.maybeFromValue(
              value.name,
              where: (lang) => lang.name,
            ),
            value,
          ),
        );

        test(
          "with wrong value, without where",
          () => expect(
            Continent.maybeFromValue(value),
            isNull,
          ),
        );

        test(
          "with wrong value, with where",
          () => expect(
            Continent.maybeFromValue(
              value,
              where: (lang) => lang.toString(),
            ),
            isNull,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => Continent.maybeFromValue(
              value.name,
              continents: const [],
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "with custom countries",
          () => expect(
            Continent.maybeFromValue(value.name, continents: array),
            value,
          ),
        );
      });

      group("equality", () {
        test("basic", () {
          expect(Continent.list.first, isNot(equals(value)));
          expect(Continent.list.last, same(value));
          expect(Continent.fromName(array.first.name), same(value));
          expect(
            Continent.fromName(Continent.list.last.name),
            same(Continent.list.last),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length == 2, isTrue);
          array.addAll(List.of(array));
          expect(array.length == 2, isTrue);
          array.add(Continent.fromName(array.first.name));
          expect(array.length == 2, isTrue);
        });
      });
    });
