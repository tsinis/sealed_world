import "package:flutter/widgets.dart";

import "elements/elements_properties.dart";

/// A type definition for a list of [ElementsProperties].
typedef ElementsProps = List<ElementsProperties>;

/// A type definition for a function that builds a [CustomPainter] for a flag.
///
/// The function takes the following parameters:
/// - [properties]: An optional list of [ElementsProperties] that define the
///   elements of the flag.
/// - [aspectRatio]: The aspect ratio of the flag.
///
/// The function returns an instance of [T], which extends [CustomPainter], or
/// null.
@optionalTypeArgs
typedef FlagPainterBuilder<T extends CustomPainter> =
    T? Function(ElementsProps? properties, double aspectRatio);

/// A type definition for a function that builds a [Widget] for a flag.
///
/// The function takes the following parameters:
/// - [properties]: An optional list of [ElementsProperties] that define the
///   elements of the flag.
/// - [aspectRatio]: The aspect ratio of the flag.
///
/// The function returns an instance of [T], which extends [Widget], or null.
@optionalTypeArgs
typedef FlagWidgetBuilder<T extends Widget> =
    T? Function(ElementsProps? properties, double aspectRatio);

/// A type definition for a record that holds the parent bounds of a flag
/// element.
///
/// The record contains the following fields:
/// - `canvas`: The [Canvas] on which the flag element is drawn.
/// - `bounds`: The [Rect] that defines the bounds of the flag element.
/// - `child`: An optional [ElementsProperties] that defines the properties of
///   the child element.
typedef FlagParentBounds = ({
  Rect bounds,
  Canvas canvas,
  ElementsProperties? child,
});
