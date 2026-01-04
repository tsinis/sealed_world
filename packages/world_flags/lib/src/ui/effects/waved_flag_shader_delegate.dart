import "dart:async";
import "dart:math" as math;
import "dart:ui";

import "package:flutter/foundation.dart";
import "package:flutter/scheduler.dart";

import "flag_shader_delegate.dart";
import "flag_shader_options.dart";

/// A reusable delegate that applies the waved-flag shader to cached flag
/// imagery.
class WavedFlagShaderDelegate extends ChangeNotifier
    implements FlagShaderDelegate {
  /// Creates a new instance of [WavedFlagShaderDelegate].
  WavedFlagShaderDelegate({
    required TickerProvider vsync,
    this.options = const FlagShaderOptions(),
    this.onError = _debugPrintError,
  })
  // ignore: avoid-non-empty-constructor-bodies, for readability.
  {
    _ticker = vsync.createTicker(_handleTick);
    _updateTicker();
    unawaited(_initShader());
  }

  /// Visual preferences of shader output.
  final FlagShaderOptions options;

  /// Optional callback to track/handle errors on shader painting process,
  /// default to `debugPrint`.
  final void Function(Object error, StackTrace stackTrace)? onError;

  static FragmentProgram? _program;
  static Future<FragmentProgram>? _programLoader;
  // ignore: avoid-late-keyword, initialized in the constructor, first line.
  late final Ticker _ticker;

  static void _debugPrintError(Object error, StackTrace stackTrace) =>
      debugPrint("WavedFlagShaderDelegate paint failed: $error\n$stackTrace");

  /// Ensures the shader program is loaded before instantiating delegates.
  ///
  /// [assetKey] - represents path to the fragment program from the asset,
  /// default to package's `packages/world_flags/shaders/waved_flag.frag`.
  static Future<void> warmUp([
    String assetKey = "packages/world_flags/shaders/waved_flag.frag",
  ]) async {
    _programLoader ??= FragmentProgram.fromAsset(assetKey);
    _program ??= await _programLoader;
  }

  FragmentShader? _shader;
  double _time = 0;
  Duration _lastTick = Duration.zero;

  Offset get _effectiveWaveDirection => options.waveDirection;

  @override
  bool get shouldClipContent => options.clipContent;

  @override
  double get contentScale => options.clipContent ? 1.0 : options.overflowScale;

  Future<void> _initShader() async {
    await warmUp();
    if (_program == null) return;
    _shader?.dispose();
    _shader = _program?.fragmentShader();
    _configureShader();
    notifyListeners();
  }

  void _updateTicker() {
    if (!options.animate) {
      _ticker.stop();
      _lastTick = Duration.zero;

      return;
    }

    if (!_ticker.isActive) {
      _lastTick = Duration.zero;
      unawaited(_ticker.start());
    }
  }

  Duration? _handleTick(Duration timestamp) {
    if (_lastTick == Duration.zero) return _lastTick = timestamp;

    final delta = timestamp - _lastTick;
    _lastTick = timestamp;
    final deltaSeconds = delta.inMicroseconds / 1e6;
    if (deltaSeconds <= 0) return null;

    _time += deltaSeconds * options.animationSpeed;
    if (_time > 1e4) _time -= 1e4;
    _configureShader(timeOnly: true);
    notifyListeners();

    return null;
  }

  void _configureShader({bool timeOnly = false}) {
    if (_shader == null) return;
    // Time uniform (always updated).
    final timeValue = options.animate ? _time : options.frozenPhase;
    _shader
      ?..setFloat(2, timeValue)
      ..setFloat(3, options.animationSpeed);
    if (timeOnly) return;

    // Wave parameters (indices 4-8).
    _shader
      ?..setFloat(4, options.waveAmplitude)
      ..setFloat(5, options.waveFrequency)
      ..setFloat(6, options.wavePhaseShift)
      ..setFloat(7, options.secondaryAmplitude)
      ..setFloat(8, options.secondaryFrequency)
      ..setFloat(9, options.leftEdgePinned ? 1 : 0) // Edge pinning (9-12).
      ..setFloat(10, options.rightEdgePinned ? 1.0 : 0.0)
      ..setFloat(11, options.pinSoftness)
      ..setFloat(12, options.poleMargin)
      ..setFloat(13, options.shadingEnabled ? 1 : 0) // Shading (13-19).
      ..setFloat(14, options.foldStrength)
      ..setFloat(15, options.highlightStrength)
      ..setFloat(16, options.shadowStrength)
      ..setFloat(17, options.sheenStrength)
      ..setFloat(18, options.sheenFrequency)
      ..setFloat(19, options.perspective)
      ..setFloat(20, options.seed); // Seed/wave direction (indices 20-22).
    final waveDir = _normalizeWaveDirection(_effectiveWaveDirection);
    _shader
      ?..setFloat(21, waveDir.dx)
      ..setFloat(22, waveDir.dy)
      ..setFloat(23, options.turbulence); // Turbulence, (index 23).

    _shader?.setFloat(24, options.fabricVisibility.clamp(0.0, 1.0));
  }

  static Offset _normalizeWaveDirection(Offset dir) {
    final x = dir.dx;
    final y = dir.dy;
    final len = math.sqrt(x * x + y * y);

    return len > 0.001 ? Offset(x / len, y / len) : const Offset(1, 0);
  }

  @override
  bool paintWithShader({
    required Canvas destination,
    required Size size,
    required Image image,
  }) {
    if (_shader == null || size.isEmpty) return false;
    try {
      _shader
        ?..setFloat(0, size.width)
        ..setFloat(1, size.height)
        ..setImageSampler(0, image);
      destination.drawRect(Offset.zero & size, Paint()..shader = _shader);

      return true;
    } on Object catch (error, stackTrace) {
      onError?.call(error, stackTrace);

      return false;
    }
  }

  @override
  void dispose() {
    _ticker.dispose();
    _shader?.dispose();
    super.dispose();
  }
}
