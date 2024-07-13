import "dart:ui";

import "../model/colors_properties.dart";
import "../model/elements/custom_elements_properties.dart";
import "../model/elements/elements_properties.dart";
import "../model/flag_properties.dart";
import "../model/shape.dart";
import "../model/stripe_orientation.dart";

// ignore_for_file: prefer-static-class
/// Flag properties of country Honduras (HN).
const flagHndProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00bce4)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff00bce4)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xff00bce4),
      shape: Star(),
      heightFactor: 4 / 36,
    ),
    ElementsProperties(
      Color(0xff00bce4),
      shape: Star(),
      offset: Offset(-20 / 72, 6 / 36),
      heightFactor: 4 / 36,
    ),
    ElementsProperties(
      Color(0xff00bce4),
      shape: Star(),
      offset: Offset(-20 / 72, -6 / 36),
      heightFactor: 4 / 36,
    ),
    ElementsProperties(
      Color(0xff00bce4),
      shape: Star(),
      offset: Offset(20 / 72, 6 / 36),
      heightFactor: 4 / 36,
    ),
    ElementsProperties(
      Color(0xff00bce4),
      shape: Star(),
      offset: Offset(20 / 72, -6 / 36),
      heightFactor: 4 / 36,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Honduras_(construction_sheet).svg",
);

/// Flag properties of country Dominica (DM).
const flagDmaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff009A44), ratio: 45),
    ColorsProperties(Color(0xffFFCD00), ratio: 10),
    ColorsProperties(Color(0xFF000000), ratio: 10),
    ColorsProperties(Color(0xffffffff), ratio: 10),
    ColorsProperties(Color(0xff009A44), ratio: 45),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 30 / 125),
      child: ElementsProperties(
        Color(0xffFFCD00),
        shape: Rectangle(aspectRatio: 15 / 125),
        offset: Offset(-1, 0),
        child: ElementsProperties(
          Color(0xFF000000),
          shape: Rectangle(aspectRatio: 10 / 125),
          offset: Offset(3, 0),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffE4002B),
      shape: Ellipse(),
      heightFactor: 60 / 120,
      child: ElementsProperties(
        Color(0xff009A44),
        shape: Star(),
        offset: Offset(0, -0.75),
        heightFactor: 9 / 60,
        child: ElementsProperties(
          Color(0xff009A44),
          shape: Star(),
          offset: Offset(3.1, 1.2),
          heightFactor: 1.1,
          angle: 35,
          child: ElementsProperties(
            Color(0xff009A44),
            shape: Star(),
            offset: Offset(1.9, 2.9),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xff009A44),
              shape: Star(),
              offset: Offset(0, 3.4),
              heightFactor: 1.1,
              angle: 35,
              child: ElementsProperties(
                Color(0xff009A44),
                shape: Star(),
                offset: Offset(-1.9, 3),
                heightFactor: 1.1,
                child: ElementsProperties(
                  Color(0xff009A44),
                  shape: Star(),
                  offset: Offset(-3.2, 1.2),
                  heightFactor: 1.1,
                  angle: -35,
                  child: ElementsProperties(
                    Color(0xff009A44),
                    shape: Star(),
                    offset: Offset(-3.2, -1),
                    heightFactor: 1.1,
                    child: ElementsProperties(
                      Color(0xff009A44),
                      shape: Star(),
                      offset: Offset(-1.9, -2.7),
                      heightFactor: 1.1,
                      angle: -35,
                      child: ElementsProperties(
                        Color(0xff009A44),
                        shape: Star(),
                        offset: Offset(0, -3.45),
                        heightFactor: 1.1,
                        child: ElementsProperties(
                          Color(0xff009A44),
                          shape: Star(),
                          offset: Offset(2, -2.75),
                          heightFactor: 1.1,
                          angle: 35,
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
    ElementsProperties(
      Color(0xff009A44),
      shape: Rectangle(),
      heightFactor: 14 / 60,
      widthFactor: 3 / 60,
    ),
    CustomElementsProperties(
      Color(0xffE4002B),
      otherColors: [
        Color(0xFF000000),
        Color(0xffFFCD00),
        Color(0xFF981E97),
        Color(0xff009A44),
      ],
      heightFactor: 40 / 60,
      widthFactor: 20 / 60,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Dominica_(construction_sheet).svg",
);

/// Flag properties of country France (FR).
const flagFraProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002654)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffED2939)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_France_(construction_sheet).svg",
);

/// Flag properties of country Algeria (DZ).
const flagDzaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff006633)),
    ColorsProperties(Color(0xffffffff)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xffD21034),
      shape: Moon(radius: 0.8, offset: Offset(0.25, 0)),
      heightFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffD21034),
        shape: Star(),
        offset: Offset(0.52, 0),
        heightFactor: 10 / 20,
        angle: 18,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Algeria_(construction_sheet).svg",
);

/// Flag properties of country Gabon (GA).
const flagGabProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff36a100)),
    ColorsProperties(Color(0xffffe700)),
    ColorsProperties(Color(0xff006dbc)),
  ],
  aspectRatio: 4 / 3,
  url: "https://wikipedia.org/wiki/File:Flag_of_Gabon_(construction_sheet).svg",
);

