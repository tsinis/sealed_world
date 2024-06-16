import "package:flags/flags.dart" show ElementsProperties;
import "package:flutter/widgets.dart";

typedef ElementsProps = List<ElementsProperties>;

@optionalTypeArgs
typedef FlagPainterBuilder<T extends CustomPainter> = T? Function(
  ElementsProps? properties,
  double aspectRatio,
);

@optionalTypeArgs
typedef FlagWidgetBuilder<T extends Widget> = T? Function(
  ElementsProps? properties,
  double aspectRatio,
);

typedef FlagParentBounds = ({
  Canvas canvas,
  Rect bounds,
  ElementsProperties? child
});
