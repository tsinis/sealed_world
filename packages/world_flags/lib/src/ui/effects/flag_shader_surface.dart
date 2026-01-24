// ignore_for_file: prefer-class-destructuring

import "dart:async" show unawaited;

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show IsoStandardized;

// ignore: avoid-importing-entrypoint-exports, only shows maps.
import "../../../world_flags.dart"
    show
        smallSimplifiedCurrencyFlagsMap,
        smallSimplifiedFlagsMap,
        smallSimplifiedLanguageFlagsMap;
import "../../helpers/extensions/aspect_ratio_extension.dart";
import "../../model/flag_properties.dart";
import "../../model/typedefs.dart";
import "../flags/basic_flag.dart";
import "../painters/basic/shader_stripes_painter.dart";
import "flag_shader_delegate.dart";
import "flag_shader_options.dart";
import "waved_flag_shader_delegate.dart";

/// An animated, shader-driven flag widget that applies GPU-based visual
/// effects to country/currency/language flags.
///
/// This widget provides a declarative API for rendering flags with real-time
/// shader animations (e.g., waving cloth effect) while maintaining
/// compatibility with the existing [BasicFlag] ecosystem.
///
/// {@template flag_shader_surface_usage}
/// ## Usage
///
/// Basic usage with default shader options:
/// ```dart
/// FlagShaderSurface(CountryUsa())
/// ```
///
/// With custom shader options:
/// ```dart
/// FlagShaderSurface(
///   CountryFra(),
///   options: FlagShaderOptions(
///     turbulence: 0.1,
///   ),
/// )
/// ```
///
/// With explicit dimensions:
/// ```dart
/// FlagShaderSurface(
///   CountryDeu(),
///   width: 200,
///   height: 120,
/// )
/// ```
/// {@endtemplate}
///
/// ## Shader Delegate Lifecycle
///
/// The widget manages shader delegate lifecycle automatically:
/// - If [shader] is provided externally, the caller is responsible for
///   disposal.
/// - If no [shader] is provided, an internal [WavedFlagShaderDelegate] is
///   created and disposed automatically when the widget is removed from the
///   tree or when [options] change.
///
/// ## Performance Considerations
///
/// - The shader painter caches rasterized flag content to minimize GPU work.
/// - Animation is driven by the delegate's internal ticker, avoiding
///   unnecessary widget rebuilds.
/// - For lists of animated flags, consider using [TickerMode] to pause
///   off-screen animations.
///
/// See also:
/// - [FlagShaderOptions] for configuring shader visual parameters.
/// - [FlagShaderDelegate] for implementing custom shader effects.
/// - [WavedFlagShaderDelegate] for the default waving cloth implementation.
class FlagShaderSurface extends StatefulWidget {
  /// Creates an animated flag surface for the given [item].
  ///
  /// The [item] must be a valid ISO-standardized object (country, language,
  /// or currency) that has a corresponding flag in [map] or [alternativeMap].
  ///
  /// {@macro flag_shader_surface_usage}
  const FlagShaderSurface(
    this.item, {
    Map<IsoStandardized, BasicFlag> map = const {
      ...smallSimplifiedFlagsMap,
      ...smallSimplifiedCurrencyFlagsMap,
      ...smallSimplifiedLanguageFlagsMap,
    },
    Map<IsoStandardized, BasicFlag>? alternativeMap,
    this.orElse = const SizedBox.shrink(),
    this.options = const FlagShaderOptions(),
    this.shader,
    this.delegateBuilder,
    this.height,
    this.width,
    this.aspectRatio,
    super.key,
  }) : _alternativeMap = alternativeMap,
       _map = map;

  /// The ISO-standardized object whose flag should be displayed.
  ///
  /// This can be a country, language, or currency that conforms to
  /// [IsoStandardized].
  final IsoStandardized item;

  /// Primary map of ISO objects to their flag representations.
  final Map<IsoStandardized, BasicFlag> _map;

  /// Optional alternative map that takes precedence over [_map] when looking
  /// up flags.
  ///
  /// Useful for providing regional flag variants or custom flag designs.
  final Map<IsoStandardized, BasicFlag>? _alternativeMap;

  /// Widget to display when no flag is found for [item].
  ///
  /// Defaults to [SizedBox.shrink].
  final Widget orElse;

  /// Configuration options for the shader effect.
  ///
  /// Controls visual parameters like wave amplitude, turbulence, shading
  /// intensity, and animation speed.
  ///
  /// Defaults to [FlagShaderOptions] with standard values suitable for
  /// most use cases.
  final FlagShaderOptions options;

  /// Optional externally-managed shader delegate.
  ///
  /// When provided, the widget uses this delegate instead of creating an
  /// internal one. The caller is responsible for disposing this delegate.
  ///
  /// This is useful when sharing a single delegate across multiple flag
  /// surfaces or when using a custom shader implementation.
  final FlagShaderDelegate? shader;

  /// Optional factory for creating custom shader delegates.
  ///
  /// When provided and [shader] is null, this builder is used instead of the
  /// default [WavedFlagShaderDelegate] constructor.
  ///
  /// The builder receives:
  /// - A [TickerProvider] for animation timing.
  /// - The current [FlagShaderOptions].
  /// - The flag's [FlagProperties] for context-aware delegate creation.
  final FlagShaderDelegateBuilder? delegateBuilder;

  /// Optional fixed height for the flag.
  ///
  /// When `null`, uses the flag's default height.
  final double? height;

