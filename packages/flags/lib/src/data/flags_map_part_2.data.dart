import "dart:ui";

import "../model/colors_properties.dart";
import "../model/element_type.dart";
import "../model/elements_properties.dart";
import "../model/flag_properties.dart";

// ignore_for_file: prefer-static-class
/// Flag properties of country Madagascar (MG).
const flagMdgProperties = FlagProperties(
  [ColorsProperties(Color(0xfffc3d32)), ColorsProperties(Color(0xff007e3a))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -1,
      widthFactor: 1 / 3,
      type: ElementType.rectangle,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Madagascar_(construction_sheet).svg",
);

/// Flag properties of country Lithuania (LT).
const flagLtuProperties = FlagProperties(
  [
    ColorsProperties(Color(0xfffdb913)),
    ColorsProperties(Color(0xff006a44)),
    ColorsProperties(Color(0xffc1272d)),
  ],
  aspectRatio: 5 / 3,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Lithuania_(construction_sheet).svg",
);

/// Flag properties of country Northern Mariana Islands (MP).
const flagMnpProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0071bc)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff217900)),
    ColorsProperties(Color(0xffffd200)),
    ColorsProperties(Color(0xff8c8a8c)),
    ColorsProperties(Color(0xffde2010)),
    ColorsProperties(Color(0xffffe300)),
    ColorsProperties(Color(0xff6b18b5)),
    ColorsProperties(Color(0xfff7df73)),
    ColorsProperties(Color(0xff8c1800)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffef8a10)),
  ],
  aspectRatio: 2,
  url:
      "https://www.vexilla-mundi.com/northern_mariana_islands/northern_mariana_islands_sheet.png",
);

/// Flag properties of country Andorra (AD).
const flagAndProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff10069f), ratio: 64),
    ColorsProperties(Color(0xfffedd00), ratio: 72),
    ColorsProperties(Color(0xffd50032), ratio: 64),
  ],
  aspectRatio: 10 / 7,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffc6aa76),
        Color(0xfffedd00),
        Color(0xffd50032),
        Color(0xff10069f),
      ],
      heightFactor: 66 / 140,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Andorra_(construction).svg",
);

/// Flag properties of country Chile (CL).
const flagChlProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd52b1e)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff0039a6)],
      x: -1,
      y: -1,
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          heightFactor: 1 / 2,
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Chile_(construction).svg",
);

/// Flag properties of country American Samoa (AS).
const flagAsmProperties = FlagProperties(
  [ColorsProperties(Color(0xff00205b))],
  aspectRatio: 19 / 10,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffef3340)],
      y: 1,
      widthFactor: 1,
      angle: 180,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          y: 1,
          heightFactor: 0.9,
          widthFactor: 0.9,
          angle: 180,
          type: ElementType.triangle,
          children: [
            ElementsProperties(
              [
                Color(0xffffd100),
                Color(0xff5a3719),
                Color(0xff7b3c20),
                Color(0xffbe531c),
                Color(0xff999999),
              ],
              heightFactor: 0.9,
            ),
          ],
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/american_samoa/american_samoa_sheet.png",
);

/// Flag properties of country Bahrain (BH).
const flagBhrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff), ratio: 25),
    ColorsProperties(Color(0xffDA291C), ratio: 75),
  ],
  aspectRatio: 5 / 3,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xffffffff),
        Color(0xffffffff),
      ],
      x: -0.4,
      widthFactor: 1 / 3,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Bahrain_(construction_sheet).svg",
);

/// Flag properties of country Ukraine (UA).
const flagUkrProperties = FlagProperties(
  [ColorsProperties(Color(0xff0057b8)), ColorsProperties(Color(0xffffd700))],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Ukraine_(construction_sheet).svg",
);

/// Flag properties of country Turkey (TR).
const flagTurProperties = FlagProperties(
  [ColorsProperties(Color(0xffe30a17))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.4,
      heightFactor: 1 / 2,
      widthFactor: 1 / 3,
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 1 / 4,
      angle: -10,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Turkey_(construction_sheet).svg",
);

/// Flag properties of country Chad (TD).
const flagTcdProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002664)),
    ColorsProperties(Color(0xfffecb00)),
    ColorsProperties(Color(0xffc60c30)),
  ],
  isHorizontalStriped: false,
  url: "https://wikipedia.org/wiki/File:Flag_of_Chad_(construction_sheet).svg",
);

/// Flag properties of country Burundi (BI).
const flagBdiProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff18b637)),
    ColorsProperties(Color(0xffcf0921)),
    ColorsProperties(Color(0xffffffff)),
  ],
  aspectRatio: 5 / 3,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Burundi_(construction_sheet).svg",
);

