import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/painters/basic/badge_artwork.dart";

import "../../../../helpers/recording_canvas.dart";

/// The form badge artwork is stored in.
///
/// Geometry that used to be written out as `moveTo`/`lineTo` calls is now a
/// flat run of numbers. These tests pin down the opcode encoding and prove a
/// layer still scales with the box it is painted into.
void main() {
  const square = <double>[
    BadgeArtwork.moveTo,
    0,
    0,
    BadgeArtwork.lineTo,
    1,
    0,
    BadgeArtwork.lineTo,
    1,
    1,
    BadgeArtwork.lineTo,
    0,
    1,
    BadgeArtwork.closePath,
  ];

  test("scales a packed layer into the box it is given", () {
    final artwork = BadgeArtwork(const [(color: 0, geometry: square)]);
    final canvas = RecordingCanvas();

    artwork.paint(canvas, const Rect.fromLTWH(10, 20, 30, 40), _paint);

    // The recorder reports flag space, so the box's own origin is included.
    expect(
      canvas.layers.single.path.getBounds(),
      const Rect.fromLTWH(10, 20, 30, 40),
    );
    expect(canvas.openSaves, isZero);
  });

  test("treats every coordinate as absolute", () {
    final artwork = BadgeArtwork(const [
      (
        color: 0,
        geometry: <double>[
          BadgeArtwork.moveTo,
          0.25,
          0.25,
          BadgeArtwork.lineTo,
          0.75,
          0.25,
          BadgeArtwork.lineTo,
          0.75,
          0.75,
          BadgeArtwork.closePath,
        ],
      ),
    ]);
    final canvas = RecordingCanvas();

    artwork.paint(canvas, const Rect.fromLTWH(0, 0, 100, 100), _paint);

    expect(
      canvas.layers.single.path.getBounds(),
      const Rect.fromLTRB(25, 25, 75, 75),
    );
  });

  test("resolves each layer's color through the caller", () {
    final artwork = BadgeArtwork(const [
      (color: 0, geometry: square),
      (color: 2, geometry: square),
    ]);
    final canvas = RecordingCanvas();

    artwork.paint(canvas, const Rect.fromLTWH(0, 0, 8, 8), _paint);

    expect(canvas.layers.map((layer) => layer.color.toARGB32()), [
      0xff000000,
      0xff000002,
    ]);
  });

  test("rebuilds its paths for a box it has not seen", () {
    final artwork = BadgeArtwork(const [(color: 0, geometry: square)]);
    final first = RecordingCanvas();
    final second = RecordingCanvas();

    artwork
      ..paint(first, const Rect.fromLTWH(0, 0, 4, 4), _paint)
      ..paint(second, const Rect.fromLTWH(0, 0, 8, 8), _paint);

    expect(first.layers.single.path.getBounds().size, const Size(4, 4));
    expect(second.layers.single.path.getBounds().size, const Size(8, 8));
  });

  test("keeps the paths of the last two boxes it painted", () {
    final artwork = BadgeArtwork(const [(color: 0, geometry: square)]);
    final small = _pathAt(artwork, 4);
    final large = _pathAt(artwork, 8);

    // Back to the first box. It is the older of the two the artwork holds, so
    // this is the one that has to be found in the second slot and promoted,
    // which is what lets a flag in a list and the same flag in a detail view
    // share an artwork without rebuilding on every frame of either. Painting
    // a box again is the assertion, so these calls cannot reuse a variable.
    // ignore_for_file: use-existing-variable, prefer-moving-to-variable
    expect(_pathAt(artwork, 4), same(small));
    expect(_pathAt(artwork, 8), same(large), reason: "Both are still held.");

    // A third box only displaces the older of the two.
    expect(_pathAt(artwork, 16).getBounds().size, const Size(16, 16));
    expect(_pathAt(artwork, 8), same(large));
    expect(_pathAt(artwork, 4), isNot(same(small)));
  });
}

/// Paints [artwork] into a square box of [side] and returns the path it drew.
///
/// [RecordingCanvas] copies what it is handed, which is what its own tests
/// need; this keeps the instance so that a cached path can be told apart from
/// a rebuilt one.
Path _pathAt(BadgeArtwork artwork, double side) {
  final canvas = _BadgeArtworkTest();
  artwork.paint(canvas, Rect.fromLTWH(0, 0, side, side), _paint);

  return canvas.paths.single;
}

/// A [Canvas] that keeps the exact [Path] instances it is given.
final class _BadgeArtworkTest implements Canvas {
  final paths = <Path>[];

  @override
  // ignore: avoid-collection-mutating-methods, collecting them is the point.
  void drawPath(Path path, Paint paint) => paths.add(path);

  @override
  Object? noSuchMethod(Invocation invocation) => null;
}

/// Encodes the palette index into the color, so a test can read it back.
// The analyzer wants a cascade here and DCM would rather not return one, so
// the rules are traded off explicitly.
// ignore: avoid-returning-cascades
Paint _paint(int index) => Paint()..color = Color(index + 0xff000000);
