import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/decorated_flag_interface_extension.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/flags/iso/iso_flag.dart";

void main() => group("DecoratedFlagInterfaceExtension", () {
  group("calculatedAspectRatio", () {
    test("returns width / height when both are provided", () {
      const flag = IsoFlag(
        FiatEur(),
        <FiatCurrency, BasicFlag>{},
        height: 100,
        width: 200,
      );

      expect(flag.calculatedAspectRatio, 2);
    });

    test("returns null when height is null", () {
      const flag = IsoFlag(FiatEur(), <FiatCurrency, BasicFlag>{}, width: 200);

      expect(flag.calculatedAspectRatio, isNull);
    });

    test("returns null when width is null", () {
      const flag = IsoFlag(FiatEur(), <FiatCurrency, BasicFlag>{}, height: 100);

      expect(flag.calculatedAspectRatio, isNull);
    });

    test("returns null when both are null", () {
      const flag = IsoFlag(FiatEur(), <FiatCurrency, BasicFlag>{});

      expect(flag.calculatedAspectRatio, isNull);
    });
  });

  group("toData and toThemeData", () {
    test("toData converts properties to DecoratedFlagData", () {
      const original = IsoFlag(
        FiatEur(),
        <FiatCurrency, BasicFlag>{},
        height: 100,
        width: 200,
        aspectRatio: 1.5,
        decoration: BoxDecoration(),
        decorationPosition: DecorationPosition.background,
        padding: EdgeInsets.all(8),
      );

      final data = original.toData();
      expect(data.height, original.height);
      expect(data.width, original.width);
      expect(data.aspectRatio, original.aspectRatio);
      expect(data.decoration, original.decoration);
      expect(data.decorationPosition, original.decorationPosition);
      expect(data.padding, original.padding);
      expect(data.flagChild, isNull);

      // Testing backward compatibility for deprecated toThemeData.
      // ignore: deprecated_member_use_from_same_package
      final legacyData = original.toThemeData();
      expect(legacyData.height, original.height);
      expect(legacyData.width, original.width);
      expect(legacyData.aspectRatio, original.aspectRatio);
      expect(legacyData.decoration, original.decoration);
      expect(legacyData.decorationPosition, original.decorationPosition);
      expect(legacyData.padding, original.padding);
      expect(legacyData.flagChild, isNull);
    });

    test("toData overrides flagChild when provided", () {
      const original = IsoFlag(
        FiatEur(),
        <FiatCurrency, BasicFlag>{},
        flagChild: SizedBox.shrink(),
      );
      const override = Placeholder();

      final data = original.toData(flagChild: override);
      expect(data.flagChild, override);
      expect(data.flagChild, isNot(original.flagChild));
    });

    test("toData preserves existing flagChild when not overridden", () {
      const child = SizedBox.shrink();
      const original = IsoFlag(
        FiatEur(),
        <FiatCurrency, BasicFlag>{},
        flagChild: child,
      );

      final data = original.toData();
      expect(data.flagChild, child);
    });
  });
});
