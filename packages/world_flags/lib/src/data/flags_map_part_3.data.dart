import "dart:ui";

import "../constants/flag_constants.dart";
import "../model/colors_properties.dart";
import "../model/elements/custom_elements_properties.dart";
import "../model/elements/elements_properties.dart";
import "../model/flag_properties.dart";
import "../model/shape.dart";
import "../model/stripe_orientation.dart";

// ignore_for_file: prefer-static-class

/// Flag properties of country British Indian Ocean Territory (IO).
const flagIotProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff000063), ratio: 2),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff000063), ratio: 2),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff000063), ratio: 2),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff000063), ratio: 2),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff000063), ratio: 2),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xff000063), ratio: 2),
    ColorsProperties(Color(0xffffffff)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000063),
      otherColors: [
        Color(0xff000063),
        Color(0xff006d00),
        Color(0xff006300),
        Color(0xff006d00),
        Color(0xff006300),
        Color(0xffcc0000),
        Color(0xfffff100),
        Color(0xff808080),
        Color(0xffa24300),
        Color(0xff012169),
        Color(0xffc8102e),
        Color(0xff000000),
      ],
      offset: Offset(0.5, -0.3),
      heightFactor: 0.3,
      widthFactor: 0.15,
    ),
    ElementsProperties(
      Color(0xffa24300),
      shape: Rectangle(aspectRatio: 0.06),
      offset: Offset(0.5, 0.5),
      heightFactor: 0.5,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/british_indian_ocean_territory/british_indian_ocean_territory_sheet.png",
);

/// Flag properties of country Grenada (GD).
const flagGrdProperties = FlagProperties(
  [ColorsProperties(Color(0xff009739))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      Color(0xffFFD100),
      shape: Triangle(),
      offset: Offset(-0.075, -0.5),
      heightFactor: 1 / 2,
      widthFactor: 1.15,
      angle: 90,
    ),
    ElementsProperties(
      Color(0xffFFD100),
      shape: Triangle(),
      offset: Offset(-0.075, 1),
      heightFactor: 1 / 2,
      widthFactor: 1.15,
      angle: 270,
    ),
    ElementsProperties(
      Color(0xffEF3340),
      shape: Rectangle(aspectRatio: 1 / 7),
      offset: Offset(-1, 0),
    ),
    ElementsProperties(
      Color(0xffEF3340),
      shape: Rectangle(aspectRatio: 1 / 7),
      offset: Offset(1, 0),
    ),
    ElementsProperties(
      Color(0xffEF3340),
      shape: Rectangle(),
      offset: Offset(0, -1),
      heightFactor: 1 / 7,
      child: ElementsProperties(
        Color(0xffFFD100),
        shape: Star(),
        heightFactor: 0.9,
        child: ElementsProperties(
          Color(0xffFFD100),
          shape: Star(),
          offset: Offset(-5.45, 0.09),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffFFD100),
            shape: Star(),
            offset: Offset(10.95, 0.1),
            heightFactor: 1.1,
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffEF3340),
      shape: Rectangle(),
      offset: Offset(0, 1),
      heightFactor: 1 / 7,
      child: ElementsProperties(
        Color(0xffFFD100),
        shape: Star(),
        heightFactor: 0.9,
        child: ElementsProperties(
          Color(0xffFFD100),
          shape: Star(),
          offset: Offset(-5.45, 0.09),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffFFD100),
            shape: Star(),
            offset: Offset(10.95, 0.1),
            heightFactor: 1.1,
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffEF3340),
      shape: Ellipse(),
      heightFactor: 0.24,
      child: ElementsProperties(
        Color(0xffFFD100),
        shape: Star(),
        heightFactor: 0.9,
      ),
    ),
    ElementsProperties(
      Color(0xffFFD100),
      shape: Ellipse(),
      offset: Offset(-0.7, 0.02),
      heightFactor: 0.13,
      child: ElementsProperties(
        Color(0xffEF3340),
        shape: Ellipse(),
        offset: Offset(0.4, 0.6),
        heightFactor: 0.5,
      ),
    ),
    CustomElementsProperties(
      Color(0xffEF3340),
      otherColors: [Color(0xffFFD100)],
      offset: Offset(-0.7, 0),
      heightFactor: 0.2,
    ),
  ],
  url: "https://www.vexilla-mundi.com/grenada/grenada_sheet.png",
);

/// Flag properties of country South Georgia (GS).
const flagSgsProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xff000066),
        Color(0xff656263),
        Color(0xff1e5aa6),
        Color(0xff6a4c2d),
        Color(0xffffbb00),
        Color(0xff006b00),
        Color(0xffffc900),
        Color(0xffcdad56),
        Color(0xffe80000),
        Color(0xffc01500),
        Color(0xff00713d),
        Color(0xff1e5aa6),
        Color(0xffff7000),
        Color(0xffc75b00),
        Color(0xffcccccd),
        Color(0xff0000ff),
        Color(0xff923f00),
        Color(0xfffffeff),
        Color(0xff5e0043),
        Color(0xff8a9396),
        Color(0xffcecfcf),
        Color(0xff2b2b2b),
        Color(0xff012169),
        Color(0xffc8102e),
        Color(0xff000000),
        Color(0xff3ec26d),
        Color(0xfffff700),
        Color(0xffcccccc),
        Color(0xffb4b6b9),
        Color(0xff474747),
      ],
      offset: Offset(0.5, 0.1),
      heightFactor: 0.4,
      widthFactor: 0.15,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/south_georgia_and_the_south_sandwich_islands/south_georgia_and_the_south_sandwich_islands_sheet.png",
);

/// Flag properties of country DR Congo (CD).
const flagCodProperties = FlagProperties(
  [ColorsProperties(Color(0xff007fff))],
  aspectRatio: 4 / 3,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffce1021),
      otherColors: [Color(0xfff7d618)],
      heightFactor: 0.2,
      widthFactor: 0.08,
    ),
    ElementsProperties(
      Color(0xfff7d618),
      shape: Star(),
      offset: Offset(-0.635, -0.475),
      heightFactor: 0.39,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/congo_democratic_republic/congo_democratic_republic_sheet.png",
);