/// Flag properties of country Philippines (PH).
const flagPhlProperties = FlagProperties(
  [ColorsProperties(Color(0xff0038a8)), ColorsProperties(Color(0xffce1126))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 0.43,
      child: ElementsProperties(
        Color(0xfffcd116),
        shape: Star(points: 8, radiusFactor: 0.2),
        offset: Offset(-0.275, 0),
        heightFactor: 0.42,
        angle: 23,
        child: ElementsProperties(
          Color(0xfffcd116),
          shape: Star(points: 8, radiusFactor: 0.2),
          heightFactor: 0.98,
          angle: 32,
          child: ElementsProperties(
            Color(0xfffcd116),
            shape: Star(points: 8, radiusFactor: 0.2),
            angle: -32,
            child: ElementsProperties(
              Color(0xfffcd116),
              shape: Ellipse(),
              heightFactor: 0.64,
            ),
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xfffcd116),
      shape: Star(),
      offset: Offset(-0.29, 0),
      heightFactor: 10 / 90,
      angle: 20,
    ),
    ElementsProperties(
      Color(0xfffcd116),
      shape: Star(),
      offset: Offset(-0.925, -0.73),
      heightFactor: 10 / 90,
      angle: 112,
    ),
    ElementsProperties(
      Color(0xfffcd116),
      shape: Star(),
      offset: Offset(-0.925, 0.73),
      heightFactor: 10 / 90,
      angle: -4,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Philippines_(construction_sheet).svg",
);

/// Flag properties of country South Sudan (SS).
const flagSsdProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000), ratio: 17),
    ColorsProperties(Color(0xffffffff), ratio: 3),
    ColorsProperties(Color(0xffE22028), ratio: 17),
    ColorsProperties(Color(0xffffffff), ratio: 3),
    ColorsProperties(Color(0xFF00914C), ratio: 17),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xff00B6F2),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 15 / 35,
      child: ElementsProperties(
        Color(0xffFFE51A),
        shape: Star(),
        offset: Offset(-0.3, 0.03),
        heightFactor: 19 / 57,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_South_Sudan_(construction_sheet).svg",
);

/// Flag properties of country Rwanda (RW).
const flagRwaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00a1de), ratio: 130),
    ColorsProperties(Color(0xffFAD201), ratio: 65),
    ColorsProperties(Color(0xff20603d), ratio: 65),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffE5BE01),
      shape: Star(points: 24, radiusFactor: 0.3),
      offset: Offset(0.642, -0.48),
      heightFactor: 40 / 130,
      angle: 22,
      child: ElementsProperties(
        Color(0xff00a1de),
        shape: Ellipse(),
        heightFactor: 1 / 3,
        child: ElementsProperties(
          Color(0xffE5BE01),
          shape: Ellipse(),
          heightFactor: 0.8,
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Rwanda_(construction_sheet).svg",
);

/// Flag properties of country Sudan (SD).
const flagSdnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffD21034)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xff007229),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 3,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Sudan_(construction_sheet).svg",
);

/// Flag properties of country Sweden (SE).
const flagSweProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff006AA7), ratio: 4),
    ColorsProperties(Color(0xffFFCD00), ratio: 2),
    ColorsProperties(Color(0xff006AA7), ratio: 4),
  ],
  aspectRatio: 8 / 5,
  elementsProperties: [
    ElementsProperties(
      Color(0xffFFCD00),
      shape: Rectangle(aspectRatio: 2 / 10),
      offset: Offset(-0.282, 0),
      widthFactor: 2 / 16,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Sweden_(construction_sheet).svg",
);

/// Flag properties of country Suriname (SR).
const flagSurProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff377e3f), ratio: 4),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xffb40a2d), ratio: 8),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff377e3f), ratio: 4),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffecc81d),
      shape: Star(),
      offset: Offset(0, 0.04),
      heightFactor: 8 / 20,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Suriname_(construction_sheet).svg",
);

/// Flag properties of country Western Sahara (EH).
const flagEshProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff007a3d)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffc4111b),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 3,
    ),
    ElementsProperties(
      Color(0xffc4111b),
      shape: Moon(radius: 1, offset: Offset(0.4, 0)),
      heightFactor: 0.27,
      child: ElementsProperties(
        Color(0xffc4111b),
        shape: Star(),
        offset: Offset(0.94, 0.02),
        heightFactor: 0.72,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/western_sahara/western_sahara_sheet.png",
);

/// Flag properties of country Guinea-Bissau (GW).
const flagGnbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xfffcd116)),
    ColorsProperties(Color(0xff009e49)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffce1126),
      shape: Rectangle(),
      offset: Offset(-1, 0),
      widthFactor: 1 / 3,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Star(),
        heightFactor: 1 / 3,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/guinea-bissau/guinea-bissau_sheet.png",
);

/// Flag properties of country Japan (JP).
const flagJpnProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffbc002d),
      shape: Ellipse(),
      heightFactor: 12 / 20,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Japan_(construction_sheet).svg",
);

/// Flag properties of country Jersey (JE).
const flagJeyProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
  ],
  aspectRatio: 5 / 3,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffcf142b),
      otherColors: [
        Color(0xff377bc8),
        Color(0xffffd700),
        Color(0xffffd700),
        Color(0xffcf142b),
        Color(0xffcf142b),
        Color(0xff000000),
        Color(0xffcf142b),
      ],
      offset: Offset(0, -0.55),
      heightFactor: 0.25,
      widthFactor: 0.1,
    ),
    ElementsProperties(
      Color(0xffcf142b),
      shape: DiagonalLine(),
      heightFactor: 0.11,
    ),
    ElementsProperties(
      Color(0xffcf142b),
      shape: DiagonalLine(isTopRightToBottomLeft: false),
      heightFactor: 0.11,
    ),
  ],
  url: "https://www.vexilla-mundi.com/jersey/jersey_sheet.png",
);

/// Flag properties of country Guam (GU).
const flagGumProperties = FlagProperties(
  [ColorsProperties(Color(0xffC62139))],
  aspectRatio: 41 / 22,
  elementsProperties: [
    ElementsProperties(
      Color(0xff00297B),
      shape: Rectangle(aspectRatio: 43 / 22),
      heightFactor: 36 / 40,
      child: CustomElementsProperties(
        Color(0xffC62139),
        otherColors: [
          Color(0xff00297B),
          Color(0xffcbe0e5),
          Color(0xffadd2d9),
          Color(0xfffdf9a1),
          Color(0xff179a3b),
          Color(0xffa79270),
          Color(0xffbd0728),
          Color(0xff239e46),
          Color(0xfffdf9ff),
          Color(0xffa68861),
          Color(0xffffffff),
        ],
        heightFactor: 38 / 40,
        widthFactor: 76 / 78,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/guam/guam_sheet.png",
);

/// Flag properties of country United Kingdom (GB).
const flagGbrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff012169)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: DiagonalLine(),
      heightFactor: 0.2,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: DiagonalLine(isTopRightToBottomLeft: false),
      heightFactor: 0.2,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      heightFactor: 0.2,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1 / 3),
      child: ElementsProperties(
        Color(0xffc8102e),
        shape: Rectangle(aspectRatio: 1 / 5),
      ),
    ),
    ElementsProperties(
      Color(0xffc8102e),
      shape: Rectangle(),
      heightFactor: 1 / 5,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_United_Kingdom_(1-2)_(construction_sheet).svg",
);

