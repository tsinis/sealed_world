import "dart:ui";

import "../model/colors_properties.dart";
import "../model/element_type.dart";
import "../model/elements_properties.dart";
import "../model/flag_properties.dart";

// ignore_for_file: prefer-static-class
/// Flag properties of of country Honduras (HN).
const flagHndProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00bce4)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff00bce4)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff00bce4)],
      heightFactor: 4 / 36,
      type: ElementType.star,
    ),
    ElementsProperties(
      [Color(0xff00bce4)],
      x: -20 / 72,
      y: 6 / 36,
      heightFactor: 4 / 36,
      type: ElementType.star,
    ),
    ElementsProperties(
      [Color(0xff00bce4)],
      x: -20 / 72,
      y: -6 / 36,
      heightFactor: 4 / 36,
      type: ElementType.star,
    ),
    ElementsProperties(
      [Color(0xff00bce4)],
      x: 20 / 72,
      y: 6 / 36,
      heightFactor: 4 / 36,
      type: ElementType.star,
    ),
    ElementsProperties(
      [Color(0xff00bce4)],
      x: 20 / 72,
      y: -6 / 36,
      heightFactor: 4 / 36,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Honduras_(construction_sheet).svg",
);

/// Flag properties of of country Dominica (DM).
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
      [Color(0xffFFCD00), Color(0xFF000000), Color(0xffffffff)],
      widthFactor: 30 / 240,
      type: ElementType.rectangle,
    ),
    ElementsProperties(
      [Color(0xffE4002B)],
      heightFactor: 60 / 120,
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [Color(0xff009A44)],
          heightFactor: 9 / 60,
          type: ElementType.star, // TODO!
        ),
        ElementsProperties(
          [
            Color(0xffE4002B),
            Color(0xFF000000),
            Color(0xffFFCD00),
            Color(0xFF981E97),
            Color(0xff009A44),
          ],
          heightFactor: 40 / 60,
          widthFactor: 20 / 60,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Dominica_(construction_sheet).svg",
);

/// Flag properties of of country France (FR).
const flagFraProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002654)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffED2939)),
  ],
  isHorizontalStriped: false,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_France_(construction_sheet).svg",
);

/// Flag properties of of country Algeria (DZ).
const flagDzaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff006633)),
    ColorsProperties(Color(0xffffffff)),
  ],
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffD21034)],
      heightFactor: 10 / 20,
      widthFactor: 10 / 20,
      type: ElementType.moon,
    ),
    ElementsProperties(
      [Color(0xffD21034)],
      x: 2 / 15,
      heightFactor: 5 / 20,
      widthFactor: 5 / 20,
      angle: 20, // ? Not confirmed.
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Algeria_(construction_sheet).svg",
);

/// Flag properties of of country Gabon (GA).
const flagGabProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff36a100)),
    ColorsProperties(Color(0xffffe700)),
    ColorsProperties(Color(0xff006dbc)),
  ],
  aspectRatio: 4 / 3,
  url: "https://wikipedia.org/wiki/File:Flag_of_Gabon_(construction_sheet).svg",
);

/// Flag properties of of country Philippines (PH).
const flagPhlProperties = FlagProperties(
  [ColorsProperties(Color(0xff0038a8)), ColorsProperties(Color(0xffce1126))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -1,
      angle: 60,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xfffcd116)],
          heightFactor: 10 / 90,
          angle: 30,
          type: ElementType.star, // TODO!
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Philippines_(construction_sheet).svg",
);

/// Flag properties of of country South Sudan (SS).
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
      [Color(0xff00B6F2)],
      x: -1,
      angle: 60,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xffFFE51A)],
          heightFactor: 19 / 57,
          angle: 60, // TODO!
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_South_Sudan_(construction_sheet).svg",
);

/// Flag properties of of country Rwanda (RW).
const flagRwaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00a1de), ratio: 130),
    ColorsProperties(Color(0xffFAD201), ratio: 65),
    ColorsProperties(Color(0xff20603d), ratio: 65),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffE5BE01)],
      x: 0.8564,
      y: -0.8,
      heightFactor: 42 / 130,
      type: ElementType.sun,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Rwanda_(construction_sheet).svg",
);

/// Flag properties of of country Sudan (SD).
const flagSdnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffD21034)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff007229)],
      x: -1,
      type: ElementType.triangle,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Sudan_(construction_sheet).svg",
);