/// Flag properties of country Sri Lanka (LK).
const flagLkaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffF7B718), ratio: 12),
    ColorsProperties(Color(0xff005F56), ratio: 35),
    ColorsProperties(Color(0xffDF7500), ratio: 35),
    ColorsProperties(Color(0xffF7B718), ratio: 12),
    ColorsProperties(Color(0xff941E32), ratio: 160),
    ColorsProperties(Color(0xffF7B718), ratio: 12),
  ],
  aspectRatio: 2,
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffF7B718),
      otherColors: [Color(0xff000000)],
      offset: Offset(0.33, -0.14),
      heightFactor: 0.63,
      widthFactor: 0.45,
    ),
    ElementsProperties(
      Color(0xffF7B718),
      shape: Ellipse(),
      offset: Offset(-0.19, -0.666),
      heightFactor: 0.1,
    ),
    ElementsProperties(
      Color(0xffF7B718),
      shape: Ellipse(),
      offset: Offset(-0.19, 0.666),
      heightFactor: 0.1,
    ),
    ElementsProperties(
      Color(0xffF7B718),
      shape: Ellipse(),
      offset: Offset(0.8, 0.666),
      heightFactor: 0.1,
    ),
    ElementsProperties(
      Color(0xffF7B718),
      shape: Ellipse(),
      offset: Offset(0.8, -0.666),
      heightFactor: 0.1,
    ),
    ElementsProperties(
      Color(0xffF7B718),
      shape: Rectangle(),
      offset: Offset(0, -1),
      heightFactor: 70 / 750,
      widthFactor: 1,
    ),
    ElementsProperties(
      Color(0xffF7B718),
      shape: Rectangle(),
      offset: Offset(0, 1),
      heightFactor: 70 / 750,
      widthFactor: 1,
    ),
  ],
  url: "https://www.vexilla-mundi.com/sri_lanka/sri_lanka_sheet.png",
);

/// Flag properties of country Macau (MO).
const flagMacProperties = FlagProperties(
  [ColorsProperties(Color(0xff067662))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      offset: Offset(-0.1, 0),
      heightFactor: 0.45,
      widthFactor: 0.8,
    ),
    ElementsProperties(
      Color(0xffFFDF1E),
      shape: Star(),
      offset: Offset(0, 0.26),
      heightFactor: 0.24,
      child: ElementsProperties(
        Color(0xffFFDF1E),
        shape: Star(),
        offset: Offset(2.6, 0.95),
        heightFactor: 0.7,
        angle: 36,
        child: ElementsProperties(
          Color(0xffFFDF1E),
          shape: Star(),
          offset: Offset(-8.2, 0.1),
          heightFactor: 1.1,
          angle: -36,
          child: ElementsProperties(
            Color(0xffFFDF1E),
            shape: Star(),
            offset: Offset(-2.4, 3.1),
            heightFactor: 1.18,
            angle: 8,
            child: ElementsProperties(
              Color(0xffFFDF1E),
              shape: Star(),
              offset: Offset(12.2, 0.1),
              heightFactor: 1.1,
              angle: -8,
            ),
          ),
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Macau.svg",
);

/// Flag properties of country Mexico (MX).
const flagMexProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff006847)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffce1125)),
  ],
  aspectRatio: 7 / 4,
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff9CA168),
      otherColors: [Color(0xffaf7029)],
      offset: Offset(0.03, -0.06),
      heightFactor: 0.3,
      widthFactor: 0.25,
    ),
    ElementsProperties(
      Color(0xff0C8489),
      shape: Moon(offset: Offset(0, -0.3)),
      heightFactor: 0.2,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Mexico_flag_construction_sheet.svg",
);

/// Flag properties of country Namibia (NA).
const flagNamProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002F6C), ratio: 210),
    ColorsProperties(Color(0xffffffff), ratio: 5),
    ColorsProperties(Color(0xffC8102E), ratio: 32),
    ColorsProperties(Color(0xffffffff), ratio: 5),
    ColorsProperties(Color(0xff009A44), ratio: 210),
  ],
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    ElementsProperties(
      Color(0xffFFCD00),
      shape: Star(points: 12, radiusFactor: 0.6),
      offset: Offset(-0.602, -0.455),
      heightFactor: 4 / 12,
      angle: 45,
      child: ElementsProperties(
        Color(0xff002F6C),
        shape: Ellipse(),
        heightFactor: 0.63,
        child: ElementsProperties(
          Color(0xffFFCD00),
          shape: Ellipse(),
          heightFactor: 0.8,
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Namibia_(construction_sheet).svg",
);

/// Flag properties of country Mozambique (MZ).
const flagMozProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff009739), ratio: 10),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000), ratio: 10),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffFFD100), ratio: 10),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffE4002B),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 0.44,
      child: ElementsProperties(
        Color(0xffffca00),
        shape: Star(),
        offset: Offset(-0.333, 0.04),
        heightFactor: 13 / 32,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Rectangle(aspectRatio: 1.5),
          offset: Offset(0, 0.3),
          heightFactor: 0.35,
          child: ElementsProperties(
            Color(0xff000000),
            shape: Star(points: 4, radiusFactor: 0.1),
            offset: Offset(0, -0.8),
            heightFactor: 2.7,
          ),
        ),
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/mozambique/mozambique_sheet.png",
);

/// Flag properties of country Liechtenstein (LI).
const flagLieProperties = FlagProperties(
  [ColorsProperties(Color(0xff002780)), ColorsProperties(Color(0xffCF0921))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffd83d),
      otherColors: [Color(0xff000000)],
      offset: Offset(-0.56, -0.55),
      heightFactor: 0.26,
      widthFactor: 0.2,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Liechtenstein_(construction).svg",
);

/// Flag properties of country Myanmar (MM).
const flagMmrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xfffecb00)),
    ColorsProperties(Color(0xff34b233)),
    ColorsProperties(Color(0xffea2839)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(0, 0.072),
      heightFactor: 0.72,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Myanmar_(construction_sheet).svg",
);

/// Flag properties of country Central African Republic (CF).
const flagCafProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff003082)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff289728)),
    ColorsProperties(Color(0xffffce00)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffd21034),
      shape: Rectangle(aspectRatio: 1 / 4),
      widthFactor: 10 / 60,
    ),
    ElementsProperties(
      Color(0xffffce00),
      shape: Star(),
      offset: Offset(-2 / 3, -0.73),
      heightFactor: 9 / 40,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Central_African_Republic_(construction_sheet).svg",
);

/// Flag properties of country Barbados (BB).
const flagBrbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00267f)),
    ColorsProperties(Color(0xffffc726)),
    ColorsProperties(Color(0xff00267f)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000000),
      heightFactor: 0.49,
      widthFactor: 1 / 3,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Barbados_(construction_sheet).png",
);

