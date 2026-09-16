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
/// Only the calls a badge painter is allowed to make are implemented; anything
/// else still lands in [calls] through `noSuchMethod`, so a test can assert
/// that no other primitive was used.
// ignore: avoid-top-level-members-in-tests, it's a test helper, not a test.
final class RecordingCanvas implements Canvas {
  /// The names of every canvas method the painter called.
  final calls = <Symbol>{};

  /// Every filled path, in paint order.
  final layers = <RecordedLayer>[];

  final _saved = <Offset>[];
  Offset _offset = Offset.zero;

  /// How many `save` calls are still waiting for their `restore`.
  int get openSaves => _saved.length;

  @override
  void save() {
    calls.add(#save);
    _saved.add(_offset);
  }

  @override
  void restore() {
    calls.add(#restore);
    _offset = _saved.removeLast();
  }

  @override
  void translate(double dx, double dy) {
    calls.add(#translate);
    _offset += Offset(dx, dy);
  }

  @override
  void drawPath(Path path, Paint paint) {
    calls.add(#drawPath);
    layers.add((
      color: paint.color,
      isAntiAlias: paint.isAntiAlias,
      // A copy: painters may keep mutating the instance they handed over.
      path: path.shift(_offset),
      style: paint.style,
    ));
  }

  @override
  void noSuchMethod(Invocation invocation) => calls.add(invocation.memberName);
}
