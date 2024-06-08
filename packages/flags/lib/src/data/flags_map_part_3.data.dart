import "dart:ui";

import "../model/colors_properties.dart";
import "../model/elements_properties.dart";
import "../model/flag_properties.dart";
import "../model/shape.dart";
import "../model/stripe_orientation.dart";

// ignore_for_file: prefer-static-class

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
      [Color(0xffd21034)],
      widthFactor: 10 / 60,
      shape: Rectangle(aspectRatio: 1 / 4),
    ),
    ElementsProperties(
      [Color(0xffffce00)],
      x: -2 / 3,
      y: -0.73,
      heightFactor: 9 / 40,
      shape: Star(),
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
    ElementsProperties([Color(0xff000000)], heightFactor: 1 / 2),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Barbados_(construction_sheet).png",
);

/// Flag properties of country British Virgin Islands (VG).
const flagVgbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff006129)),
    ColorsProperties(Color(0xffffc72c)),
    ColorsProperties(Color(0xffffc6b5)),
    ColorsProperties(Color(0xff9c5100)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  url:
      "https://www.vexilla-mundi.com/british_virgin_islands/british_virgin_islands_sheet.png",
);

/// Flag properties of country Tonga (TO).
const flagTonProperties = FlagProperties(
  [ColorsProperties(Color(0xffc10000))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -1,
      y: -1,
      heightFactor: 1 / 2,
      shape: Rectangle(aspectRatio: 1.66),
      children: [
        ElementsProperties(
          [Color(0xffc10000)],
          heightFactor: 9 / 12,
          shape: Rectangle(aspectRatio: 7 / 20),
        ),
      ],
    ),
    ElementsProperties(
      [Color(0x00ffffff)],
      x: -1,
      y: -1,
      heightFactor: 1 / 2,
      shape: Rectangle(aspectRatio: 1.66),
      children: [
        ElementsProperties(
          [Color(0xffc10000)],
          heightFactor: 3 / 12,
          shape: Rectangle(aspectRatio: 21 / 7),
        ),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Tonga_(construction_sheet).svg",
);

/// Flag properties of country Tunisia (TN).
const flagTunProperties = FlagProperties(
  [ColorsProperties(Color(0xffe70013))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 1 / 2,
      shape: Ellipse(),
      children: [
        ElementsProperties(
          [Color(0xffe70013)],
          heightFactor: 15 / 20,
          shape: Moon(radius: 0.8, x: 0.26),
          children: [
            ElementsProperties(
              [Color(0xffe70013)],
              x: 0.38,
              heightFactor: 0.62,
              angle: -18,
              shape: Star(),
            ),
          ],
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Tunisia_(construction_sheet).svg",
);

/// Flag properties of country Angola (AO).
const flagAgoProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000)), ColorsProperties(Color(0xff000000))],
  elementsProperties: [
    ElementsProperties([Color(0xffFFCD00)], heightFactor: 1 / 2),
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
      [Color(0xffFFD300)],
      x: -0.24,
      widthFactor: 50 / 260,
      shape: Rectangle(aspectRatio: 50 / 170),
      children: [
        ElementsProperties(
          [Color(0xffDA0E15)],
          widthFactor: 20 / 50,
          shape: Rectangle(),
        ),
      ],
    ),
    ElementsProperties(
      [Color(0xffDA0E15)],
      heightFactor: 15 / 125,
      widthFactor: 1,
      shape: Rectangle(),
    ),
  ],
  url: "https://www.vexilla-mundi.com/aland/aland_sheet.png",
);

/// Flag properties of country Republic of the Congo (CG).
const flagCogProperties = FlagProperties(
  [ColorsProperties(Color(0xffFBDE4A))],
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff009543)],
      x: -1,
      widthFactor: 2 / 3,
      angle: 90,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffDC241F)],
      x: 1,
      widthFactor: 2 / 3,
      angle: -90,
      shape: Triangle(),
    ),
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
      [Color(0xffce1126)],
      x: -1,
      y: -1,
      widthFactor: 1 / 2,
      shape: Triangle(),
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          x: -0.38,
          heightFactor: 6 / 42,
          shape: Star(points: 7, radiusFactor: 1 / 2),
        ),
      ],
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
      [Color(0xff000000)],
      y: 0.033,
      heightFactor: 0.366,
      shape: Star(),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Ghana_(construction_sheet).svg",
);