/// Flag properties of country British Virgin Islands (VG).
const flagVgbProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff006129),
      otherColors: [
        Color(0xff000066),
        Color(0xff006129),
        Color(0xff006129),
        Color(0xffffc72c),
        Color(0xffffc72c),
        Color(0xff012169),
        Color(0xffc8102e),
        Color(0xffffc6b5),
        Color(0xff9c5100),
        Color(0xff000000),
        Color(0xffffffff),
      ],
      offset: Offset(0.5, 0.1),
      heightFactor: 0.45,
      widthFactor: 0.15,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/british_virgin_islands/british_virgin_islands_sheet.png",
);

/// Flag properties of country Tonga (TO).
const flagTonProperties = FlagProperties(
  [ColorsProperties(Color(0xffc10000))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1.66),
      offset: Offset(-1, -1),
      heightFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffc10000),
        shape: Rectangle(aspectRatio: 7 / 20),
        heightFactor: 9 / 12,
      ),
    ),
    ElementsProperties(
      Color(0x00ffffff),
      shape: Rectangle(aspectRatio: 1.66),
      offset: Offset(-1, -1),
      heightFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffc10000),
        shape: Rectangle(aspectRatio: 21 / 7),
        heightFactor: 3 / 12,
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Tonga_(construction_sheet).svg",
);

/// Flag properties of country Tunisia (TN).
const flagTunProperties = FlagProperties(
  [ColorsProperties(Color(0xffe70013))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Ellipse(),
      heightFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffe70013),
        shape: Moon(radius: 0.8, offset: Offset(0.26, 0)),
        heightFactor: 15 / 20,
        child: ElementsProperties(
          Color(0xffe70013),
          shape: Star(),
          offset: Offset(0.38, 0),
          heightFactor: 0.62,
          angle: -18,
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Tunisia_(construction_sheet).svg",
);

/// Flag properties of country Angola (AO).
const flagAgoProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000)), ColorsProperties(Color(0xff000000))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffFFCD00),
      otherColors: [Color(0xff000000)],
      offset: Offset(-0.14, -0.03),
      heightFactor: 0.26,
      widthFactor: 0.71,
    ),
  ],
  url: "https://www.vexilla-mundi.com/angola/angola_sheet.png",
);

/// Flag properties of country Åland Islands (AX).
const flagAlaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0064AD), ratio: 60),
    ColorsProperties(Color(0xffFFD300), ratio: 50),
    ColorsProperties(Color(0xff0064AD), ratio: 60),
  ],
  aspectRatio: 26 / 17,
  elementsProperties: [
    ElementsProperties(
      Color(0xffFFD300),
      shape: Rectangle(aspectRatio: 50 / 170),
      offset: Offset(-0.24, 0),
      widthFactor: 50 / 260,
      child: ElementsProperties(
        Color(0xffDA0E15),
        shape: Rectangle(),
        widthFactor: 20 / 50,
      ),
    ),
    ElementsProperties(
      Color(0xffDA0E15),
      shape: Rectangle(),
      heightFactor: 15 / 125,
      widthFactor: 1,
    ),
  ],
  url: "https://www.vexilla-mundi.com/aland/aland_sheet.png",
);

/// Flag properties of country Republic of the Congo (CG).
const flagCogProperties = FlagProperties(
  [ColorsProperties(Color(0xff009543)), ColorsProperties(Color(0xffDC241F))],
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    CustomElementsProperties(Color(0xffFBDE4A), heightFactor: 1 / 3),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Republic_of_the_Congo_(construction_sheet).svg",
);

/// Flag properties of country Mali (ML).
const flagMliProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff14B53A)),
    ColorsProperties(Color(0xffFCD116)),
    ColorsProperties(Color(0xffCE1126)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  url: "https://wikipedia.org/wiki/File:Flag_of_Mali_(construction_sheet).svg",
);

/// Flag properties of country Jordan (JO).
const flagJorProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff007a3d)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffce1126),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(points: 7, radiusFactor: 1 / 2),
        offset: Offset(-0.38, 0),
        heightFactor: 6 / 42,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Jordan_(construction_sheet).svg",
);

/// Flag properties of country Italy (IT).
const flagItaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff008C45)),
    ColorsProperties(Color(0xffF4F5F0)),
    ColorsProperties(Color(0xffCD212A)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  url: "https://wikipedia.org/wiki/File:Flag_of_Italy_(construction_sheet).svg",
);

/// Flag properties of country Ghana (GH).
const flagGhaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffCF0921)),
    ColorsProperties(Color(0xffFCD20F)),
    ColorsProperties(Color(0xff006B3D)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xff000000),
      shape: Star(),
      offset: Offset(0, 0.033),
      heightFactor: 0.366,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Ghana_(construction_sheet).svg",
);

/// Flag properties of country San Marino (SM).
const flagSmrProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xff19b6ef))],
  aspectRatio: 4 / 3,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffe9bf00),
      otherColors: [
        Color(0xff65c7ff),
        Color(0xff006800),
        Color(0xffa9a9a9),
        Color(0xffa8a8a8),
        Color(0xff004100),
        Color(0xff65c7ff),
        Color(0xff8fc753),
        Color(0xff8fc753),
        Color(0xffffe100),
        Color(0xffe40000),
        Color(0xffc76e2e),
        Color(0xff9d4916),
        Color(0xff7d6c00),
        Color(0xff3a9d4f),
        Color(0xff000000),
        Color(0xffac0000),
        Color(0xff68300e),
        Color(0xff00a400),
        Color(0xffffdd00),
        Color(0xff4fd46b),
      ],
      offset: Offset(0, -0.05),
      heightFactor: 0.4,
      widthFactor: 0.4,
    ),
  ],
  url: "https://www.vexilla-mundi.com/san_marino/san_marino_sheet.png",
);

/// Flag properties of country Panama (PA).
const flagPanProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffDA121A)),
    ColorsProperties(Color(0xff072357)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(-1, -1),
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xff072357),
        shape: Star(),
        offset: Offset(0, 0.05),
        heightFactor: 2.21 / 4,
      ),
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(1, 1),
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffDA121A),
        shape: Star(),
        offset: Offset(0, 0.05),
        heightFactor: 2.21 / 4,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Panama_(construction_sheet).svg",
);

