import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";
import "../theme/app_text.dart";
import "list_row_text.dart";
import "pressable.dart";

/// A list row made of a [Row], laid out like a Material 3 list tile: 16 points
/// before the text, 24 after the trailing widget, and a height of 72 points
/// for two lines of text (64 when [dense]).
class ListRow extends StatelessWidget {
  const new({
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.enabled = true,
    this.dense = false,
    this.toggled,
    super.key,
  });

  static const _padding = EdgeInsetsDirectional.only(start: 16, end: 24);
  static const _trailingGap = 16.0;

  /// The primary content of the row, usually a [Text].
  final Widget title;

  /// Additional content displayed below the [title].
  final Widget? subtitle;

  /// A widget displayed after the title, vertically centered.
  final Widget? trailing;

  /// Called when the user taps (or activates with a keyboard) an [enabled] row.
  final VoidCallback? onTap;

  /// Whether the row is interactive. Disabled rows have dimmed text.
  final bool enabled;

  /// Whether the row uses the smaller text and height of a dense list.
  final bool dense;

  /// The state of a switch in the row, if any, for screen readers.
  final bool? toggled;

  @override
  Widget build(BuildContext context) {
    final details = subtitle;
    final end = trailing;
    final content = SafeArea(
      top: false,
      bottom: false,
      minimum: _padding.resolve(Directionality.of(context)),
      child: Row(
        children: [
          Expanded(
            child: ListRowText(
              isDense: dense,
              title: DefaultTextStyle(
                style: AppText.bodyLarge.copyWith(
                  color: enabled
                      ? AppColors.surfaceContent
                      : AppColors.disabled,
                  fontSize: dense ? 13 : null,
                ),
                child: title,
              ),
              subtitle: details == null
                  ? null
                  : DefaultTextStyle(
                      style: AppText.bodyMedium.copyWith(
                        color: enabled
                            ? AppColors.surfaceVariantContent
                            : AppColors.disabled,
                        fontSize: dense ? 12 : null,
                      ),
                      child: details,
                    ),
            ),
          ),
          if (end != null) ...[const SizedBox(width: _trailingGap), end],
        ],
      ),
    );
    final onPressed = enabled ? onTap : null;

    return MergeSemantics(
      child: onPressed == null
          ? Semantics(enabled: enabled, child: content)
          : Pressable(
              onPressed: onPressed,
              toggled: toggled,
              builder: (_, states) => AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                color: AppColors.surfaceContent.withValues(
                  alpha: AppColors.overlayOpacityOf(states),
                ),
                child: content,
              ),
            ),
    );
  }
}