/// Flag properties of country Saint Helena,
/// Ascension and Tristan da Cunha (SH).
const flagShnProperties = flagGbrProperties; // TODO!

/// Flag properties of country Pakistan (PK).
const flagPakProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 15),
    ColorsProperties(Color(0xff115740), ratio: 45),
  ],
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Moon(radius: 0.92, offset: Offset(0.255, -0.23)),
      offset: Offset(0.25, 0),
      heightFactor: 12 / 20,
      angle: 60,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(0.57, -0.48),
        heightFactor: 0.333,
        angle: -24,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Pakistan_(construction_sheet).svg",
);

/// Flag properties of country Singapore (SG).
const flagSgpProperties = FlagProperties(
  [ColorsProperties(Color(0xffEE2536)), ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Moon(radius: 0.98, offset: Offset(0.425, 0)),
      offset: Offset(-0.58, -0.5),
      heightFactor: 0.366,
      angle: 60,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.526, -0.33),
      heightFactor: 3.3 / 36,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.36, -0.33),
      heightFactor: 3.3 / 36,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.576, -0.566),
      heightFactor: 3.3 / 36,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.31, -0.566),
      heightFactor: 3.3 / 36,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.444, -0.712),
      heightFactor: 3.3 / 36,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Construction_Sheet_of_the_Flag_of_Singapore.svg",
);

/// Flag properties of country Russia (RU).
const flagRusProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0036A7)),
    ColorsProperties(Color(0xffD62718)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Russia_(construction_sheet).svg",
);

/// Flag properties of country Dominican Republic (DO).
const flagDomProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002d62), ratio: 2),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffce1126), ratio: 2),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xff002d62),
      shape: Rectangle(),
      offset: Offset(1, 1),
      heightFactor: 2 / 5,
      widthFactor: 1 / 2,
    ),
    ElementsProperties(
      Color(0xffce1126),
      shape: Rectangle(),
      offset: Offset(1, -1),
      heightFactor: 2 / 5,
      widthFactor: 1 / 2,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1 / 5),
      widthFactor: 0.13,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1),
      heightFactor: 1 / 5,
      child: CustomElementsProperties(
        Color(0xff201b18),
        otherColors: [
          Color(0xffeac102),
          Color(0xff006300),
          Color(0xffffff00),
          Color(0xff008f4c),
          Color(0xff00873f),
          Color(0xffff0000),
          Color(0xff00863d),
          Color(0xffaa241e),
          Color(0xff000001),
          Color(0xff808000),
          Color(0xff000000),
        ],
      ),
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/dominican_republic/dominican_republic_sheet.png",
);

/// Flag properties of country Guatemala (GT).
const flagGtmProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff4997d0)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff4997d0)),
  ],
  aspectRatio: 8 / 5,
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xff406325),
      shape: Ellipse(),
      heightFactor: 0.35,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Ellipse(),
        offset: Offset(0, -0.25),
        heightFactor: 0.8,
        child: ElementsProperties(
          Color(0xff6c301e),
          shape: Star(points: 4, radiusFactor: 0.1),
          offset: Offset(0, 0.35),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xfff9f0aa),
            shape: Rectangle(aspectRatio: 0.6),
            offset: Offset(0, -0.35),
            heightFactor: 0.6,
          ),
        ),
      ),
    ),
    CustomElementsProperties(
      Color(0xff406325),
      otherColors: [
        Color(0xff67923d),
        Color(0xffba1f3e),
        Color(0xff8c959d),
        Color(0xff485654),
        Color(0xff6c301e),
        Color(0xffb2b6ba),
        Color(0xfffab81c),
        Color(0xfff9f0aa),
        Color(0xffb07e09),
        Color(0xff448127),
        Color(0xffeac102),
        Color(0xffa08307),
        Color(0xff34541f),
        Color(0xff24420e),
        Color(0xff511124),
        Color(0xff351710),
        Color(0xff999270),
        Color(0xff4c0505),
        Color(0xff000000),
      ],
      heightFactor: 1 / 3,
    ),
  ],
  url: "https://www.vexilla-mundi.com/guatemala/guatemala_sheet.png",
);

/// Flag properties of country Kuwait (KW).
const flagKwtProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff007A3D)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffCE1126)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xff000000),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 0.38,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Rectangle(aspectRatio: 1),
        offset: Offset(1.333, 0),
        heightFactor: 1 / 3,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Kuwait_(construction_sheet).svg",
);

/// Flag properties of country Israel (IL).
const flagIsrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 15),
    ColorsProperties(Color(0xff0038b8), ratio: 25),
    ColorsProperties(Color(0xffffffff), ratio: 80),
    ColorsProperties(Color(0xff0038b8), ratio: 25),
    ColorsProperties(Color(0xffffffff), ratio: 15),
  ],
  aspectRatio: 11 / 8,
  elementsProperties: [
    CustomElementsProperties(Color(0xff0038b8), heightFactor: 69 / 160),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Israel_(construction_sheet).svg",
);

/// Flag properties of country Guernsey (GG).
const flagGgyProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 15),
    ColorsProperties(Color(0xffe8112d), ratio: 10),
    ColorsProperties(Color(0xffffffff), ratio: 15),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffe8112d),
      shape: Rectangle(aspectRatio: 10 / 40),
      child: ElementsProperties(
        Color(0xfff9dd16),
        shape: Rectangle(aspectRatio: 0.1),
        heightFactor: 0.75,
      ),
    ),
    ElementsProperties(
      Color(0xfff9dd16),
      shape: Rectangle(aspectRatio: 9),
      heightFactor: 0.08,
    ),
    CustomElementsProperties(Color(0xfff9dd16), heightFactor: 0.8),
  ],
  url: "https://www.vexilla-mundi.com/guernsey/guernsey_sheet.png",
);

