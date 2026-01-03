import "package:flutter/widgets.dart";

/// Paints the flag content into an offscreen surface so it can be sampled
/// inside a fragment shader.
typedef FlagShaderContentPainter = void Function(Canvas canvas, Size size);

/// A delegate that knows how to post-process flag content with a shader.
///
/// Implementations can decide whether to apply a shader or bail out and let the
/// fallback painter run.
abstract class FlagShaderDelegate implements Listenable {
  /// Creates a new instance of [FlagShaderDelegate].
  const FlagShaderDelegate({
    this.contentScale = 1,
    this.shouldClipContent = false,
  });

  /// Whether the painter should clip to the flag bounds before invoking the
  /// shader.
  ///
  /// Defaults to `false`, allowing shader effects to extend beyond the
  /// rectangle.
  final bool shouldClipContent;

  /// Uniform scale factor to apply to the painted flag before handing it to the
  /// shader.
  ///
  /// Values below `1.0` shrink the base content to leave visual headroom for
  /// shader-driven overflow. Defaults to `1.0` (no scaling).
  final double contentScale;

  /// Attempts to paint [paintContent] with a shader.
  ///
  /// Returns `true` when the shader path was taken. If `false` is returned, the
  /// caller should paint the content normally.
  bool paintWithShader({
    required Canvas destination,
    required Size size,
    required FlagShaderContentPainter paintContent,
  });

  /// Releases any resources allocated by the delegate.
  void dispose();
}