/// Flag properties of country Eswatini (SZ).
const flagSwzProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff3e5eb9), ratio: 3),
    ColorsProperties(Color(0xffffd900)),
    ColorsProperties(Color(0xffb10c0c), ratio: 8),
    ColorsProperties(Color(0xffffd900)),
    ColorsProperties(Color(0xff3e5eb9), ratio: 3),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xffffffff),
        Color(0xffa70000),
        Color(0xff333333),
        Color(0xffb3b3b3),
        Color(0xff000000),
      ],
      offset: Offset(1, 0),
      heightFactor: 0.75,
      widthFactor: 0.27,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(0, -0.12),
      heightFactor: 0.01,
      widthFactor: 0.58,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(-0.06, -0.04),
      heightFactor: 0.02,
      widthFactor: 0.62,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(0, 0.05),
      heightFactor: 0.02,
      widthFactor: 0.8,
    ),
    ElementsProperties(
      Color(0xffb3b3b3),
      shape: Ellipse(),
      offset: Offset(0.71, 0.16),
      heightFactor: 0.11,
    ),
    ElementsProperties(
      Color(0xffb3b3b3),
      shape: Ellipse(),
      offset: Offset(-0.71, 0.16),
      heightFactor: 0.11,
    ),
  ],
  url: "https://www.vexilla-mundi.com/swaziland/swaziland_sheet.png",
);

/// Flag properties of country Palau (PW).
const flagPlwProperties = FlagProperties(
  [ColorsProperties(Color(0xff4aadd6))],
  aspectRatio: 8 / 5,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffde00),
      shape: Ellipse(),
      offset: Offset(-0.125, 0),
      heightFactor: 6 / 10,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Palau_(construction_sheet).svg",
);

/// Flag properties of country Sierra Leone (SL).
const flagSleProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff1EB53A)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0072C6)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Sierra_Leone_(construction_sheet).svg",
);

/// Flag properties of country Germany (DE).
const flagDeuProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffffcc00)),
  ],
  aspectRatio: 5 / 3,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Germany_(construction_sheet).svg",
);

/// Flag properties of country Gibraltar (GI).
const flagGibProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 76),
    ColorsProperties(Color(0xffda000c), ratio: 38),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xfff8d80e),
      shape: Rectangle(aspectRatio: 0.1),
      offset: Offset(0, 0.8),
      heightFactor: 30 / 114,
    ),
    ElementsProperties(
      Color(0xffda000c),
      shape: Rectangle(aspectRatio: 0.8),
      offset: Offset(0, -0.5),
      heightFactor: 60 / 114,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Rectangle(aspectRatio: 1),
        offset: Offset(0, -1),
        heightFactor: 0.4,
        child: ElementsProperties(
          Color(0xffda000c),
          shape: Rectangle(aspectRatio: 0.6),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffda000c),
      shape: Rectangle(aspectRatio: 2.1),
      heightFactor: 30 / 114,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Rectangle(aspectRatio: 4),
        offset: Offset(0, 0.5),
        heightFactor: 0.4,
        child: ElementsProperties(
          Color(0xffda000c),
          shape: Rectangle(aspectRatio: 2.5),
          child: ElementsProperties(
            Color(0xff000000),
            shape: Rectangle(aspectRatio: 1),
          ),
        ),
      ),
    ),
    CustomElementsProperties(
      Color(0xffda000c),
      otherColors: [
        Color(0xffffffff),
        Color(0xff000000),
        Color(0xfff8d80e),
      ],
      heightFactor: 100 / 114,
    ),
  ],
  url: "https://www.vexilla-mundi.com/gibraltar/gibraltar_sheet.png",
);

/// Flag properties of country Micronesia (FM).
const flagFsmProperties = FlagProperties(
  [ColorsProperties(Color(0xff6797d6))],
  aspectRatio: 19 / 10,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(0, -0.6),
      heightFactor: 4 / 20,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(0, 6.75),
        heightFactor: 1.1,
        angle: 180,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(3.2, -3.2),
          heightFactor: 1.1,
          angle: 18,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(-6.4, 0.04),
            heightFactor: 1.1,
            angle: -18,
          ),
        ),
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/micronesia/micronesia_sheet.png",
);

/// Flag properties of country Cambodia (KH).
const flagKhmProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff032ea1)),
    ColorsProperties(Color(0xffe00025), ratio: 2),
    ColorsProperties(Color(0xff032ea1)),
  ],
  aspectRatio: 25 / 16,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [Color(0xff000000)],
      heightFactor: 0.42,
      widthFactor: 0.42,
    ),
  ],
  url: "https://www.vexilla-mundi.com/cambodia/cambodia_sheet.png",
);

/// Flag properties of country Ethiopia (ET).
const flagEthProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff298c08)),
    ColorsProperties(Color(0xffffc621)),
    ColorsProperties(Color(0xffef2118)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xff006bc6),
      shape: Ellipse(),
      heightFactor: 2 / 3,
      child: ElementsProperties(
        Color(0xffffc621),
        shape: Star(radiusFactor: 0.1),
        heightFactor: 0.8,
        angle: 180,
        child: ElementsProperties(
          Color(0xff006bc6),
          shape: Ellipse(),
          offset: Offset(0, 0.1),
          heightFactor: 0.5,
          child: ElementsProperties(
            Color(0xffffc621),
            shape: Star(isFilled: false),
            heightFactor: 2,
            child: ElementsProperties(
              Color(0xffffc621),
              shape: Star(radiusFactor: 0.8),
              offset: Offset(0, 0.1),
              heightFactor: 0.5,
              angle: 180,
              child: ElementsProperties(
                Color(0xff006bc6),
                shape: Star(radiusFactor: 0.8),
                offset: Offset(0, 0.1),
                heightFactor: 0.8,
                angle: 180,
              ),
            ),
          ),
        ),
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/ethiopia/ethiopia_sheet.png",
);

/// Flag properties of country Faroe Islands (FO).
const flagFroProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFFFFFF), ratio: 6),
    ColorsProperties(Color(0xff005EB9), ratio: 4),
    ColorsProperties(Color(0xffFFFFFF), ratio: 6),
  ],
  aspectRatio: 11 / 8,
  elementsProperties: [
    ElementsProperties(
      Color(0xff005EB9),
      shape: Rectangle(aspectRatio: 4 / 16),
      offset: Offset(-1 / 3, 0),
      widthFactor: 4 / 22,
      child: ElementsProperties(
        Color(0xffEF303E),
        shape: Rectangle(),
        widthFactor: 1 / 2,
      ),
    ),
    ElementsProperties(
      Color(0xffEF303E),
      shape: Rectangle(),
      heightFactor: 2 / 16,
      widthFactor: 1,
    ),
  ],
  url: "https://www.vexilla-mundi.com/faroe_islands/faroe_islands_sheet.png",
);