  /// Optional fixed width for the flag.
  ///
  /// When `null`, uses the flag's default width.
  final double? width;

  /// Optional aspect ratio override.
  ///
  /// When `null`, uses the flag's natural aspect ratio.
  final double? aspectRatio;

  /// Resolves the flag for [item] from available maps.
  BasicFlag? get _flag => _alternativeMap?[item] ?? _map[item];

  @override
  String toStringShort() => "FlagShaderSurface(${item.code})";

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty("iso", item.code))
      ..add(DiagnosticsProperty<FlagShaderOptions>("options", options))
      ..add(DiagnosticsProperty<FlagShaderDelegate?>("shader", shader))
      ..add(IntProperty("mapSize", _map.length))
      ..add(IntProperty("alternativeMapSize", _alternativeMap?.length ?? 0))
      ..add(DoubleProperty("height", height))
      ..add(DoubleProperty("width", width))
      ..add(DoubleProperty("aspectRatio", aspectRatio))
      ..add(
        ObjectFlagProperty<FlagShaderDelegateBuilder?>.has(
          "delegateBuilder",
          delegateBuilder,
        ),
      );
  }

  @override
  State<FlagShaderSurface> createState() => _FlagShaderSurfaceState();
}

class _FlagShaderSurfaceState extends State<FlagShaderSurface>
    with TickerProviderStateMixin {
  FlagShaderDelegate? _managedDelegate;
  FlagShaderOptions? _cachedOptions;
  ShaderStripesPainter? _painter;
  double _pixelRatio = 1;

  /// Creates the default waved-flag shader delegate.
  ///
  /// Ensures the shader program is warmed up before creating the delegate
  /// to minimize first-frame compilation junk.
  static FlagShaderDelegate _defaultDelegateBuilder(
    TickerProvider tickerProvider,
    FlagShaderOptions options,
    FlagProperties properties,
  ) {
    unawaited(WavedFlagShaderDelegate.warmUp());

    return WavedFlagShaderDelegate(vsync: tickerProvider, options: options);
  }

  void _disposeManagedDelegate() {
    _managedDelegate?.dispose();
    _managedDelegate = null;
    _cachedOptions = null;
  }

  void _disposePainter() {
    _painter?.dispose();
    _painter = null;
  }

  /// Resolves or creates the appropriate shader delegate for the given flag.
  ///
  /// Returns the externally-provided `widget.shader` if available, otherwise
  /// creates and caches an internal delegate using `widget.delegateBuilder`,
  /// or the default builder.
  FlagShaderDelegate? _resolveDelegate(BasicFlag flag) {
    final widgetShader = widget.shader;
    if (widgetShader != null) {
      if (_managedDelegate != null) _disposeManagedDelegate();

      return widgetShader;
    }

    final opts = widget.options;
    final needsNewDelegate = _managedDelegate == null || _cachedOptions != opts;

    if (needsNewDelegate) {
      _managedDelegate?.dispose();
      _managedDelegate = (widget.delegateBuilder ?? _defaultDelegateBuilder)(
        this,
        opts,
        flag.properties,
      );
      _cachedOptions = opts;
    }

    return _managedDelegate;
  }

  /// Creates or updates the shader painter for the given flag and delegate.
  ///
  /// The painter is cached and only recreated when the delegate or flag
  /// properties change, minimizing object allocation during animation frames.
  ShaderStripesPainter _resolvePainter(
    BasicFlag flag,
    FlagShaderDelegate delegate,
  ) {
    final currentPainter = _painter;
    if (currentPainter != null && currentPainter.shader == delegate) {
      return currentPainter; // Reuse painter if delegate hasn't changed.
    }

    _disposePainter(); // Dispose old painter and create new one.
    _painter = ShaderStripesPainter(
      flag.properties,
      flag.elementsBuilder?.call(
        flag.properties.elementsProperties,
        flag.flagAspectRatio,
      ),
      pixelRatio: _pixelRatio,
      shader: delegate,
    );

    return _painter!; // ignore: avoid-non-null-assertion, just assigned above.
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final pixelRatio =
        MediaQuery.maybeDevicePixelRatioOf(context) ??
        View.of(context).devicePixelRatio; // coverage:ignore-line
    if (pixelRatio == _pixelRatio) return;
    _pixelRatio = pixelRatio;
    _disposePainter(); // Force painter rebuild with new pixel ratio.
  }

  @override
  void didUpdateWidget(covariant FlagShaderSurface oldWidget) {
    super.didUpdateWidget(oldWidget);
    final delegateChanged =
        oldWidget.delegateBuilder != widget.delegateBuilder ||
        oldWidget.options != widget.options ||
        oldWidget.shader != widget.shader;

    if (delegateChanged) {
      _disposePainter();
      _disposeManagedDelegate();
    }
  }

  @override
  void dispose() {
    _disposePainter();
    _disposeManagedDelegate();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final flag = widget._flag;
    if (flag == null) return widget.orElse;
    final delegate = _resolveDelegate(flag); // Null is practically impossible.
    if (delegate == null) return widget.orElse; // coverage:ignore-line

    return SizedBox(
      height: widget.height ?? flag.height,
      width: widget.width ?? flag.width,
      child: AspectRatio(
        aspectRatio:
            widget.aspectRatio ??
            widget.height.aspectRatio(widget.width) ??
            flag.flagAspectRatio,
        child: CustomPaint(
          painter: _resolvePainter(flag, delegate),
          willChange: widget.options.animate,
        ),
      ),
    );
  }
}
