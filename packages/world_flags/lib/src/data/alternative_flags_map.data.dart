// ignore_for_file: prefer-static-class, to follow pattern from eco-system.
import "dart:ui";

import "../model/colors_properties.dart";
import "../model/elements/custom_elements_properties.dart";
import "../model/elements/elements_properties.dart";
import "../model/flag_properties.dart";
import "../model/shape.dart";
import "../model/stripe_orientation.dart";

/// Alternative flag properties of country Afganistan (AF).
const flagAfgPropertiesAlt = FlagProperties(
  [ColorsProperties(Color(0xffffffff))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000000),
      offset: Offset(-0.5, 0.1),
      heightFactor: 0.34,
    ),
  ],
);

/// Alternative flag properties of country French Guiana (GF).
const flagGufPropertiesAlt = FlagProperties(
  [ColorsProperties(Color(0xffFCDD09)), ColorsProperties(Color(0xff078930))],
  stripeOrientation: StripeOrientation.diagonalTopLeftToBottomRight,
  elementsProperties: [
    ElementsProperties(
      Color(0xffDA121A),
      shape: Star(),
      heightFactor: 1 / 3,
    ),
  ],
);