/// Flag properties of country San Marino (SM).
const flagSmrProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xff19b6ef))],
  aspectRatio: 4 / 3,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffffdd00),
        Color(0xff4fd46b),
        Color(0xff65c7ff),
        Color(0xff8fc753),
        Color(0xffe40000),
        Color(0xffc76e2e),
        Color(0xffffe100),
        Color(0xff9d4916),
        Color(0xffb97700),
        Color(0xff006800),
        Color(0xff7d6c00),
        Color(0xff3a9d4f),
        Color(0xff000000),
        Color(0xffac0000),
        Color(0xffe9bf00),
        Color(0xff68300e),
        Color(0xffa9a9a9),
        Color(0xffa8a8a8),
        Color(0xff004100),
        Color(0xff00a400),
      ],
      heightFactor: 18 / 30,
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
      [Color(0xffffffff)],
      x: -1,
      y: -1,
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      shape: Rectangle(),
      children: [
        ElementsProperties(
          [Color(0xff072357)],
          y: 0.05,
          heightFactor: 2.21 / 4,
          shape: Star(),
        ),
      ],
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: 1,
      y: 1,
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      shape: Rectangle(),
      children: [
        ElementsProperties(
          [Color(0xffDA121A)],
          y: 0.05,
          heightFactor: 2.21 / 4,
          shape: Star(),
        ),
      ],
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
    ElementsProperties(
      [
        Color(0xffffffff),
        Color(0xffa70000),
        Color(0xff333333),
        Color(0xffb3b3b3),
        Color(0xff000000),
      ],
      heightFactor: 1 / 2,
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
      [Color(0xffffde00)],
      x: -0.125,
      heightFactor: 6 / 10,
      shape: Ellipse(),
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
      [
        Color(0xffda000c),
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
      [Color(0xffffffff)],
      y: -0.6,
      heightFactor: 4 / 20,
      shape: Star(),
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          y: 6.75,
          heightFactor: 1.1,
          angle: 180,
          shape: Star(),
          children: [
            ElementsProperties(
              [Color(0xffffffff)],
              x: 3.2,
              y: -3.2,
              heightFactor: 1.1,
              angle: 18,
              shape: Star(),
              children: [
                ElementsProperties(
                  [Color(0xffffffff)],
                  x: -6.4,
                  y: 0.04,
                  heightFactor: 1.1,
                  angle: -18,
                  shape: Star(),
                ),
              ],
            ),
          ],
        ),
      ],
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
    ElementsProperties(
      [Color(0xffffffff), Color(0xff000000)],
      heightFactor: 168 / 360,
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
      [Color(0xff006bc6)],
      heightFactor: 40 / 60,
      shape: Ellipse(),
      children: [
        ElementsProperties([Color(0xffffc621)], heightFactor: 32 / 40),
      ],
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
      [Color(0xff005EB9)],
      x: -1 / 3,
      widthFactor: 4 / 22,
      shape: Rectangle(aspectRatio: 4 / 16),
      children: [
        ElementsProperties(
          [Color(0xffEF303E)],
          widthFactor: 1 / 2,
          shape: Rectangle(),
        ),
      ],
    ),
    ElementsProperties(
      [Color(0xffEF303E)],
      heightFactor: 2 / 16,
      widthFactor: 1,
      shape: Rectangle(),
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
    ElementsProperties(
      [
        Color(0xff808080),
        Color(0xffffdf00),
        Color(0xff0000c4),
        Color(0xffe10000),
        Color(0xff005b00),
        Color(0xffff0000),
        Color(0xffcececc),
        Color(0xff908f8a),
        Color(0xffb74d00),
        Color(0xffa7cfff),
        Color(0xffafff7b),
        Color(0xffffffff),
        Color(0xfffede00),
        Color(0xff38a9f9),
        Color(0xffb7e1ff),
        Color(0xff984000),
        Color(0xff812e00),
        Color(0xff000000),
        Color(0xff772600),
      ],
      heightFactor: 1 / 2,
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
      [Color(0xff0b7226)],
      heightFactor: 4 / 12,
      shape: Star(),
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
      [Color(0xff007a3d)],
      x: -1 / 3,
      y: 0.03,
      heightFactor: 3 / 11,
      shape: Star(),
    ),
    ElementsProperties(
      [Color(0xff007a3d)],
      x: 1 / 3,
      y: 0.03,
      heightFactor: 3 / 11,
      shape: Star(),
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
      [Color(0xffffffff)],
      x: -1,
      widthFactor: 4 / 9,
      shape: Triangle(),
      children: [
        ElementsProperties(
          [
            Color(0xffffff00),
            Color(0xffff0000),
            Color(0xffffffff),
            Color(0xff80cfe1),
            Color(0xff7e7e7e),
            Color(0xff009fc5),
            Color(0xffbc715f),
            Color(0xff008737),
            Color(0xff000000),
          ],
          heightFactor: 0.9,
        ),
      ],
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
      [Color(0xffffff00)],
      x: -1 / 3,
      heightFactor: 1 / 3,
      shape: Ellipse(),
      children: [
        ElementsProperties(
          [
            Color(0xff006600),
            Color(0xffffff00),
            Color(0xffffffff),
            Color(0xff003399),
            Color(0xff000000),
            Color(0xffff0000),
          ],
          heightFactor: 0.9,
        ),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Portugal_blank_measures.svg",
);

/// Flag properties of country Somalia (SO).
const flagSomProperties = FlagProperties(
  [ColorsProperties(Color(0xff418FDE))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 0.4,
      shape: Star(),
    ),
  ],
  url: "https://www.vexilla-mundi.com/somalia/somalia_sheet.png",
);

/// Flag properties of country Jamaica (JM).
const flagJamProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xffffcc00)),
  ],
  aspectRatio: 2,
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
    ElementsProperties(
      [
        Color(0xffff0000),
        Color(0xffffffff),
        Color(0xff171796),
        Color(0xff0093dd),
        Color(0xfff7db17),
        Color(0xff000000),
      ],
      heightFactor: 1 / 2,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Croatia_(construction).png",
);