/// Flag properties of country Ecuador (EC).
const flagEcuProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffdd00), ratio: 2),
    ColorsProperties(Color(0xff034ea2)),
    ColorsProperties(Color(0xffed1c24)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff808080),
      otherColors: [
        Color(0xffe10000),
        Color(0xff38a9f9),
        Color(0xff0000c4),
        Color(0xff005b00),
        Color(0xffff0000),
        Color(0xffcececc),
        Color(0xff908f8a),
        Color(0xffb74d00),
        Color(0xffa7cfff),
        Color(0xffafff7b),
        Color(0xffffffff),
        Color(0xfffede00),
        Color(0xffb7e1ff),
        Color(0xff984000),
        Color(0xff812e00),
        Color(0xff000000),
        Color(0xff772600),
        Color(0xffffdf00),
      ],
      heightFactor: 1 / 3,
      widthFactor: 1 / 5,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Construction_sheet_of_the_Ecuador_flag_(es).svg",
);

/// Flag properties of country Senegal (SN).
const flagSenProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0b7226)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xffbc0000)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xff0b7226),
      shape: Star(),
      heightFactor: 4 / 12,
    ),
  ],
  url: "https://www.vexilla-mundi.com/senegal/senegal_sheet.png",
);

/// Flag properties of country Syria (SY).
const flagSyrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xff007a3d),
      shape: Star(),
      offset: Offset(-1 / 3, 0.03),
      heightFactor: 3 / 11,
    ),
    ElementsProperties(
      Color(0xff007a3d),
      shape: Star(),
      offset: Offset(1 / 3, 0.03),
      heightFactor: 3 / 11,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Approximate_Construction_of_the_Flag_of_Syria.svg",
);

/// Flag properties of country Sint Maarten (SX).
const flagSxmProperties = FlagProperties(
  [ColorsProperties(Color(0xffed2939)), ColorsProperties(Color(0xff002395))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 4 / 9,
      child: CustomElementsProperties(
        Color(0xffffff00),
        otherColors: [
          Color(0xffff0000),
          Color(0xffffffff),
          Color(0xff80cfe1),
          Color(0xff7e7e7e),
          Color(0xff009fc5),
          Color(0xffbc715f),
          Color(0xff008737),
          Color(0xff000000),
        ],
        offset: Offset(0, 1.5),
        heightFactor: 0.2,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/saint_martin/saint_martin_sheet.png",
);

/// Flag properties of country Portugal (PT).
const flagPrtProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff006600), ratio: 2),
    ColorsProperties(Color(0xffff0000), ratio: 3),
  ],
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffff00),
      shape: Ellipse(),
      offset: Offset(-0.2, 0),
      heightFactor: 0.5,
      widthFactor: 0.45,
      child: CustomElementsProperties(
        Color(0xff006600),
        otherColors: [
          Color(0xff003399),
          Color(0xffffffff),
          Color(0xffffffff),
          Color(0xffffffff),
          Color(0xffffffff),
          Color(0xffffff00),
          Color(0xff000000),
          Color(0xffff0000),
        ],
        heightFactor: 0.8,
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Portugal_blank_measures.svg",
);

/// Flag properties of country Somalia (SO).
const flagSomProperties = FlagProperties(
  [ColorsProperties(Color(0xff418FDE))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      heightFactor: 0.4,
    ),
  ],
  url: "https://www.vexilla-mundi.com/somalia/somalia_sheet.png",
);

/// Flag properties of country Jamaica (JM).
const flagJamProperties = FlagProperties(
  [ColorsProperties(Color(0xff000000))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xff009B3A),
      shape: Triangle(),
      offset: Offset(0, -0.5),
      heightFactor: 1 / 2,
      angle: 90,
    ),
    ElementsProperties(
      Color(0xff009B3A),
      shape: Triangle(),
      offset: Offset(0, 1),
      heightFactor: 1 / 2,
      angle: 270,
    ),
    ElementsProperties(
      Color(0xffffcc00),
      shape: DiagonalLine(),
      heightFactor: 0.17,
    ),
    ElementsProperties(
      Color(0xffffcc00),
      shape: DiagonalLine(isTopRightToBottomLeft: false),
      heightFactor: 0.17,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Jamaica_(construction_sheet).svg",
);

/// Flag properties of country Croatia (HR).
const flagHrvProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff171796)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffff0000),
      otherColors: [
        Color(0xffffffff),
        Color(0xff171796),
        Color(0xfff7db17),
        Color(0xff000000),
        Color(0xff0093dd),
      ],
      offset: Offset(0, 0.07),
      heightFactor: 0.5,
      widthFactor: 0.23,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Croatia_(construction).png",
);

/// Flag properties of country Kiribati (KI).
const flagKirProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffe73e2d), ratio: 108),
    ColorsProperties(Color(0xffffffff), ratio: 15),
    ColorsProperties(Color(0xff005989), ratio: 15),
    ColorsProperties(Color(0xffffffff), ratio: 15),
    ColorsProperties(Color(0xff005989), ratio: 15),
    ColorsProperties(Color(0xffffffff), ratio: 15),
    ColorsProperties(Color(0xff005989), ratio: 18),
  ],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xfffec74a),
      offset: Offset(0, 0.07),
      heightFactor: 0.5,
      widthFactor: 0.25,
    ),
    ElementsProperties(
      Color(0xfffec74a),
      shape: Star(points: 2, radiusFactor: 0.5),
      offset: Offset(0, -0.8),
      heightFactor: 0.3,
      widthFactor: 0.2,
    ),
  ],
  url: "https://www.vexilla-mundi.com/kiribati/kiribati_sheet.png",
);

