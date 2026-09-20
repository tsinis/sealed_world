import "dart:ui" show Canvas, Paint, Path, PathFillType, Rect;

/// One layer of a flag badge: a palette index and the geometry filled with it.
///
/// Its `color` indexes the badge's palette in the flag data: `0` is the custom
/// element's `mainColor` and `n` is its `otherColors[n - 1]`, so the colors
/// stay where every other flag element keeps them.
///
/// Its `geometry` is the layer's outline, encoded as described on
/// [BadgeArtwork].
typedef BadgeLayer = ({int color, List<double> geometry});

/// Resolves a badge layer's palette index to the paint it is filled with.
typedef BadgePaintResolver = Paint Function(int index);

/// A layer's geometry, built for one box.
typedef _BadgePath = ({int color, Path path});

/// A flag badge's layers, and the paths they were last built into.
///
/// Geometry is a flat run of commands, each an opcode followed by its
/// coordinates. Coordinates are fractions of the badge box, which is what
/// keeps the artwork relative to the flag size:
///
/// | opcode | meaning | coordinates |
/// | --- | --- | --- |
/// | [moveTo] | starts a sub-path | `x y` |
/// | [lineTo] | draws a straight line | `x y` |
/// | [closePath] | closes the sub-path | none |
///
/// A triangle filling the box, in the badge's main color, is ten numbers:
///
/// ```dart
/// const layers = <BadgeLayer>[
///   (
///     color: 0,
///     geometry: [
///       BadgeArtwork.moveTo, 0.5, 0,
///       BadgeArtwork.lineTo, 1, 1,
///       BadgeArtwork.lineTo, 0, 1,
///       BadgeArtwork.closePath,
///     ],
///   ),
/// ];
/// assert(layers.single.geometry.length == 10, "Ten numbers, one triangle.");
/// ```
///
/// Contours are filled by the winding rule, so a layer's shapes add together
/// however they are wound. [BadgeArtwork.evenOdd] switches a layer to the
/// even-odd rule instead, which is what artwork that cuts holes out of one
/// outline needs.
///
/// A painter holds the artwork built from such a table in a `static final`
/// field, so that one instance serves every flag that paints it and they
/// share its path cache.
///
/// The constants below are plain numbers in the generated data, so a layer
/// costs one list literal rather than a method call per point. Curves are
/// flattened when the artwork is generated: at the sizes this package draws
/// at, the rasterizer would flatten them anyway.
final class BadgeArtwork {
  /// Holds `layers` and builds their paths on demand.
  ///
  /// The geometry stays the `const` list it was declared as: the paths built
  /// from it are cached per box size, so it is read once per size and copying
  /// it into a typed array would only duplicate what is already in the binary.
  /// Call this from a `static final` field, so that one instance serves every
  /// flag that paints this artwork and they share its path cache.
  new(this._layers) : _fillType = PathFillType.nonZero;

  /// Holds `layers` whose contours are filled by the even-odd rule.
  ///
  /// Artwork drawn as one self-overlapping outline — where a contour inside
  /// another cuts a hole in it, and two crossing contours leave the crossing
  /// unfilled — needs this rather than the winding rule the other constructor
  /// uses. It buys a woven emblem in a single draw, since the holes are the
  /// color of whatever the flag already painted underneath.
  new evenOdd(this._layers) : _fillType = PathFillType.evenOdd;

  // Declared as doubles so they can sit in the geometry list itself, where an
  // inferred int would not be assignable.
  // ignore_for_file: avoid-explicit-type-declaration

  /// Starts a sub-path at the following `x y`.
  static const double moveTo = 1;

  /// Draws a straight line to the following `x y`.
  static const double lineTo = 2;

  /// Closes the current sub-path.
  static const double closePath = 0;

  final List<BadgeLayer> _layers;
  final PathFillType _fillType;

  /// The paths last built, keyed by the box they were built for.
  ///
  /// Two boxes are kept, so a flag shown in a list and in a detail view at the
  /// same time does not rebuild its artwork on every frame of either.
  _BadgeCache? _recent;
  _BadgeCache? _previous;

  /// Fills every layer into [bounds], resolving colors through [paintFor].
  ///
  /// Coordinates are multiplied out one at a time, exactly as a hand-written
  /// painter would, so the geometry matches what the flag data describes.
  void paint(Canvas canvas, Rect bounds, BadgePaintResolver paintFor) {
    final Rect(:height, :left, :top, :width) = bounds;

    final paths = _pathsFor(width, height);

    canvas
      ..save()
      ..translate(left, top);
    for (final layer in paths) {
      canvas.drawPath(layer.path, paintFor(layer.color));
    }
    canvas.restore();
  }

  List<_BadgePath> _pathsFor(double width, double height) {
    final recent = _recent;
    if (recent != null && recent.width == width && recent.height == height) {
      return recent.paths;
    }
    final previous = _previous;
    if (previous != null &&
        previous.width == width &&
        previous.height == height) {
      _previous = recent; // Keep the newly used box as the first one checked.
      _recent = previous;

      return previous.paths;
    }

    // Layers that follow one another in the same color are filled as a
    // single path: one draw command instead of one per layer, and the result
    // is identical because they were painted back to back anyway.
    final built = <_BadgePath>[];
    Path? open;
    int openColor = -1;
    for (final layer in _layers) {
      if (open != null && openColor == layer.color) {
        _addTo(open, layer.geometry, width, height);

        continue;
      }
      open = _addTo(_emptyPath(), layer.geometry, width, height);
      openColor = layer.color;
      built.add((color: layer.color, path: open));
    }

    _previous = recent;
    _recent = _BadgeCache(height: height, paths: built, width: width);

    return built;
  }

  // ignore: avoid-returning-cascades, it's a one-expression factory.
  Path _emptyPath() => Path()..fillType = _fillType;

  static Path _addTo(
    Path path,
    List<double> geometry,
    double width,
    double height,
  ) {
    int index = 0;

    while (index < geometry.length) {
      final from = index + 1;
      switch (geometry[index]) {
        case moveTo:
          path.moveTo(width * geometry[from], height * geometry[from + 1]);
          index = from + 2;

        case lineTo:
          path.lineTo(width * geometry[from], height * geometry[from + 1]);
          index = from + 2;

        default:
          path.close();
          index = from;
      }
    }

    return path;
  }
}

/// One box an artwork has been built for, with the paths it produced.
final class _BadgeCache {
  const new({required this.height, required this.paths, required this.width});

  final double height;
  final List<_BadgePath> paths;
  final double width;
}