/// Flag properties of country Kiribati (KI).
const flagKirProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffe73e2d), ratio: 55),
    ColorsProperties(Color(0xff005989), ratio: 45),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xfffec74a), Color(0xff000000)],
    ),
  ],
  url: "https://www.vexilla-mundi.com/kiribati/kiribati_sheet.png",
);

/// Flag properties of country Kazakhstan (KZ).
const flagKazProperties = FlagProperties(
  [ColorsProperties(Color(0xff00abc2))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties([Color(0xffffec2d)], heightFactor: 0.9),
    ElementsProperties(
      [Color(0xffffec2d)],
      x: -0.1,
      y: 0.1,
      heightFactor: 1 / 2,
      shape: Ellipse(),
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
      [Color(0xff239e46)],
      x: -1,
      y: -1,
      widthFactor: 1 / 2,
      shape: Triangle(),
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          x: -0.32,
          heightFactor: 68 / 144,
          shape: Moon(radius: 0.98, x: 0.4),
          children: [
            ElementsProperties(
              [Color(0xffffffff)],
              x: 1.05,
              y: -0.66,
              heightFactor: 14 / 68,
              shape: Star(),
              children: [
                ElementsProperties(
                  [Color(0xffffffff)],
                  y: 2.5,
                  heightFactor: 1.1,
                  shape: Star(),
                  children: [
                    ElementsProperties(
                      [Color(0xffffffff)],
                      y: 2.5,
                      heightFactor: 1.2,
                      shape: Star(),
                      children: [
                        ElementsProperties(
                          [Color(0xffffffff)],
                          y: 2.3,
                          heightFactor: 1.1,
                          shape: Star(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
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
    ElementsProperties([Color(0xffda0000)], heightFactor: 63 / 252),
    ElementsProperties([Color(0xffffffff)], heightFactor: 1 / 2),
  ],
  url: "https://www.crwflags.com/fotw/images/i/ir'.gif",
);

/// Flag properties of country Guyana (GY).
const flagGuyProperties = FlagProperties(
  [ColorsProperties(Color(0xff399408))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -1,
      y: -1,
      widthFactor: 1,
      shape: Triangle(),
      children: [
        ElementsProperties(
          [Color(0xffffde08)],
          x: -1,
          y: -0.94,
          heightFactor: 0.94,
          widthFactor: 0.925,
          shape: Triangle(),
        ),
      ],
    ),
    ElementsProperties(
      [Color(0xff000000)],
      x: -1,
      y: -1,
      widthFactor: 1 / 2,
      shape: Triangle(),
      children: [
        ElementsProperties(
          [Color(0xffde2110)],
          x: -1,
          y: -0.92,
          heightFactor: 0.92,
          widthFactor: 0.92,
          shape: Triangle(),
        ),
      ],
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
  [
    ColorsProperties(Color(0xff62b5e5)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd21034)),
    ColorsProperties(Color(0xffffd100)),
    ColorsProperties(Color(0xff00a651)),
    ColorsProperties(Color(0xff964b36)),
    ColorsProperties(Color(0xfffff200)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  url: "https://www.vexilla-mundi.com/fiji/fiji_sheet.png",
);

/// Flag properties of country Papua New Guinea (PG).
const flagPngProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000))],
  aspectRatio: 4 / 3,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000)],
      x: -1,
      widthFactor: 1,
      angle: 90,
      shape: Triangle(),
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          heightFactor: 0.9,
          widthFactor: 0.9,
          shape: Star(),
        ),
      ],
    ),
    ElementsProperties(
      [Color(0xffffcc00)],
      x: 0.5,
      y: 0.5,
      heightFactor: 64 / 144,
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
    ElementsProperties(
      [Color(0xffffffff), Color(0xffee1c25), Color(0xff0b4ea2)],
      x: -0.6,
      heightFactor: 1 / 2,
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
    ElementsProperties(
      [
        Color(0xffff0000),
        Color(0xff083d9c),
        Color(0xffef7d08),
        Color(0xffde2010),
        Color(0xff000000),
      ],
      heightFactor: 42 / 100,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/french_polynesia/french_polynesia_sheet.png",
);

/// Flag properties of country Falkland Islands (FK).
const flagFlkProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xff0072c4)),
    ColorsProperties(Color(0xffbcbcbc)),
    ColorsProperties(Color(0xfffefefe)),
    ColorsProperties(Color(0xffc4c4c2)),
    ColorsProperties(Color(0xff005120)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffdd8b59)),
    ColorsProperties(Color(0xfffecf3e)),
    ColorsProperties(Color(0xffb6b6b4)),
    ColorsProperties(Color(0xffbe0f17)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xff002b0d)),
    ColorsProperties(Color(0xff512007)),
  ],
  aspectRatio: 2,
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
    ElementsProperties([Color(0xffc09300)], heightFactor: 0.3),
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
      [Color(0xffffffff)],
      x: -0.333,
      widthFactor: 4 / 25,
      shape: Rectangle(aspectRatio: 4 / 18),
      children: [
        ElementsProperties(
          [Color(0xffDC1E35)],
          widthFactor: 1 / 2,
          shape: Rectangle(),
        ),
      ],
    ),
    ElementsProperties(
      [Color(0xffDC1E35)],
      heightFactor: 2 / 18,
      widthFactor: 1,
      shape: Rectangle(),
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
  [
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xfffcea83)),
    ColorsProperties(Color(0xff00493d)),
    ColorsProperties(Color(0xff073163)),
    ColorsProperties(Color(0xfff9d050)),
    ColorsProperties(Color(0xff059334)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xff0b50a0)),
    ColorsProperties(Color(0xff024919)),
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
    ElementsProperties([Color(0xff017b3d)], heightFactor: 1 / 4),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Iraq_(construction_sheet).svg",
);

