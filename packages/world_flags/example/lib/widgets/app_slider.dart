import "package:flutter/services.dart" show LogicalKeyboardKey;
import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";

/// A continuous slider, drawn like the Material 3 (2023) slider: a 4 point
/// track, a 6 point active part, a 20 point thumb and an optional secondary
/// track value.
class AppSlider extends StatefulWidget {
  const new({
    required this.value,
    required this.onChanged,
    this.min = 0,
    this.max = 1,
    this.secondaryTrackValue,
    this.semanticValueBuilder,
    super.key,
  });

  /// The currently selected value, between [min] and [max].
  final double value;

  /// Called with a new value while the user drags or taps the slider.
  final ValueChanged<double> onChanged;

  /// The smallest value the user can select.
  final double min;

  /// The largest value the user can select.
  final double max;

  /// A value drawn as a lighter track between the thumb and itself.
  final double? secondaryTrackValue;

  /// Describes the value for screen readers, a percentage by default.
  final String Function(double value)? semanticValueBuilder;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  bool _isDragging = false;
  bool _isHovered = false;
  bool _isFocused = false;

  static const _height = 48.0;
  static const _overlayRadius = 24.0;
  static const _animationDuration = Duration(milliseconds: 100);

  /// Screen reader and keyboard step, as a fraction of the range.
  static const _step = 0.05;

  double get _range => widget.max - widget.min;

  double get _fraction => _fractionOf(widget.value);

