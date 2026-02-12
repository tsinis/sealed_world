import "package:flutter/material.dart"
    show CircularProgressIndicator, IconButton, Icons, TextField;
import "package:flutter/widgets.dart";

import "../../constants/ui_constants.dart";

/// A widget that displays a clear button for a text editing controller.
class ClearButton extends IconButton {
  /// Constructor for the [ClearButton] class.
  ///
  /// [TextEditingController] is the only mandatory field here and it's a text
  /// editing controller to listen to. Other parameters are simply passed to the
  /// super constructor of [IconButton] and [AnimatedCrossFade]. When the text
  /// editing controller's text is empty, the [whenEmptyChild] is shown instead
  /// of the [IconButton].
  const ClearButton(
    this._controller, {
    super.icon = defaultIcon,
    super.onPressed,
    super.iconSize,
    super.visualDensity,
    super.padding,
    super.alignment,
    super.splashRadius,
    super.color,
    super.focusColor,
    super.hoverColor,
    super.highlightColor,
    super.splashColor,
    super.disabledColor,
    super.onHover,
    super.onLongPress,
    super.mouseCursor,
    super.focusNode,
    super.autofocus,
    super.tooltip,
    super.enableFeedback,
    super.constraints,
    super.style,
    super.isSelected,
    super.selectedIcon,
    super.key,
    super.statesController,
    this.whenEmptyChild = UiConstants.placeholder,
    this.firstCurve = UiConstants.switchOutCurve,
    this.secondCurve = UiConstants.switchInCurve,
    this.sizeCurve = UiConstants.switchOutCurve,
    this.duration = UiConstants.duration,
    this.layoutBuilder = AnimatedCrossFade.defaultLayoutBuilder,
    this.excludeBottomFocus = true,
    this.reverseDuration,
  });

  /// The default icon to display in the button.
  static const defaultIcon = Icon(Icons.clear);

  /// The text editing controller to listen to.
  final TextEditingController _controller;

  /// The child that is visible when `crossFadeState` is
  /// [CrossFadeState.showSecond]. It fades in when transitioning
  /// `crossFadeState` from [CrossFadeState.showFirst] to
  /// [CrossFadeState.showSecond] and vice versa.
  final Widget whenEmptyChild;

  /// The duration of the whole orchestrated animation.
  final Duration duration;

  /// The duration of the whole orchestrated animation when running in reverse.
  ///
  /// If not supplied, this defaults to [duration].
  final Duration? reverseDuration;

  /// The fade curve of the first child.
  ///
  /// Defaults to [Curves.linear].
  final Curve firstCurve;

  /// The fade curve of the second child.
  ///
  /// Defaults to [Curves.linear].
  final Curve secondCurve;

  /// The curve of the animation between the two children's sizes.
  ///
  /// Defaults to [Curves.linear].
  final Curve sizeCurve;

  /// A builder that positions the `firstChild` and `whenEmptyChild` widgets.
  ///
  /// The widget returned by this method is wrapped in an [AnimatedSize].
  ///
  /// By default, this uses [AnimatedCrossFade.defaultLayoutBuilder], which uses
  /// a [Stack] and aligns the `bottomChild` to the top of the stack while
  /// providing the `topChild` as the non-positioned child to fill the provided
  /// constraints. This works well when the [AnimatedCrossFade] is in a position
  /// to change size and when the children are not flexible. However, if the
  /// children are less fussy about their sizes (for example a
  /// [CircularProgressIndicator] inside a [Center]), or if the
  /// [AnimatedCrossFade] is being forced to a particular size, then it can
  /// result in the widgets jumping about when the cross-fade state is changed.
  final AnimatedCrossFadeBuilder layoutBuilder;

  /// When true, this is equivalent to wrapping the bottom widget with an
  /// [ExcludeFocus] widget while it is at the bottom of the cross-fade stack.
  ///
  /// Defaults to true. When it is false, the bottom widget in the cross-fade
  /// stack can remain in focus until the top widget requests focus. This is
  /// useful for animating between different [TextField]s so the keyboard
  /// remains open during the cross-fade animation.
  final bool excludeBottomFocus;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: _controller,
    builder: (_, controller, _) => AnimatedCrossFade(
      firstChild: IconButton(
        onPressed: onPressed ?? _controller.clear,
        icon: icon,
        iconSize: iconSize,
        visualDensity: visualDensity,
        padding: padding,
        alignment: alignment,
        splashRadius: splashRadius,
        color: color,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        onHover: onHover,
        onLongPress: onLongPress,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        constraints: constraints,
        style: style,
        isSelected: isSelected,
        selectedIcon: selectedIcon,
        statesController: statesController,
      ),
      secondChild: whenEmptyChild,
      firstCurve: firstCurve,
      secondCurve: secondCurve,
      sizeCurve: sizeCurve,
      crossFadeState: controller.text.isEmpty
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: duration,
      reverseDuration: reverseDuration,
      layoutBuilder: layoutBuilder,
      excludeBottomFocus: excludeBottomFocus,
    ),
  );
}