/// Flag properties of country Kazakhstan (KZ).
const flagKazProperties = FlagProperties(
  [ColorsProperties(Color(0xff00abc2))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffec2d),
      offset: Offset(0.08, 0.3),
      heightFactor: 0.3,
      widthFactor: 0.3,
    ),
    ElementsProperties(
      Color(0xffffec2d),
      shape: Star(points: 32, radiusFactor: 0.666),
      offset: Offset(0.08, -0.16),
      heightFactor: 0.42,
      angle: 17,
      child: ElementsProperties(
        Color(0xff00abc2),
        shape: Ellipse(),
        heightFactor: 0.75,
        child: ElementsProperties(
          Color(0xffffec2d),
          shape: Ellipse(),
          heightFactor: 0.85,
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffffec2d),
      shape: Rectangle(aspectRatio: 0.12),
      offset: Offset(-0.93, 0),
      heightFactor: 0.9,
    ),
  ],
  url: "https://www.vexilla-mundi.com/kazakhstan/kazakhstan_sheet.png",
);

/// Flag properties of country Ireland (IE).
const flagIrlProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff169B62)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffFF883E)),
  ],
  aspectRatio: 2,
  stripeOrientation: StripeOrientation.vertical,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Ireland_(construction_sheet).svg",
);

/// Flag properties of country Comoros (KM).
const flagComProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFFD100)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffEF3340)),
    ColorsProperties(Color(0xff003DA5)),
  ],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      Color(0xff239e46),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Moon(radius: 0.98, offset: Offset(0.4, 0)),
        offset: Offset(-0.32, 0),
        heightFactor: 68 / 144,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(1.05, -0.66),
          heightFactor: 14 / 68,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(0, 2.5),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(0, 2.5),
              heightFactor: 1.2,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(0, 2.3),
                heightFactor: 1.1,
              ),
            ),
          ),
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Comoros_(construction_sheet).svg",
);

/// Flag properties of country Iran (IR).
const flagIrnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff239f40)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffda0000)),
  ],
  aspectRatio: 7 / 4,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffda0000),
      offset: Offset(-0.01, 0.025),
      heightFactor: 0.22,
      widthFactor: 0.17,
    ),
    ElementsProperties(
      Color.fromARGB(100, 255, 255, 255),
      shape: Rectangle(),
      offset: Offset(0, -0.4),
      heightFactor: 0.1,
      widthFactor: 0.98,
    ),
    ElementsProperties(
      Color.fromARGB(100, 255, 255, 255),
      shape: Rectangle(),
      offset: Offset(0, 0.4),
      heightFactor: 0.1,
      widthFactor: 0.98,
    ),
  ],
  url: "https://www.crwflags.com/fotw/images/i/ir'.gif",
);

/// Flag properties of country Guyana (GY).
const flagGuyProperties = FlagProperties(
  [ColorsProperties(Color(0xff399408))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1,
      child: ElementsProperties(
        Color(0xffffde08),
        shape: Triangle(),
        offset: Offset(-1, -0.94),
        heightFactor: 0.94,
        widthFactor: 0.925,
      ),
    ),
    ElementsProperties(
      Color(0xff000000),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffde2110),
        shape: Triangle(),
        offset: Offset(-1, -0.92),
        heightFactor: 0.92,
        widthFactor: 0.92,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Guyana_(construction_sheet).svg",
);

/// Flag properties of country Guinea (GN).
const flagGinProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffCE1126)),
    ColorsProperties(Color(0xffFCD116)),
    ColorsProperties(Color(0xff009460)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Guinea_(construction_sheet).svg",
);

/// Flag properties of country Fiji (FJ).
const flagFjiProperties = FlagProperties(
  [ColorsProperties(Color(0xff62b5e5))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffd21034),
      otherColors: [
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xff00a651),
        Color(0xffffd100),
        Color(0xff964b36),
        Color(0xfffff200),
        Color(0xff012169),
        Color(0xffc8102e),
        Color(0xff000000),
      ],
      offset: Offset(0.5, 0),
      heightFactor: 0.45,
      widthFactor: 0.2,
    ),
  ],
  url: "https://www.vexilla-mundi.com/fiji/fiji_sheet.png",
);

/// Flag properties of country Papua New Guinea (PG).
const flagPngProperties = FlagProperties(
  [ColorsProperties(Color(0xff000000)), ColorsProperties(Color(0xffff0000))],
  aspectRatio: 4 / 3,
  stripeOrientation: StripeOrientation.diagonalTopLeftToBottomRight,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffcc00),
      offset: Offset(0.35, -0.24),
      heightFactor: 0.51,
      widthFactor: 0.36,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.5, -0.25),
      heightFactor: 0.13,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(0, 8),
        heightFactor: 1.1,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(-2.4, -4.45),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(4.6, -0.1),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(-1.1, 2.4),
              heightFactor: 0.6,
            ),
          ),
        ),
      ),
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/papua_new_guinea/papua_new_guinea_sheet.png",
);

/// Flag properties of country Slovakia (SK).
const flagSvkProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0b4ea2)),
    ColorsProperties(Color(0xffee1c25)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [Color(0xffee1c25), Color(0xff0b4ea2)],
      offset: Offset(-0.4, -0.01),
      heightFactor: 0.525,
      widthFactor: 0.29,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Slovakia_(construction_sheet).svg",
);

/// Flag properties of country Romania (RO).
const flagRouProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002B7F)),
    ColorsProperties(Color(0xffFCD116)),
    ColorsProperties(Color(0xffCE1126)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Romania_(construction_sheet).svg",
);

/// Flag properties of country French Polynesia (PF).
const flagPyfProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xffff0000)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffff0000),
      otherColors: [
        Color(0xffef7d08),
        Color(0xffde2010),
        Color(0xff000000),
        Color(0xff083d9c),
      ],
      heightFactor: 44 / 100,
    ),
    ElementsProperties(
      Color(0xffff0000),
      shape: Rectangle(aspectRatio: 0.4),
      offset: Offset(0, -0.25),
      heightFactor: 0.24,
    ),
    ElementsProperties(
      Color(0xffff0000),
      shape: Rectangle(aspectRatio: 0.15),
      offset: Offset(-0.15, 0),
      heightFactor: 0.22,
    ),
    ElementsProperties(
      Color(0xffff0000),
      shape: Rectangle(aspectRatio: 0.15),
      offset: Offset(0.15, 0),
      heightFactor: 0.22,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/french_polynesia/french_polynesia_sheet.png",
);

/// Flag properties of country Falkland Islands (FK).
const flagFlkProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff0072c4),
      otherColors: [
        Color(0xffbcbcbc),
        Color(0xff0072c4),
        Color(0xffc4c4c2),
        Color(0xfffecf3e),
        Color(0xfffefefe),
        Color(0xff005120),
        Color(0xffffffff),
        Color(0xffdd8b59),
        Color(0xffb6b6b4),
        Color(0xffbe0f17),
        Color(0xffff0000),
        Color(0xffc8102e),
        Color(0xff000000),
        Color(0xff002b0d),
        Color(0xff512007),
      ],
      offset: Offset(0.5, 0),
      heightFactor: 0.45,
      widthFactor: 0.2,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/falkland_islands/falkland_islands_sheet.png",
);

