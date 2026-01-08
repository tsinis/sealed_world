// ignore_for_file: avoid-returning-void

import "dart:math";
import "dart:ui";

import "package:flutter/foundation.dart" show Listenable;
import "package:flutter/rendering.dart";

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
  ShaderStripesPainter(
    FlagProperties properties,
    T? elementsPainter, {
    required this.shader,
  }) : super(properties, null, elementsPainter, repaint: shader);

  /// The shader delegate responsible for applying visual effects.
  final FlagShaderDelegate shader;

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
    final tempCanvas = Canvas(recorder);
    if (shader.shouldClipContent) applyFlagClipping(tempCanvas, size);
    _paintScaledStripes(tempCanvas, size, scale);
    final picture = recorder.endRecording();

    final width = max(1, size.width.ceil());
    final height = max(1, size.height.ceil());
    _image = picture.toImageSync(width, height);
    picture.dispose(); // Dispose picture after converting to image.
    _size = size;
    _scale = scale;
    _clip = shader.shouldClipContent;
  }

  void _paintScaledStripes(Canvas canvas, Size size, double scaleY) {
    if (scaleY == 1) return paintStripes(canvas, size);

    final center = Offset(size.width / 2, size.height / 2);
    canvas
      ..save()
      ..translate(center.dx, center.dy)
      ..scale(1, scaleY)
      ..translate(-center.dx, -center.dy);
    paintStripes(canvas, size);
    canvas.restore();
  }

  bool _renderWithShader(Canvas canvas, Size size, Image image) {
    if (shader.shouldClipContent) {
      canvas.save();
      applyFlagClipping(canvas, size);
    }
    final painted = shader.paintWithShader(canvas, size, image: image);
    if (shader.shouldClipContent) canvas.restore();

    return painted;
  }

  void _drawCachedImage(Canvas canvas, Size size, Image image) {
    if (shader.shouldClipContent) {
      canvas.save();
      applyFlagClipping(canvas, size);
    }
    final source = Rect.fromLTWH(0, 0, _size?.width ?? 0, _size?.height ?? 0);
    final destination = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawImageRect(image, source, destination, Paint());
    if (shader.shouldClipContent) canvas.restore();
  }

  @override
  bool shouldRepaint(covariant ShaderStripesPainter<T> oldDelegate) =>
      oldDelegate.shader != shader ||
      oldDelegate.properties != properties ||
      oldDelegate.decoration != decoration ||
      oldDelegate.elementsPainter != elementsPainter;

  /// Disposes resources owned by this painter.
  ///
  /// This disposes [_image] which this painter owns. The [shader] delegate
  /// is NOT disposed here - its lifecycle is managed by [FlagShaderSurface].
  void dispose() {
    _image?.dispose();
    _image = null;
    _size = null;
    _scale = null;
    _clip = null;
  }
}
