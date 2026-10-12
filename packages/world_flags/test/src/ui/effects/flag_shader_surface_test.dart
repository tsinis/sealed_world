import "package:flutter/foundation.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show MaterialApp;
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/basic_flag_extension_copy_with.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/ui/effects/animated_flag_shader_delegate.dart";
import "package:world_flags/src/ui/effects/flag_shader_delegate.dart";
import "package:world_flags/src/ui/effects/flag_shader_options.dart";
import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
import "package:world_flags/src/ui/effects/waved_flag_shader_delegate.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/painters/basic/shader_stripes_painter.dart";

import "../../../helpers/extensions/golden_widget_tester_extension.dart";
import "../../../helpers/fake_flag_shader_delegate.dart";
import "../../../helpers/straight_pixels.dart";

void main() => group("$FlagShaderSurface", () {
  testWidgets("renders CustomPaint for shader flags", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: FlagShaderSurface(CountryUsa())),
    );
    await tester.pump();
    expect(
      find.descendant(
        of: find.byType(FlagShaderSurface),
        matching: find.byType(CustomPaint),
      ),
      findsWidgets,
    );
  });

  testWidgets("renders orElse when item not found", (tester) async {
    const testWidget = FlutterLogo(key: Key("orElse"));
    await tester.pumpWidget(
      const MaterialApp(
        home: FlagShaderSurface(FiatEur(), map: {}, orElse: testWidget),
      ),
    );
    expect(find.byKey(const Key("orElse")), findsOneWidget);
  });

  testWidgets("uses alternative map when provided", (tester) async {
    const customFlag = BasicFlag(
      FlagProperties([ColorsProperties(Color(0xFFFF0000))]),
    );
    await tester.pumpWidget(
      const MaterialApp(
        home: FlagShaderSurface(
          CountryUsa(),
          alternativeMap: {CountryUsa(): customFlag},
        ),
      ),
    );
    expect(find.byType(FlagShaderSurface), findsOneWidget);
  });

  testWidgets("applies custom dimensions", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: FlagShaderSurface(CountryUsa(), width: 200, height: 120),
      ),
    );
    final sizedBox = tester.widget<SizedBox>(
      find
          .descendant(
            of: find.byType(FlagShaderSurface),
            matching: find.byType(SizedBox),
          )
          .first,
    );
    expect(sizedBox.height, 120);
    expect(sizedBox.width, 200);
  });

  testWidgets("applies custom aspect ratio", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: FlagShaderSurface(CountryUsa(), aspectRatio: 1.5),
      ),
    );
    final aspectRatio = tester.widget<AspectRatio>(
      find
          .descendant(
            of: find.byType(FlagShaderSurface),
            matching: find.byType(AspectRatio),
          )
          .first,
    );
    expect(aspectRatio.aspectRatio, 1.5);
  });

  testWidgets("toStringShort returns correct format", (tester) async {
    const surface = FlagShaderSurface(CountryUsa());
    expect(surface.toStringShort(), "FlagShaderSurface(USA)");
  });

  testWidgets("debugFillProperties includes relevant props", (tester) async {
    const surface = FlagShaderSurface(
      CountryUsa(),
      height: 100,
      width: 200,
      aspectRatio: 2,
    );
    final builder = DiagnosticPropertiesBuilder();
    surface.debugFillProperties(builder);
    final properties = builder.properties;
    expect(
      properties.any((prop) => prop.name == "iso" && prop.value == "USA"),
      isTrue,
    );
    expect(properties.any((prop) => prop.name == "options"), isTrue);
    expect(
      properties.any((prop) => prop.name == "height" && prop.value == 100),
      isTrue,
    );
    expect(
      properties.any((prop) => prop.name == "width" && prop.value == 200),
      isTrue,
    );
    expect(
      properties.any((prop) => prop.name == "aspectRatio" && prop.value == 2),
      isTrue,
    );
  });

  testWidgets("updates delegate when options change", (tester) async {
    final defaultShader = WavedFlagShaderDelegate(vsync: tester);
    final customShader = WavedFlagShaderDelegate(
      vsync: tester,
      options: const FlagShaderOptions(waveAmplitude: 0.05),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: FlagShaderSurface(const CountryUsa(), shader: defaultShader),
      ),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: FlagShaderSurface(const CountryUsa(), shader: customShader),
      ),
    );
    expect(find.byType(FlagShaderSurface), findsOneWidget);
    defaultShader.dispose();
    customShader.dispose();
  });

  testWidgets("uses external shader when provided", (tester) async {
    final shader = WavedFlagShaderDelegate(vsync: tester);
    await tester.pumpWidget(
      MaterialApp(home: FlagShaderSurface(const CountryUsa(), shader: shader)),
    );
    expect(find.byType(FlagShaderSurface), findsOneWidget);
    shader.dispose();
  });

  testWidgets("reuses painter when delegate unchanged", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: FlagShaderSurface(CountryUsa())),
    );
    await tester.pump();
    final firstPaint = tester.widget<CustomPaint>(
      find
          .descendant(
            of: find.byType(FlagShaderSurface),
            matching: find.byType(CustomPaint),
          )
          .first,
    );
    await tester.pumpWidget(
      const MaterialApp(home: FlagShaderSurface(CountryUsa())),
    );
    final secondPaint = tester.widget<CustomPaint>(
      find
          .descendant(
            of: find.byType(FlagShaderSurface),
            matching: find.byType(CustomPaint),
          )
          .first,
    );
    expect(
      identical(firstPaint.painter, secondPaint.painter),
      isTrue,
      reason: "Painter should be reused (same instance)",
    );
  });

  group("rendering", () {
    testWidgets("frozen pose doesn't depend on the speed", (tester) async {
      const options = FlagShaderOptions(animate: false, frozenPhase: 0.3);
      final normal = await _render(tester, options);
      final fast = await _render(tester, options.copyWith(animationSpeed: 2));
      final otherPose = await _render(tester, options.copyWith(frozenPhase: 0));

      expect(otherPose, isNot(normal), reason: "The shader has to paint.");
      expect(fast, normal);
    });

    testWidgets("keeps straight colors of translucent flags", (tester) async {
      const options = FlagShaderOptions(
        animate: false,
        shadingEnabled: false,
        clipContent: true,
        waveAmplitude: 0,
        secondaryAmplitude: 0,
        turbulence: 0,
        perspective: 0,
      );
      final pixels = await _render(
        tester,
        options,
        color: const Color(0x80FFFFFF),
      );
      const center = ((10 * 40) + 20) * 4;

      expect(pixels.sublist(center, center + 4), [
        greaterThanOrEqualTo(250),
        greaterThanOrEqualTo(250),
        greaterThanOrEqualTo(250),
        inInclusiveRange(126, 130),
      ]);
    });
  });

  group("lifecycle", () {
    testWidgets("repaints with the new flag when map changes", (tester) async {
      const red = FlagProperties([ColorsProperties(Color(0xFFFF0000))]);
      const blue = FlagProperties([ColorsProperties(Color(0xFF0000FF))]);
      await tester.pumpWidget(
        const FlagShaderSurface(
          CountryUsa(),
          map: {CountryUsa(): BasicFlag(red)},
        ),
      );
      await tester.pumpWidget(
        const FlagShaderSurface(
          CountryUsa(),
          map: {CountryUsa(): BasicFlag(blue)},
        ),
      );

      expect(
        _flagPaint(tester).painter,
        isA<ShaderStripesPainter>().having(
          (painter) => painter.properties,
          "properties",
          same(blue),
        ),
      );
    });

    testWidgets("keeps the painter for a copy of the flag", (tester) async {
      const flag = BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFFFF0000))]),
      );
      await tester.pumpWidget(
        FlagShaderSurface(
          const CountryUsa(),
          map: {const CountryUsa(): flag.copyWith(height: 1)},
        ),
      );
      final painter = _flagPaint(tester).painter;
      await tester.pumpWidget(
        FlagShaderSurface(
          const CountryUsa(),
          map: {const CountryUsa(): flag.copyWith(height: 2)},
        ),
      );

      expect(_flagPaint(tester).painter, same(painter));
    });

    testWidgets("isolates the shader repaints", (tester) async {
      await tester.pumpWidget(const FlagShaderSurface(CountryUsa()));

      expect(
        find.descendant(
          of: find.byType(FlagShaderSurface),
          matching: find.byType(RepaintBoundary),
        ),
        findsOneWidget,
      );
    });

    testWidgets("doesn't hint changes for a static shader", (tester) async {
      final shader = FakeFlagShaderDelegate();
      addTearDown(shader.dispose);
      await tester.pumpWidget(
        FlagShaderSurface(const CountryUsa(), shader: shader),
      );

      expect(_flagPaint(tester).willChange, isFalse);
    });

    testWidgets("continues the time when options change", (tester) async {
      final recorder = _DelegateRecorder();
      await tester.pumpWidget(
        FlagShaderSurface(const CountryUsa(), delegateBuilder: recorder.build),
      );
      recorder.created.single.advance(1.5);
      await tester.pumpWidget(
        FlagShaderSurface(
          const CountryUsa(),
          delegateBuilder: recorder.build,
          options: const FlagShaderOptions(waveAmplitude: 0.05),
        ),
      );

      expect(recorder.created, hasLength(2));
      expect(
        recorder.created.last.currentTime,
        recorder.created.first.currentTime,
      );
    });
  });

  group("golden", () {
    for (final iso in const <WorldCountry>[.svk(), .kor(), .mkd(), .shn()]) {
      // ignore: missing-test-assertion, flagGolden does the job.
      testWidgets(
        "${iso.internationalName} Waved Flag",
        (tester) =>
            tester.flagGolden(iso, .waved, goldensPath: "../../goldens"),
      );
    }
  });
});