/// Flag properties of country Egypt (EG).
const flagEgyProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color.fromARGB(50, 190, 145, 0),
      otherColors: [Color(0xffc09300), Color(0xffffffff), Color(0xffc09300)],
      heightFactor: 0.3,
      widthFactor: 1 / 6,
    ),
  ],
  url: "https://www.vexilla-mundi.com/egypt/egypt_sheet.png",
);

/// Flag properties of country Iceland (IS).
const flagIslProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff02529C), ratio: 7),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xff02529C), ratio: 7),
  ],
  aspectRatio: 25 / 18,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 4 / 18),
      offset: Offset(-0.333, 0),
      widthFactor: 4 / 25,
      child: ElementsProperties(
        Color(0xffDC1E35),
        shape: Rectangle(),
        widthFactor: 1 / 2,
      ),
    ),
    ElementsProperties(
      Color(0xffDC1E35),
      shape: Rectangle(),
      heightFactor: 2 / 18,
      widthFactor: 1,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Iceland_(construction_sheet).svg",
);

/// Flag properties of country Indonesia (ID).
const flagIdnProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000)), ColorsProperties(Color(0xffffffff))],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Indonesia_(construction_sheet).svg",
);

/// Flag properties of country Cayman Islands (KY).
const flagCymProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000066),
      otherColors: [
        Color(0xff012169),
        Color(0xffc8102e),
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xff0b50a0),
        Color(0xfffcea83),
        Color(0xff00493d),
        Color(0xff073163),
        Color(0xfff9d050),
        Color(0xff059334),
        Color(0xff000000),
        Color(0xff024919),
        Color(0xffffffff),
      ],
      offset: Offset(0.5, 0.1),
      heightFactor: 0.4,
      widthFactor: 0.15,
    ),
  ],
  url: "https://www.vexilla-mundi.com/cayman_islands/cayman_islands_sheet.png",
);

/// Flag properties of country Iraq (IQ).
const flagIrqProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffcd1125)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  elementsProperties: [
    CustomElementsProperties(Color(0xff017b3d), heightFactor: 1 / 4),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Iraq_(construction_sheet).svg",
);

/// Flag properties of country Saint Kitts and Nevis (KN).
const flagKnaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff35a100), ratio: 420),
    ColorsProperties(Color(0xffffe900), ratio: 110),
    ColorsProperties(Color(0xffc70000), ratio: 420),
  ],
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    ElementsProperties(
      Color(0xff000000),
      shape: DiagonalLine(isTopRightToBottomLeft: false),
      heightFactor: 126 / 420,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.38, 0.4),
      heightFactor: 0.27,
      angle: 38,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(0.395, -0.366),
      heightFactor: 0.27,
      angle: 38,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saint_Kitts_and_Nevis_(construction_sheet).svg",
);

/// Flag properties of country Hungary (HU).
const flagHunProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffCE2939)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff477050)),
  ],
  aspectRatio: 2,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Hungary_(1-2)_(construction_sheet).svg",
);

/// Flag properties of country Estonia (EE).
const flagEstProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0072CE)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffffffff)),
  ],
  aspectRatio: 11 / 7,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Estonia_(construction_sheet).svg",
);

/// Flag properties of country Eritrea (ER).
const flagEriProperties = FlagProperties(
  [ColorsProperties(Color(0xff0BAC24)), ColorsProperties(Color(0xff3C8BDC))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffFBC724),
      offset: Offset(-0.68, -0.21),
      heightFactor: 1 / 2,
      widthFactor: 1 / 4,
    ),
    ElementsProperties(
      Color(0xffEB0433),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Eritrea_(construction_sheet).svg",
);

/// Flag properties of country Finland (FI).
const flagFinProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xff002f6c), ratio: 3),
    ColorsProperties(Color(0xffffffff), ratio: 4),
  ],
  aspectRatio: 18 / 11,
  elementsProperties: [
    ElementsProperties(
      Color(0xff002f6c),
      shape: Rectangle(aspectRatio: 3 / 11),
      offset: Offset(-1 / 3, 0),
      widthFactor: 3 / 18,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Finland_(construction_sheet).svg",
);

/// Flag properties of country Spain (ES).
const flagEspProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffAD1519)),
    ColorsProperties(Color(0xffFABD00), ratio: 2),
    ColorsProperties(Color(0xffAD1519)),
  ],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffad1519),
      otherColors: [
        Color(0xffc8b100),
        Color(0xffad1519),
        Color(0xffffffff),
        Color(0xffc7b500),
        Color(0xffdb4446),
        Color(0xff058e6e),
        Color(0xff005bbf),
        Color(0xffcccccc),
        Color(0xffc7b500),
        Color(0xffed72aa),
        Color(0xffffd691),
        Color(0xff0039f0),
        Color(0xff000000),
      ],
      offset: Offset(-1 / 3, 0.1),
      heightFactor: 0.3,
      widthFactor: 0.15,
    ),
    ElementsProperties(
      Color(0xffcccccc),
      shape: Rectangle(aspectRatio: 0.2),
      offset: Offset(-0.15, 0.17),
      heightFactor: 0.25,
    ),
    ElementsProperties(
      Color(0xffcccccc),
      shape: Rectangle(aspectRatio: 0.2),
      offset: Offset(-0.55, 0.17),
      heightFactor: 0.25,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Spain_(construction_sheet).png",
);

/// Flag properties of country Gambia (GM).
const flagGmbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffff0000), ratio: 6),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000099), ratio: 4),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009900), ratio: 6),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Gambia_(construction_sheet).svg",
);

/// Flag properties of country Palestine (PS).
const flagPseProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009736)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffEE2A35),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 2 / 6,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Palestine_(construction_sheet).svg",
);

/// Flag properties of country Puerto Rico (PR).
const flagPriProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffed0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffed0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffed0000)),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xff0050f0),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 26 / 45,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(-1 / 3, 0),
        heightFactor: 20 / 60,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Puerto_Rico_(construction_sheet).svg",
);