/// Flag properties of of country Sweden (SE).
const flagSweProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff006AA7), ratio: 4),
    ColorsProperties(Color(0xffFFCD00), ratio: 2),
    ColorsProperties(Color(0xff006AA7), ratio: 4),
  ],
  aspectRatio: 8 / 5,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffFFCD00)],
      x: -0.375,
      widthFactor: 2 / 16,
      type: ElementType.rectangle,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Sweden_(construction_sheet).svg",
);

/// Flag properties of of country Suriname (SR).
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
      [Color(0xffecc81d)],
      heightFactor: 8 / 20,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Suriname_(construction_sheet).svg",
);

/// Flag properties of of country Western Sahara (EH).
const flagEshProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff007a3d)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffc4111b)],
      heightFactor: 1 / 4,
      type: ElementType.star,
    ),
    ElementsProperties(
      [Color(0xffc4111b)],
      heightFactor: 1 / 3,
      type: ElementType.moon,
    ),
  ],
  url: "https://www.vexilla-mundi.com/western_sahara/western_sahara_sheet.png",
);

/// Flag properties of of country Guinea-Bissau (GW).
const flagGnbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xfffcd116)),
    ColorsProperties(Color(0xff009e49)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffce1126)],
      x: -1,
      widthFactor: 1 / 3,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xff000000)],
          heightFactor: 1 / 3,
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/guinea-bissau/guinea-bissau_sheet.png",
);

/// Flag properties of of country Japan (JP).
const flagJpnProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffbc002d)],
      heightFactor: 12 / 20,
      type: ElementType.circle,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Japan_(construction_sheet).svg",
);

/// Flag properties of of country Jersey (JE).
const flagJeyProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcf142b)),
    ColorsProperties(Color(0xffffd700)),
    ColorsProperties(Color(0xff377bc8)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 5 / 3,
  url: "https://www.vexilla-mundi.com/jersey/jersey_sheet.png",
);

/// Flag properties of of country Guam (GU).
const flagGumProperties = FlagProperties(
  [ColorsProperties(Color(0xffC62139))],
  aspectRatio: 41 / 22,
  isHorizontalStriped: null,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffC62139)],
      heightFactor: 38 / 40,
      widthFactor: 76 / 78,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [
            Color(0xffC62139),
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
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/guam/guam_sheet.png",
);

/// Flag properties of of country United Kingdom (GB).
const flagGbrProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xffc8102e)],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_United_Kingdom_(1-2)_(construction_sheet).svg",
);

/// Flag properties of of country Saint Helena,
/// Ascension and Tristan da Cunha (SH).
const flagShnProperties = flagGbrProperties; // TODO!

/// Flag properties of of country Pakistan (PK).
const flagPakProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 15),
    ColorsProperties(Color(0xff115740), ratio: 45),
  ],
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: 0.25,
      heightFactor: 12 / 20,
      angle: 60,
      type: ElementType.moon,
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: 0.3,
      y: 0.1,
      heightFactor: 4 / 20,
      angle: 60,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Pakistan_(construction_sheet).svg",
);

/// Flag properties of of country Singapore (SG).
const flagSgpProperties = FlagProperties(
  [ColorsProperties(Color(0xffEE2536)), ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.75,
      y: 0.15,
      heightFactor: 13.25 / 18,
      angle: 60,
      type: ElementType.moon,
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.6,
      y: 0.2,
      heightFactor: 3.45 / 36,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Construction_Sheet_of_the_Flag_of_Singapore.svg",
);

/// Flag properties of of country Russia (RU).
const flagRusProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0036A7)),
    ColorsProperties(Color(0xffD62718)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Russia_(construction_sheet).svg",
);

/// Flag properties of of country Dominican Republic (DO).
const flagDomProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002d62), ratio: 2),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffce1126), ratio: 2),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff002d62), Color(0xffce1126)],
      x: -1,
      y: -1,
      heightFactor: 2 / 5,
      widthFactor: 1,
      type: ElementType.rectangle,
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      widthFactor: 1 / 9,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [
            Color(0xff201b18),
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
          heightFactor: 1 / 5,
        ),
      ],
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/dominican_republic/dominican_republic_sheet.png",
);

/// Flag properties of of country Guatemala (GT).
const flagGtmProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff4997d0)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff4997d0)),
  ],
  aspectRatio: 8 / 5,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xff406325),
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

