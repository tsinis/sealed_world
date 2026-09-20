// ignore_for_file: deprecated_member_use, stage 1 deprecation.
// Scrolls three flag screens on a real device or desktop, so the frame times
// can be split into build and raster. Run it through
// `test_driver/perf_driver.dart`.
//
// The three are a ladder: an empty list is the floor the device reaches with
// nothing painted, plain boxes add one trivial draw per row, and the flag list
// is what this package costs on top. Compare them inside one run only — the
// first screen a run traces reads faster than the same screen traced later.
//
// A benchmark, not a test: the assertion is the recorded timeline, and the
// screens belong in one file so that a single run traces them all.

// ignore_for_file:prefer-extracting-function-callbacks, missing-test-assertion
// ignore_for_file: prefer-static-class, avoid-local-functions
import "package:flutter_test/flutter_test.dart";
import "package:integration_test/integration_test.dart";
import "package:material_ui/material_ui.dart";
import "package:world_flags/world_flags.dart";

/// The example app's list row and flag height.
const _flagListPerfTestHeight = 28.0;
const _flagHeight = 24.0;

/// Steps of one drag, half of them down and half back up, so every run traces
/// the same scroll. The live binding coalesces some of them, so a run records
/// fewer frames than steps; what matters is that it is the same scroll every
/// time.
const _frames = 150;
const _step = 32.0;

final _theme = ThemeData(
  extensions: const [
    FlagThemeData(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      height: _flagHeight,
    ),
  ],
);

void main() {
  // Without the frame policy the live binding only pumps a frame when it has
  // to, and a run traces a handful of frames instead of a full scroll.
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
    ..framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  Future<void> run(
    WidgetTester tester,
    _FlagListPerfTest row,
    String key,
  ) async {
    await tester.pumpWidget(_ListApp(row: row));
    await tester.pumpAndSettle();

    await binding.traceAction(
      () async {
        final gesture = await tester.startGesture(
          tester.getCenter(find.byType(Scrollable)),
        );
        for (int frame = 0; frame < _frames; frame += 1) {
          // Reverse halfway, so both scroll directions are traced.
          await gesture.moveBy(Offset(0, frame < _frames / 2 ? -_step : _step));
          await tester.pump(const Duration(milliseconds: 16));
        }
        await gesture.up();
        await tester.pumpAndSettle();
      },
      reportKey: key, // Dart 3.8 formatting.
    );
  }

  testWidgets("empty list scroll", (tester) async {
    await run(tester, _FlagListPerfTest.nothing, "empty_list");
  });

  testWidgets("plain list scroll", (tester) async {
    await run(tester, _FlagListPerfTest.box, "plain_list");
  });

  testWidgets("flag list scroll", (tester) async {
    await run(tester, _FlagListPerfTest.flag, "flag_list");
  });
}

/// What one row of the traced list holds.
enum _FlagListPerfTest { nothing, box, flag }

class _ListApp extends StatelessWidget {
  const new({required this.row});

  final _FlagListPerfTest row;

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: _theme,
    home: Material(
      child: ListView.builder(
        itemExtent: _flagListPerfTestHeight,
        itemCount: WorldCountry.list.length,
        itemBuilder: (_, i) => switch (row) {
          _FlagListPerfTest.nothing => const SizedBox.shrink(),
          _FlagListPerfTest.box => const Center(
            child: SizedBox(
              height: _flagHeight,
              width: _flagHeight * 1.5,
              child: ColoredBox(color: Color(0xff3366aa)),
            ),
          ),
          _FlagListPerfTest.flag => Center(
            child: CountryFlag.simplified(WorldCountry.list[i]),
          ),
        },
      ),
    ),
  );
}
