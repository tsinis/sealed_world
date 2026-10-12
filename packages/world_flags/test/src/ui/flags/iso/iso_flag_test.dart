// ignore_for_file: missing-test-assertion, flagGolden does the job.

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show FlutterLogo, MaterialApp;
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/flag_extension.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/theme/decorated_flag_data.dart";
import "package:world_flags/src/theme/flag_theme.dart";
import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/flags/iso/iso_flag.dart";
import "package:world_flags/src/ui/painters/basic/shader_stripes_painter.dart";
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
      const circle = BoxDecoration(shape: BoxShape.circle);
      await tester.pumpWidget(
        MaterialApp(
          home: IsoFlag(
            value,
            smallSimplifiedFlagsMap,
            shader: shader,
            decoration: circle,
          ),
        ),
      );

      expect(_shaderPainter(tester)?.decoration, circle);
    });

    testWidgets("uses the theme decoration and child", (tester) async {
      final shader = FakeFlagShaderDelegate();
      addTearDown(shader.dispose);
      const circle = BoxDecoration(shape: BoxShape.circle);
      await tester.pumpWidget(
        FlagTheme(
          data: const DecoratedFlagData(
            decoration: circle,
            flagChild: Text("theme", textDirection: TextDirection.ltr),
          ),
          child: MaterialApp(
            home: IsoFlag(value, smallSimplifiedFlagsMap, shader: shader),
          ),
        ),
      );

      expect(_shaderPainter(tester)?.decoration, circle);
      expect(find.text("theme"), findsOneWidget);
    });

    testWidgets("uses the built foreground widget", (tester) async {
      final shader = FakeFlagShaderDelegate();
      addTearDown(shader.dispose);
      final builtChildMap = {
        value: BasicFlag(
          const FlagProperties([ColorsProperties(Color(0xFFFF0000))]),
          foregroundWidgetBuilder: (_, _) =>
              const Text("built", textDirection: TextDirection.ltr),
        ),
      };
      await tester.pumpWidget(
        MaterialApp(home: IsoFlag(value, builtChildMap, shader: shader)),
      );
      final empty = tester
          .widgetList<CustomPaint>(find.byType(CustomPaint))
          .map((paint) => paint.painter)
          .nonNulls
          .firstWhere((painter) => painter is! ShaderStripesPainter);

      expect(find.text("built"), findsOneWidget);
      expect(empty.shouldRepaint(empty), isFalse);
    });

    testWidgets("paints custom painters of the flag", (tester) async {
      final shader = FakeFlagShaderDelegate();
      addTearDown(shader.dispose);
      const background = _IsoFlagTest();
      const foreground = _IsoFlagTest();
      const customFlag = BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFFFF0000))]),
        backgroundPainter: background,
        foregroundPainter: foreground,
      );
      await tester.pumpWidget(
        MaterialApp(
          home: IsoFlag(value, const {value: customFlag}, shader: shader),
        ),
      );
      final painter = _shaderPainter(tester);

      expect(painter?.backgroundPainter, same(background));
      expect(painter?.foregroundPainter, same(foreground));
      expect(
        tester
            .widgetList<CustomPaint>(find.byType(CustomPaint))
            .map((paint) => paint.foregroundPainter),
        isNot(contains(foreground)),
        reason: "It's painted by the shader only, not over it.",
      );
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

/// The painter of the flag in the shader surface, if any.
ShaderStripesPainter? _shaderPainter(WidgetTester tester) => tester
    .widgetList<CustomPaint>(find.byType(CustomPaint))
    .map((paint) => paint.painter)
    .whereType<ShaderStripesPainter>()
    .firstOrNull;

/// A painter painting nothing, to be told apart by its identity.
final class _IsoFlagTest extends CustomPainter {
  const new();

  @override
  // ignore: no-empty-block, it's a test painter.
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(_IsoFlagTest oldDelegate) => false;
}
