import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";
import "../theme/app_metrics.dart";
import "../theme/app_text.dart";
import "app_icon.dart";
import "app_icon_shape.dart";
import "pressable.dart";

/// A round icon button with a tooltip, like a Material 3 standard icon button:
/// a 48 point tap target with a 40 point state layer.
class AppIconButton extends StatelessWidget {
  const new({
    required this.shape,
    required this.tooltip,
    required this.onPressed,
    this.iconSize = 24,
    super.key,
  });

  static const _stateLayerSize = 40.0;
  static const _tooltipOffset = 24.0;

  static Offset _handleTooltipPosition(TooltipPositionContext position) =>
      positionDependentBox(
        size: position.overlaySize,
        childSize: position.tooltipSize,
        target: position.target,
        verticalOffset: _tooltipOffset,
        preferBelow: true,
      );

  final AppIconShape shape;
  final String tooltip;
  final VoidCallback onPressed;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppMetrics.isDesktop;

    return RawTooltip(
      semanticsTooltip: tooltip,
      positionDelegate: _handleTooltipPosition,
      tooltipBuilder: (_, animation) => FadeTransition(
        opacity: animation,
        child: Container(
          constraints: BoxConstraints(minHeight: isDesktop ? 24 : 32),
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 8 : 16,
            vertical: 4,
          ),
          decoration: const BoxDecoration(
            color: AppColors.tooltip,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Center(
            widthFactor: 1,
            heightFactor: 1,
            child: Text(
              tooltip,
              style: AppText.bodyMedium.copyWith(
                color: const Color(0xFFFFFFFF),
                fontSize: isDesktop ? 12 : 14,
              ),
            ),
          ),
        ),
      ),
      child: Pressable(
        onPressed: onPressed,
        builder: (_, states) => SizedBox.square(
          dimension: AppMetrics.minTapTarget,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              width: _stateLayerSize,
              height: _stateLayerSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.surfaceVariantContent.withValues(
                  alpha: AppColors.overlayOpacityOf(states),
                ),
              ),
              alignment: Alignment.center,
              child: AppIcon(shape, size: iconSize),
            ),
          ),
        ),
      ),
    );
  }
}