/// Flag properties of country Argentina (AR).
const flagArgProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff74acdf)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff74acdf)),
  ],
  aspectRatio: 8 / 5,
  elementsProperties: [
    ElementsProperties(
      [Color(0xfff6b40e), Color(0xff85340a)],
      heightFactor: 50 / 180,
      type: ElementType.sun,
    ),
  ],
  url: "https://www.vexilla-mundi.com/argentina/argentina_sheet.png",
);

/// Flag properties of country Cameroon (CM).
const flagCmrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff007a5e)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xfffcd116)),
  ],
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [Color(0xfffcd116)],
      heightFactor: 2 / 6,
      type: ElementType.star,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Cameroon_(construction).png",
);

/// Flag properties of country United Arab Emirates (AE).
const flagAreProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00843D)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffff0000)],
      x: -1,
      widthFactor: 3 / 12,
      type: ElementType.rectangle,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_United_Arab_Emirates_(construction_sheet).svg",
);

/// Flag properties of country Czechia (CZ).
const flagCzeProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd7141a)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff11457e)],
      x: -1,
      widthFactor: 1 / 2,
      type: ElementType.triangle,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Czech_flag_construction.svg",
);

/// Flag properties of country Martinique (MQ).
const flagMtqProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00a650)),
    ColorsProperties(Color(0xff000000)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffef1923)],
      x: -1,
      widthFactor: 1 / 2,
      type: ElementType.triangle,
    ),
  ],
  url: "https://www.vexilla-mundi.com/martinique/martinique_sheet.png",
);

/// Flag properties of country Luxembourg (LU).
const flagLuxProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffEF3340)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff00A3E0)),
  ],
  aspectRatio: 5 / 3,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Luxembourg_(construction_sheet).svg",
);

/// Flag properties of country Lebanon (LB).
const flagLbnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffee161f)),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xffee161f)),
  ],
  elementsProperties: [
    ElementsProperties([Color(0xff00a850)], heightFactor: 1 / 2),
  ],
  url:
      "https://wikipedia.org/wiki/File:Construction_Sheet_of_Flag_of_Lebanon.gif",
);

/// Flag properties of country Moldova (MD).
const flagMdaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0046AE)),
    ColorsProperties(Color(0xffFFD200)),
    ColorsProperties(Color(0xffCC092F)),
  ],
  aspectRatio: 2,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffB07E5B),
        Color(0xff0046AE),
        Color(0xffCC092F),
        Color(0xffFFD200),
        Color(0xff007A50),
        Color(0xff000000),
      ],
      heightFactor: 168 / 300,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Moldova,_construction_sheet.svg",
);

/// Flag properties of country Montserrat (MS).
const flagMsrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff00a2bd)),
    ColorsProperties(Color(0xffa53d08)),
    ColorsProperties(Color(0xffff9a08)),
    ColorsProperties(Color(0xff008021)),
    ColorsProperties(Color(0xffffe1cf)),
    ColorsProperties(Color(0xff870f00)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffffdf00)),
  ],
  aspectRatio: 2,
  url: "https://www.vexilla-mundi.com/montserrat/montserrat_sheet.png",
);

/// Flag properties of country Antigua and Barbuda (AG).
const flagAtgProperties = FlagProperties(
  [ColorsProperties(Color(0xffce1126))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000)],
      widthFactor: 1,
      angle: 90,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xfffcd116), Color(0xff0072c6), Color(0xffffffff)],
          heightFactor: 0.9,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Antigua_and_Barbuda_(construction_sheet).svg",
);

/// Flag properties of country Christmas Island (CX).
const flagCxrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0021ad)),
    ColorsProperties(Color(0xff1c8a42)),
    ColorsProperties(Color(0xffffc639)),
    ColorsProperties(Color(0xffffffff)),
  ],
  aspectRatio: 2,
  url:
      "https://www.vexilla-mundi.com/christmas_island/christmas_island_sheet.png",
);

/// Flag properties of country Colombia (CO).
const flagColProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffFCD116), ratio: 2),
    ColorsProperties(Color(0xff003893)),
    ColorsProperties(Color(0xffCE1126)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Colombia_(construction_sheet).svg",
);

/// Flag properties of country French Southern and Antarctic Lands (TF).
const flagAtfProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002654)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffED2939)),
  ],
  url:
      "https://www.vexilla-mundi.com/french_southern_and_antarctic_lands/french_southern_and_antarctic_lands_sheet.png",
);

