import "package:flutter/widgets.dart";

import "elements/elements_properties.dart";

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
