import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/decorated_flag_interface_extension.dart";
import "package:world_flags/src/theme/flag_theme_data.dart";
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

  group("toThemeData", () {
    test("toThemeData converts properties to FlagThemeData", () {
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

      final themeData = original.toThemeData();
      expect(themeData, isA<FlagThemeData>());
      expect(themeData.height, original.height);
      expect(themeData.width, original.width);
      expect(themeData.aspectRatio, original.aspectRatio);
      expect(themeData.decoration, original.decoration);
      expect(themeData.decorationPosition, original.decorationPosition);
      expect(themeData.padding, original.padding);
      expect(themeData.child, isNull);
    });

    test("toThemeData overrides child when provided", () {
      const original = IsoFlag(
        FiatEur(),
        <FiatCurrency, BasicFlag>{},
        child: SizedBox.shrink(),
      );
      const override = Placeholder();

      final themeData = original.toThemeData(child: override);
      expect(themeData.child, override);
      expect(themeData.child, isNot(original.child));
    });

    test("toThemeData preserves existing child when not overridden", () {
      const child = SizedBox.shrink();
      const original = IsoFlag(
        FiatEur(),
        <FiatCurrency, BasicFlag>{},
        child: child,
      );

      final themeData = original.toThemeData();
      expect(themeData.child, child);
    });
  });
});