/// Flag properties of country Vietnam (VN).
const flagVnmProperties = FlagProperties(
  [ColorsProperties(Color(0xffda251d))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffff00)],
      heightFactor: 12 / 20,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Vietnam_(construction_sheet).svg",
);

/// Flag properties of country Zambia (ZM).
const flagZmbProperties = FlagProperties(
  [ColorsProperties(Color(0xff009E49))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffFCAD56), Color(0xff000000)],
      x: 0.94,
      y: -0.8,
      heightFactor: 42 / 224,
    ),
    ElementsProperties(
      [Color(0xffEF3340), Color(0xff000000), Color(0xffFCAD56)],
      x: 1,
      y: 1,
      heightFactor: 144 / 224,
      widthFactor: 120 / 336,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Zambia_(construction_sheet).svg",
);

/// Flag properties of country Togo (TG).
const flagTgoProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff118600)),
    ColorsProperties(Color(0xffffe300)),
    ColorsProperties(Color(0xff118600)),
    ColorsProperties(Color(0xffffe300)),
    ColorsProperties(Color(0xff118600)),
  ],
  aspectRatio: 1.618,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffd80000)],
      x: -1,
      y: -1,
      heightFactor: 3 / 5,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          heightFactor: 19 / 30,
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/togo/togo_sheet.png",
);

/// Flag properties of country China (CN).
const flagChnProperties = FlagProperties(
  [ColorsProperties(Color(0xffee1c25))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffff00)],
      x: -0.667,
      y: -0.5,
      heightFactor: 3 / 5,
      type: ElementType.star,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_China_(construction_sheet).svg",
);

/// Flag properties of country Benin (BJ).
const flagBenProperties = FlagProperties(
  [ColorsProperties(Color(0xffFCD20F)), ColorsProperties(Color(0xffE90929))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xff008850)],
      x: -1,
      widthFactor: 6 / 15,
      type: ElementType.rectangle,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Benin_(construction_sheet).svg",
);

/// Flag properties of country Antarctica (AQ).
const flagAtaProperties = FlagProperties(
  [ColorsProperties(Color(0xff3a7dce))],
  elementsProperties: [
    ElementsProperties([Color(0xffffffff)], heightFactor: 0.9),
  ],
  url:
      "https://wikipedia.org/wiki/File:Proposed_flag_of_Antarctica_(Graham_Bartram).svg",
);

/// Flag properties of country Cyprus (CY).
const flagCypProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    ElementsProperties([Color(0xffD57800)], heightFactor: 6 / 12),
    ElementsProperties([Color(0xff4E5B31)], heightFactor: 3 / 12),
  ],
  url: "https://www.vexilla-mundi.com/cyprus/cyprus_sheet.png",
);

/// Flag properties of country Afghanistan (AF).
const flagAfgProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties([Color(0xff000000)], heightFactor: 1 / 2),
  ],
  url: "https://www.vexilla-mundi.com/afghanistan/afghanistan_taliban_flag.png",
);

/// Flag properties of country Latvia (LV).
const flagLvaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff9D2235), ratio: 2),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff9D2235), ratio: 2),
  ],
  aspectRatio: 2,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Latvia_(construction_sheet).svg",
);

/// Flag properties of country Oman (OM).
const flagOmnProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffef2d29)),
    ColorsProperties(Color(0xff009025)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffef2d29)],
      x: -1,
      widthFactor: 20 / 60,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          y: -0.97,
          heightFactor: 9 / 30,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/oman/oman_sheet.png",
);

/// Flag properties of country Mauritania (MR).
const flagMrtProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffD01C1F)),
    ColorsProperties(Color(0xff00A95C), ratio: 3),
    ColorsProperties(Color(0xffD01C1F)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffFFD700)],
      x: 0.2,
      heightFactor: 1 / 4,
      widthFactor: 20 / 60,
      type: ElementType.moon,
    ),
    ElementsProperties(
      [Color(0xffFFD700)],
      x: -0.2,
      heightFactor: 191 / 1000,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Mauritania_(Construction_Sheet).png",
);

/// Flag properties of country Nicaragua (NI).
const flagNicProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0067c6)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0067c6)),
  ],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffc8a400),
        Color(0xff17c0eb),
        Color(0xffff0000),
        Color(0xffff6600),
        Color(0xffffff00),
        Color(0xff00ff00),
        Color(0xff00ccff),
        Color(0xff0000ff),
        Color(0xff800080),
        Color(0xff510000),
        Color(0xffff2a2a),
        Color(0xff910000),
        Color(0xffff3a3a),
        Color(0xffccd11e),
        Color(0xff97c924),
        Color(0xffede71f),
        Color(0xffc6cb24),
        Color(0xff9ecb34),
        Color(0xff93bc30),
      ],
      heightFactor: 18 / 60,
    ),
  ],
  url: "https://www.vexilla-mundi.com/nicaragua/nicaragua_sheet.png",
);