/// Flag properties of country Guadeloupe (GP).
const flagGlpProperties = flagFraProperties;

/// Flag properties of country Mayotte (YT).
const flagMytProperties = flagFraProperties;

/// Flag properties of country Saint Martin (MF).
const flagMafProperties = flagFraProperties;

/// Flag properties of country Wallis and Futuna (WF).
const flagWlfProperties = flagFraProperties;

/// Flag properties of country Saint Barthélemy (BL).
const flagBlmProperties = flagFraProperties;

/// Flag properties of country New Caledonia (NC).
const flagNclProperties = flagFraProperties;

/// Flag properties of country Réunion (RE).
const flagReuProperties = flagFraProperties;

/// Flag properties of country Saint Pierre and Miquelon (PM).
const flagSpmProperties = flagFraProperties;

/// Flag properties of country French Guiana (GF).
const flagGufProperties = flagFraProperties;

/// Flag properties of country Denmark (DK).
const flagDnkProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffc8102e), ratio: 12),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xffc8102e), ratio: 12),
  ],
  aspectRatio: 37 / 28,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 4 / 28),
      offset: Offset(-0.272, 0),
      widthFactor: 4 / 37,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Denmark_(construction_sheet).svg",
);

/// Flag properties of country Solomon Islands (SB).
const flagSlbProperties = FlagProperties(
  [ColorsProperties(Color(0xff0000d6)), ColorsProperties(Color(0xff006000))],
  aspectRatio: 2,
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.85, -0.74),
      heightFactor: 0.2,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(0, 3.85),
        heightFactor: 1.1,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(4.2, 0.1),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(0, -3.7),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(-2.1, 2),
              heightFactor: 1.1,
            ),
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffffcc00),
      shape: DiagonalLine(isTopRightToBottomLeft: false),
      heightFactor: 0.1,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/solomon_islands/solomon_islands_sheet.png",
);

/// Flag properties of country Paraguay (PY).
const flagPryProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffd52b1e)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0038a8)),
  ],
  aspectRatio: 20 / 11,
  elementsProperties: [
    ElementsProperties(
      Color(0xff000000),
      shape: Ellipse(),
      heightFactor: 0.26,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Ellipse(),
        heightFactor: 0.92,
        child: ElementsProperties(
          Color(0xff000000),
          shape: Ellipse(),
          heightFactor: 0.9,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Ellipse(),
            heightFactor: 0.96,
            child: ElementsProperties(
              Color(0xff009b3a),
              shape: Ellipse(),
              heightFactor: 0.666,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Ellipse(),
                offset: Offset(0, -0.2),
                heightFactor: 0.7,
                child: ElementsProperties(
                  Color(0xfffedf00),
                  shape: Star(),
                  offset: Offset(0, 0.2),
                  heightFactor: 0.666,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/paraguay/paraguay_sheet.png",
);

/// Flag properties of country Pitcairn Islands (PN).
const flagPcnProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xfff7e017),
      otherColors: [
        Color(0xff316d3a),
        Color(0xff006ec7),
        Color(0xff012169),
        Color(0xfff7e017),
        Color(0xff337321),
        Color(0xffffffff),
        Color(0xffc8102e),
        Color(0xffe5e5e5),
        Color(0xff00247d),
        Color(0xff96877d),
        Color(0xff000000),
        Color(0xff316d3a),
      ],
      offset: Offset(0.5, 0.1),
      heightFactor: 0.4,
      widthFactor: 0.2,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/pitcairn_islands/pitcairn_island_sheet.png",
);

/// Flag properties of country São Tomé and Príncipe (ST).
const flagStpProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff12ad2b), ratio: 24),
    ColorsProperties(Color(0xffffce00), ratio: 36),
    ColorsProperties(Color(0xff12ad2b), ratio: 24),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffd21034),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 4,
    ),
    ElementsProperties(
      Color(0xff000000),
      shape: Star(),
      offset: Offset(0, 0.03),
      heightFactor: 28 / 84,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Star(),
        offset: Offset(3.15, 0.1),
        heightFactor: 1.1,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_S%C3%A3o_Tom%C3%A9_and_Pr%C3%ADncipe_(construction_sheet).svg",
);

/// Flag properties of country Seychelles (SC).
const flagSycProperties = FlagProperties(
  [ColorsProperties(Color(0xff003d88)), ColorsProperties(Color(0xff007A3A))],
  aspectRatio: 2,
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffd92223),
      otherColors: [Color(0xfffcd955), Color(0xffffffff)],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Seychelles_(construction_sheet).svg",
);

/// Flag properties of country Djibouti (DJ).
const flagDjiProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff6AB2E7)),
    ColorsProperties(Color(0xff12AD2B)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 0.575,
      child: ElementsProperties(
        Color(0xffD7141A),
        shape: Star(),
        offset: Offset(-0.2333, 0.025),
        heightFactor: 0.28,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/djibouti/djibouti_sheet.png",
);

/// Flag properties of country Equatorial Guinea (GQ).
const flagGnqProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff3e9a00)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffe32118)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xFFB0B0B0),
      otherColors: [
        Color(0xff73452b),
        Color(0xFFB0B0B0),
        Color(0xFFB0B0B0),
        Color(0xFFB0B0B0),
        Color(0xFFB0B0B0),
        Color(0xffffffff),
        Color(0xff009a3b),
        Color(0xffffd700),
        Color(0xff000000),
      ],
      heightFactor: 0.18,
      widthFactor: 0.1,
    ),
    ElementsProperties(
      Color(0xff0073ce),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 4,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/equatorial_guinea/equatorial_guinea_sheet.png",
);

/// Flag properties of country South Korea (KR).
const flagKorProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000000),
      otherColors: [Color(0xff0047a0), Color(0xffcd2e3a)],
      heightFactor: 1 / 2,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_South_Korea_(construction_sheet).svg",
);

/// Flag properties of country Isle of Man (IM).
const flagImnProperties = FlagProperties(
  [ColorsProperties(Color(0xffCF142B))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [Color(0xffF9DD16), Color(0xFF000000)],
      offset: Offset(0, 0.15),
      heightFactor: 0.59,
      widthFactor: 0.67,
    ),
  ],
  url: "https://www.vexilla-mundi.com/man/man_sheet.png",
);

