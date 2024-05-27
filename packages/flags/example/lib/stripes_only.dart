import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

class StripesOnly extends Flex {
  StripesOnly(
    List<ColorsProperties> colors, {
    required bool? isHorizontallyStriped,
    super.clipBehavior = Clip.none,
    super.key,
  }) : super(
          children: List.unmodifiable(
            colors.map(
              (i) => Expanded(flex: i.ratio, child: ColoredBox(color: i.color)),
            ),
          ),
          textBaseline: null,
          textDirection: null,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          direction: (isHorizontallyStriped ?? false)
              ? Axis.vertical
              : Axis.horizontal,
        );

  @override
  @protected
  TextDirection? getEffectiveTextDirection(BuildContext context) => null;
}
