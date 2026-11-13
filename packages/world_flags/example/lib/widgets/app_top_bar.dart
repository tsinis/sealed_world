import "package:flutter/foundation.dart";
import "package:flutter/services.dart" show SystemUiOverlayStyle;
import "package:flutter/widgets.dart";

import "../theme/app_colors.dart";
import "../theme/app_text.dart";

/// A top app bar like the Material 3 small app bar: 56 points tall (Material
/// keeps `kToolbarHeight` for it), with a centered title on Apple platforms,
/// which gets a tinted background while the content below it is scrolled.
class AppTopBar extends StatelessWidget {
  const new({
    required this.title,
    this.actions = const [],
    this.isScrolledUnder = false,
    super.key,
  });

  static const _height = 56.0;

  final Widget title;
  final List<Widget> actions;
  final bool isScrolledUnder;

  bool get _isTitleCentered => switch (defaultTargetPlatform) {
    TargetPlatform.iOS || TargetPlatform.macOS => actions.length < 2,
    TargetPlatform.android ||
    TargetPlatform.fuchsia ||
    TargetPlatform.linux ||
    TargetPlatform.windows => false,
  };

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle.dark,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      color: isScrolledUnder ? AppColors.scrolledUnder : AppColors.surface,
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: _height,
          child: NavigationToolbar(
            middle: Semantics(
              header: true,
              child: DefaultTextStyle(
                style: AppText.titleLarge,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                child: title,
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: actions),
            centerMiddle: _isTitleCentered,
          ),
        ),
      ),
    ),
  );
}