/// Flag properties of country Kenya (KE).
const flagKenProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000), ratio: 24),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xffbb0000), ratio: 24),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xff006600), ratio: 24),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000000),
      otherColors: [
        Color(0xffbb0000),
        Color(0xffffffff),
      ],
      heightFactor: 48 / 80,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Kenya_(construction_sheet).png",
);

/// Flag properties of country Kyrgyzstan (KG).
const flagKgzProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      Color(0xffFFED00),
      shape: Star(points: 40, radiusFactor: 0.52),
      heightFactor: 3 / 5,
      angle: 41,
      child: ElementsProperties(
        Color(0xffff0000),
        shape: Ellipse(),
        heightFactor: 0.666,
        child: ElementsProperties(
          Color(0xffFFED00),
          shape: Ellipse(),
          heightFactor: 0.95,
          child: ElementsProperties(
            Color(0xffff0000),
            shape: Ellipse(),
            heightFactor: 0.85,
            child: ElementsProperties(
              Color(0xffFFED00),
              shape: Ellipse(),
              offset: Offset(0, -0.05),
              heightFactor: 0.88,
              child: ElementsProperties(
                Color(0xffff0000),
                shape: Star(points: 4, radiusFactor: 0.1),
                offset: Offset(0, -0.3),
                heightFactor: 0.9,
              ),
            ),
          ),
        ),
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/kyrgyzstan/kyrgyzstan_sheet.png",
);

/// Flag properties of country Hong Kong (HK).
const flagHkgProperties = FlagProperties(
  [ColorsProperties(Color(0xffec1b2e))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      offset: Offset(0, -0.02),
      heightFactor: 0.55,
      widthFactor: 0.38,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:HKSARFlagConstructionSheet_2.svg",
);

/// Flag properties of country North Korea (KP).
const flagPrkProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff024FA2), ratio: 6),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffED1C27), ratio: 22),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff024FA2), ratio: 6),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Ellipse(),
      offset: Offset(-1 / 3, 0),
      heightFactor: 16 / 36,
      child: ElementsProperties(
        Color(0xffED1C27),
        shape: Star(),
        heightFactor: 0.968,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_North_Korea_(construction_sheet).svg",
);

/// Flag properties of country Saudi Arabia (SA).
const flagSauProperties = FlagProperties(
  [ColorsProperties(Color(0xff005430))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      heightFactor: 1 / 4,
      widthFactor: 1 / 4,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saudi_Arabia_(construction_sheet).svg",
);

/// Flag properties of country El Salvador (SV).
const flagSlvProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0047AB)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0047AB)),
  ],
  aspectRatio: 335 / 189,
  elementsProperties: [
    ElementsProperties(
      Color(0xffFCE300),
      shape: Ellipse(),
      heightFactor: 57 / 189,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Ellipse(),
        heightFactor: 0.9,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(points: 3, radiusFactor: 0.5),
          heightFactor: 1.25,
          angle: 180,
          child: ElementsProperties(
            Color(0xff009900),
            shape: Ellipse(),
            offset: Offset(0, 0.45),
            heightFactor: 0.95,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Ellipse(),
              offset: Offset(0, -0.3),
              heightFactor: 0.85,
              child: ElementsProperties(
                Color(0xffc8a400),
                shape: Triangle(),
                offset: Offset(0.1, 0.7),
                heightFactor: 0.8,
                widthFactor: 0.8,
                angle: 270,
                child: ElementsProperties(
                  Color(0xffffffff),
                  shape: Triangle(),
                  offset: Offset(0.1, 0.87),
                  heightFactor: 0.8,
                  widthFactor: 0.8,
                  angle: 270,
                  child: ElementsProperties(
                    Color(0xffff0000),
                    shape: Ellipse(),
                    offset: Offset(0, -0.05),
                    heightFactor: 0.333,
                    child: ElementsProperties(
                      Color(0xffffffff),
                      shape: Ellipse(),
                      heightFactor: 0.7,
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
  url:
      "https://wikipedia.org/wiki/File:Flag_of_El_Salvador_(Construction_Sheet).svg",
);

/// Flag properties of country Serbia (RS).
const flagSrbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffc6363c)),
    ColorsProperties(Color(0xff0c4076)),
    ColorsProperties(Color(0xffffffff)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xff0c4076),
        Color(0xffc6363c),
        Color(0xffc6363c),
        Color(0xffc6363c),
        Color(0xffc6363c),
        Color(0xffffffff),
        Color(0xff21231e),
        Color(0xffedb92e),
      ],
      offset: Offset(-2 / 7, 0.2),
      heightFactor: 0.5,
      widthFactor: 0.25,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Serbia_construction_sheet.svg",
);

/// Flag properties of country Poland (PL).
const flagPolProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xffdc143c))],
  aspectRatio: 8 / 5,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Poland_(construction_sheet).svg",
);

/// Flag properties of country Greece (GR).
const flagGrcProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff005bae)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff005bae)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff005bae)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff005bae)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff005bae)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xff005bae),
      shape: Rectangle(aspectRatio: 1),
      offset: Offset(-1, -1),
      heightFactor: 10 / 18,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Rectangle(aspectRatio: 1 / 5),
      ),
    ),
    ElementsProperties(
      Color(0x00005bae),
      shape: Rectangle(aspectRatio: 1),
      offset: Offset(-1, -1),
      heightFactor: 10 / 18,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Rectangle(),
        heightFactor: 1 / 5,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Greece_(construction_sheet).svg",
);

