// ignore_for_file: long-parameter-list
import "package:flutter/material.dart";

import "../constants/ui_constants.dart";

/// An interface for a Material Design pickers.
abstract interface class MaterialContextInterface<T extends Object> {
  // ignore: format-comment, ends with macros.
  /// Twin of a Material's `showModalBottomSheet` function.
  ///
  /// {@macro flutter.material.ModalBottomSheetRoute}
  ///
  /// {@macro flutter.widgets.RawDialogRoute}
  ///
  /// [heightFactor]
  /// {@macro flutter.widgets.basic.fractionallySizedBox.heightFactor}
  Future<T?> showInModalBottomSheet(
    BuildContext context, {
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape = UiConstants.shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = true,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    bool? showDragHandle,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    double? heightFactor = 0.66,
  });

  /// Twin of a Material's `showSearch` function.
  Future<T?>? showInSearch(
    BuildContext context, {
    String? query = "",
    bool useRootNavigator = false,
  });

  /// Twin of a Material's `showDialog` function.
  Future<T?>? showInDialog(
    BuildContext context, {
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    Key? key,
    Widget? icon,
    EdgeInsetsGeometry? iconPadding,
    Color? iconColor,
    Widget? title,
    EdgeInsetsGeometry? titlePadding,
    TextStyle? titleTextStyle,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? contentTextStyle,
    List<Widget>? actions,
    EdgeInsetsGeometry? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    OverflowBarAlignment? actionsOverflowAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    EdgeInsetsGeometry? buttonPadding,
    Color? backgroundColor,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    String? semanticLabel,
    EdgeInsets insetPadding =
        const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
    Clip clipBehavior = Clip.none,
    ShapeBorder? shape,
    AlignmentGeometry? alignment,
  });
}