/// Flag properties of country Saint Kitts and Nevis (KN).
const flagKnaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff35a100)),
    ColorsProperties(Color(0xffffe900)),
    ColorsProperties(Color(0xffc70000)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffffffff)),
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
    ElementsProperties(
      [Color(0xffEB0433)],
      widthFactor: 1,
      shape: Triangle(),
      children: [
        ElementsProperties([Color(0xffFBC724)], x: -0.5, heightFactor: 1 / 2),
      ],
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
      [Color(0xff002f6c)],
      x: -1 / 3,
      widthFactor: 3 / 18,
      shape: Rectangle(aspectRatio: 3 / 11),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Finland_(construction_sheet).svg",
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
      [Color(0xffEE2A35)],
      x: -1,
      y: -1,
      widthFactor: 2 / 6,
      shape: Triangle(),
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
      [Color(0xff0050f0)],
      x: -1,
      y: -1,
      widthFactor: 26 / 45,
      shape: Triangle(),
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          x: -1 / 3,
          heightFactor: 20 / 60,
          shape: Star(),
        ),
      ],
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
    ElementsProperties(
      [
        Color(0xffFF0000),
        Color(0xff0000FF),
        Color(0xffffffff),
        Color(0xffFFFF00),
      ],
      x: -0.5,
      y: -1 / 3,
      heightFactor: 1 / 3,
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
  aspectRatio: 28 / 11,
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01 + 0.2225 * 1,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01 + 0.2225 * 2,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01 + 0.2225 * 3,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01 + 0.2225 * 4,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01 + 0.2225 * 5,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01 + 0.2225 * 6,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: -1.01 + 0.2225 * 7,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.42,
      y: 0.77,
      heightFactor: 0.12,
      widthFactor: 1008 / 12600,
      shape: Triangle(),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Qatar_(construction_sheet).svg",
);