/// Flag properties of country Slovenia (SI).
const flagSvnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0000FF)),
    ColorsProperties(Color(0xffFF0000)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffFF0000),
      otherColors: [
        Color(0xff0000FF),
        Color(0xff0000FF),
        Color(0xff0000FF),
        Color(0xffFFFF00),
        Color(0xffffffff),
      ],
      offset: Offset(-0.5, -0.34),
      heightFactor: 0.333,
      widthFactor: 0.15,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Slovenia_(construction_sheet).svg",
);

/// Flag properties of country Peru (PE).
const flagPerProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffd91023)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd91023)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  url: "https://wikipedia.org/wiki/File:Flag_of_Peru_(construction_sheet).svg",
);

/// Flag properties of country Qatar (QA).
const flagQatProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 3696),
    ColorsProperties(Color(0xff8A1538), ratio: 8904),
  ],
  aspectRatio: FlagConstants.maxAspectRatio,
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01 + 0.2225 * 1),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01 + 0.2225 * 2),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01 + 0.2225 * 3),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01 + 0.2225 * 4),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01 + 0.2225 * 5),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01 + 0.2225 * 6),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, -1.01 + 0.2225 * 7),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.42, 0.77),
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Qatar_(construction_sheet).svg",
);

/// Flag properties of country Greenland (GL).
const flagGrlProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xffd00c33))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffd00c33),
      otherColors: [Color(0xffffffff)],
      offset: Offset(-0.222, 0),
      heightFactor: 8 / 12,
      widthFactor: 0.45,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Greenland_(construction_sheet).svg",
);

/// Flag properties of country Haiti (HT).
const flagHtiProperties = FlagProperties(
  [ColorsProperties(Color(0xff00209f)), ColorsProperties(Color(0xffd21034))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      heightFactor: 90 / 348,
      widthFactor: 110 / 570,
      child: ElementsProperties(
        Color(0xff00209f),
        shape: Rectangle(),
        offset: Offset(0, 1),
        heightFactor: 0.5,
        widthFactor: 0.8,
      ),
    ),
    CustomElementsProperties(
      Color(0xff00209f),
      otherColors: [
        Color(0xffd21034),
        Color(0xfff1b517),
        Color(0xffffffff),
        Color(0xff016a16),
        Color(0xff0a328c),
        Color(0xffd20014),
        Color(0xff000000),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Haiti_(construction).jpg",
);

/// Flag properties of country Bhutan (BT).
const flagBtnProperties = FlagProperties(
  [ColorsProperties(Color(0xffFFCC33)), ColorsProperties(Color(0xffff4e12))],
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000000),
      otherColors: [Color(0xffffffff)],
      offset: Offset(0, 0.05),
      heightFactor: 0.75,
      widthFactor: 0.666,
    ),
  ],
  url: "https://www.vexilla-mundi.com/bhutan/bhutan_sheet.png",
);

/// Flag properties of country Aruba (AW).
const flagAbwProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff418FDE), ratio: 12),
    ColorsProperties(Color(0xffF7D417)),
    ColorsProperties(Color(0xff418FDE)),
    ColorsProperties(Color(0xffF7D417)),
    ColorsProperties(Color(0xff418FDE), ratio: 3),
  ],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 4, radiusFactor: 0.35),
      offset: Offset(-0.705, -0.56),
      heightFactor: 0.33,
      angle: 45,
      child: ElementsProperties(
        Color(0xffEF3340),
        shape: Star(points: 4, radiusFactor: 0.35),
        heightFactor: 1.1,
        angle: 45,
      ),
    ),
  ],
  url: "https://en.wikipedia.org/wiki/File:Flag_of_Aruba_construction.svg",
);

/// Flag properties of country Switzerland (CH).
const flagCheProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000))],
  aspectRatio: 1,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 6 / 20),
      heightFactor: 20 / 32,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 20 / 6),
      heightFactor: 6 / 32,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Switzerland_(construction_sheet).svg",
);

/// Flag properties of country Monaco (MC).
const flagMcoProperties = FlagProperties(
  [ColorsProperties(Color(0xffCE1126)), ColorsProperties(Color(0xffffffff))],
  aspectRatio: 5 / 4,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Monaco_(construction_sheet).svg",
);

/// Flag properties of country Malta (MT).
const flagMltProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffCF142B)),
  ],
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xffCF142B),
      shape: Rectangle(aspectRatio: 3.2),
      offset: Offset(-0.92, -0.68),
      heightFactor: 0.085,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Rectangle(aspectRatio: 3.4),
        heightFactor: 0.9,
        child: ElementsProperties(
          Color(0xffa0a0a0),
          shape: Rectangle(),
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Rectangle(aspectRatio: 3.85),
            heightFactor: 0.85,
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffCF142B),
      shape: Rectangle(aspectRatio: 0.3),
      offset: Offset(-0.795, -0.86),
      heightFactor: 0.27,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Rectangle(aspectRatio: 0.28),
        heightFactor: 0.96,
        child: ElementsProperties(
          Color(0xffa0a0a0),
          shape: Rectangle(),
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Rectangle(aspectRatio: 0.26),
            heightFactor: 0.95,
            child: ElementsProperties(
              Color(0xffa0a0a0),
              shape: Ellipse(),
              heightFactor: 0.45,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Ellipse(),
                heightFactor: 0.8,
              ),
            ),
          ),
        ),
      ),
    ),
    CustomElementsProperties(
      Color(0xffCF142B),
      otherColors: [
        Color(0xff000000),
        Color(0xffffffff),
        Color(0xffa0a0a0),
      ],
      offset: Offset(-0.75, -0.625),
      heightFactor: 112 / 432,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Malta_(construction_sheet).svg",
);

/// Flag properties of country Saint Lucia (LC).
const flagLcaProperties = FlagProperties(
  [ColorsProperties(Color(0xff65cfff))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xff65cfff),
      shape: Rectangle(),
      offset: Offset(0, 4.5),
      heightFactor: 0.82,
      widthFactor: 1 / 3,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Triangle(),
        angle: 270,
        child: ElementsProperties(
          Color(0xff000000),
          shape: Triangle(),
          offset: Offset(0.0666, 1),
          heightFactor: 0.87,
          widthFactor: 0.87,
          angle: 270,
          child: ElementsProperties(
            Color(0xffffce00),
            shape: Triangle(),
            offset: Offset(-0.08, 1),
            heightFactor: 0.57,
            widthFactor: 1.155,
            angle: 270,
          ),
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saint_Lucia_(construction_sheet).svg",
);
