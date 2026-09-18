// A recorder has to accumulate what it is handed, so the mutating collection
// calls below are the point of the class rather than an oversight.
// ignore_for_file: avoid-collection-mutating-methods
import "package:flutter/rendering.dart";

/// A layer captured by [RecordingCanvas], already shifted into flag space.
// ignore: avoid-top-level-members-in-tests, it's a test helper, not a test.
typedef RecordedLayer = ({
  Color color,
  bool isAntiAlias,
  Path path,
  PaintingStyle style,
});

/// A [Canvas] that records what a painter draws instead of rasterizing it.
///
/// Only translations are tracked, so the geometry in [layers] is in flag space
/// only while the painter does not rotate or scale the canvas; [ops] counts
/// every call either way.
///
/// Every call is counted in [ops], keyed by method name, so a test can put a
/// budget on how many draw commands a flag costs. The primitives a painter is
/// expected to use are also captured as geometry in [layers]; anything else
/// still lands in [calls] and [ops] through `noSuchMethod`, so a test can
/// assert that no other primitive was used.
// ignore: avoid-top-level-members-in-tests, it's a test helper, not a test.
final class RecordingCanvas implements Canvas {
  /// The names of every canvas method the painter called.
  final calls = <Symbol>{};

  /// How many times each canvas method was called.
  final ops = <Symbol, int>{};

  /// Every filled shape, in paint order.
  final layers = <RecordedLayer>[];

  final _saved = <Offset>[];
  Offset _offset = Offset.zero;

  /// How many `save` calls are still waiting for their `restore`.
  int get openSaves => _saved.length;

  /// How many draw commands the engine would have to encode.
  int get drawCount => _sum(const {
    #drawPath: null,
    #drawRect: null,
    #drawRRect: null,
    #drawDRRect: null,
    #drawOval: null,
    #drawCircle: null,
    #drawArc: null,
    #drawLine: null,
    #drawPoints: null,
    #drawRawPoints: null,
    #drawVertices: null,
    #drawImage: null,
    #drawImageRect: null,
    #drawImageNine: null,
    #drawPicture: null,
    #drawParagraph: null,
    #drawShadow: null,
    #drawColor: null,
    #drawPaint: null,
    #drawAtlas: null,
    #drawRawAtlas: null,
  });

  /// How many clips the painter pushed.
  int get clipCount =>
      _sum(const {#clipRect: null, #clipRRect: null, #clipPath: null});

  /// How many contours all recorded shapes add up to.
  int get contourCount =>
      layers.fold(0, (sum, layer) => sum + layer.path.computeMetrics().length);

  @override
  void save() {
    _count(#save);
    _saved.add(_offset);
  }

  @override
  void saveLayer(Rect? bounds, Paint paint) {
    _count(#saveLayer);
    _saved.add(_offset);
  }

  @override
  void restore() {
    _count(#restore);
    _offset = _saved.removeLast();
  }

  @override
  void translate(double dx, double dy) {
    _count(#translate);
    _offset += Offset(dx, dy);
  }

  @override
  void rotate(double radians) => _count(#rotate);

  @override
  void scale(double sx, [double? sy]) => _count(#scale);

  @override
  void drawPath(Path path, Paint paint) {
    _count(#drawPath);
    _record(path, paint);
  }

  @override
  void drawRect(Rect rect, Paint paint) {
    _count(#drawRect);
    _record(Path()..addRect(rect), paint);
  }

  @override
  void drawRRect(RRect rrect, Paint paint) {
    _count(#drawRRect);
    _record(Path()..addRRect(rrect), paint);
  }

  @override
  void drawOval(Rect rect, Paint paint) {
    _count(#drawOval);
    _record(Path()..addOval(rect), paint);
  }

  @override
  void drawCircle(Offset center, double radius, Paint paint) {
    _count(#drawCircle);
    _record(
      Path()..addOval(Rect.fromCircle(center: center, radius: radius)),
      paint,
    );
  }

  @override
  void drawLine(Offset p1, Offset p2, Paint paint) {
    _count(#drawLine);
    _record(
      Path()
        ..moveTo(p1.dx, p1.dy)
        ..lineTo(p2.dx, p2.dy),
      paint,
    );
  }

  @override
  void noSuchMethod(Invocation invocation) => _count(invocation.memberName);

  void _count(Symbol name) {
    calls.add(name);
    ops[name] = (ops[name] ?? 0) + 1;
  }

  void _record(Path path, Paint paint) => layers.add((
    color: paint.color,
    isAntiAlias: paint.isAntiAlias,
    // A copy: painters may keep mutating the instance they handed over.
    path: path.shift(_offset),
    style: paint.style,
  ));

  int _sum(Map<Symbol, void> names) {
    int total = 0;
    for (final entry in ops.entries) {
      if (names.containsKey(entry.key)) total += entry.value;
    }

    return total;
  }
}
