// ignore_for_file: prefer-static-class

import "dart:ui";

import "../model/colors_properties.dart";
import "../model/elements/elements_properties.dart";
import "../model/flag_elements_type.dart";
import "../model/flag_properties.dart";
import "../model/shape.dart";

/// Flag properties of European Union (EUR).
const flagEurProperties = FlagProperties(
  [ColorsProperties(Color(0xff003399))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffcc00),
      shape: Star(),
      offset: Offset(0, -2 / 3),
      heightFactor: 0.11,
      child: ElementsProperties(
        Color(0xffffcc00),
        shape: Star(),
        offset: Offset(3.2, 1),
        heightFactor: 1.1,
        child: ElementsProperties(
          Color(0xffffcc00),
          shape: Star(),
          offset: Offset(2.35, 2.55),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffcc00),
            shape: Star(),
            offset: Offset(0.85, 3.5),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffcc00),
              shape: Star(),
              offset: Offset(-0.85, 3.5),
              heightFactor: 1.1,
              child: ElementsProperties(
                Color(0xffffcc00),
                shape: Star(),
                offset: Offset(-2.4, 2.6),
                heightFactor: 1.1,
                child: ElementsProperties(
                  Color(0xffffcc00),
                  shape: Star(),
                  offset: Offset(-3.3, 1),
                  heightFactor: 1.1,
                  child: ElementsProperties(
                    Color(0xffffcc00),
                    shape: Star(),
                    offset: Offset(-3.25, -0.75),
                    heightFactor: 1.1,
                    child: ElementsProperties(
                      Color(0xffffcc00),
                      shape: Star(),
                      offset: Offset(-2.4, -2.45),
                      heightFactor: 1.1,
                      child: ElementsProperties(
                        Color(0xffffcc00),
                        shape: Star(),
                        offset: Offset(-0.9, -3.4),
                        heightFactor: 1.1,
                        child: ElementsProperties(
                          Color(0xffffcc00),
                          shape: Star(),
                          offset: Offset(0.9, -3.4),
                          heightFactor: 1.1,
                          child: ElementsProperties(
                            Color(0xffffcc00),
                            shape: Star(),
                            offset: Offset(2.45, -2.45),
                            heightFactor: 1.1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/Flag_of_Europe",
);

/// Flag properties of language Esperanto (EPO).
const flagEpoProperties = FlagProperties(
  [ColorsProperties(Color(0xff009900))],
  baseElementType: FlagElementsType.rectangle,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1),
      offset: Offset(-1, -1),
      heightFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xff009900),
        shape: Star(),
        heightFactor: 0.7,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/Esperanto_symbols#/media/File:Esperanto_flag_-_construction.svg",
);

/// Flag properties of Ido (IDO).
const flagIdoProperties = FlagProperties(
  [ColorsProperties(Color(0xff197dc8))],
  baseElementType: FlagElementsType.star,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 3, radiusFactor: 0.18),
      offset: Offset(0, 0.24),
      heightFactor: 0.96,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Triangle(),
        offset: Offset(0.25, 0.5),
        angle: 90,
        heightFactor: 0.5,
        widthFactor: 0.5,
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/Ido",
);

/// Flag properties of Interlingue (ILE).
const flagIleProperties = FlagProperties(
  [ColorsProperties(Color(0xffFFFF00))],
  baseElementType: FlagElementsType.ellipse,
  isSimplified: true,
  elementsProperties: [
    ElementsProperties(
      Color(0xff000000),
      shape: Ellipse(),
      heightFactor: 2 / 3,
      child: ElementsProperties(
        Color(0xffFFFF00),
        shape: Ellipse(),
        heightFactor: 0.8,
        child: ElementsProperties(
          Color(0xff000000),
          shape: Rectangle(),
          heightFactor: 1 / 9,
          angle: 90,
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/Interlingue",
);

/// Flag properties of Interlingua (INA).
const flagInaProperties = FlagProperties(
  [ColorsProperties(Color(0xff0000FF)), ColorsProperties(Color(0xffFF0000))],
  baseElementType: FlagElementsType.star,
  isSimplified: true,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 4, radiusFactor: 0.25),
      angle: 45,
    ),
  ],
  url: "https://wikipedia.org/wiki/Interlingua",
);

/// Flag properties of Volapük (VOL).
const flagVolProperties = FlagProperties(
  [ColorsProperties(Color(0xff660066))],
  baseElementType: FlagElementsType.rectangle,
  isSimplified: true,
  elementsProperties: [
    ElementsProperties(
      Color(0xffFFF55F),
      shape: Rectangle(),
      heightFactor: 1 / 2,
      widthFactor: 1 / 3,
      offset: Offset(-1, -1),
      child: ElementsProperties(
        Color(0xff660066),
        shape: Ellipse(),
        heightFactor: 2 / 3,
        child: ElementsProperties(
          Color(0xffFFF55F),
          shape: Ellipse(),
          heightFactor: 0.92,
          child: ElementsProperties(
            Color(0xff660066),
            shape: Rectangle(),
            heightFactor: 0.04,
          ),
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/Volap%C3%BCk",
);
