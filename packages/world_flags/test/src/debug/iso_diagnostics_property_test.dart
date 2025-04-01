// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter/foundation.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/debug/iso_diagnostics_property.dart";

void main() => group("$IsoDiagnosticsProperty", () {
  // ignore: avoid-explicit-type-declaration, need this for the test.
  const WorldCountry? nullCountry = null;
  const stringCountry = "CountryGbr";
  const testCountry = CountryGbr();

  test("constructor creates a property with correct values", () {
    final property = IsoDiagnosticsProperty(testCountry);

    expect(property.name, stringCountry);
    expect(property.value, testCountry);
    expect(property.expandableValue, isTrue);
    expect(property.tooltip, "ISO $stringCountry object");
    expect(property.ifNull, "$stringCountry is not provided");
  });

  test("constructor accepts optional parameters", () {
    final property = IsoDiagnosticsProperty(
      testCountry,
      additionalData: "🇬🇧",
      expandableValue: false,
      level: DiagnosticLevel.debug,
    );

    expect(property.expandableValue, isFalse);
    expect(property.level, DiagnosticLevel.debug);
    expect(property.valueToString(), contains("🇬🇧"));
  });

  group("toJsonMap", () {
    test("returns correct JSON for non-null ISO object", () {
      final property = IsoDiagnosticsProperty(
        testCountry,
        additionalData: "🇬🇧",
      );
      final json = property.toJsonMap(const DiagnosticsSerializationDelegate());

      expect(json["name"], testCountry.internationalName);
      expect(json["code"], testCountry.code);
      expect(json["unit"], testCountry.codeOther);
      expect(json["data"], "🇬🇧");
    });

    test("returns correct JSON without additionalData", () {
      final property = IsoDiagnosticsProperty(testCountry);
      final json = property.toJsonMap(const DiagnosticsSerializationDelegate());

      expect(json["name"], testCountry.internationalName);
      expect(json["code"], testCountry.code);
      expect(json["unit"], testCountry.codeOther);
      expect(json.containsKey("data"), isFalse);
    });

    test("returns correct JSON for null value", () {
      final property = IsoDiagnosticsProperty(nullCountry);
      final json = property.toJsonMap(const DiagnosticsSerializationDelegate());

      expect(json.containsKey("name"), isFalse);
      expect(json.containsKey("code"), isFalse);
      expect(json.containsKey("unit"), isFalse);
      expect(json.containsKey("data"), isFalse);
    });
  });

  group("valueToString", () {
    test(
      "returns correct string for non-null ISO object with additionalData",
      () {
        final property = IsoDiagnosticsProperty(
          testCountry,
          additionalData: "🇬🇧",
        );
        final string = property.valueToString();

        expect(
          string,
          "🇬🇧 ${testCountry.internationalName} ${testCountry.code}/${testCountry.codeOther}",
        );
      },
    );

    test(
      "returns correct string for non-null ISO object without additionalData",
      () {
        final property = IsoDiagnosticsProperty(testCountry);
        final string = property.valueToString();

        expect(
          string,
          "${testCountry.internationalName} ${testCountry.code}/${testCountry.codeOther}",
        );
      },
    );

    test('returns "null" for null value', () {
      final property = IsoDiagnosticsProperty(nullCountry);
      final string = property.valueToString();

      expect(string, "null");
    });
  });

  test("_toString handles trimming leading spaces correctly", () {
    expect(IsoDiagnosticsProperty(nullCountry).valueToString(), "null");

    final propertyNoAdditional = IsoDiagnosticsProperty(testCountry);
    expect(
      propertyNoAdditional.valueToString(),
      "${testCountry.internationalName} ${testCountry.code}/${testCountry.codeOther}",
    );

    final propertyWithAdditionalData = IsoDiagnosticsProperty(
      testCountry,
      additionalData: "🇬🇧",
    );
    expect(
      propertyWithAdditionalData.valueToString(),
      "🇬🇧 ${testCountry.internationalName} ${testCountry.code}/${testCountry.codeOther}",
    );
  });
});
