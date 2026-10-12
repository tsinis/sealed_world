// ignore_for_file: avoid-returning-void

import "dart:math";
import "dart:ui";

import "package:flutter/foundation.dart" show Listenable;
import "package:flutter/rendering.dart";

import "../../../helpers/extensions/box_decoration_extension.dart";
import "../../../model/flag_properties.dart";
import "../../effects/flag_shader_delegate.dart";
import "../../effects/flag_shader_surface.dart" show FlagShaderSurface;
import "stripes_painter.dart";

/// Painter that caches the flag render output and feeds it into a shader
/// delegate for animation without re-rendering every frame.
///
/// ## Image Ownership
///
/// This painter OWNS the [_image] and is responsible for its lifecycle.
/// The [shader] delegate receives the image for rendering but must NOT
/// dispose it.
class ShaderStripesPainter<T extends CustomPainter> extends StripesPainter<T> {
  /// Creates a new instance of [ShaderStripesPainter].
  ///
  /// The [shader] delegate drives both animation (via its [Listenable]
  /// interface) and the shader rendering path.
  ///
  /// A [backgroundPainter] replaces the stripes and elements and a
  /// [foregroundPainter] is painted over them, both before the shader, so they
  /// are distorted with the flag. The output is clipped to the shape of the
  /// `decoration` (resolved in the `textDirection`), if it has one.
  new(
    FlagProperties properties,
    T? elementsPainter, {
    required this.shader,
    this.pixelRatio = 1,
    this.backgroundPainter,
    this.foregroundPainter,
    BoxDecoration? decoration,
    TextDirection? textDirection,
  }) : super(
         properties,
         decoration,
         elementsPainter,
         repaint: Listenable.merge([
           shader,
           backgroundPainter,
           foregroundPainter,
         ]),
         textDirection: textDirection,
       )
  // ignore: avoid-non-empty-constructor-bodies, to listen to the painters.
  {
    backgroundPainter?.addListener(_invalidateCache);
    foregroundPainter?.addListener(_invalidateCache);
  }

  /// The shader delegate responsible for applying visual effects.
  final FlagShaderDelegate shader;

  /// The pixel ratio used for scaling the flag image.
  final double pixelRatio;

  /// An optional painter of the flag, in place of its stripes and elements.
  final CustomPainter? backgroundPainter;

  /// An optional painter painted over the flag.
  final CustomPainter? foregroundPainter;

  // A shaped decoration clips the output, like the stripes are clipped to it.
  bool get _isClipped =>
      shader.shouldClipContent ||
      decoration.isCircle ||
      borderRadius.resolve(textDirection ?? TextDirection.ltr) !=
          BorderRadius.zero;
  final _paint = Paint()..filterQuality = FilterQuality.high;
  bool? _clip;
  Image? _image;
  double? _scale;
  Size? _size;

  @override
  void paint(Canvas canvas, Size size) {
    _ensureCache(size);
    final image = _image; // Null is practically impossible here, defensive.
    if (image == null) return super.paint(canvas, size); // coverage:ignore-line

    final painted = _renderWithShader(canvas, size, image);
    if (!painted) _drawCachedImage(canvas, size, image);
  }

  void _ensureCache(Size size) {
    if (_image != null &&
        _size == size &&
        _scale == shader.contentScale &&
        _clip == shader.shouldClipContent) {
      return;
    }
    _rebuildCache(size, shader.contentScale);
  }

  void _rebuildCache(Size size, double scale) {
    _image?.dispose(); // Dispose previous image before creating new one.
    _image = null;

    final recorder = PictureRecorder();
    final tempCanvas = Canvas(recorder)..scale(pixelRatio);
    if (shader.shouldClipContent) applyFlagClipping(tempCanvas, size);
    _paintScaledStripes(tempCanvas, size, scale);
    final picture = recorder.endRecording();

    final width = max(1, (size.width * pixelRatio).ceil());
    final height = max(1, (size.height * pixelRatio).ceil());
    _image = picture.toImageSync(width, height);
    picture.dispose(); // Dispose picture after converting to image.
    _size = size;
    _scale = scale;
    _clip = shader.shouldClipContent;
  }

  void _paintScaledStripes(Canvas canvas, Size size, double scaleY) {
    canvas.save();
    if (scaleY != 1) {
      final center = Offset(size.width / 2, size.height / 2);
      canvas
        ..translate(center.dx, center.dy)
        ..scale(1, scaleY)
        ..translate(-center.dx, -center.dy);
    }
    // Clip to the flag's own body, inside the content scale: elements are
    // allowed to overhang it (Bosnia's stars are cut off by the edge on the
    // real flag) and the recording is what the shader then distorts, so
    // nothing may be left outside. The picture is cached, so this costs
    // nothing per frame.
    canvas.clipRect(Offset.zero & size, doAntiAlias: false);
    final background = backgroundPainter;
    if (background == null) {
      paintStripes(canvas, size);
    } else {
      background.paint(canvas, size);
    }
    foregroundPainter?.paint(canvas, size);
    canvas.restore();
  }

  bool _renderWithShader(Canvas canvas, Size size, Image image) {
    final isClipped = _isClipped;
    if (isClipped) {
      canvas.save();
      applyFlagClipping(canvas, size);
    }
    final painted = shader.paintWithShader(canvas, size, image: image);
    if (isClipped) canvas.restore();

    return painted;
  }

  void _drawCachedImage(Canvas canvas, Size size, Image image) {
    final isClipped = _isClipped;
    if (isClipped) {
      canvas.save();
      applyFlagClipping(canvas, size);
    }
    final source = Rect.fromLTWH(
      0,
      0,
      (_size?.width ?? 0) * pixelRatio,
      (_size?.height ?? 0) * pixelRatio,
    );
    final destination = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawImageRect(image, source, destination, _paint);
    if (isClipped) canvas.restore();
  }

  @override
  bool shouldRepaint(covariant ShaderStripesPainter<T> oldDelegate) =>
      oldDelegate.shader != shader ||
      oldDelegate.pixelRatio != pixelRatio ||
      oldDelegate.properties != properties ||
      oldDelegate.elementsPainter != elementsPainter ||
      oldDelegate.backgroundPainter != backgroundPainter ||
      oldDelegate.foregroundPainter != foregroundPainter ||
      oldDelegate.decoration != decoration ||
      oldDelegate.textDirection != textDirection;

  // The painters are recorded into the cached image, so it's outdated now.
  void _invalidateCache() {
    _image?.dispose();
    _image = null;
  }

  /// Disposes resources owned by this painter.
  ///
  /// This disposes [_image] which this painter owns. The [shader] delegate
  /// is NOT disposed here - its lifecycle is managed by [FlagShaderSurface].
  void dispose() {
    backgroundPainter?.removeListener(_invalidateCache);
    foregroundPainter?.removeListener(_invalidateCache);
    _image?.dispose();
    _image = null;
    _size = null;
    _scale = null;
    _clip = null;
  }
}
