import "dart:ui";

import "package:flutter/material.dart";

import "../widgets/description_tile.dart";

class TabBody extends StatelessWidget {
  const TabBody({
    required this.title,
    this.backgroundColor = Colors.white38,
    this.titleOverlay = const SizedBox.shrink(),
    this.titlePadding = const EdgeInsets.symmetric(vertical: 16),
    this.titleMargin,
    this.children = const [],
    super.key,
  });

  final Color backgroundColor;
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
            color: backgroundColor,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                ClipRect(
                  child: Container(
                    padding: titlePadding,
                    width: double.infinity,
                    margin: titleMargin,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: title,
                    ),
                  ),
                ),
                titleOverlay,
              ],
            ),
          ),
          Expanded(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: ColoredBox(
                  color: backgroundColor,
                  child: ListView(
                    physics: const ClampingScrollPhysics(),
                    children: children,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