/// Flag properties of country Laos (LA).
const flagLaoProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xff002868), ratio: 2),
    ColorsProperties(Color(0xffce1126)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 8 / 20,
      type: ElementType.circle,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Laos_(construction_sheet).svg",
);

/// Flag properties of country Montenegro (ME).
const flagMneProperties = FlagProperties(
  [ColorsProperties(Color(0xffd3ae3b))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffc40308)],
      heightFactor: 6 / 60,
      widthFactor: 6 / 120,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [
            Color(0xffd3ae3b),
            Color(0xffc40308),
            Color(0xffb96b29),
            Color(0xffd4af3a),
            Color(0xff1d5e91),
            Color(0xff6d8c3e),
            Color(0xffc52126),
          ],
          heightFactor: 40 / 54,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/montenegro/montenegro_sheet.png",
);

/// Flag properties of country Marshall Islands (MH).
const flagMhlProperties = FlagProperties(
  [ColorsProperties(Color(0xff003893))],
  aspectRatio: 19 / 10,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffDD7500), Color(0xffffffff)],
      heightFactor: 0.96,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Marshall_Islands_(construction_sheet).svg",
);

/// Flag properties of country Cocos (Keeling) Islands (CC).
const flagCckProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff008000)),
    ColorsProperties(Color(0xffffe000)),
    ColorsProperties(Color(0xff802000)),
  ],
  aspectRatio: 2,
  url: "https://www.vexilla-mundi.com/cocos_islands/cocos_islands_sheet.png",
);

/// Flag properties of country Bulgaria (BG).
/// Colors reference https://wikipedia.org/wiki/Flag_of_Bulgaria#Colours.
const flagBgrProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xffCC0000)),
  ],
  aspectRatio: 5 / 3,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Bulgaria_(construction_sheet).svg",
);

/// Flag properties of country Tajikistan (TJ).
const flagTjkProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffCD0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff006600)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties([Color(0xffF8C400)], heightFactor: 0.3),
  ],
  url: "https://www.vexilla-mundi.com/tajikistan/tajikistan_sheet.png",
);

/// Flag properties of country Vanuatu (VU).
const flagVutProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffd21034), ratio: 15),
    ColorsProperties(Color(0xff000000), ratio: 2),
    ColorsProperties(Color(0xfffdce12), ratio: 2),
    ColorsProperties(Color(0xff000000), ratio: 2),
    ColorsProperties(Color(0xff009543), ratio: 15),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xfffdce12), Color(0xff000000)],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Vanuatu_(construction_sheet).svg",
);

/// Flag properties of country Uruguay (UY).
const flagUryProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0038a8)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0038a8)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0038a8)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0038a8)),
    ColorsProperties(Color(0xffffffff)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 78 / 162,
      widthFactor: 78 / 162,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xfffcd116), Color(0xff7b3f00)],
          heightFactor: 42 / 66,
          type: ElementType.sun,
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/uruguay/uruguay_sheet.png",
);

/// Flag properties of country South Africa (ZA).
const flagZafProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffDE3831), ratio: 20),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xff007A4D), ratio: 12),
    ColorsProperties(Color(0xffffffff), ratio: 4),
    ColorsProperties(Color(0xff002395), ratio: 20),
  ],
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffffffff),
        Color(0xff007A4D),
        Color(0xffFFB612),
        Color(0xff000000),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_South_Africa_(construction_sheet).svg",
);

/// Flag properties of country Zimbabwe (ZW).
const flagZweProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff006400)),
    ColorsProperties(Color(0xffffd200)),
    ColorsProperties(Color(0xffd40000)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffd40000)),
    ColorsProperties(Color(0xffffd200)),
    ColorsProperties(Color(0xff006400)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xff000000)],
      x: -1,
      widthFactor: 1 / 3,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xffffcc00), Color(0xff000000), Color(0xffd40000)],
          heightFactor: 28 / 63,
          type: ElementType.triangle,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Zimbabwe_(construction_sheet).svg",
);

/// Flag properties of country Saint Vincent and the Grenadines (VC).
const flagVctProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0058aa)),
    ColorsProperties(Color(0xfff4f100), ratio: 2),
    ColorsProperties(Color(0xff199a00)),
  ],
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff199a00)],
      y: 0.1,
      heightFactor: 26 / 48,
      angle: 60,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saint_Vincent_and_the_Grenadines_(construction_sheet).svg",
);

