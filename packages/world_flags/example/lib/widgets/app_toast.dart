import "dart:async" show Timer;

import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";
import "../theme/app_text.dart";

/// A short message at the bottom of the screen, like a Material 3 fixed
/// snack bar.
abstract final class AppToast {
  static OverlayEntry? _entry;

  /// Shows a [message] for the given [duration], replacing a shown one.
  static void show(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _removeShown();
    // ignore: avoid-late-keyword, the toast refers to its own entry.
    late final OverlayEntry entry;
    entry = OverlayEntry(
      builder: (_) => _Toast(
        message: message,
        duration: duration,
        onDismissed: () => _handleDismissed(entry),
      ),
    );
    _entry = entry;
    Overlay.of(context, rootOverlay: true).insert(entry);
  }

  /// A replaced toast can still end its fade out (it's removed on the next
  /// frame), but it must not remove the toast that replaced it.
  static void _handleDismissed(OverlayEntry entry) {
    if (identical(entry, _entry)) _removeShown();
  }

  static void _removeShown() {
    final entry = _entry;
    _entry = null;
    entry
      ?..remove()
      ..dispose();
  }
}

class _Toast extends StatefulWidget {
  const new({
    required this.message,
    required this.duration,
    required this.onDismissed,
  });

  final String message;
  final Duration duration;
  final VoidCallback onDismissed;

  @override
  State<_Toast> createState() => _ToastState();
}

class _ToastState extends State<_Toast> {
  static const _animationDuration = Duration(milliseconds: 250);

  Timer? _timer;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_handleFirstFrame);
    _timer = Timer(widget.duration, _handleTimeout);
  }

  void _handleFirstFrame(Duration _) {
    if (mounted) setState(() => _isVisible = true);
  }

  void _handleTimeout() {
    if (mounted) setState(() => _isVisible = false);
  }

  void _handleAnimationEnd() {
    if (!_isVisible) widget.onDismissed();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.bottomCenter,
    child: ClipRect(
      child: AnimatedAlign(
        alignment: Alignment.topCenter,
        heightFactor: _isVisible ? 1 : 0,
        duration: _animationDuration,
        curve: Curves.fastOutSlowIn,
        onEnd: _handleAnimationEnd,
        child: Semantics(
          container: true,
          liveRegion: true,
          child: PhysicalModel(
            color: AppColors.inverseSurface,
            elevation: 6,
            child: SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: AnimatedOpacity(
                    opacity: _isVisible ? 1 : 0,
                    duration: _animationDuration,
                    curve: Curves.fastOutSlowIn,
                    child: Text(
                      widget.message,
                      style: AppText.bodyMedium.copyWith(
                        color: AppColors.inverseSurfaceContent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
