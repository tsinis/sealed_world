import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";
import "../theme/app_metrics.dart";
import "pressable.dart";

/// An on/off switch, drawn like the Material 3 switch: a 52x32 track with an
/// outline when off and a thumb that grows from 16 to 24 points when on.
class AppSwitch extends StatelessWidget {
  const new({required this.value, required this.onChanged, super.key});

  static const _width = 60.0; // The track and 4 points on each side.
  static const _duration = Duration(milliseconds: 300);

  /// Whether the switch is on.
  final bool value;

  /// Called with the new value when the user toggles the switch.
  final ValueChanged<bool> onChanged;

  void _handleToggle() => onChanged(!value);

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return Pressable(
      onPressed: _handleToggle,
      toggled: value,
      builder: (_, states) => TweenAnimationBuilder<double>(
        tween: Tween(end: value ? 1 : 0),
        duration: _duration,
        builder: (_, progress, _) => CustomPaint(
          size: Size(_width, AppMetrics.minTapTarget),
          painter: _SwitchPainter(
            progress: progress,
            overlayOpacity: AppColors.overlayOpacityOf(states),
            isPressed: states.contains(WidgetState.pressed),
            isRtl: isRtl,
          ),
        ),
      ),
    );
  }
}

class _SwitchPainter extends CustomPainter {
  const new({
    required this.progress,
    required this.overlayOpacity,
    required this.isPressed,
    required this.isRtl,
  });

  /// From 0 (off) to 1 (on).
  final double progress;
  final double overlayOpacity;
  final bool isPressed;
  final bool isRtl;

  static const _trackWidth = 52.0;
  static const _trackHeight = 32.0;
  static const _outlineWidth = 2.0;
  static const _thumbRadiusOff = 8.0;
  static const _thumbRadiusOn = 12.0;
  static const _thumbRadiusPressed = 14.0;
  static const _overlayRadius = 20.0;

  void _paintTrack(Canvas canvas, Rect track) {
    final shape = RRect.fromRectAndRadius(
      track,
      const Radius.circular(_trackHeight / 2),
    );
    canvas.drawRRect(
      shape,
      Paint()
        ..color =
            Color.lerp(
              AppColors.surfaceContainerHighest,
              AppColors.primary,
              progress,
            ) ??
            AppColors.primary,
    );
    if (progress >= 1) return; // The outline fades out when on.
    canvas.drawRRect(
      shape.deflate(_outlineWidth / 2),
      Paint()
        ..color = AppColors.outline.withValues(alpha: 1 - progress)
        ..style = PaintingStyle.stroke
        ..strokeWidth = _outlineWidth,
    );
  }

  void _paintThumb(Canvas canvas, Offset center) {
    if (overlayOpacity > 0) {
      final reaction =
          Color.lerp(AppColors.surfaceContent, AppColors.primary, progress) ??
          AppColors.primary;
      canvas.drawCircle(
        center,
        _overlayRadius,
        Paint()..color = reaction.withValues(alpha: overlayOpacity),
      );
    }
    final radius = isPressed
        ? _thumbRadiusPressed
        : (_thumbRadiusOn - _thumbRadiusOff) * progress + _thumbRadiusOff;
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color =
            Color.lerp(AppColors.outline, AppColors.primaryContent, progress) ??
            AppColors.primaryContent,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final track = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: _trackWidth,
      height: _trackHeight,
    );
    _paintTrack(canvas, track);
    const inset = _trackHeight / 2;
    final position = isRtl ? 1 - progress : progress;
    _paintThumb(
      canvas,
      Offset(
        (track.width - inset * 2) * position + track.left + inset,
        track.center.dy,
      ),
    );
  }

  @override
  bool shouldRepaint(_SwitchPainter oldDelegate) =>
      oldDelegate.progress != progress ||
      oldDelegate.overlayOpacity != overlayOpacity ||
      oldDelegate.isPressed != isPressed ||
      oldDelegate.isRtl != isRtl;
}