/// Flag properties of of country Kuwait (KW).
const flagKwtProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff007A3D)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffCE1126)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000)],
      x: -1,
      widthFactor: 3 / 12,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Kuwait_(construction_sheet).svg",
);

/// Flag properties of of country Israel (IL).
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
    ElementsProperties([Color(0xff0038b8)], heightFactor: 69 / 160),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Israel_(construction_sheet).svg",
);

/// Flag properties of of country Guernsey (GG).
const flagGgyProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 5),
    ColorsProperties(Color(0xffe8112d), ratio: 2),
    ColorsProperties(Color(0xffffffff), ratio: 5),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffe8112d)],
      widthFactor: 2 / 12,
    ),
    ElementsProperties([Color(0xfff9dd16)], heightFactor: 0.8),
  ],
  url: "https://www.vexilla-mundi.com/guernsey/guernsey_sheet.png",
);

/// Flag properties of of country Guadeloupe (GP).
const flagGlpProperties = flagFraProperties;

/// Flag properties of of country Mayotte (YT).
const flagMytProperties = flagFraProperties;

/// Flag properties of of country Saint Martin (MF).
const flagMafProperties = flagFraProperties;

/// Flag properties of of country Wallis and Futuna (WF).
const flagWlfProperties = flagFraProperties;

/// Flag properties of of country Saint Barthélemy (BL).
const flagBlmProperties = flagFraProperties;

/// Flag properties of of country New Caledonia (NC).
const flagNclProperties = flagFraProperties;

/// Flag properties of of country Réunion (RE).
const flagReuProperties = flagFraProperties;

/// Flag properties of of country Saint Pierre and Miquelon (PM).
const flagSpmProperties = flagFraProperties;

/// Flag properties of of country French Guiana (GF).
const flagGufProperties = flagFraProperties;

/// Flag properties of of country Denmark (DK).
const flagDnkProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffc8102e), ratio: 12),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xffc8102e), ratio: 12),
  ],
  aspectRatio: 37 / 28,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.24,
      widthFactor: 4 / 37,
      type: ElementType.rectangle,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Denmark_(construction_sheet).svg",
);

/// Flag properties of of country Solomon Islands (SB).
const flagSlbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0000d6)),
    ColorsProperties(Color(0xff006000)),
    ColorsProperties(Color(0xffffcc00)),
    ColorsProperties(Color(0xffffffff)),
  ],
  aspectRatio: 2,
  isHorizontalStriped: null,
  url:
      "https://www.vexilla-mundi.com/solomon_islands/solomon_islands_sheet.png",
);

/// Flag properties of of country Paraguay (PY).
const flagPryProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0038a8)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd52b1e)),
  ],
  aspectRatio: 20 / 11,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000)],
      heightFactor: 0.26,
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          heightFactor: 0.92,
          type: ElementType.circle,
          children: [
            ElementsProperties(
              [Color(0xff000000)],
              heightFactor: 0.9,
              type: ElementType.circle,
              children: [
                ElementsProperties(
                  [Color(0xffffffff)],
                  heightFactor: 0.96,
                  type: ElementType.circle,
                  children: [
                    ElementsProperties(
                      [
                        Color(0xff000000),
                        Color(0xff009b3a),
                        Color(0xfffedf00),
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
  url: "https://www.vexilla-mundi.com/paraguay/paraguay_sheet.png",
);

/// Flag properties of of country Pitcairn Islands (PN).
const flagPcnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00247d)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xfff7e017)),
    ColorsProperties(Color(0xff337321)),
    ColorsProperties(Color(0xff316d3a)),
    ColorsProperties(Color(0xff006ec7)),
    ColorsProperties(Color(0xffe5e5e5)),
    ColorsProperties(Color(0xff96877d)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  isHorizontalStriped: null,
  url:
      "https://www.vexilla-mundi.com/pitcairn_islands/pitcairn_island_sheet.png",
);

/// Flag properties of of country São Tomé and Príncipe (ST).
const flagStpProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff12ad2b), ratio: 24),
    ColorsProperties(Color(0xffffce00), ratio: 36),
    ColorsProperties(Color(0xff12ad2b), ratio: 24),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffd21034)],
      x: -1,
      type: ElementType.triangle,
    ),
    ElementsProperties(
      [Color(0xff000000)],
      heightFactor: 26 / 84,
      type: ElementType.star,
    ),
    ElementsProperties(
      [Color(0xff000000)],
      x: 0.75,
      heightFactor: 26 / 84,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_S%C3%A3o_Tom%C3%A9_and_Pr%C3%ADncipe_(construction_sheet).svg",
);