/// Flag properties of country Tokelau (TK).
const flagTklProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00247d)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xfffed100)),
  ],
  aspectRatio: 2,
  url: "https://wikipedia.org/wiki/File:Flag_of_Tokelau.svg",
);

/// Flag properties of country Burkina Faso (BF).
const flagBfaProperties = FlagProperties(
  [ColorsProperties(Color(0xffEF2B2D)), ColorsProperties(Color(0xff35a100))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xfffff300)],
      heightFactor: 4 / 12,
      type: ElementType.star,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Burkina_Faso_(construction_sheet).svg",
);

/// Flag properties of country Cuba (CU).
const flagCubProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002590)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff002590)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff002590)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffCC0D0D)],
      x: -1,
      widthFactor: 0.4,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xffffffff)],
          heightFactor: 5 / 15,
          type: ElementType.star,
        ),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Cuba_(construction_sheet).svg",
);

/// Flag properties of country Niger (NE).
const flagNerProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffe05206)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0db02b)),
  ],
  aspectRatio: 7 / 6,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffe05206)],
      heightFactor: 1 / 4,
      type: ElementType.circle,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Niger_(construction).svg",
);

/// Flag properties of country Nauru (NR).
const flagNruProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002170), ratio: 11),
    ColorsProperties(Color(0xffffb20d), ratio: 2),
    ColorsProperties(Color(0xff002170), ratio: 11),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.5,
      y: 0.4,
      heightFactor: 8 / 24,
      type: ElementType.sun,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Nauru_(construction_sheet).svg",
);

/// Flag properties of country North Macedonia (MK).
const flagMkdProperties = FlagProperties(
  [ColorsProperties(Color(0xffCE2028))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties([Color(0xffF9D616)]),
  ],
  url:
      "https://wikipedia.org/wiki/File:Construction_sheet_of_the_flag_of_North_Macedonia.svg",
);

/// Flag properties of country Nepal (NP).
const flagNplProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffce0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000063)),
  ],
  aspectRatio: 41 / 50, // Yep this one will be fun...
  url: "https://wikipedia.org/wiki/File:Nepal_Flag_Construction.png",
);

/// Flag properties of country Nigeria (NG).
const flagNgaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff008000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff008000)),
  ],
  aspectRatio: 2,
  isHorizontalStriped: false,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Nigeria_(construction_sheet).svg",
);

/// Flag properties of country Bahamas (BS).
const flagBhsProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00778B)),
    ColorsProperties(Color(0xffFFC72C)),
    ColorsProperties(Color(0xff00778B)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000)],
      x: -1,
      widthFactor: 0.43,
      type: ElementType.triangle,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Bahamas_(construction_sheet).svg",
);

/// Flag properties of country Curaçao (CW).
const flagCuwProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002b7f), ratio: 45),
    ColorsProperties(Color(0xfff9e814), ratio: 9),
    ColorsProperties(Color(0xff002b7f), ratio: 18),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.8,
      y: -0.8,
      heightFactor: 12 / 72,
      type: ElementType.star,
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.6,
      y: -0.6,
      heightFactor: 16 / 72,
      type: ElementType.star,
    ),
  ],
  url: "https://www.vexilla-mundi.com/curacao/curacao_sheet.png",
);

/// Flag properties of country Bangladesh (BD).
const flagBgdProperties = FlagProperties(
  [ColorsProperties(Color(0xff006a4e))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      [Color(0xfff42a41)],
      x: -0.1,
      heightFactor: 8 / 12,
      type: ElementType.circle,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Bangladesh_(construction_sheet).svg",
);

/// Flag properties of country Vatican City (VA).
const flagVatProperties = FlagProperties(
  [ColorsProperties(Color(0xffffe000)), ColorsProperties(Color(0xffffffff))],
  aspectRatio: 1,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xffce9d09),
        Color(0xffcccccc),
        Color(0xfffa0204),
        Color(0xff000000),
      ],
      x: 0.5,
      heightFactor: 20 / 36,
    ),
  ],
  url: "https://www.vexilla-mundi.com/vatican/vatican_sheet.png",
);

/// Flag properties of country Uzbekistan (UZ).
const flagUzbProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff0099b5), ratio: 80),
    ColorsProperties(Color(0xffce1126), ratio: 5),
    ColorsProperties(Color(0xffffffff), ratio: 80),
    ColorsProperties(Color(0xffce1126), ratio: 5),
    ColorsProperties(Color(0xff1eb53a), ratio: 80),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      x: -0.8,
      y: -0.9,
      heightFactor: 30 / 125,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Uzbekistan_(construction_sheet).svg",
);

