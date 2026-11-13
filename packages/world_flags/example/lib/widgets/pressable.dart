import "dart:async" show unawaited;

import "package:flutter/widgets.dart";

import "activate_callback_action.dart";

/// Makes its child tappable (also with a keyboard), and provides the pressed,
/// hovered and focused states to the [builder], so it can paint a state layer
/// instead of an ink ripple.
///
/// It's announced as a button, or as a toggle when [toggled] is provided.
class Pressable extends StatefulWidget {
  const new({
    required this.onPressed,
    required this.builder,
    this.toggled,
    super.key,
  });

  /// Called when the user taps (or activates with a keyboard) the child.
  final VoidCallback onPressed;

  /// Builds the child for the current interaction states.
  final Widget Function(BuildContext context, Set<WidgetState> states) builder;

  /// The state of a toggle for screen readers, `null` for a button.
  final bool? toggled;

  @override
  State<Pressable> createState() => _PressableState();
}

class _PressableState extends State<Pressable> {
  Set<WidgetState> _states = const {};

  void _handleState(WidgetState state, {required bool isActive}) {
    if (_states.contains(state) == isActive) return;
    final updated = isActive
        ? {..._states, state}
        : _states.difference({state});
    setState(() => _states = updated);
  }

  void _handleTapDown(TapDownDetails _) =>
      _handleState(WidgetState.pressed, isActive: true);

  void _handleTapUp(TapUpDetails _) =>
      _handleState(WidgetState.pressed, isActive: false);

  void _handleTapCancel() => _handleState(WidgetState.pressed, isActive: false);

  void _handleFocus(bool isFocused) =>
      _handleState(WidgetState.focused, isActive: isFocused);

  void _handleHover(bool isHovered) =>
      _handleState(WidgetState.hovered, isActive: isHovered);

  void _handleTap() {
    // The same platform feedback (i.e. a click on Android) as Material's ink.
    unawaited(Feedback.forTap(context));
    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    final toggled = widget.toggled;

    return Semantics(
      button: toggled == null,
      toggled: toggled,
      enabled: true,
      child: FocusableActionDetector(
        actions: {
          ActivateIntent: ActivateCallbackAction<ActivateIntent>(
            onActivate: _handleTap,
          ),
          // Enter on the web activates buttons, but not toggles (as Material).
          if (toggled == null)
            ButtonActivateIntent: ActivateCallbackAction<ButtonActivateIntent>(
              onActivate: _handleTap,
            ),
        },
        mouseCursor: SystemMouseCursors.click,
        onShowFocusHighlight: _handleFocus,
        onShowHoverHighlight: _handleHover,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: _handleTapDown,
          onTapUp: _handleTapUp,
          onTapCancel: _handleTapCancel,
          // ignore: prefer-haptic-feedback-on-interaction, as Material's ink.
          onTap: _handleTap,
          child: widget.builder(context, _states),
        ),
      ),
    );
  }
}