/// Flag properties of of country Seychelles (SC).
const flagSycProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff003d88)),
    ColorsProperties(Color(0xfffcd955)),
    ColorsProperties(Color(0xffd92223)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff007A3A)),
  ],
  aspectRatio: 2,
  isHorizontalStriped: null,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Seychelles_(construction_sheet).svg",
);

/// Flag properties of of country Djibouti (DJ).
const flagDjiProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff6AB2E7)),
    ColorsProperties(Color(0xff12AD2B)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -1,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xffD7141A)],
          heightFactor: 1 / 3,
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/djibouti/djibouti_sheet.png",
);

/// Flag properties of of country Equatorial Guinea (GQ).
const flagGnqProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff3e9a00)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffe32118)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff0073ce)],
      x: -1,
      type: ElementType.triangle,
    ),
    ElementsProperties(
      [
        Color(0xff000000),
        Color(0xff73452b),
        Color(0xffffffff),
        Color(0xFFB0B0B0),
        Color(0xff009a3b),
        Color(0xffffd700),
      ],
      heightFactor: 0.3,
      type: ElementType.star,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/equatorial_guinea/equatorial_guinea_sheet.png",
);

/// Flag properties of of country South Korea (KR).
const flagKorProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffcd2e3a)],
      heightFactor: 24 / 48,
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [Color(0xff0047a0)],
          heightFactor: 1 / 2,
        ),
      ],
    ),
    ElementsProperties(
      [Color(0xff000000)],
    ), // TODO!
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_South_Korea_(construction_sheet).svg",
);

/// Flag properties of of country Isle of Man (IM).
const flagImnProperties = FlagProperties(
  [ColorsProperties(Color(0xffCF142B))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xffF9DD16), Color(0xFF000000)],
      heightFactor: 75 / 100,
    ),
  ],
  url: "https://www.vexilla-mundi.com/man/man_sheet.png",
);

/// Flag properties of of country Kenya (KE).
const flagKenProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000), ratio: 24),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xffbb0000), ratio: 24),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xff006600), ratio: 24),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000), Color(0xffbb0000), Color(0xffffffff)],
      heightFactor: 48 / 80,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Kenya_(construction_sheet).png",
);

/// Flag properties of of country Kyrgyzstan (KG).
const flagKgzProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties([Color(0xffFFED00)], heightFactor: 3 / 5),
  ],
  url: "https://www.vexilla-mundi.com/kyrgyzstan/kyrgyzstan_sheet.png",
);

/// Flag properties of of country Hong Kong (HK).
const flagHkgProperties = FlagProperties(
  [ColorsProperties(Color(0xffec1b2e))],
  elementsProperties: [
    ElementsProperties([Color(0xffffffff)], heightFactor: 18 / 30),
  ],
  url: "https://wikipedia.org/wiki/File:HKSARFlagConstructionSheet_2.svg",
);

/// Flag properties of of country North Korea (KP).
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
      [Color(0xffffffff)],
      x: -1 / 3,
      heightFactor: 16 / 36,
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [Color(0xffED1C27)],
          heightFactor: 0.968,
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_North_Korea_(construction_sheet).svg",
);

/// Flag properties of of country British Indian Ocean Territory (IO).
const flagIotProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000063)),
    ColorsProperties(Color(0xffa24300)),
    ColorsProperties(Color(0xff006d00)),
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xfffff100)),
    ColorsProperties(Color(0xff808080)),
    ColorsProperties(Color(0xff006300)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  url:
      "https://www.vexilla-mundi.com/british_indian_ocean_territory/british_indian_ocean_territory_sheet.png",
);

/// Flag properties of of country Grenada (GD).
const flagGrdProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFFD100)),
    ColorsProperties(Color(0xffEF3340)),
    ColorsProperties(Color(0xff009739)),
  ],
  aspectRatio: 5 / 3,
  url: "https://www.vexilla-mundi.com/grenada/grenada_sheet.png",
);

