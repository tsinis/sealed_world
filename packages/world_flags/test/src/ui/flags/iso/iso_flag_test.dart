// ignore_for_file: missing-test-assertion, flagGolden does the job.

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show FlutterLogo, MaterialApp;
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/flag_extension.dart";
import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/flags/iso/iso_flag.dart";
import "package:world_flags/world_flags.dart"
    show smallSimplifiedFlagsMap, smallSimplifiedLanguageFlagsMap;

import "../../../../helpers/extensions/golden_widget_tester_extension.dart";
import "../../../../helpers/fake_flag_shader_delegate.dart";

void main() => group("$IsoFlag", () {
  const value = CountryDeu();
  const map = <WorldCountry, BasicFlag>{};
  const flag = IsoFlag(value, map, orElse: FlutterLogo());

  test(
    "toStringShort",
    () => expect(flag.toStringShort(), "IsoFlag(${value.code})"),
  );

  assertTest("zero height", () => IsoFlag(value, map, height: 0));
  assertTest("zero width", () => IsoFlag(value, map, width: 0));
  assertTest("zero aspectRatio", () => IsoFlag(value, map, aspectRatio: 0));

  test("debugFillProperties", () {
    final builder = DiagnosticPropertiesBuilder();
    expect(builder.properties.any((prop) => prop.name == "padding"), isFalse);

    flag.debugFillProperties(builder);
    expect(builder.properties.any((prop) => prop.name == "padding"), isTrue);
  });

  group("shader", () {
    testWidgets("paints the flag through the provided shader", (tester) async {
      final shader = FakeFlagShaderDelegate();
      addTearDown(shader.dispose);
      await tester.pumpWidget(
        MaterialApp(
          home: IsoFlag(value, smallSimplifiedFlagsMap, shader: shader),
        ),
      );

      final surface = tester.widget<FlagShaderSurface>(
        find.byType(FlagShaderSurface),
      );
      expect(surface.shader, same(shader));
      expect(surface.item, value);
    });

    testWidgets("keeps the child above the shader", (tester) async {
      final shader = FakeFlagShaderDelegate();
      addTearDown(shader.dispose);
      await tester.pumpWidget(
        MaterialApp(
          home: IsoFlag(
            value,
            smallSimplifiedFlagsMap,
            shader: shader,
            flagChild: const Text("child", textDirection: TextDirection.ltr),
          ),
        ),
      );

      expect(find.byType(FlagShaderSurface), findsOneWidget);
      expect(find.text("child"), findsOneWidget);
    });

    testWidgets("clips the shader to the decoration", (tester) async {
      final shader = FakeFlagShaderDelegate();
      addTearDown(shader.dispose);
      for (final (decoration, clip) in const [
        (BoxDecoration(shape: BoxShape.circle), ClipOval),
        (
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4))),
          ClipRRect,
        ),
      ]) {
        await tester.pumpWidget(
          MaterialApp(
            home: IsoFlag(
              value,
              smallSimplifiedFlagsMap,
              shader: shader,
              decoration: decoration,
            ),
          ),
        );

        expect(
          find.ancestor(
            of: find.byType(FlagShaderSurface),
            matching: find.byType(clip),
          ),
          findsOneWidget,
        );
      }
    });

    testWidgets("doesn't use a shader surface without shader", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: IsoFlag(value, smallSimplifiedFlagsMap)),
      );

      expect(find.byType(FlagShaderSurface), findsNothing);
    });
  });

  group("Full", () {
    final nonSimplified = WorldCountry.list.where(
      (country) => country.flagProperties?.isSimplified == false,
    );
    for (final iso in <IsoTranslated>[
      ...nonSimplified,
      const FiatEur(),
      const LangEpo(),
      const LangIdo(),
    ]) {
      testWidgets(
        "${iso.internationalName} Flag",
        (tester) => tester.flagGolden(iso, .full),
      );
    }
  });

  group("Simplified", () {
    for (final iso in <IsoTranslated>[
      ...smallSimplifiedFlagsMap.keys,
      const FiatEur(),
      ...smallSimplifiedLanguageFlagsMap.keys,
    ]) {
      testWidgets(
        "${iso.internationalName} Flag",
        (tester) => tester.flagGolden(iso, .simplified),
      );
    }
  });
});
