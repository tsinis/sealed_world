// ignore_for_file: prefer-class-destructuring

import "dart:ui";

import "package:flutter/foundation.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/debug/flag_properties_property.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/flag_elements_type.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/src/model/stripe_orientation.dart";

void main() => group("$FlagPropertiesProperty", () {
  const withElements = FlagProperties(
    [ColorsProperties(Color(0xFF000000)), ColorsProperties(Color(0xFFFFFFFF))],
    elementsProperties: [ElementsProperties(Color(0xFF000000), shape: Star())],
    baseElementType: FlagElementsType.star,
  );

  const flagWithoutElements = FlagProperties(
    [
      ColorsProperties(Color(0xFF0000FF)),
      ColorsProperties(Color(0xFFFFFFFF)),
      ColorsProperties(Color(0xFFFF0000)),
    ],
    aspectRatio: 2,
    stripeOrientation: StripeOrientation.vertical,
  );

  test("constructor creates a property with correct values", () {
    final property = FlagPropertiesProperty(withElements);

    expect(property.name, "flag properties");
    expect(property.value, withElements);
    expect(property.expandableValue, isTrue);
    expect(property.ifNull, "no flag properties");
  });

  test("constructor accepts optional parameters", () {
    final property = FlagPropertiesProperty(
      withElements,
      ifNull: "custom null message",
      expandableValue: false,
    );

    expect(property.ifNull, "custom null message");
    expect(property.expandableValue, isFalse);
  });

  group("toJsonMap", () {
    test("returns correct JSON for flag with elements", () {
      final property = FlagPropertiesProperty(withElements);
      final json = property.toJsonMap(const DiagnosticsSerializationDelegate());

      expect(json["aspectRatio"], 1.5);
      expect(json["orientation"], withElements.stripeOrientation.name);
      expect(json["baseElementType"], withElements.baseElementType?.name);
      expect(json["stripesCount"], 2);
      expect(json["elementsCount"], 1);
    });

    test("returns correct JSON for flag without elements", () {
      final property = FlagPropertiesProperty(flagWithoutElements);
      final json = property.toJsonMap(const DiagnosticsSerializationDelegate());

      expect(json["aspectRatio"], 2.0);
      expect(json["orientation"], flagWithoutElements.stripeOrientation.name);
      expect(
        json["baseElementType"],
        flagWithoutElements.baseElementType?.name,
      );
      expect(json["stripesCount"], 3);
      expect(json.containsKey("elementsCount"), isFalse);
    });
  });

  group("valueToString", () {
    test("returns correct string for flag with elements", () {
      final property = FlagPropertiesProperty(withElements);
      final string = property.valueToString();

      expect(string, contains("aspectRatio: 1.5"));
      expect(string, contains("stripeOrientation: horizontal"));
      expect(string, contains("baseElementType: star"));
      expect(string, contains("stripeColors: 2"));
      expect(string, contains("elementsProperties: 1"));
    });

    test("returns correct string for flag without elements", () {
      final property = FlagPropertiesProperty(flagWithoutElements);
      final string = property.valueToString();

      expect(string, contains("aspectRatio: 2"));
      expect(string, contains("stripeOrientation: vertical"));
      expect(string, contains("baseElementType: null"));
      expect(string, contains("stripeColors: 3"));
      expect(string, contains("has no foreground elementsProperties"));
    });
  });
});
