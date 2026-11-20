import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show IsoStandardized;

import "../../collections/simplified_flags_map.dart";
import "../../helpers/extensions/aspect_ratio_extension.dart";
import "../../helpers/extensions/paint_equality_extension.dart";
import "../../model/flag_properties.dart";
import "../../model/typedefs.dart";
import "../flags/basic_flag.dart";
import "../painters/basic/shader_stripes_painter.dart";
import "animated_flag_shader_delegate.dart";
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
/// import 'package:world_flags/world_flags.dart';
///
/// void main() {
///   final country = WorldCountry.list.first;
///   FlagShaderSurface(country);
/// }
/// ```
///
/// With custom shader options:
/// ```dart
/// import 'package:world_flags/world_flags.dart';
///
/// void main() {
///   final country = WorldCountry.list.first;
///   FlagShaderSurface(
///     country,
///     options: const FlagShaderOptions(
///       turbulence: 0.1,
///     ),
///   );
/// }
/// ```
///
/// With explicit dimensions:
/// ```dart
/// import 'package:world_flags/world_flags.dart';
///
/// void main() {
///   final country = WorldCountry.list.first;
///   FlagShaderSurface(
///     country,
///     width: 200,
///     height: 120,
///   );
/// }
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
/// ## Reduced Motion
///
/// When the platform asks to reduce or disable animations (see
/// [MediaQueryData.reduceMotion] and [MediaQueryData.disableAnimations]), the
/// internal delegate is created with `animate: false`, so the flag rests at
/// [FlagShaderOptions.frozenPhase]. Wrap the widget in a [MediaQuery] to
/// override it. A delegate provided via [shader] is used as is, and a delegate
/// of a [delegateBuilder] has to follow [FlagShaderOptions.animate] (i.e. in
/// its `animate` getter) to respect it.
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
  /// or currency) that has a corresponding flag in [_map] or [_alternativeMap].
  ///
  /// {@macro flag_shader_surface_usage}
  const new(
    this.item, {
    this._map = const {
      ...smallSimplifiedFlagsMap,
      ...smallSimplifiedCurrencyFlagsMap,
      ...smallSimplifiedLanguageFlagsMap,
    },
    this._alternativeMap,
    this.orElse = const SizedBox.shrink(),
    this.options = const FlagShaderOptions(),
    this.shader,
    this.delegateBuilder,
    this.height,
    this.width,
    this.aspectRatio,
    super.key,
    // ignore: private field with public param name.
  });

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
  /// surfaces or when using a custom shader implementation. A shared delegate
  /// sets the uniforms of a single shader before every surface paint, so all
  /// of them are painted with the same delegate parameters.
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
  ///
  /// The returned delegate is owned (and disposed) by this widget, so the
  /// builder must return a new instance on every call. A new delegate is
  /// created when the [options], the flag or the builder itself change, so
  /// prefer a stable builder (i.e. a static or top-level function) over an
  /// inline closure. The time of an [AnimatedFlagShaderDelegate] continues in
  /// the new delegate, so the animation doesn't restart.
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
  // The properties the managed delegate was built from.
  FlagProperties? _delegateProperties;
  ShaderStripesPainter? _painter;
  // The flag the painter was built from, maps may be changed in place.
  BasicFlag? _paintedFlag;
  double _pixelRatio = 1;
  TextDirection? _textDirection;
  bool _isMotionReduced = false;

  /// Creates the default waved-flag shader delegate (it loads the shader).
  static FlagShaderDelegate _defaultDelegateBuilder(
    TickerProvider tickerProvider,
    FlagShaderOptions options,
    FlagProperties _,
  ) =>
      // ignore: avoid-undisposed-instances, it's disposed by this state.
      WavedFlagShaderDelegate(vsync: tickerProvider, options: options);

  // Only what the painter is built from matters, not the (i.e. copied) flag.
  static bool _isRepaintedFlag(BasicFlag? old, BasicFlag? flag) {
    final isSameFlag = old == null
        ? flag == null
        : old.properties.paintsLike(flag?.properties);

    return !isSameFlag ||
        old?.elementsBuilder != flag?.elementsBuilder ||
        old?.backgroundPainter != flag?.backgroundPainter ||
        old?.foregroundPainter != flag?.foregroundPainter ||
        old?.foregroundPainterBuilder != flag?.foregroundPainterBuilder ||
        old?.decoration != flag?.decoration;
  }

  // A custom builder also gets the metadata, which isn't painted.
  bool _isOtherBuilderInput(FlagProperties? properties) {
    final built = _delegateProperties;

    return widget.delegateBuilder != null &&
        built != null &&
        built.isSimplified != properties?.isSimplified;
  }

  void _disposeManagedDelegate() {
    _managedDelegate?.dispose();
    _managedDelegate = null;
    _delegateProperties = null;
  }

  void _disposePainter() {
    _painter?.dispose();
    _painter = null;
    _paintedFlag = null;
  }

  /// Brings the delegate and the painter up to date with the widget, so that
  /// the build only reads them.
  ///
  /// Uses the externally-provided `widget.shader` if available, otherwise an
  /// internal delegate (see [_managedDelegateFor]). The painter is recreated
  /// only if it's outdated or painted with another delegate, minimizing object
  /// allocation during animation frames.
  void _sync({
    bool isDelegateOutdated = false,
    bool isPainterOutdated = false,
  }) {
    final flag = widget._flag;
    if (flag == null) {
      _disposePainter();
      _disposeManagedDelegate(); // Stops the ticker of an animated delegate.

      return;
    }

    final FlagShaderDelegate delegate;
    if (widget.shader case final shader?) {
      _disposeManagedDelegate();
      delegate = shader;
    } else {
      delegate = _managedDelegateFor(flag, isOutdated: isDelegateOutdated);
    }
    // Maps may be changed in place, so the flag is compared too.
    if (!isPainterOutdated &&
        _painter?.shader == delegate &&
        !_isRepaintedFlag(_paintedFlag, flag)) {
      return;
    }

    _disposePainter();
    _painter = _createPainter(flag, delegate);
  }

  /// Returns the internal delegate, created using `widget.delegateBuilder` (or
  /// the default builder) if there is none yet. An outdated one is replaced,
  /// and the animation time continues in the new one.
  FlagShaderDelegate _managedDelegateFor(
    BasicFlag flag, {
    required bool isOutdated,
  }) {
    final current = _managedDelegate;
    if (current != null && !isOutdated) return current;

    final options = widget.options;
    final created = (widget.delegateBuilder ?? _defaultDelegateBuilder)(
      this,
      _isMotionReduced && options.animate
          ? options.copyWith(animate: false)
          : options,
      flag.properties,
    );
    if (current is AnimatedFlagShaderDelegate &&
        created is AnimatedFlagShaderDelegate) {
      created.continueFrom(current);
    }
    _disposeManagedDelegate();
    _delegateProperties = flag.properties;

    return _managedDelegate = created;
  }

  /// Creates the shader painter for the given flag and delegate.
  ShaderStripesPainter _createPainter(
    BasicFlag flag,
    FlagShaderDelegate delegate,
  ) {
    _paintedFlag = flag;
    final BasicFlag(
      :backgroundPainter,
      :decoration,
      :flagAspectRatio,
      foregroundPainter: overlay,
      foregroundPainterBuilder: overlayBuilder,
      :properties,
    ) = flag;
    final elements = properties.elementsProperties;

    return ShaderStripesPainter(
      properties,
      flag.resolvePainter(elements, flagAspectRatio),
      pixelRatio: _pixelRatio,
      shader: delegate,
      backgroundPainter: backgroundPainter,
      foregroundPainter:
          overlay ?? overlayBuilder?.call(elements, flagAspectRatio),
      decoration: decoration,
      textDirection: _textDirection,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final isMotionReduced =
        (MediaQuery.maybeReduceMotionOf(context) ?? false) ||
        (MediaQuery.maybeDisableAnimationsOf(context) ?? false);
    // Rebuilt with or without the animation (the time continues), unless it
    // doesn't animate anyway.
    final isDelegateOutdated =
        isMotionReduced != _isMotionReduced && widget.options.animate;
    _isMotionReduced = isMotionReduced;
    final pixelRatio =
        MediaQuery.maybeDevicePixelRatioOf(context) ??
        View.of(context).devicePixelRatio; // coverage:ignore-line
    final textDirection = Directionality.maybeOf(context);
    // The painter is built with the pixel ratio and the text direction (of a
    // directional decoration radius).
    final isPainterOutdated =
        pixelRatio != _pixelRatio || textDirection != _textDirection;
    _pixelRatio = pixelRatio;
    _textDirection = textDirection;
    // Also creates the delegate and the painter, on the first call.
    _sync(
      isDelegateOutdated: isDelegateOutdated,
      isPainterOutdated: isPainterOutdated,
    );
  }

  @override
  void didUpdateWidget(covariant FlagShaderSurface oldWidget) {
    super.didUpdateWidget(oldWidget);
    final isFlagChanged =
        oldWidget.item != widget.item ||
        _isRepaintedFlag(_paintedFlag, widget._flag);
    // The default builder doesn't use the flag, so another flag only needs a
    // new painter, unless a custom builder gets it.
    final isDelegateOutdated =
        oldWidget.delegateBuilder != widget.delegateBuilder ||
        oldWidget.options != widget.options ||
        (isFlagChanged && widget.delegateBuilder != null) ||
        _isOtherBuilderInput(widget._flag?.properties);
    if (!isFlagChanged &&
        !isDelegateOutdated &&
        oldWidget.shader == widget.shader) {
      return;
    }

    _sync(isDelegateOutdated: isDelegateOutdated, isPainterOutdated: true);
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
    final painter = _painter; // Kept up to date by [_sync].
    assert(
      flag == null || painter != null,
      "The painter of the flag must be created before the build.",
    );
    if (flag == null || painter == null) return widget.orElse;
    final delegate = painter.shader;

    return SizedBox(
      height: widget.height ?? flag.height,
      width: widget.width ?? flag.width,
      child: AspectRatio(
        aspectRatio:
            widget.aspectRatio ??
            widget.height.aspectRatio(widget.width) ??
            flag.flagAspectRatio,
        // Animated shader repaints every frame, so isolate it from parents.
        child: RepaintBoundary(
          child: CustomPaint(
            painter: painter,
            willChange:
                delegate is AnimatedFlagShaderDelegate && delegate.animate,
          ),
        ),
      ),
    );
  }
}