/// Flag properties of country Kosovo (XK).
const flagUnkProperties = FlagProperties(
  [ColorsProperties(Color(0xff244aa5))],
  aspectRatio: 7 / 5,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xffd0a650)],
      heightFactor: 3 / 4,
    ),
  ],
  url: "https://www.vexilla-mundi.com/kosovo/kosovo_sheet.png",
);

/// Flag properties of country Samoa (WS).
const flagWsmProperties = FlagProperties(
  [ColorsProperties(Color(0xffce1126))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff002b7f)],
      x: -1,
      y: -1,
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      children: [
        ElementsProperties([Color(0xffffffff)], heightFactor: 0.9),
      ],
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Samoa_(construction_sheet).svg",
);

/// Flag properties of country Thailand (TH).
const flagThaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffa51931)),
    ColorsProperties(Color(0xfff4f5f8)),
    ColorsProperties(Color(0xff2d2a4a), ratio: 2),
    ColorsProperties(Color(0xfff4f5f8)),
    ColorsProperties(Color(0xffa51931)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Thailand_(construction_sheet).svg",
);

/// Flag properties of country Canada (CA).
const flagCanProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffd52b1e)),
    ColorsProperties(Color(0xffffffff), ratio: 2),
    ColorsProperties(Color(0xffd52b1e)),
  ],
  aspectRatio: 2,
  isHorizontalStriped: false,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Canada_(construction_sheet_-_leaf_geometry).svg",
);

/// Flag properties of country Belgium (BE).
const flagBelProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffFDDA24)),
    ColorsProperties(Color(0xffEF3340)),
  ],
  aspectRatio: 15 / 13,
  isHorizontalStriped: false,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Belgium_(construction_sheet).svg",
);

/// Flag properties of country Cape Verde (CV).
const flagCpvProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff003893), ratio: 6),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffCF2027)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff003893), ratio: 3),
  ],
  aspectRatio: 17 / 10,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffF7D116)],
      x: 0.2,
      y: 0.2,
      heightFactor: 14 / 24,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Cape_Verde_(construction_sheet).svg",
);

/// Flag properties of country Anguilla (AI).
const flagAiaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffff9900)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff99ccff)),
    ColorsProperties(Color(0xfffdc301)),
    ColorsProperties(Color(0xffc8102e)),
  ],
  aspectRatio: 2,
  url: "https://www.vexilla-mundi.com/anguilla/anguilla_sheet.png",
);

/// Flag properties of country Brazil (BR).
const flagBraProperties = FlagProperties(
  [ColorsProperties(Color(0xff229e45))],
  aspectRatio: 10 / 7,
  elementsProperties: [
    ElementsProperties(
      [Color(0xfff8e509)],
      heightFactor: 530 / 700,
      angle: 30,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xff2b49a3)],
          heightFactor: 350 / 530,
          type: ElementType.circle,
          children: [
            ElementsProperties(
              [Color(0xffffffff), Color(0xff229e45)],
              heightFactor: 1 / 2,
            ),
          ],
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/brazil/brazil_sheet.png",
);

/// Flag properties of country Libya (LY).
const flagLbyProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffe70013)),
    ColorsProperties(Color(0xff000000), ratio: 2),
    ColorsProperties(Color(0xff239e46)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 6 / 24,
      type: ElementType.moon,
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: 0.1,
      heightFactor: 4.46 / 24,
      angle: -20,
      type: ElementType.star,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Libya_(construction_sheet).svg",
);

/// Flag properties of country Norfolk Island (NF).
const flagNfkProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff007833), ratio: 56),
    ColorsProperties(Color(0xffffffff), ratio: 72),
    ColorsProperties(Color(0xff007833), ratio: 56),
  ],
  aspectRatio: 2,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties([Color(0xff007833)], heightFactor: 78 / 92),
  ],
  url: "https://www.vexilla-mundi.com/norfolk_island/norfolk_island_sheet.png",
);

/// Flag properties of country Malaysia (MY).
const flagMysProperties = FlagProperties(
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
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xffffffff)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000066)],
      heightFactor: 8 / 14,
      widthFactor: 14 / 28,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffffcc00)],
          x: -0.4,
          heightFactor: 6 / 8,
          type: ElementType.moon,
        ),
        ElementsProperties(
          [Color(0xffffcc00)],
          x: 0.3,
          heightFactor: 5 / 8,
          type: ElementType.sun,
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Malaysia_(construction_sheet).svg",
);