  static const _ltrShortcuts = <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.arrowUp): _StepIntent(1),
    SingleActivator(LogicalKeyboardKey.arrowRight): _StepIntent(1),
    SingleActivator(LogicalKeyboardKey.arrowDown): _StepIntent(-1),
    SingleActivator(LogicalKeyboardKey.arrowLeft): _StepIntent(-1),
  };

  static const _rtlShortcuts = <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.arrowUp): _StepIntent(1),
    SingleActivator(LogicalKeyboardKey.arrowLeft): _StepIntent(1),
    SingleActivator(LogicalKeyboardKey.arrowDown): _StepIntent(-1),
    SingleActivator(LogicalKeyboardKey.arrowRight): _StepIntent(-1),
  };

  double _fractionOf(double value) =>
      _range <= 0 ? 0 : ((value - widget.min) / _range).clamp(0, 1);

  double _valueOf(double fraction) =>
      widget.min + fraction.clamp(0, 1) * _range;

  String _describe(double value) =>
      widget.semanticValueBuilder?.call(value) ??
      "${(_fractionOf(value) * 100).round()}%";

  void _handlePosition(double x) {
    final trackWidth = (context.size?.width ?? 0) - _overlayRadius * 2;
    if (trackWidth <= 0) return;
    final fraction = (x - _overlayRadius) / trackWidth;
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    widget.onChanged(_valueOf(isRtl ? 1 - fraction : fraction));
  }

  void _handleStep(double steps) =>
      widget.onChanged(_valueOf(_fraction + steps * _step));

  void _handleIncrease() => _handleStep(1);

  void _handleDecrease() => _handleStep(-1);

  void _handleTapUp(TapUpDetails details) =>
      _handlePosition(details.localPosition.dx);

  void _handleDragStart(DragStartDetails details) {
    setState(() => _isDragging = true);
    _handlePosition(details.localPosition.dx);
  }

  void _handleDragUpdate(DragUpdateDetails details) =>
      _handlePosition(details.localPosition.dx);

  void _handleDragEnd(DragEndDetails _) => setState(() => _isDragging = false);

  void _handleDragCancel() => setState(() => _isDragging = false);

  void _handleFocus(bool isFocused) => setState(() => _isFocused = isFocused);

  void _handleHover(bool isHovered) => setState(() => _isHovered = isHovered);

  @override
  Widget build(BuildContext context) {
    final direction = Directionality.of(context);
    final isRtl = direction == TextDirection.rtl;
    final fraction = _fraction;
    final secondary = widget.secondaryTrackValue;
    final overlayOpacity = AppColors.overlayOpacityOf({
      if (_isDragging) WidgetState.pressed,
      if (_isFocused) WidgetState.focused,
      if (_isHovered) WidgetState.hovered,
    });

    return Semantics(
      container: true,
      slider: true,
      value: _describe(widget.value),
      increasedValue: _describe(_valueOf(fraction + _step)),
      decreasedValue: _describe(_valueOf(fraction - _step)),
      textDirection: direction,
      onIncrease: _handleIncrease,
      onDecrease: _handleDecrease,
      child: FocusableActionDetector(
        shortcuts: isRtl ? _rtlShortcuts : _ltrShortcuts,
        actions: {_StepIntent: _StepAction(onStep: _handleStep)},
        mouseCursor: SystemMouseCursors.click,
        onShowFocusHighlight: _handleFocus,
        onShowHoverHighlight: _handleHover,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          excludeFromSemantics: true,
          // On tap up only: a tap down may still become a scroll.
          onTapUp: _handleTapUp,
          onHorizontalDragStart: _handleDragStart,
          onHorizontalDragUpdate: _handleDragUpdate,
          onHorizontalDragEnd: _handleDragEnd,
          onHorizontalDragCancel: _handleDragCancel,
          child: TweenAnimationBuilder<Offset>(
            // The thumb elevation (dx) and the state layer opacity (dy).
            tween: Tween(end: Offset(_isDragging ? 1 : 0, overlayOpacity)),
            duration: _animationDuration,
            builder: (_, animated, _) => SizedBox(
              height: _height,
              width: double.infinity,
              child: CustomPaint(
                painter: _SliderPainter(
                  fraction: fraction,
                  secondaryFraction: secondary == null
                      ? null
                      : _fractionOf(secondary),
                  activation: animated.dx,
                  overlayOpacity: animated.dy,
                  isRtl: isRtl,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Moves the slider by a number of keyboard steps.
class _StepIntent extends Intent {
  const new(this.steps);

  final double steps;
}

class _StepAction extends Action<_StepIntent> {
  new({required this.onStep});

  final ValueChanged<double> onStep;

  @override
  void invoke(_StepIntent intent) => onStep(intent.steps);
}

class _SliderPainter extends CustomPainter {
  const new({
    required this.fraction,
    required this.secondaryFraction,
    required this.activation,
    required this.overlayOpacity,
    required this.isRtl,
  });

  final double fraction;
  final double? secondaryFraction;
  final double activation;
  final double overlayOpacity;
  final bool isRtl;

  static const _trackHeight = 4.0;
  static const _activeExtra = 2.0;
  static const _thumbRadius = 10.0;
  static const _overlayRadius = 24.0;
  static const _secondaryOpacity = 0.54;
  static const _trackRadius = Radius.circular(_trackHeight / 2);
  static const _activeRadius = Radius.circular(
    (_trackHeight + _activeExtra) / 2,
  );

  double _xOf(double value, Rect track) => isRtl
      ? track.right - value * track.width
      : track.left + value * track.width;

  /// The active part (until the thumb, slightly taller) and the inactive one.
  void _paintTrack(Canvas canvas, Rect track, double thumbX) {
    const half = _trackHeight / 2;
    final Rect(:bottom, :left, :right, :top) = track;
    final direction = isRtl ? -1 : 1;
    final empty = Rect.fromPoints(
      Offset(thumbX - half * direction, top),
      Offset(isRtl ? left : right, bottom),
    );
    final filled = Rect.fromPoints(
      Offset(isRtl ? right : left, top - _activeExtra / 2),
      Offset(thumbX + half * direction, bottom + _activeExtra / 2),
    );
    if (empty.width > _trackHeight) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(empty, _trackRadius),
        Paint()..color = AppColors.surfaceContainerHighest,
      );
    }
    if (filled.width > _trackHeight) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(filled, _activeRadius),
        Paint()..color = AppColors.primary,
      );
    }
  }

  /// The secondary track, between the thumb and the secondary value.
  void _paintSecondaryTrack(Canvas canvas, Rect track, double thumbX) {
    final secondary = secondaryFraction;
    if (secondary == null || secondary <= fraction) return;
    final rect = Rect.fromPoints(
      Offset(thumbX, track.top),
      Offset(_xOf(secondary, track), track.bottom),
    );
    canvas.drawRRect(
      isRtl
          ? RRect.fromRectAndCorners(
              rect,
              topLeft: _trackRadius,
              bottomLeft: _trackRadius,
            )
          : RRect.fromRectAndCorners(
              rect,
              topRight: _trackRadius,
              bottomRight: _trackRadius,
            ),
      Paint()..color = AppColors.primary.withValues(alpha: _secondaryOpacity),
    );
  }

  /// The hover, focus and drag state layer, and the elevated thumb.
  void _paintThumb(Canvas canvas, Offset center) {
    if (overlayOpacity > 0) {
      canvas.drawCircle(
        center,
        _overlayRadius,
        Paint()..color = AppColors.primary.withValues(alpha: overlayOpacity),
      );
    }
    canvas
      ..drawShadow(
        Path()..addOval(Rect.fromCircle(center: center, radius: _thumbRadius)),
        const Color(0xFF000000),
        activation * 5 + 1, // Elevation from 1 to 6 while dragged.
        true,
      )
      ..drawCircle(center, _thumbRadius, Paint()..color = AppColors.primary);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final track = Rect.fromLTRB(
      _overlayRadius,
      (size.height - _trackHeight) / 2,
      size.width - _overlayRadius,
      (size.height + _trackHeight) / 2,
    );
    if (track.width <= 0) return;
    final thumbX = _xOf(fraction, track);
    _paintTrack(canvas, track, thumbX);
    _paintSecondaryTrack(canvas, track, thumbX);
    _paintThumb(canvas, Offset(thumbX, track.center.dy));
  }

  @override
  bool shouldRepaint(_SliderPainter oldDelegate) =>
      oldDelegate.fraction != fraction ||
      oldDelegate.secondaryFraction != secondaryFraction ||
      oldDelegate.activation != activation ||
      oldDelegate.overlayOpacity != overlayOpacity ||
      oldDelegate.isRtl != isRtl;
}
