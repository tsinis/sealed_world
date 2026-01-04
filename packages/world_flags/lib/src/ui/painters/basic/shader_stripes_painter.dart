// ignore_for_file: avoid-returning-void

import "dart:math";
import "dart:ui";

import "package:flutter/rendering.dart";

import "../../../model/flag_properties.dart";
import "../../effects/flag_shader_delegate.dart";
import "stripes_painter.dart";

/// Painter that caches the flag render output and feeds it into a _shader
/// delegate for animation without re-rendering every frame.
class ShaderStripesPainter<T extends CustomPainter> extends StripesPainter<T> {
  /// Creates a new instance of [ShaderStripesPainter].
  ShaderStripesPainter(
    FlagProperties properties,
    T? elementsPainter, {
    required FlagShaderDelegate shader,
  }) : _shader = shader,
       super(properties, null, elementsPainter, repaint: shader);

  final FlagShaderDelegate _shader;
  bool? _clip;
  Image? _image;
  double? _scale;
  Size? _size;

  @override
  void paint(Canvas canvas, Size size) {
    _ensureCache(size);
    final image = _image;
    if (image == null) return super.paint(canvas, size);

    final painted = _renderWithShader(canvas, size, image);
    if (!painted) _drawCachedImage(canvas, size, image);
  }

  void _ensureCache(Size size) {
    if (_image != null &&
        _size == size &&
        _scale == _shader.contentScale &&
        _clip == _shader.shouldClipContent) {
      return;
    }
    _rebuildCache(size, _shader.contentScale);
  }

  void _rebuildCache(Size size, double scale) {
    _image?.dispose();
    _image = null;

    final recorder = PictureRecorder();
    final tempCanvas = Canvas(recorder);
    if (_shader.shouldClipContent) applyFlagClipping(tempCanvas, size);
    _paintScaledStripes(tempCanvas, size, scale);
    final picture = recorder.endRecording();

    final width = max(1, size.width.ceil());
    final height = max(1, size.height.ceil());
    _image = picture.toImageSync(width, height);
    _size = size;
    _scale = scale;
    _clip = _shader.shouldClipContent;
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
    if (_shader.shouldClipContent) {
      canvas.save();
      applyFlagClipping(canvas, size);
    }
    final painted = _shader.paintWithShader(canvas, size, image: image);
    if (_shader.shouldClipContent) canvas.restore();

    return painted;
  }

  void _drawCachedImage(Canvas canvas, Size size, Image image) {
    if (_shader.shouldClipContent) {
      canvas.save();
      applyFlagClipping(canvas, size);
    }
    final source = Rect.fromLTWH(0, 0, _size?.width ?? 0, _size?.height ?? 0);
    final destination = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawImageRect(image, source, destination, Paint());
    if (_shader.shouldClipContent) canvas.restore();
  }

  @override
  bool shouldRepaint(covariant ShaderStripesPainter<T> oldDelegate) =>
      oldDelegate._shader != _shader ||
      oldDelegate.properties != properties ||
      oldDelegate.decoration != decoration ||
      oldDelegate.elementsPainter != elementsPainter;

  /// Releases any resources allocated by the painter.
  void dispose() {
    _image?.dispose();
    _image = null;
    _shader.dispose();
  }
}
