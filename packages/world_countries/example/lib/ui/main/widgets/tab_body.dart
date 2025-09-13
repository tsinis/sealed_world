import "dart:ui";

import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";

import "description_tile.dart";

class TabBody extends StatelessWidget {
  const TabBody({
    required this.title,
    this.titleOverlay = const SizedBox.shrink(),
    this.titlePadding = const EdgeInsets.symmetric(vertical: 16),
    this.titleMargin,
    this.children = const [],
    super.key,
  });

  final List<DescriptionTile> children;
  final Widget title;
  final EdgeInsetsGeometry? titleMargin;
  final Widget titleOverlay;
  final EdgeInsetsGeometry titlePadding;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ColoredBox(
        color: context.theme.colorScheme.onSecondary.withValues(alpha: 1 / 2),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRect(
              child: Container(
                padding: titlePadding,
                width: double.infinity,
                margin: titleMargin,
                child: FunctionalPlatform.maybeWhenConst(
                  orElse: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: UiConstants.point,
                      sigmaY: UiConstants.point,
                    ),
                    child: title,
                  ),
                  web: title,
                ),
              ),
            ),
            titleOverlay,
          ],
        ),
      ),
      Expanded(
        child: ClipRect(
          child: ColoredBox(
            color: context.theme.colorScheme.surface.withValues(alpha: 1 / 2),
            child: FunctionalPlatform.maybeWhenConst(
              orElse: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: UiConstants.point,
                  sigmaY: UiConstants.point,
                ),
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  children: children,
                ),
              ),
              web: ListView(children: children),
            ),
          ),
        ),
      ),
    ],
  );
}