final class _FlagShaderSurfaceTest extends AnimatedFlagShaderDelegate {
  new(TickerProvider vsync)
    : super(vsync: vsync, assetPath: "shaders/waved_flag.frag");

  double get currentTime => time;

  void advance(double seconds) => onTick(seconds);
}

/// Records the delegates created by its [build] delegate builder.
final class _DelegateRecorder {
  final created = <_FlagShaderSurfaceTest>[];

  FlagShaderDelegate build(
    TickerProvider vsync,
    FlagShaderOptions _,
    FlagProperties _,
  ) {
    final delegate = _FlagShaderSurfaceTest(vsync);
    // ignore: avoid-collection-mutating-methods, it's the point of a recorder.
    created.add(delegate);

    return delegate;
  }
}

const _boundary = Key("boundary");

/// The painter and the change hint of the flag in the [FlagShaderSurface].
({CustomPainter? painter, bool willChange}) _flagPaint(WidgetTester tester) {
  final CustomPaint(:painter, :willChange) = tester.widget<CustomPaint>(
    find
        .descendant(
          of: find.byType(FlagShaderSurface),
          matching: find.byType(CustomPaint),
        )
        .first,
  );

  return (painter: painter, willChange: willChange);
}

/// Renders a plain flag of the [color] by a [FlagShaderSurface] of 40x20.
Future<Uint8List> _render(
  WidgetTester tester,
  FlagShaderOptions options, {
  Color color = const Color(0xFFFF0000),
}) async {
  final flag = BasicFlag(FlagProperties([ColorsProperties(color)]));
  // A loaded program is used synchronously, so it paints the very first frame.
  await tester.runAsync(WavedFlagShaderDelegate.warmUp);
  await tester.pumpWidget(const SizedBox.shrink());
  await tester.pumpWidget(
    Center(
      child: RepaintBoundary(
        key: _boundary,
        child: FlagShaderSurface(
          const CountryUsa(),
          map: {const CountryUsa(): flag},
          height: 20,
          width: 40,
          options: options,
        ),
      ),
    ),
  );
  final boundary = tester.renderObject<RenderRepaintBoundary>(
    find.byKey(_boundary),
  );

  return await tester.runAsync(() => straightPixels(boundary)) ?? Uint8List(0);
}