/// Flag properties of country Georgia (GE).
const flagGeoProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 80),
    ColorsProperties(Color(0xffff0000), ratio: 40),
    ColorsProperties(Color(0xffffffff), ratio: 80),
  ],
  elementsProperties: [
    ElementsProperties(Color(0xffff0000), shape: Rectangle(aspectRatio: 1 / 5)),
    CustomElementsProperties(
      Color(0xffff0000),
      offset: Offset(-0.85, 0.4),
      heightFactor: 40 / 200,
    ),
    CustomElementsProperties(
      Color(0xffff0000),
      offset: Offset(0.85, 0.4),
      heightFactor: 40 / 200,
    ),
    CustomElementsProperties(
      Color(0xffff0000),
      offset: Offset(-0.85, -0.8),
      heightFactor: 40 / 200,
    ),
    CustomElementsProperties(
      Color(0xffff0000),
      offset: Offset(0.85, -0.8),
      heightFactor: 40 / 200,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Georgia_(construction_sheet).svg",
);

/// Flag properties of country India (IN).
const flagIndProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFF671F)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff046A38)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xff06038D),
      shape: Ellipse(),
      heightFactor: 185 / 600,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Ellipse(),
        heightFactor: 160 / 185,
        child: ElementsProperties(
          Color(0xff06038D),
          shape: Star(points: 24, radiusFactor: 0.8),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Ellipse(),
            heightFactor: 0.89,
            child: ElementsProperties(
              Color(0xff06038D),
              shape: Star(points: 24, radiusFactor: 0.25),
              angle: 23,
            ),
          ),
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_India_(construction_sheet).svg",
);

/// Flag properties of country Maldives (MV).
const flagMdvProperties = FlagProperties(
  [ColorsProperties(Color(0xffd21034))],
  elementsProperties: [
    ElementsProperties(
      Color(0xff007e3a),
      shape: Rectangle(aspectRatio: 48 / 24),
      heightFactor: 1 / 2,
      widthFactor: 48 / 72,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Moon(radius: 1, offset: Offset(0.38, 0)),
        offset: Offset(0.12, 0),
        heightFactor: 16 / 24,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Maldives_(construction_sheet).svg",
);

/// Flag properties of country Liberia (LR).
const flagLbrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcc0000)),
  ],
  aspectRatio: 19 / 10,
  elementsProperties: [
    ElementsProperties(
      Color(0xff000066),
      shape: Rectangle(aspectRatio: 1),
      offset: Offset(-1, -1),
      heightFactor: 5 / 11,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        heightFactor: 18 / 30,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/liberia/liberia_sheet.png",
);

/// Flag properties of country Morocco (MA).
const flagMarProperties = FlagProperties(
  [ColorsProperties(Color(0xffc1272d))],
  elementsProperties: [
    ElementsProperties(
      Color(0xff006233),
      shape: Star(isFilled: false),
      heightFactor: 0.45,
      child: ElementsProperties(
        Color(0xff006233),
        shape: Star(radiusFactor: 0.8),
        offset: Offset(0, 0.1),
        heightFactor: 0.5,
        angle: 180,
        child: ElementsProperties(
          Color(0xffc1272d),
          shape: Star(radiusFactor: 0.8),
          offset: Offset(0, 0.1),
          heightFactor: 0.8,
          angle: 180,
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Morocco_(construction_sheet).svg",
);

/// Flag properties of country New Zealand (NZ).
const flagNzlProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(0.5, 0.6),
      heightFactor: 0.18,
      child: ElementsProperties(
        Color(0xffC8102E),
        shape: Star(),
        offset: Offset(0, 0.11),
        heightFactor: 0.85,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(3, -6.75),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffC8102E),
            shape: Star(),
            offset: Offset(0, 0.11),
            heightFactor: 0.85,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(-3.9, -3.48),
              heightFactor: 1.55,
              child: ElementsProperties(
                Color(0xffC8102E),
                shape: Star(),
                offset: Offset(0, 0.11),
                heightFactor: 0.85,
                child: ElementsProperties(
                  Color(0xffffffff),
                  shape: Star(),
                  offset: Offset(-4.25, 4.6),
                  heightFactor: 1.5,
                  child: ElementsProperties(
                    Color(0xffC8102E),
                    shape: Star(),
                    offset: Offset(0, 0.11),
                    heightFactor: 0.85,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_New_Zealand_construction.svg",
);

/// Flag properties of country Australia (AU).
const flagAusProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 7, radiusFactor: 0.42),
      offset: Offset(-0.5, 0.5),
      heightFactor: 0.3,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 7, radiusFactor: 0.42),
      offset: Offset(0.5, 0.666),
      heightFactor: 0.14,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(1.45, -4.333),
        heightFactor: 0.66,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(points: 7, radiusFactor: 0.42),
          offset: Offset(2.95, -4.2),
          heightFactor: 1.8,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(points: 7, radiusFactor: 0.42),
            offset: Offset(-3.2, -2.95),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(points: 7, radiusFactor: 0.42),
              offset: Offset(-3.4, 3.85),
            ),
          ),
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Australia_(construction_sheet).svg",
);

/// Flag properties of country Heard Island and McDonald Islands (HM).
const flagHmdProperties = flagAusProperties; // TODO!

/// Flag properties of country Brunei (BN).
const flagBrnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xfff7e017), ratio: 3),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff000000), ratio: 2),
    ColorsProperties(Color(0xfff7e017), ratio: 3),
  ],
  aspectRatio: 2,
  stripeOrientation: StripeOrientation.diagonalTopLeftToBottomRight,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffcf1126),
      otherColors: [Color(0xfff7e017)],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Brunei_Flag_Official_Measurements.jpg",
);

/// Flag properties of country Belarus (BY).
const flagBlrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffD22730), ratio: 2),
    ColorsProperties(Color(0xff009739)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(-0.99, 0),
      widthFactor: 2 / 18,
      child: CustomElementsProperties(
        Color(0xffD22730),
        otherColors: [Color(0xffffffff)],
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Belarus_(construction_sheet).svg",
);

/// Flag properties of country Trinidad and Tobago (TT).
const flagTtoProperties = FlagProperties(
  [ColorsProperties(Color(0xffe00000))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [Color(0xff000000)],
      heightFactor: 0.3,
      widthFactor: 0.05,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Trinidad_and_Tobago_(construction_sheet).svg",
);

/// Flag properties of country Uganda (UG).
const flagUgaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffFCDC04)),
    ColorsProperties(Color(0xffD90000)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffFCDC04)),
    ColorsProperties(Color(0xffD90000)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Ellipse(),
      heightFactor: 0.31,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Star(points: 3, radiusFactor: 0.2),
        heightFactor: 0.9,
        angle: 90,
      ),
    ),
    CustomElementsProperties(
      Color(0xff000000),
      otherColors: [
        Color(0xffFCDC04),
        Color(0xffD90000),
        Color(0xffffffff),
        Color(0xff9ca69c),
      ],
      heightFactor: 0.96,
    ),
  ],
  url: "https://www.vexilla-mundi.com/uganda/uganda_sheet.png",
);

