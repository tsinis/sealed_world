import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/src/model/language_family/submodels/natural_language_family.dart";
import "package:test/test.dart";

void main() => group("$NaturalLanguageFamily", () {
  final value = NaturalLanguageFamily.list.last;
  final array = {value, NaturalLanguageFamily.list.first};

  group("sealed switch expressions", () {
    // ignore: avoid-local-functions, it's a test.
    String? describe(NaturalLanguageFamily family) => switch (family) {
      IndoEuropean() => "indo-european",
      AfroAsiatic() => "afro-asiatic",
      NaturalLanguageFamily(:final name) when name.startsWith("U") =>
        "starts-with-u",
      // ignore: avoid-wildcard-cases-with-sealed-classes, it's a test.
      _ => null,
    };

    test("matches generated subtypes", () {
      expect(describe(const IndoEuropean()), "indo-european");
      expect(describe(const AfroAsiatic()), "afro-asiatic");
    });

    test(
      "matches guard on family name",
      () => expect(describe(const Uralic()), "starts-with-u"),
    );
  });

  group("fields", () {
    for (final element in NaturalLanguageFamily.list) {
      test(
        "of $NaturalLanguageFamily: ${element.name}",
        () => expect(element.name, isNotEmpty),
      );
    }
  });

  group("equality", () {
    test("basic", () {
      expect(NaturalLanguageFamily.list.first, isNot(equals(value)));
      expect(NaturalLanguageFamily.list.last, same(value));
      expect(
        NaturalLanguageFamily.fromName(NaturalLanguageFamily.list.last.name),
        same(value),
      );
      expect(
        NaturalLanguageFamily.fromName(NaturalLanguageFamily.list.last.name),
        same(NaturalLanguageFamily.list.last),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(NaturalLanguageFamily.fromName(array.first.name));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("fromName", () {
    test(
      "with proper name",
      () => expect(NaturalLanguageFamily.fromName(value.name), value),
    );

    test(
      "with wrong name",
      () => expect(
        () => NaturalLanguageFamily.fromName("Wrong Name"),
        throwsStateError,
      ),
    );

    assertTest(
      "with empty families",
      () => NaturalLanguageFamily.fromName(value.name, const []),
    );
  });

  group("maybeFromValue", () {
    test(
      "with proper value, without where",
      () => expect(NaturalLanguageFamily.maybeFromValue(value.name), value),
    );

    test(
      "with proper value, with where",
      () => expect(
        NaturalLanguageFamily.maybeFromValue(
          value.name,
          where: (fam) => fam.name,
        ),
        value,
      ),
    );

    test(
      "with wrong value, without where",
      () => expect(NaturalLanguageFamily.maybeFromValue(value), isNull),
    );

    test(
      "with wrong value, with where",
      () => expect(
        NaturalLanguageFamily.maybeFromValue(value, where: (fam) => fam.name),
        isNull,
      ),
    );

    assertTest(
      "with empty families",
      () =>
          NaturalLanguageFamily.maybeFromValue(value.name, families: const []),
    );

    test(
      "with custom families",
      () => expect(
        NaturalLanguageFamily.maybeFromValue(value.name, families: array),
        value,
      ),
    );
  });
});