/// Flag properties of of country South Georgia (GS).
const flagSgsProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xff6a4c2d)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff656263)),
    ColorsProperties(Color(0xffffbb00)),
    ColorsProperties(Color(0xff00713d)),
    ColorsProperties(Color(0xff006b00)),
    ColorsProperties(Color(0xffffc900)),
    ColorsProperties(Color(0xffcdad56)),
    ColorsProperties(Color(0xffe80000)),
    ColorsProperties(Color(0xffc01500)),
    ColorsProperties(Color(0xff1e5aa6)),
    ColorsProperties(Color(0xffff7000)),
    ColorsProperties(Color(0xffc75b00)),
    ColorsProperties(Color(0xffcccccd)),
    ColorsProperties(Color(0xff0000ff)),
    ColorsProperties(Color(0xff923f00)),
    ColorsProperties(Color(0xfffffeff)),
    ColorsProperties(Color(0xff5e0043)),
    ColorsProperties(Color(0xff474747)),
    ColorsProperties(Color(0xffb4b6b9)),
    ColorsProperties(Color(0xff8a9396)),
    ColorsProperties(Color(0xffcecfcf)),
    ColorsProperties(Color(0xff2b2b2b)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xff3ec26d)),
    ColorsProperties(Color(0xfffff700)),
    ColorsProperties(Color(0xffcccccc)),
  ],
  aspectRatio: 2,
  url:
      "https://www.vexilla-mundi.com/south_georgia_and_the_south_sandwich_islands/south_georgia_and_the_south_sandwich_islands_sheet.png",
);

/// Flag properties of of country Saudi Arabia (SA).
const flagSauProperties = FlagProperties(
  [ColorsProperties(Color(0xff005430))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 1 / 4,
      widthFactor: 1 / 4,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saudi_Arabia_(construction_sheet).svg",
);

/// Flag properties of of country El Salvador (SV).
const flagSlvProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0047AB)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0047AB)),
  ],
  aspectRatio: 335 / 189,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffFCE300),
        Color(0xff0047AB),
        Color(0xffffffff),
        Color(0xffE60000),
        Color(0xff000000),
        Color(0xff009900),
      ],
      heightFactor: 57 / 189,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_El_Salvador_(Construction_Sheet).svg",
);

/// Flag properties of of country Serbia (RS).
const flagSrbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffc6363c)),
    ColorsProperties(Color(0xff0c4076)),
    ColorsProperties(Color(0xffffffff)),
  ],
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffc6363c),
        Color(0xff0c4076),
        Color(0xffffffff),
        Color(0xff21231e),
        Color(0xffedb92e),
      ],
      x: -2 / 7,
      heightFactor: 45 / 60,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Serbia_construction_sheet.svg",
);

/// Flag properties of of country Poland (PL).
const flagPolProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xffdc143c))],
  aspectRatio: 8 / 5,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Poland_(construction_sheet).svg",
);

/// Flag properties of of country Greece (GR).
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
      [Color(0xff005bae)],
      x: -1,
      y: -1,
      heightFactor: 10 / 18,
      widthFactor: 10 / 18,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Greece_(construction_sheet).svg",
);

/// Flag properties of of country Georgia (GE).
const flagGeoProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 80),
    ColorsProperties(Color(0xffff0000), ratio: 40),
    ColorsProperties(Color(0xffffffff), ratio: 80),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffff0000)],
      widthFactor: 40 / 300,
      type: ElementType.rectangle,
    ),
    ElementsProperties([Color(0xffff0000)], heightFactor: 40 / 200), // TODO!
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Georgia_(construction_sheet).svg",
);

/// Flag properties of of country India (IN).
const flagIndProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFF671F)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff046A38)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff06038D)],
      heightFactor: 185 / 600,
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [Color(0xffffffff), Color(0xff06038D)],
          heightFactor: 160 / 185,
        ),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_India_(construction_sheet).svg",
);

/// Flag properties of of country Maldives (MV).
const flagMdvProperties = FlagProperties(
  [ColorsProperties(Color(0xffd21034))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff007e3a)],
      heightFactor: 1 / 2,
      widthFactor: 48 / 72,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          heightFactor: 16 / 24,
          type: ElementType.moon,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Maldives_(construction_sheet).svg",
);

/// Flag properties of of country Liberia (LR).
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
      [Color(0xff000066)],
      x: -1,
      y: -1,
      heightFactor: 1 / 11,
      widthFactor: 1 / 11,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          heightFactor: 15 / 30,
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/liberia/liberia_sheet.png",
);