/// Flag properties of country Turks and Caicos Islands (TC).
const flagTcaProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xfffcd116),
      otherColors: [
        Color(0xfffcad56),
        Color(0xfff1b2dc),
        Color(0xff9e540a),
        Color(0xff009e49),
        Color(0xfffcd116),
        Color(0xfffcd116),
        Color(0xffffa1a1),
        Color(0xffce1126),
        Color(0xff000001),
        Color(0xff012169),
        Color(0xffffffff),
        Color(0xffc8102e),
        Color(0xff000000),
        Color(0xfffcd116),
      ],
      offset: Offset(0.5, 0),
      heightFactor: 0.35,
      widthFactor: 0.15,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/turks_and_caicos_islands/turks_and_caicos_islands_sheet.png",
);

/// Flag properties of country Yemen (YE).
const flagYemProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffCE1126)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Yemen_(construction_sheet).svg",
);

/// Flag properties of country Cook Islands (CK).
const flagCokProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(0.175, -0.21),
      heightFactor: 0.145,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(1.05, -1.75),
        heightFactor: 1.1,
        angle: 25,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(1.65, -1.15),
          heightFactor: 1.1,
          angle: 48,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(2.05, -0.35),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(2.05, 0.55),
              heightFactor: 1.1,
              angle: -48,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(1.65, 1.4),
                heightFactor: 1.1,
                angle: -25,
                child: ElementsProperties(
                  Color(0xffffffff),
                  shape: Star(),
                  offset: Offset(1.05, 2.05),
                  heightFactor: 1.1,
                  child: ElementsProperties(
                    Color(0xffffffff),
                    shape: Star(),
                    offset: Offset(0.25, 2.3),
                    heightFactor: 1.1,
                    angle: 24,
                    child: ElementsProperties(
                      Color(0xffffffff),
                      shape: Star(),
                      offset: Offset(-0.65, 2.2),
                      heightFactor: 1.1,
                      angle: -24,
                      child: ElementsProperties(
                        Color(0xffffffff),
                        shape: Star(),
                        offset: Offset(-1.45, 1.75),
                        heightFactor: 1.1,
                        child: ElementsProperties(
                          Color(0xffffffff),
                          shape: Star(),
                          offset: Offset(-1.95, 1.05),
                          heightFactor: 1.1,
                          angle: -48,
                          child: ElementsProperties(
                            Color(0xffffffff),
                            shape: Star(),
                            offset: Offset(-2.15, 0.1),
                            heightFactor: 1.1,
                            angle: 48,
                            child: ElementsProperties(
                              Color(0xffffffff),
                              shape: Star(),
                              offset: Offset(-2, -0.8),
                              heightFactor: 1.1,
                              child: ElementsProperties(
                                Color(0xffffffff),
                                shape: Star(),
                                offset: Offset(-1.45, -1.6),
                                heightFactor: 1.1,
                                angle: -48,
                                child: ElementsProperties(
                                  Color(0xffffffff),
                                  shape: Star(),
                                  offset: Offset(-0.65, -2.1),
                                  heightFactor: 1.1,
                                  angle: -24,
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
        ),
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/cook_islands/cook_islands_sheet.png",
);

/// Flag properties of country Bolivia (BO).
const flagBolProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffDA291C)),
    ColorsProperties(Color(0xffF4E400)),
    ColorsProperties(Color(0xff007A33)),
  ],
  aspectRatio: 22 / 15,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffDA291C),
      otherColors: [
        Color(0xffDA291C),
        Color(0xffF4E400),
        Color(0xffF4E400),
        Color(0xffF4E400),
        Color(0xffF4E400),
        Color(0xff007A33),
        Color(0xffDA291C),
      ],
      offset: Offset(0, 0.02),
      heightFactor: 0.2,
      widthFactor: 0.2,
    ),
  ],
  url: "https://www.vexilla-mundi.com/bolivia/bolivia_sheet.png",
);

/// Flag properties of country Austria (AT).
const flagAutProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Austria_(construction_sheet).svg",
);

/// Flag properties of country Lesotho (LS).
const flagLsoProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00209f), ratio: 75),
    ColorsProperties(Color(0xffffffff), ratio: 100),
    ColorsProperties(Color(0xff009543), ratio: 75),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000000),
      otherColors: [Color(0xffffffff)],
      offset: Offset(0.4, 0.3),
      heightFactor: 0.3,
      widthFactor: 0.2,
      angle: 270,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Lesotho_(construction_sheet).svg",
);

/// Flag properties of country Malawi (MW).
const flagMwiProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xfff41408)),
    ColorsProperties(Color(0xff21873b)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xfff41408),
      otherColors: [Color(0xfff41408), Color(0xff000000)],
      offset: Offset(0, -0.38),
      heightFactor: 0.5,
      widthFactor: 0.42,
    ),
  ],
  url: "https://www.vexilla-mundi.com/malawi/malawi_sheet.png",
);

/// Flag properties of country Netherlands (NL).
const flagNldProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffAD1D25)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff1E4785)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Netherlands_(construction_sheet).svg",
);

/// Flag properties of country Caribbean Netherlands (BQ).
const flagBesProperties = flagNldProperties;

/// Flag properties of country Mauritius (MU).
const flagMusProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffEB2436)),
    ColorsProperties(Color(0xff131A6D)),
    ColorsProperties(Color(0xffFFD600)),
    ColorsProperties(Color(0xff00A650)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Mauritius_(construction_sheet).svg",
);

/// Flag properties of country Ivory Coast (CI).
const flagCivProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFF8200)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009A44)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Ivory_Coast_(construction_sheet).svg",
);

