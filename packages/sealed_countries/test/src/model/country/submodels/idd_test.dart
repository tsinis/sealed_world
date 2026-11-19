import "dart:convert";

import "package:sealed_countries/src/helpers/extensions/country_submodels/idd_extension.dart";
import "package:sealed_countries/src/model/country/submodels/idd.dart";
import "package:sealed_countries/src/model/country/submodels/world_country.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Idd", () {
  const value = Idd(root: TestData.integer, suffixes: [TestData.integer]);

  test(
    "not equal to other types",
    () => expect(value == TestData.object, isFalse),
  );

  group("equality", () {
    const other = Idd(root: TestData.integer + 1, suffixes: [TestData.integer]);
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(
        value,
        equals(Idd(root: array.first.root, suffixes: value.suffixes)),
      );
      expect(
        array.first,
        equals(Idd(root: value.root, suffixes: array.first.suffixes)),
      );
    });

    test("compares suffixes element by element", () {
      const first = Idd(root: TestData.integer, suffixes: [242]);
      const second = Idd(root: TestData.integer, suffixes: [246]);
      const reversed = Idd(root: TestData.integer, suffixes: [2, 1]);

      expect(first, isNot(equals(second)));
      expect(
        reversed,
        isNot(equals(const Idd(root: TestData.integer, suffixes: [1, 2]))),
      );
      expect(
        Idd(root: TestData.integer, suffixes: List.of(first.suffixes)),
        first,
      );
    });

    test("equal values have equal hash codes", () {
      final copy = Idd(root: value.root, suffixes: List.of(value.suffixes));

      expect(copy, value);
      expect(copy.hashCode, value.hashCode);
      expect({value, copy}, hasLength(1));
    });

    test("of countries sharing a root", () {
      const bahamas = CountryBhs();
      const barbados = CountryBrb();

      expect(bahamas.idd.root, barbados.idd.root);
      expect(bahamas.idd, isNot(equals(barbados.idd)));
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(Idd(root: value.root, suffixes: value.suffixes));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    test(
      "not",
      () => expect(
        () => Idd(root: value.root, suffixes: value.suffixes),
        returnsNormally,
      ),
    );

    test(
      "empty suffixes",
      () => expect(
        () => Idd(root: value.root, suffixes: const []),
        throwsA(isA<AssertionError>()),
      ),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      IddExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
