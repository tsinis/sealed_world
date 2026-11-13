import "package:flutter/widgets.dart";

/// Scroll behavior that stretches the content on Android overscroll, like
/// Material 3 apps do, instead of the glow of the widgets layer.
class AppScrollBehavior extends ScrollBehavior {
  const new();

  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) => switch (getPlatform(context)) {
    TargetPlatform.android => StretchingOverscrollIndicator(
      axisDirection: details.direction,
      clipBehavior: details.decorationClipBehavior ?? Clip.hardEdge,
      child: child,
    ),
    TargetPlatform.fuchsia ||
    TargetPlatform.iOS ||
    TargetPlatform.linux ||
    TargetPlatform.macOS ||
    TargetPlatform.windows => super.buildOverscrollIndicator(
      context,
      child,
      details,
    ),
  };
}
