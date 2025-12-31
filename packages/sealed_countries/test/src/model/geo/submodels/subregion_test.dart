import "package:sealed_countries/src/model/geo/submodels/continent.dart";
import "package:sealed_countries/src/model/geo/submodels/subregion.dart";
import "package:test/test.dart";

void main() => group("$SubRegion", () {
  group("fromName", () {
    test("returns subregion regardless of casing", () {
      const expected = SouthAmerica();
      final lowerCased = expected.name.toLowerCase();

      expect(SubRegion.fromName(lowerCased), expected);
    });

    test(
      "throws when subregion unknown",
      () => expect(() => SubRegion.fromName("Atlantis"), throwsStateError),
    );
  });

  group("sealed switch expressions", () {
    // ignore: avoid-local-functions, it's a test.
    String describe(SubRegion region) => switch (region) {
      NorthAmerica() => "north-america",
      CentralEurope() => "central-europe",
      SubRegion(:final continent) when continent is Asia =>
        "asia-${region.name}",
      // ignore: avoid-wildcard-cases-with-sealed-classes, it's a test.
      _ => "other",
    };

    test("matches generated subtypes", () {
      expect(describe(const NorthAmerica()), "north-america");
      expect(describe(const CentralEurope()), "central-europe");
      expect(describe(const Caribbean()), "other");
    });

    test(
      "matches Asian guard",
      () =>
          expect(describe(const SouthEasternAsia()), "asia-SouthEastern Asia"),
    );
  });
});