/// Flag properties of of country Morocco (MA).
const flagMarProperties = FlagProperties(
  [ColorsProperties(Color(0xffc1272d))],
  elementsProperties: [
    ElementsProperties([Color(0xff006233)], heightFactor: 1.9 / 4),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Morocco_(construction_sheet).svg",
);

/// Flag properties of of country New Zealand (NZ).
const flagNzlProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffC8102E)),
  ],
  aspectRatio: 2,
  url: "https://wikipedia.org/wiki/File:Flag_of_New_Zealand_construction.svg",
);

/// Flag properties of of country Australia (AU).
const flagAusProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffE4002B)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Australia_(construction_sheet).svg",
);

/// Flag properties of of country Heard Island and McDonald Islands (HM).
const flagHmdProperties = flagAusProperties; // TODO!

/// Flag properties of of country Brunei (BN).
const flagBrnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xfff7e017)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffcf1126)),
  ],
  aspectRatio: 2,
  url: "https://wikipedia.org/wiki/File:Brunei_Flag_Official_Measurements.jpg",
);

/// Flag properties of of country Belarus (BY).
const flagBlrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffD22730), ratio: 2),
    ColorsProperties(Color(0xff009739)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      widthFactor: 2 / 18,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffD22730), Color(0xffffffff)],
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Belarus_(construction_sheet).svg",
);

/// Flag properties of of country Trinidad and Tobago (TT).
const flagTtoProperties = FlagProperties(
  [ColorsProperties(Color(0xffe00000))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xff000000)],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Trinidad_and_Tobago_(construction_sheet).svg",
);

/// Flag properties of of country Uganda (UG).
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
      [Color(0xffffffff)],
      heightFactor: 1 / 3,
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [
            Color(0xff000000),
            Color(0xffFCDC04),
            Color(0xffD90000),
            Color(0xffffffff),
            Color(0xff9ca69c),
          ],
          heightFactor: 0.96,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/uganda/uganda_sheet.png",
);

/// Flag properties of of country Turks and Caicos Islands (TC).
const flagTcaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002868)),
    ColorsProperties(Color(0xfffcd116)),
    ColorsProperties(Color(0xfffcad56)),
    ColorsProperties(Color(0xffffa1a1)),
    ColorsProperties(Color(0xfff1b2dc)),
    ColorsProperties(Color(0xff9e540a)),
    ColorsProperties(Color(0xff009e49)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  url:
      "https://www.vexilla-mundi.com/turks_and_caicos_islands/turks_and_caicos_islands_sheet.png",
);

/// Flag properties of of country Yemen (YE).
const flagYemProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffCE1126)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Yemen_(construction_sheet).svg",
);

/// Flag properties of of country Cook Islands (CK).
const flagCokProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00205B)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffEF3340)),
  ],
  aspectRatio: 2,
  url: "https://www.vexilla-mundi.com/cook_islands/cook_islands_sheet.png",
);

/// Flag properties of of country Bolivia (BO).
const flagBolProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffDA291C)),
    ColorsProperties(Color(0xffF4E400)),
    ColorsProperties(Color(0xff007A33)),
  ],
  aspectRatio: 22 / 15,
  url: "https://www.vexilla-mundi.com/bolivia/bolivia_sheet.png",
);

/// Flag properties of of country Austria (AT).
const flagAutProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Austria_(construction_sheet).svg",
);

/// Flag properties of of country Lesotho (LS).
const flagLsoProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00209f), ratio: 75),
    ColorsProperties(Color(0xffffffff), ratio: 100),
    ColorsProperties(Color(0xff009543), ratio: 75),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000), Color(0xffffffff)],
      heightFactor: 92 / 250,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Lesotho_(construction_sheet).svg",
);

/// Flag properties of of country Malawi (MW).
const flagMwiProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xfff41408)),
    ColorsProperties(Color(0xff21873b)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xfff41408), Color(0xff000000)],
      y: -1,
      heightFactor: 185 / 600,
    ),
  ],
  url: "https://www.vexilla-mundi.com/malawi/malawi_sheet.png",
);

/// Flag properties of of country Netherlands (NL).
const flagNldProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffAD1D25)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff1E4785)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Netherlands_(construction_sheet).svg",
);

/// Flag properties of of country Caribbean Netherlands (BQ).
const flagBesProperties = flagNldProperties;

/// Flag properties of of country Mauritius (MU).
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

/// Flag properties of of country Ivory Coast (CI).
const flagCivProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFF8200)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009A44)),
  ],
  isHorizontalStriped: false,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Ivory_Coast_(construction_sheet).svg",
);