/// Flag properties of country Greenland (GL).
const flagGrlProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xffd00c33))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.222,
      heightFactor: 8 / 12,
      shape: Ellipse(),
      children: [
        ElementsProperties([Color(0xffd00c33)], y: -1, heightFactor: 1 / 2),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Greenland_(construction_sheet).svg",
);

/// Flag properties of country Spain (ES).
const flagEspProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffAD1519)),
    ColorsProperties(Color(0xffFABD00), ratio: 2),
    ColorsProperties(Color(0xffAD1519)),
  ],
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffad1519),
        Color(0xffc8b100),
        Color(0xffffffff),
        Color(0xff058e6e),
        Color(0xff005bbf),
        Color(0xffcccccc),
        Color(0xffc7b500),
        Color(0xffdb4446),
        Color(0xffed72aa),
        Color(0xffffd691),
        Color(0xff0039f0),
        Color(0xff000000),
      ],
      x: -1 / 3,
      heightFactor: 0.4,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Spain_(construction_sheet).png",
);

/// Flag properties of country Haiti (HT).
const flagHtiProperties = FlagProperties(
  [ColorsProperties(Color(0xff00209f)), ColorsProperties(Color(0xffd21034))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 90 / 348,
      widthFactor: 110 / 570,
      shape: Rectangle(),
      children: [
        ElementsProperties(
          [
            Color(0xff00209f),
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
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Haiti_(construction).jpg",
);

/// Flag properties of country Bhutan (BT).
const flagBtnProperties = FlagProperties(
  [ColorsProperties(Color(0xffFFCC33)), ColorsProperties(Color(0xffff4e12))],
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000), Color(0xffffffff)],
      heightFactor: 0.8,
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
      [Color(0xffffffff)],
      x: -0.705,
      y: -0.56,
      heightFactor: 0.33,
      angle: 45,
      shape: Star(points: 4, radiusFactor: 0.35),
      children: [
        ElementsProperties(
          [Color(0xffEF3340)],
          angle: 45,
          shape: Star(points: 4, radiusFactor: 0.35),
        ),
      ],
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
      [Color(0xffffffff)],
      heightFactor: 20 / 32,
      shape: Rectangle(aspectRatio: 6 / 20),
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 6 / 32,
      shape: Rectangle(aspectRatio: 20 / 6),
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
      [
        Color(0xffCF142B),
        Color(0xff000000),
        Color(0xffffffff),
        Color(0xffa0a0a0),
      ],
      x: -0.75,
      y: -0.625,
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
      [Color(0xff65cfff)],
      y: 4.5,
      heightFactor: 0.82,
      widthFactor: 1 / 3,
      shape: Rectangle(),
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          angle: 270,
          shape: Triangle(),
          children: [
            ElementsProperties(
              [Color(0xff000000)],
              x: 0.0666,
              y: 1,
              heightFactor: 0.87,
              widthFactor: 0.87,
              angle: 270,
              shape: Triangle(),
              children: [
                ElementsProperties(
                  [Color(0xffffce00)],
                  x: -0.08,
                  y: 1,
                  heightFactor: 0.57,
                  widthFactor: 1.155,
                  angle: 270,
                  shape: Triangle(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saint_Lucia_(construction_sheet).svg",
);