/// Flag properties of country Mongolia (MN).
const flagMngProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffda2032)),
    ColorsProperties(Color(0xff0066b3)),
    ColorsProperties(Color(0xffda2032)),
  ],
  aspectRatio: 2,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffd900)],
      x: -0.667,
      y: 0.1,
      heightFactor: 45 / 60,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Mongolia_(construction_sheet).svg",
);

/// Flag properties of country Niue (NU).
const flagNiuProperties = FlagProperties(
  [
    ColorsProperties(Color(0xfffedd00)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
  ],
  aspectRatio: 2,
  url: "https://www.vexilla-mundi.com/niue/niue_sheet.png",
);

/// Flag properties of country Azerbaijan (AZ).
const flagAzeProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff00B5E2)),
    ColorsProperties(Color(0xffEF3340)),
    ColorsProperties(Color(0xff509E2F)),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff)],
      heightFactor: 0.3,
      type: ElementType.moon,
    ),
    ElementsProperties(
      [Color(0xffffffff)],
      x: 0.1,
      heightFactor: 0.2,
      type: ElementType.sun,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Azerbaijan_(construction_sheet).svg",
);

/// Flag properties of country Bosnia and Herzegovina (BA).
const flagBihProperties = FlagProperties(
  [ColorsProperties(Color(0xff001489))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xffFFCD00)],
      heightFactor: 2 / 3,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Bosnia_and_Herzegovina_(construction_sheet).svg",
);

/// Flag properties of country Armenia (AM).
const flagArmProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffd90012)),
    ColorsProperties(Color(0xff0033a0)),
    ColorsProperties(Color(0xfff2a800)),
  ],
  aspectRatio: 2,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Armenia_(construction_sheet).svg",
);

/// Flag properties of country Costa Rica (CR).
const flagCriProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff001489)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffDA291C), ratio: 2),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff001489)),
  ],
  aspectRatio: 5 / 3,
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Costa_Rica_(construction_sheet).svg",
);

/// Flag properties of country Timor-Leste (TL).
const flagTlsProperties = FlagProperties(
  [ColorsProperties(Color(0xffcb000f))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      [Color(0xfff8c00c)],
      x: -1,
      widthFactor: 1 / 2,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xff000000)],
          x: -1,
          widthFactor: 12 / 18,
          type: ElementType.triangle,
          children: [
            ElementsProperties(
              [Color(0xffffffff)],
              heightFactor: 1 / 3,
              angle: -20,
              type: ElementType.star,
            ),
          ],
        ),
      ],
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Timor-Leste_(construction_sheet).svg",
);

/// Flag properties of country Turkmenistan (TM).
const flagTkmProperties = FlagProperties(
  [ColorsProperties(Color(0xff00853A))],
  elementsProperties: [
    ElementsProperties(
      [
        Color(0xff00853A),
        Color(0xffffffff),
        Color(0xffd22630),
        Color(0xff383739),
        Color(0xffffc72c),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/turkmenistan/turkmenistan_sheet.png",
);

/// Flag properties of country Tanzania (TZ).
const flagTzaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xff0099ff)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Tanzania_(construction_sheet).svg",
);

/// Flag properties of country Venezuela (VE).
const flagVenProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffffcc00)),
    ColorsProperties(Color(0xff00247d)),
    ColorsProperties(Color(0xffcf142b)),
  ],
  elementsProperties: [
    ElementsProperties([Color(0xffffffff)], heightFactor: 0.3),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Venezuela_(construction_sheet).svg",
);

/// Flag properties of country Albania (AL).
const flagAlbProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000))],
  aspectRatio: 7 / 5,
  elementsProperties: [
    ElementsProperties([Color(0xff000000)], heightFactor: 2 / 3),
  ],
  url: "https://www.vexilla-mundi.com/albania/albania_sheet.png",
);

/// Flag properties of country Botswana (BW).
const flagBwaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff6DA9D2), ratio: 9),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000), ratio: 4),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff6DA9D2), ratio: 9),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Botswana_(construction_sheet).svg",
);

