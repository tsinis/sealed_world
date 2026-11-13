import "package:flutter/widgets.dart";

/// A route that fades and slides its page in, without a design library.
class AppPageRoute<T> extends PageRouteBuilder<T> {
  new({required WidgetBuilder builder, super.settings})
    : super(
        pageBuilder: (context, _, _) => builder(context),
        transitionDuration: const Duration(milliseconds: 300),
        reverseTransitionDuration: const Duration(milliseconds: 250),
        transitionsBuilder: (_, animation, _, child) {
          final curved = animation.drive(
            CurveTween(curve: Curves.easeOutCubic),
          );

          return FadeTransition(
            opacity: curved,
            child: SlideTransition(
              position: curved.drive(
                Tween(begin: const Offset(0, 0.04), end: Offset.zero),
              ),
              child: child,
            ),
          );
        },
      );
}
