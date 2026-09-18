// Traces this package's own `CountryPicker` while it is scrolled, so the frame
// times can be split into build and raster. Run it through
// `test_driver/perf_driver.dart`.
//
// A benchmark, not a test: the assertion is the recorded timeline.

// ignore_for_file: avoid-local-functions, prefer-static-class,
// ignore_for_file: prefer-extracting-function-callbacks, missing-test-assertion
import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_test/flutter_test.dart";
import "package:integration_test/integration_test.dart";
import "package:world_countries/world_countries.dart";

const _frames = 150;
const _step = 32.0;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
    ..framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  Future<void> run(WidgetTester tester, Widget app, String key) async {
    await tester.pumpWidget(app);
    await tester.pumpAndSettle(const Duration(seconds: 5));
    final list = find.byType(Scrollable).last;

    await binding.traceAction(
      () async {
        final gesture = await tester.startGesture(tester.getCenter(list));
        for (int frame = 0; frame < _frames; frame += 1) {
          await gesture.moveBy(Offset(0, frame < _frames / 2 ? -_step : _step));
          await tester.pump(const Duration(milliseconds: 16));
        }
        await gesture.up();
        await tester.pumpAndSettle();
      },
      reportKey: key, // Dart 3.8 formtting.
    );
  }

  testWidgets("country picker scroll", (tester) async {
    await run(tester, const _PickerPerfTest(), "country_picker");
  });

  // The same picker with the flag removed from every row, as the control for
  // how much the flags themselves cost. Compare the two inside one run: the
  // first screen a run traces reads faster than the same screen traced later,
  // so numbers from different runs are not comparable.
  testWidgets("country picker scroll, no flags", (tester) async {
    await run(
      tester,
      const _PickerPerfTest(withFlags: false),
      "picker_no_flags",
    );
  });
}

class _PickerPerfTest extends StatelessWidget {
  const new({this.withFlags = true});

  final bool withFlags;

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: ThemeData(
      extensions: <ThemeExtension>[
        const PickersThemeData(primary: true),
        if (!withFlags)
          CountryTileThemeData(
            // ignore: avoid-passing-default-values, it's just a test.
            itemBuilder: (_, i) => i.copyWith(leading: null),
          ),
      ],
    ),
    localizationsDelegates: const [
      ...GlobalMaterialLocalizations.delegates,
      TypedLocaleDelegate(),
    ],
    home: const Scaffold(body: CountryPicker()),
  );
}