/// Flag properties of country DR Congo (CD).
const flagCodProperties = FlagProperties(
  [ColorsProperties(Color(0xff007fff))],
  aspectRatio: 4 / 3,
  elementsProperties: [
    ElementsProperties([Color(0xffce1021), Color(0xfff7d618)]),
    ElementsProperties(
      [Color(0xfff7d618)],
      x: -0.9,
      y: -0.9,
      heightFactor: 513 / 1500,
      type: ElementType.star,
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/congo_democratic_republic/congo_democratic_republic_sheet.png",
);

/// Flag properties of country Sri Lanka (LK).
const flagLkaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xffF7B718), ratio: 6),
    ColorsProperties(Color(0xff005F56), ratio: 17),
    ColorsProperties(Color(0xffDF7500), ratio: 17),
    ColorsProperties(Color(0xffF7B718), ratio: 6),
    ColorsProperties(Color(0xff941E32), ratio: 80),
    ColorsProperties(Color(0xffF7B718), ratio: 6),
  ],
  aspectRatio: 2,
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffF7B718)],
      y: -1,
      heightFactor: 70 / 750,
      widthFactor: 1,
      type: ElementType.rectangle,
    ),
    ElementsProperties(
      [Color(0xffF7B718)],
      y: 1,
      heightFactor: 70 / 750,
      widthFactor: 1,
      type: ElementType.rectangle,
    ),
    ElementsProperties(
      [Color(0xffF7B718), Color(0xff000000)],
      heightFactor: 610 / 750,
      widthFactor: 900 / 1890,
    ),
  ],
  url: "https://www.vexilla-mundi.com/sri_lanka/sri_lanka_sheet.png",
);

/// Flag properties of country Macau (MO).
const flagMacProperties = FlagProperties(
  [ColorsProperties(Color(0xff067662))],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffffff), Color(0xffFFDF1E)],
      heightFactor: 18 / 30,
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
  isHorizontalStriped: false,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffaf7029)],
      heightFactor: 1 / 4,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Mexico_flag_construction_sheet.svg",
);

/// Flag properties of country Namibia (NA).
const flagNamProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff002F6C)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffC8102E)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009A44)),
  ],
  elementsProperties: [
    ElementsProperties(
      [Color(0xffFFCD00)],
      x: -0.8,
      y: -0.8,
      heightFactor: 4 / 12,
      type: ElementType.sun,
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
      [Color(0xffE4002B)],
      x: -1,
      widthFactor: 0.4,
      type: ElementType.triangle,
      children: [
        ElementsProperties(
          [Color(0xffffca00)],
          heightFactor: 12 / 32,
          type: ElementType.star,
          children: [
            ElementsProperties(
              [Color(0xff000000), Color(0xffffffff)],
            ),
          ],
        ),
      ],
    ),
  ],
  url: "https://www.vexilla-mundi.com/mozambique/mozambique_sheet.png",
);

/// Flag properties of country Liechtenstein (LI).
const flagLieProperties = FlagProperties(
  [ColorsProperties(Color(0xff002780)), ColorsProperties(Color(0xffCF0921))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      [Color(0xffffd83d), Color(0xff000000)],
      x: -0.6,
      y: -0.4,
      heightFactor: 3 / 12,
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
      [Color(0xffffffff)],
      y: 0.072,
      heightFactor: 0.72,
      type: ElementType.star,
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
      [Color(0xffd21034)],
      widthFactor: 10 / 60,
      type: ElementType.rectangle,
    ),
    ElementsProperties(
      [Color(0xffffce00)],
      x: -0.9,
      y: -0.9,
      heightFactor: 9 / 40,
      type: ElementType.rectangle,
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
  isHorizontalStriped: false,
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
      widthFactor: 20 / 48,
      type: ElementType.rectangle,
      children: [
        ElementsProperties(
          [Color(0xffc10000)],
          heightFactor: 9 / 12,
          widthFactor: 3 / 20,
          type: ElementType.rectangle,
        ),
        ElementsProperties(
          [Color(0xffc10000)],
          heightFactor: 3 / 12,
          widthFactor: 9 / 20,
          type: ElementType.rectangle,
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
      type: ElementType.circle,
      children: [
        ElementsProperties(
          [Color(0xffe70013)],
          heightFactor: 15 / 20,
          type: ElementType.moon,
        ),
        ElementsProperties(
          [Color(0xffe70013)],
          heightFactor: 9 / 20,
          angle: -12,
          type: ElementType.star,
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

/// Flag properties of country Bhutan (BT).
const flagBtnProperties = FlagProperties(
  [ColorsProperties(Color(0xffFFCC33)), ColorsProperties(Color(0xffff4e12))],
  isHorizontalStriped: null,
  elementsProperties: [
    ElementsProperties(
      [Color(0xff000000), Color(0xffffffff)],
      heightFactor: 0.8,
    ),
  ],
  url: "https://www.vexilla-mundi.com/bhutan/bhutan_sheet.png",
);
