import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

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
});
