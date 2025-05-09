import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/model/geo/submodels/continent.dart";
import "package:test/test.dart";

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
      () =>
          expect(() => Continent.fromName(value.toString()), throwsStateError),
    );
  });

  group("maybeFromValue", () {
    test(
      "with proper value, without where",
      () => expect(Continent.maybeFromValue(value.name), value),
    );

    test(
      "with proper value, with where",
      () => expect(
        Continent.maybeFromValue(
          value.name,
          where: (continent) => continent.name,
        ),
        value,
      ),
    );

    test(
      "with wrong value, without where",
      () => expect(Continent.maybeFromValue(value), isNull),
    );

    test(
      "with wrong value, with where",
      () => expect(
        Continent.maybeFromValue(
          value,
          where: (continent) => continent.toString(),
        ),
        isNull,
      ),
    );

    assertTest(
      "with empty countries",
      () => Continent.maybeFromValue(value.name, continents: const []),
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
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(Continent.fromName(array.first.name));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });
});
