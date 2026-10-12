import "dart:typed_data";
import "dart:ui" as ui;

import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/src/model/stripe_orientation.dart";
import "package:world_flags/src/ui/country_flag.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/painters/basic/stripes_painter.dart";
import "package:world_flags/src/ui/painters/common/star_painter.dart";

import "../../../../helpers/recording_canvas.dart";
import "../../../../helpers/straight_pixels.dart";

void main() => group("$StripesPainter", () {
  const red = FlagProperties([ColorsProperties(Color(0xFFFF0000))]);
  const blue = FlagProperties([ColorsProperties(Color(0xFF0000FF))]);

  group("shouldRepaint", () {
    test("returns true when properties change", () {
      const oldPainter = StripesPainter<CustomPainter>(red, null, null);
      const newPainter = StripesPainter<CustomPainter>(blue, null, null);

      expect(newPainter.shouldRepaint(oldPainter), isTrue);
    });

    test("returns true when decoration changes", () {
      const oldPainter = StripesPainter<CustomPainter>(red, null, null);
      const newPainter = StripesPainter<CustomPainter>(
        red,
        BoxDecoration(shape: BoxShape.circle),
        null,
      );

      expect(newPainter.shouldRepaint(oldPainter), isTrue);
    });

    test("compares the elements painters", () {
      const star = ElementsProperties(Color(0xFF000000), shape: Star());
      const moon = ElementsProperties(Color(0xFF000000), shape: Moon());
      final starPainter = StripesPainter(
        red,
        null,
        StarPainter(const [star], 1),
      );

      expect(
        StripesPainter(
          red,
          null,
          StarPainter(const [star], 1),
        ).shouldRepaint(starPainter),
        isFalse,
      );
      expect(
        StripesPainter(
          red,
          null,
          StarPainter(const [moon], 1),
        ).shouldRepaint(starPainter),
        isTrue,
      );
    });

    test("returns false for equal properties", () {
      // Not `const`, so they're equal, but not identical.
      final painter = StripesPainter<CustomPainter>(
        FlagProperties([ColorsProperties(red.stripeColors.first.color)]),
        null,
        null,
      );
      final other = StripesPainter<CustomPainter>(
        FlagProperties([ColorsProperties(red.stripeColors.first.color)]),
        null,
        null,
      );

      expect(other.shouldRepaint(painter), isFalse);
    });

    test("returns false when nothing changes", () {
      const oldPainter = StripesPainter<CustomPainter>(red, null, null);
      const newPainter = StripesPainter<CustomPainter>(red, null, null);

      expect(newPainter.shouldRepaint(oldPainter), isFalse);
    });
  });

  group("degenerate input", () {
    for (final country in const <WorldCountry>[
      CountryKor(),
      CountryPhl(),
      CountryBra(),
      CountryCri(),
    ]) {
      testWidgets("paints ${country.code} flag of zero size", (tester) async {
        await tester.pumpWidget(
          Center(
            child: SizedBox.shrink(child: CountryFlag.simplified(country)),
          ),
        );

        expect(tester.takeException(), isNull);
      });
    }

    testWidgets("paints stripes with zero ratios", (tester) async {
      await tester.pumpWidget(
        const Center(
          child: SizedBox(
            width: 30,
            height: 20,
            child: BasicFlag(
              FlagProperties([ColorsProperties(Color(0xFFFF0000), ratio: 0)]),
            ),
          ),
        ),
      );

      expect(tester.takeException(), isNull);
    });
  });

  test("resolves directional border radius without a direction", () {
    const painter = StripesPainter<CustomPainter>(
      red,
      BoxDecoration(borderRadius: BorderRadiusDirectional.zero),
      null,
    );
    final recorder = ui.PictureRecorder();

    expect(
      () => painter.paint(Canvas(recorder), const Size(30, 20)),
      returnsNormally,
    );
    recorder.endRecording().dispose();
  });

  testWidgets("keeps translucent diagonal stripes apart", (tester) async {
    const boundary = Key("diagonal");
    await tester.pumpWidget(
      const Center(
        child: RepaintBoundary(
          key: boundary,
          child: SizedBox(
            width: 40,
            height: 20,
            child: BasicFlag(
              FlagProperties(
                [
                  ColorsProperties(Color(0x80FF0000)),
                  ColorsProperties(Color(0x800000FF)),
                ],
                stripeOrientation:
                    StripeOrientation.diagonalTopLeftToBottomRight,
              ),
            ),
          ),
        ),
      ),
    );
    final render = tester.renderObject<RenderRepaintBoundary>(
      find.byKey(boundary),
    );
    final pixels = await tester.runAsync(() => straightPixels(render));

    // The seam runs from the top-left to the bottom-right corner.
    for (final (x, y) in const [(0, 19), (39, 0)]) {
      final redChannel = _channelAt(pixels, x, y, 0);
      final blueChannel = _channelAt(pixels, x, y, 2);
      expect(
        redChannel < 10 || blueChannel < 10,
        isTrue,
        reason: "One stripe at ($x, $y): red $redChannel, blue $blueChannel",
      );
    }
  });

  test("covers seams of opaque stripes before a translucent one", () {
    const stripesWithTranslucentLast = [
      ColorsProperties(Color(0xFFFF0000)),
      ColorsProperties(Color(0xFF00FF00)),
      ColorsProperties(Color(0x800000FF)),
    ];
    const painter = StripesPainter<CustomPainter>(
      FlagProperties(
        stripesWithTranslucentLast,
        stripeOrientation: StripeOrientation.diagonalTopLeftToBottomRight,
      ),
      null,
      null,
    );
    final canvas = RecordingCanvas();
    painter.paintStripes(canvas, const Size(30, 20));
    final widths = [
      for (final layer in canvas.layers) layer.path.getBounds().width,
    ];

    expect(widths, hasLength(3));
    expect(
      widths.first,
      greaterThan(widths[1]),
      reason: "Red goes under green",
    );
    expect(widths[1], closeTo(widths.last, 1e-6), reason: "Not under blue");
  });

  testWidgets("resolves directional border radius in RTL", (tester) async {
    const boundary = Key("boundary");
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: RepaintBoundary(
            key: boundary,
            child: SizedBox(
              width: 40,
              height: 20,
              child: BasicFlag(
                red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final render = tester.renderObject<RenderRepaintBoundary>(
      find.byKey(boundary),
    );
    final pixels = await tester.runAsync(() => straightPixels(render));

    expect(_alphaAt(pixels, 0, 0), 255); // Top-left is square.
    expect(_alphaAt(pixels, 39, 0), 0); // Top-right is rounded.
  });
});

/// The alpha of the pixel at [x] and [y] of 40 pixels wide straight RGBA bytes.
int _alphaAt(Uint8List? pixels, int x, int y) => _channelAt(pixels, x, y, 3);

/// The [channel] of the pixel at [x] and [y] of 40 pixels wide RGBA bytes.
int _channelAt(Uint8List? pixels, int x, int y, int channel) =>
    pixels?.elementAtOrNull((y * 40 + x) * 4 + channel) ?? -1;
