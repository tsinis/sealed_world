import "dart:ui" show Canvas, Image, Size;

import "package:flutter/foundation.dart" show ChangeNotifier;

import "package:world_flags/src/ui/effects/flag_shader_delegate.dart";

/// A static (not animated) shader delegate, which never paints with a shader.
// ignore: avoid-top-level-members-in-tests, it's a test helper, not a test.
final class FakeFlagShaderDelegate extends ChangeNotifier
    implements FlagShaderDelegate {
  @override
  double get contentScale => 1;

  @override
  bool get shouldClipContent => false;

  @override
  bool paintWithShader(Canvas destination, Size size, {required Image image}) =>
      false;
}