/// Flag properties of of country Bermuda (BM).
const flagBmuProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffcf142b)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff2f8f22)),
    ColorsProperties(Color(0xffd40000)),
    ColorsProperties(Color(0xff64b4d1)),
    ColorsProperties(Color(0xff784421)),
    ColorsProperties(Color(0xfff5ce00)),
    ColorsProperties(Color(0xffe4cb5e)),
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xff00247d)),
  ],
  aspectRatio: 2,
  url: "https://www.vexilla-mundi.com/bermuda/bermuda_sheet.png",
);

/// Flag properties of of country Belize (BZ).
const flagBlzProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffd90f19), ratio: 36),
    ColorsProperties(Color(0xff171696), ratio: 144 * 2),
    ColorsProperties(Color(0xffd90f19), ratio: 36),
  ],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 210 / 360,
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [
            Color(0xffffffff),
            Color(0xff338a00),
            Color(0xffb68a6a),
            Color(0xff653024),
            Color(0xffffe682),
            Color(0xff9dc9e2),
          ],
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/belize/belize_sheet.png",
);

/// Flag properties of of country Taiwan (TW).
const flagTwnProperties = FlagProperties(
  [ColorsProperties(Color(0xffF20000))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff0029CC)],
      x: -1,
      y: -1,
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      type: ElementType.rectangle,
      children: [
        ElementsProperties([Color(0xffffffff)], heightFactor: 3 / 4),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Republic_of_China(Taiwan)_sheet.svg",
);

/// Flag properties of of country United States (US).
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
      [Color(0xff3C3B6E)],
      x: -1,
      y: -1,
      heightFactor: 7 / 13,
      widthFactor: 0.4,
      type: ElementType.rectangle,
      children: [
        ElementsProperties([Color(0xffffffff)]),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_United_States_(construction_sheet).svg",
);

/// Flag properties of of country United States Minor Outlying Islands (UM).
const flagUmiProperties = flagUsaProperties; // TODO!

/// Flag properties of of country United States Virgin Islands (VI).
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

/// Flag properties of of country Tuvalu (TV).
const flagTuvProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff009fca)),
    ColorsProperties(Color(0xfffff40d)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
  ],
  aspectRatio: 2,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Tuvalu_(construction_sheet).svg",
);

/// Flag properties of of country Aruba (AW).
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
      [Color(0xffffffff), Color(0xffEF3340)],
      x: -4 / 9,
      y: -8 / 27,
      heightFactor: 6 / 18,
    ),
  ],
  url: "https://en.wikipedia.org/wiki/File:Flag_of_Aruba_construction.svg",
);

/// Flag properties of of country Switzerland (CH).
const flagCheProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000))],
  aspectRatio: 1,
  elementsProperties: [
    ElementsProperties([Color(0xffffffff)], heightFactor: 20 / 32),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Switzerland_(construction_sheet).svg",
);

/// Flag properties of of country Monaco (MC).
const flagMcoProperties = FlagProperties(
  [ColorsProperties(Color(0xffCE1126)), ColorsProperties(Color(0xffffffff))],
  aspectRatio: 5 / 4,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Monaco_(construction_sheet).svg",
);

/// Flag properties of of country Malta (MT).
const flagMltProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffCF142B)),
  ],
  isHorizontalStriped: false,
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

/// Flag properties of of country Norway (NO).
const flagNorProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffBA0C2F), ratio: 6),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff002664), ratio: 2),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffBA0C2F), ratio: 6),
  ],
  aspectRatio: 11 / 8,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -1 / 3,
      widthFactor: 4 / 22,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xff002664)],
          widthFactor: 1 / 2,
          type: ElementType.rectangle,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Norway_(construction_sheet).svg",
);

/// Flag properties of of country Bouvet Island (BV).
const flagBvtProperties = flagNorProperties; // TODO!

/// Flag properties of of country Svalbard and Jan Mayen (SJ).
const flagSjmProperties = flagNorProperties; // TODO!

/// Flag properties of of country Saint Lucia (LC).
const flagLcaProperties = FlagProperties(
  [ColorsProperties(Color(0xff65cfff))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 0.824,
      widthFactor: 1 / 2,
      angle: 90,
      children: [
        ElementsProperties(
          [Color(0xff000000), Color(0xffffce00)],
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saint_Lucia_(construction_sheet).svg",
);
