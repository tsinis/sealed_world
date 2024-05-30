import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

@optionalTypeArgs
typedef FlagPainterBuilder<T extends CustomPainter> = T? Function(
  List<ElementsProperties>? properties,
);

@optionalTypeArgs
typedef FlagWidgetBuilder<T extends Widget> = T? Function(
  List<ElementsProperties>? properties,
);