/// Flag properties of country Bermuda (BM).
const flagBmuProperties = FlagProperties(
  [ColorsProperties(Color(0xffcf142b))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xff2f8f22),
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xff2f8f22),
        Color(0xff2f8f22),
        Color(0xff784421),
        Color(0xfff5ce00),
        Color(0xffe4cb5e),
        Color(0xff000066),
        Color(0xffc8102e),
        Color(0xffd40000),
        Color(0xff64b4d1),
        Color(0xff00247d),
        Color(0xff000000),
      ],
      offset: Offset(0.5, 0),
      heightFactor: 0.5,
      widthFactor: 0.2,
    ),
  ],
  url: "https://www.vexilla-mundi.com/bermuda/bermuda_sheet.png",
);

/// Flag properties of country Belize (BZ).
const flagBlzProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffd90f19), ratio: 36),
    ColorsProperties(Color(0xff171696), ratio: 144 * 2),
    ColorsProperties(Color(0xffd90f19), ratio: 36),
  ],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Ellipse(),
      heightFactor: 210 / 360,
      child: ElementsProperties(
        Color(0xff338a00),
        shape: Ellipse(),
        heightFactor: 0.92,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Ellipse(),
          heightFactor: 0.9,
        ),
      ),
    ),
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xff338a00),
        Color(0xffb68a6a),
        Color(0xff653024),
        Color(0xffffe682),
        Color(0xffffe682),
        Color(0xff9dc9e2),
      ],
      heightFactor: 0.3,
    ),
  ],
  url: "https://www.vexilla-mundi.com/belize/belize_sheet.png",
);

/// Flag properties of country Taiwan (TW).
const flagTwnProperties = FlagProperties(
  [ColorsProperties(Color(0xffF20000))],
  elementsProperties: [
    ElementsProperties(
      Color(0xff0029CC),
      shape: Rectangle(aspectRatio: 3 / 2),
      offset: Offset(-1, -1),
      heightFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(points: 12, radiusFactor: 1 / 2),
        heightFactor: 3 / 4,
        angle: 15,
        child: ElementsProperties(
          Color(0xff0029CC),
          shape: Ellipse(),
          heightFactor: 0.6,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Ellipse(),
            heightFactor: 0.85,
          ),
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Republic_of_China(Taiwan)_sheet.svg",
);

/// Flag properties of country United States (US).
const flagUsaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffB22234)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffB22234)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffB22234)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffB22234)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffB22234)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffB22234)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffB22234)),
  ],
  aspectRatio: 19 / 10,
  elementsProperties: [
    ElementsProperties(
      Color(0xff3C3B6E),
      shape: Rectangle(aspectRatio: 2964 / 2100),
      offset: Offset(-1, -1),
      heightFactor: 7 / 13,
      child: CustomElementsProperties(Color(0xffffffff), heightFactor: 0.052),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_United_States_(construction_sheet).svg",
);

/// Flag properties of country United States Minor Outlying Islands (UM).
const flagUmiProperties = flagUsaProperties; // TODO!

/// Flag properties of country United States Virgin Islands (VI).
const flagVirProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff369443)),
    ColorsProperties(Color(0xfff4c53d)),
    ColorsProperties(Color(0xff0081c6)),
    ColorsProperties(Color(0xffa60032)),
    ColorsProperties(Color(0xff162667)),
    ColorsProperties(Color(0xff010002)),
  ],
  url: "https://www.vexilla-mundi.com/virgin_islands/virgin_islands_sheet.png",
);

/// Flag properties of country Tuvalu (TV).
const flagTuvProperties = FlagProperties(
  [ColorsProperties(Color(0xff009fca))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xfffff40d),
      shape: Star(),
      offset: Offset(0.092, 0.8),
      heightFactor: 1 / 6,
      child: ElementsProperties(
        Color(0xfffff40d),
        shape: Star(),
        offset: Offset(2.6, -3.3),
        heightFactor: 1.1,
        angle: -36,
        child: ElementsProperties(
          Color(0xfffff40d),
          shape: Star(),
          offset: Offset(0, 2.85),
          heightFactor: 1.1,
          angle: -36,
          child: ElementsProperties(
            Color(0xfffff40d),
            shape: Star(),
            offset: Offset(2.7, -0.7),
            heightFactor: 1.1,
            angle: -36,
            child: ElementsProperties(
              Color(0xfffff40d),
              shape: Star(),
              offset: Offset(2.2, -1.9),
              heightFactor: 1.1,
              child: ElementsProperties(
                Color(0xfffff40d),
                shape: Star(),
                offset: Offset(2.26, -1.35),
                heightFactor: 1.1,
                child: ElementsProperties(
                  Color(0xfffff40d),
                  shape: Star(),
                  offset: Offset(0, -5.35),
                  heightFactor: 1.1,
                  child: ElementsProperties(
                    Color(0xfffff40d),
                    shape: Star(),
                    offset: Offset(-2.25, 2.3),
                    heightFactor: 1.1,
                    angle: -36,
                    child: ElementsProperties(
                      Color(0xfffff40d),
                      shape: Star(),
                      offset: Offset(-2.3, 1),
                      heightFactor: 1.1,
                      angle: -36,
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
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Tuvalu_(construction_sheet).svg",
);

/// Flag properties of country Norway (NO).
const flagNorProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffBA0C2F), ratio: 6),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xffBA0C2F), ratio: 6),
  ],
  aspectRatio: 11 / 8,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1 / 4),
      offset: Offset(-1 / 3, 0),
      widthFactor: 4 / 22,
      child: ElementsProperties(
        Color(0xff002664),
        shape: Rectangle(),
        widthFactor: 1 / 2,
      ),
    ),
    ElementsProperties(
      Color(0xff002664),
      shape: Rectangle(),
      heightFactor: 2 / 16,
      widthFactor: 1,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Norway_(construction_sheet).svg",
);

/// Flag properties of country Bouvet Island (BV).
const flagBvtProperties = flagNorProperties; // TODO!

/// Flag properties of country Svalbard and Jan Mayen (SJ).
const flagSjmProperties = flagNorProperties; // TODO!
