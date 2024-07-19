import "dart:ui";

import "../model/colors_properties.dart";
import "../model/elements/custom_elements_properties.dart";
import "../model/elements/elements_properties.dart";
import "../model/flag_properties.dart";
import "../model/shape.dart";
import "../model/stripe_orientation.dart";

// ignore_for_file: prefer-static-class
/// Flag properties of country Madagascar (MG).
const flagMdgProperties = FlagProperties(
  [ColorsProperties(Color(0xfffc3d32)), ColorsProperties(Color(0xff007e3a))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(-1, 0),
      widthFactor: 1 / 3,
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
  [ColorsProperties(Color(0xff0033A1))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xffffffff),
        Color(0xff217900),
        Color(0xffffd200),
        Color(0xff8c8a8c),
        Color(0xffde2010),
        Color(0xffffe300),
        Color(0xff6b18b5),
        Color(0xfff7df73),
        Color(0xff8c1800),
        Color(0xff000000),
        Color(0xffef8a10),
      ],
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Ellipse(),
      offset: Offset(0, 0.03),
      heightFactor: 0.75,
      child: ElementsProperties(
        Color(0xffef8a10),
        shape: Ellipse(),
        heightFactor: 0.85,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Ellipse(),
          heightFactor: 0.85,
          child: ElementsProperties(
            Color(0xff0033A1),
            shape: Ellipse(),
            heightFactor: 0.85,
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xff8c8a8c),
      shape: Rectangle(aspectRatio: 0.36),
      offset: Offset(-0.02, 0.5),
      heightFactor: 0.55,
    ),
    ElementsProperties(
      Color(0xff000000),
      shape: Star(),
      offset: Offset(-0.01, 0.175),
      heightFactor: 0.38,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(0, 0.1),
        heightFactor: 0.98,
      ),
    ),
  ],
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffc6aa76),
      otherColors: [
        Color(0xffc6aa76),
        Color(0xffd50032),
        Color(0xfffedd00),
        Color(0xffd50032),
        Color(0xfffedd00),
        Color(0xff10069f),
        Color(0xffc6aa76),
      ],
      heightFactor: 0.4,
      widthFactor: 0.25,
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
      Color(0xff0039a6),
      shape: Rectangle(aspectRatio: 1),
      offset: Offset(-1, -1),
      heightFactor: 1 / 2,
      widthFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        heightFactor: 1 / 2,
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Chile_(construction).svg",
);

/// Flag properties of country American Samoa (AS).
const flagAsmProperties = FlagProperties(
  [ColorsProperties(Color(0xff00205b))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffd100),
      otherColors: [
        Color(0xff5a3719),
        Color(0xff7b3c20),
        Color(0xffbe531c),
        Color(0xff999999),
      ],
      offset: Offset(0.66, -0.15),
      heightFactor: 0.5,
      widthFactor: 0.3,
    ),
    ElementsProperties(
      Color(0xffef3340),
      shape: Triangle(),
      offset: Offset(1, -1),
      widthFactor: 1,
      angle: 180,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Triangle(),
        offset: Offset(1, -0.9),
        heightFactor: 0.9,
        widthFactor: 0.9,
        angle: 180,
      ),
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-0.6, -1.06),
      heightFactor: 0.26,
      widthFactor: 1 / 5,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Triangle(),
        offset: Offset(-1, 0.54),
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Triangle(),
          offset: Offset(-1, 0.54),
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Triangle(),
            offset: Offset(-1, 0.54),
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Triangle(),
              offset: Offset(-1, 0.54),
            ),
          ),
        ),
      ),
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
      Color(0xffffffff),
      shape: Moon(radius: 0.8, offset: Offset(0.75, 0)),
      offset: Offset(-0.333, 0),
      heightFactor: 1 / 2,
      widthFactor: 1 / 3,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(1.466, 0),
        heightFactor: 0.5,
        angle: -18,
      ),
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
  stripeOrientation: StripeOrientation.vertical,
  url: "https://wikipedia.org/wiki/File:Flag_of_Chad_(construction_sheet).svg",
);

/// Flag properties of country Burundi (BI).
const flagBdiProperties = FlagProperties(
  [ColorsProperties(Color(0xff18b637))],
  aspectRatio: 5 / 3,
  elementsProperties: [
    ElementsProperties(
      Color(0xffcf0921),
      shape: Triangle(),
      offset: Offset(0, -0.5),
      heightFactor: 1 / 2,
      angle: 90,
    ),
    ElementsProperties(
      Color(0xffcf0921),
      shape: Triangle(),
      offset: Offset(0, 1),
      heightFactor: 1 / 2,
      angle: 270,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: DiagonalLine(),
      heightFactor: 0.13,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: DiagonalLine(isTopRightToBottomLeft: false),
      heightFactor: 0.13,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Ellipse(),
      heightFactor: 0.56,
      child: ElementsProperties(
        Color(0xff18b637),
        shape: Star(points: 6, radiusFactor: 0.6),
        offset: Offset(0, -0.52),
        heightFactor: 0.23,
        angle: 90,
        child: ElementsProperties(
          Color(0xffcf0921),
          shape: Star(points: 6, radiusFactor: 0.6),
          heightFactor: 0.9,
          angle: 90,
          child: ElementsProperties(
            Color(0xff18b637),
            shape: Star(points: 6, radiusFactor: 0.6),
            offset: Offset(-2.5, 5),
            heightFactor: 1.45,
            angle: 90,
            child: ElementsProperties(
              Color(0xffcf0921),
              shape: Star(points: 6, radiusFactor: 0.6),
              heightFactor: 0.9,
              angle: 90,
              child: ElementsProperties(
                Color(0xff18b637),
                shape: Star(points: 6, radiusFactor: 0.6),
                offset: Offset(5.12, 0),
                heightFactor: 1.45,
                angle: 90,
                child: ElementsProperties(
                  Color(0xffcf0921),
                  shape: Star(points: 6, radiusFactor: 0.6),
                  heightFactor: 0.9,
                  angle: 90,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ],
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
      Color(0xfff6b40e),
      shape: Star(points: 32, radiusFactor: 0.45),
      heightFactor: 55 / 180,
      angle: 17,
      child: ElementsProperties(
        Color(0xff85340a),
        shape: Ellipse(),
        heightFactor: 0.4,
        child: ElementsProperties(
          Color(0xfff6b40e),
          shape: Ellipse(),
          heightFactor: 0.9,
        ),
      ),
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(Color(0xfffcd116), shape: Star(), heightFactor: 2 / 6),
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
      Color(0xffff0000),
      shape: Rectangle(),
      offset: Offset(-1, 0),
      widthFactor: 3 / 12,
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
      Color(0xff11457e),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 2,
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
      Color(0xffef1923),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 2,
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
    CustomElementsProperties(
      Color(0xff00a850),
      heightFactor: 0.55,
      widthFactor: 1 / 2,
    ),
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color.fromARGB(255, 113, 55, 13),
      otherColors: [
        Color.fromARGB(255, 92, 55, 29),
        Color(0xffCC092F),
        Color(0xff0046AE),
        Color(0xffB07E5B),
        Color(0xffFFD200),
        Color(0xff007A50),
        Color(0xff000000),
      ],
      heightFactor: 168 / 300,
      widthFactor: 1 / 5,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Moldova,_construction_sheet.svg",
);

/// Flag properties of country Montserrat (MS).
const flagMsrProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff00a2bd),
      otherColors: [
        Color(0xffffffff),
        Color(0xff00a2bd),
        Color(0xff00a2bd),
        Color(0xffa53d08),
        Color(0xffa53d08),
        Color(0xffff9a08),
        Color(0xff008021),
        Color(0xffffe1cf),
        Color(0xff870f00),
        Color(0xffc8102e),
        Color(0xff000000),
        Color(0xffffdf00),
      ],
      offset: Offset(0.5, 0),
      heightFactor: 0.5,
      widthFactor: 0.2,
    ),
  ],
  url: "https://www.vexilla-mundi.com/montserrat/montserrat_sheet.png",
);

/// Flag properties of country Antigua and Barbuda (AG).
const flagAtgProperties = FlagProperties(
  [ColorsProperties(Color(0xff000000))],
  elementsProperties: [
    ElementsProperties(
      Color(0xfffcd116),
      shape: Star(points: 15, radiusFactor: 0.48),
      offset: Offset(0, -0.27),
      heightFactor: 0.62,
    ),
    ElementsProperties(
      Color(0xff0072c6),
      shape: Rectangle(),
      offset: Offset(0, 1),
      heightFactor: 0.61,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(),
      offset: Offset(0, 1),
      heightFactor: 0.39,
    ),
    CustomElementsProperties(Color(0xffce1126)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Antigua_and_Barbuda_(construction_sheet).svg",
);

/// Flag properties of country Christmas Island (CX).
const flagCxrProperties = FlagProperties(
  [ColorsProperties(Color(0xff0021ad)), ColorsProperties(Color(0xff1c8a42))],
  aspectRatio: 2,
  stripeOrientation: StripeOrientation.diagonalTopLeftToBottomRight,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 7, radiusFactor: 0.48),
      offset: Offset(-0.433, 0),
      heightFactor: 0.12,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(-2.2, 2.48),
        heightFactor: 0.8,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(points: 7, radiusFactor: 0.48),
          offset: Offset(-1.85, 5.6),
          heightFactor: 1.45,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(points: 7, radiusFactor: 0.48),
            offset: Offset(-0.1, -9.4),
            heightFactor: 1.05,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(points: 7, radiusFactor: 0.48),
              offset: Offset(-3.9, 4.4),
              heightFactor: 1.05,
            ),
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffffc639),
      shape: Ellipse(),
      heightFactor: 0.36,
      child: ElementsProperties(
        Color(0xff1c8a42),
        shape: Star(points: 3, radiusFactor: 0.3),
        heightFactor: 0.8,
        angle: 50,
      ),
    ),
    ElementsProperties(
      Color(0xffffc639),
      shape: Star(points: 3, radiusFactor: 0.3),
      offset: Offset(0.66, -0.3),
      heightFactor: 0.5,
      angle: -20,
    ),
    CustomElementsProperties(
      Color(0xff1c8a42),
      otherColors: [Color(0xffffc639)],
    ),
  ],
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
  [ColorsProperties(Color(0xff002654))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      offset: Offset(0.39, 0.27),
      heightFactor: 0.36,
      widthFactor: 0.25,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1.48),
      offset: Offset(-1, -1),
      heightFactor: 0.41,
      child: ElementsProperties(
        Color(0xffED2939),
        shape: Rectangle(aspectRatio: 0.5),
        offset: Offset(0.95, -1),
        heightFactor: 0.97,
      ),
    ),
    ElementsProperties(
      Color(0xff002654),
      shape: Rectangle(aspectRatio: 0.5),
      offset: Offset(-1, -1),
      heightFactor: 0.4,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(0.39, 0.81),
      heightFactor: 0.1,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(2.3, -1.8),
        heightFactor: 1.1,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(-4.75, 0.1),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(-2, -5.5),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(8.9, 0.1),
              heightFactor: 1.1,
            ),
          ),
        ),
      ),
    ),
  ],
  url:
      "https://www.vexilla-mundi.com/french_southern_and_antarctic_lands/french_southern_and_antarctic_lands_sheet.png",
);

/// Flag properties of country Vietnam (VN).
const flagVnmProperties = FlagProperties(
  [ColorsProperties(Color(0xffda251d))],
  elementsProperties: [
    ElementsProperties(Color(0xffffff00), shape: Star(), heightFactor: 12 / 20),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Vietnam_(construction_sheet).svg",
);

/// Flag properties of country Zambia (ZM).
const flagZmbProperties = FlagProperties(
  [ColorsProperties(Color(0xff009E49))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffEF3340),
      shape: Rectangle(aspectRatio: 0.8333),
      offset: Offset(1, 1),
      heightFactor: 144 / 224,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Rectangle(aspectRatio: 0.56),
        offset: Offset(1, 0),
        child: ElementsProperties(
          Color(0xffFCAD56),
          shape: Rectangle(aspectRatio: 0.27),
          offset: Offset(1, 0),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffFCAD56),
      shape: Star(points: 2, radiusFactor: 0.2),
      offset: Offset(0.65, -0.7),
      heightFactor: 0.4,
    ),
    CustomElementsProperties(
      Color(0xffFCAD56),
      otherColors: [Color(0xff000000)],
      offset: Offset(0.94, -0.8),
      heightFactor: 42 / 224,
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
      Color(0xffd80000),
      shape: Rectangle(aspectRatio: 1),
      offset: Offset(-1, -1),
      heightFactor: 3 / 5,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        heightFactor: 19 / 30,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/togo/togo_sheet.png",
);

/// Flag properties of country China (CN).
const flagChnProperties = FlagProperties(
  [ColorsProperties(Color(0xffee1c25))],
  elementsProperties: [
    ElementsProperties(
      Color(0xffffff00),
      shape: Star(),
      offset: Offset(-0.667, -0.5),
      heightFactor: 0.3,
    ),
    ElementsProperties(
      Color(0xffffff00),
      shape: Star(),
      offset: Offset(-0.333, -0.8),
      heightFactor: 0.1,
      angle: 22,
    ),
    ElementsProperties(
      Color(0xffffff00),
      shape: Star(),
      offset: Offset(-0.2, -0.6),
      heightFactor: 0.1,
      angle: -25,
    ),
    ElementsProperties(
      Color(0xffffff00),
      shape: Star(),
      offset: Offset(-0.2, -0.3),
      heightFactor: 0.1,
    ),
    ElementsProperties(
      Color(0xffffff00),
      shape: Star(),
      offset: Offset(-0.333, -0.1),
      heightFactor: 0.1,
      angle: 22,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_China_(construction_sheet).svg",
);

/// Flag properties of country Benin (BJ).
const flagBenProperties = FlagProperties(
  [ColorsProperties(Color(0xffFCD20F)), ColorsProperties(Color(0xffE90929))],
  elementsProperties: [
    ElementsProperties(
      Color(0xff008850),
      shape: Rectangle(),
      offset: Offset(-1, 0),
      widthFactor: 6 / 15,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Benin_(construction_sheet).svg",
);

/// Flag properties of country Antarctica (AQ).
const flagAtaProperties = FlagProperties(
  [ColorsProperties(Color(0xff3a7dce))],
  elementsProperties: [
    CustomElementsProperties(Color(0xffffffff)),
  ],
  url:
      "https://wikipedia.org/wiki/File:Proposed_flag_of_Antarctica_(Graham_Bartram).svg",
);

/// Flag properties of country Cyprus (CY).
const flagCypProperties = FlagProperties(
  [ColorsProperties(Color(0xffffffff))],
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff4E5B31),
      otherColors: [Color(0xffD57800)],
      offset: Offset(0.05, 0.04),
      widthFactor: 0.9,
    ),
  ],
  url: "https://www.vexilla-mundi.com/cyprus/cyprus_sheet.png",
);

/// Flag properties of country Afghanistan (AF).
const flagAfgProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffD32011)),
    ColorsProperties(Color(0xff007A36)),
  ],
  // TODO! Change to the new look with aspectRatio: 2.
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color.fromARGB(100, 255, 255, 255),
      shape: Ellipse(),
      heightFactor: 0.8,
    ),
    CustomElementsProperties(Color(0xff000000), heightFactor: 1 / 2),
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
      Color(0xffef2d29),
      shape: Rectangle(),
      offset: Offset(-1, 0),
      widthFactor: 20 / 60,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(points: 4, radiusFactor: 0.1),
        offset: Offset(0, -0.58),
        heightFactor: 0.38,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(points: 3, radiusFactor: 0.15),
          offset: Offset(0, -0.3),
        ),
      ),
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
      Color(0xffFFD700),
      shape: Star(),
      offset: Offset(0, -0.2),
      heightFactor: 0.2,
      child: ElementsProperties(
        Color(0xffFFD700),
        shape: Moon(radius: 1.09, offset: Offset(0, -1)),
        offset: Offset(0, -0.9),
        heightFactor: 0.3,
        widthFactor: 4,
      ),
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
      Color(0xffc8a400),
      shape: Ellipse(),
      heightFactor: 18 / 60,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Ellipse(),
        heightFactor: 0.9,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(points: 3, radiusFactor: 0.5),
          heightFactor: 1.25,
          child: ElementsProperties(
            Color(0xffc8a400),
            shape: Triangle(),
            offset: Offset(0.1, 0.85),
            heightFactor: 0.8,
            widthFactor: 0.8,
            angle: 270,
            child: ElementsProperties(
              Color(0xff17c0eb),
              shape: Triangle(),
              offset: Offset(0.1, 0.87),
              heightFactor: 0.8,
              widthFactor: 0.8,
              angle: 270,
              child: ElementsProperties(
                Color(0xffff0000),
                shape: Ellipse(),
                offset: Offset(0, 0.06),
                heightFactor: 0.1,
              ),
            ),
          ),
        ),
      ),
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
      Color(0xffffffff),
      shape: Ellipse(),
      heightFactor: 8 / 20,
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
      Color(0xffc40308),
      shape: Rectangle(aspectRatio: 2.1),
      heightFactor: 54 / 60,
      widthFactor: 0.4,
      child: CustomElementsProperties(
        Color(0xffd3ae3b),
        otherColors: [
          Color(0xffd3ae3b),
          Color(0xff1d5e91),
          Color(0xff6d8c3e),
          Color(0xffb96b29),
          Color(0xffc40308),
          Color(0xffc52126),
        ],
        heightFactor: 0.6,
        widthFactor: 0.4,
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/montenegro/montenegro_sheet.png",
);

/// Flag properties of country Marshall Islands (MH).
const flagMhlProperties = FlagProperties(
  [ColorsProperties(Color(0xff003893))],
  aspectRatio: 19 / 10,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [Color(0xffDD7500)],
      heightFactor: 0.02,
      widthFactor: 0.2,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 4, radiusFactor: 0.08),
      offset: Offset(-0.617, -0.27),
      heightFactor: 0.6,
      angle: 45,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(points: 24, radiusFactor: 0.45),
        angle: 23,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_the_Marshall_Islands_(construction_sheet).svg",
);

/// Flag properties of country Cocos (Keeling) Islands (CC).
const flagCckProperties = FlagProperties(
  [ColorsProperties(Color(0xff008000))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffe000),
      shape: Moon(radius: 0.82, offset: Offset(0.3, 0)),
      heightFactor: 0.42,
      child: ElementsProperties(
        Color(0xffffe000),
        shape: Star(points: 7, radiusFactor: 0.45),
        offset: Offset(1.58, -0.29),
        heightFactor: 0.32,
      ),
    ),
    ElementsProperties(
      Color(0xffffe000),
      shape: Star(),
      offset: Offset(0.6, 0.082),
      heightFactor: 0.085,
      child: ElementsProperties(
        Color(0xffffe000),
        shape: Star(points: 7, radiusFactor: 0.45),
        offset: Offset(3, -4.3),
        heightFactor: 1.75,
        child: ElementsProperties(
          Color(0xffffe000),
          shape: Star(points: 7, radiusFactor: 0.45),
          offset: Offset(-3.4, -3.15),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffe000),
            shape: Star(points: 7, radiusFactor: 0.45),
            offset: Offset(0, 10),
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffffe000),
      shape: Ellipse(),
      offset: Offset(-0.658, -0.418),
      heightFactor: 0.435,
      child: ElementsProperties(
        Color(0xff802000),
        shape: Rectangle(aspectRatio: 0.15),
        offset: Offset(0.1, 0.2),
        heightFactor: 0.6,
        child: ElementsProperties(
          Color(0xff008000),
          shape: Star(points: 3),
          offset: Offset(0, -0.4),
          heightFactor: 1.1,
          angle: 20,
        ),
      ),
    ),
    CustomElementsProperties(
      Color(0xff802000),
      otherColors: [Color(0xff008000)],
      heightFactor: 0.8,
    ),
  ],
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
    ColorsProperties(Color(0xffCD0000), ratio: 2),
    ColorsProperties(Color(0xffffffff), ratio: 3),
    ColorsProperties(Color(0xff006600), ratio: 2),
  ],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xffF8C400),
      shape: Star(),
      offset: Offset(0, -0.31),
      heightFactor: 0.07,
      child: ElementsProperties(
        Color(0xffF8C400),
        shape: Star(),
        offset: Offset(-2.9, 0.95),
        heightFactor: 1.1,
        child: ElementsProperties(
          Color(0xffF8C400),
          shape: Star(),
          offset: Offset(5.85, 0.1),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffF8C400),
            shape: Star(),
            offset: Offset(2.3, 2.4),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffF8C400),
              shape: Star(),
              offset: Offset(-10.5, 0.15),
              heightFactor: 1.1,
              child: ElementsProperties(
                Color(0xffF8C400),
                shape: Star(),
                offset: Offset(-0.9, 3.2),
                heightFactor: 1.1,
                child: ElementsProperties(
                  Color(0xffF8C400),
                  shape: Star(),
                  offset: Offset(12.3, 0.1),
                  heightFactor: 1.1,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffF8C400),
      shape: Star(points: 3, radiusFactor: 0.25),
      offset: Offset(0, 0.2),
      heightFactor: 0.3,
    ),
    CustomElementsProperties(Color(0xffF8C400), heightFactor: 0.3),
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
      Color(0xff000000),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 0.58,
    ),
    ElementsProperties(
      Color(0xfffdce12),
      shape: Rectangle(),
      heightFactor: 2 / 36,
    ),
    ElementsProperties(
      Color(0xfffdce12),
      shape: Triangle(),
      offset: Offset(-1, -0.85),
      heightFactor: 0.85,
      widthFactor: 0.5,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Triangle(),
        offset: Offset(-1, -0.85),
        heightFactor: 0.85,
        widthFactor: 0.85,
        child: ElementsProperties(
          Color(0xfffdce12),
          shape: Ellipse(),
          offset: Offset(-0.4, 0),
          heightFactor: 12 / 36,
          child: ElementsProperties(
            Color(0xff000000),
            shape: Ellipse(),
            offset: Offset(0, -0.2),
            heightFactor: 0.6,
            child: ElementsProperties(
              Color(0xfffdce12),
              shape: Star(points: 4, radiusFactor: 0.3),
              heightFactor: 0.666,
            ),
          ),
        ),
      ),
    ),
    CustomElementsProperties(
      Color(0xfffdce12),
      offset: Offset(-0.6, 0),
      heightFactor: 8 / 36,
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
      Color(0xffffffff),
      shape: Rectangle(aspectRatio: 1.15),
      offset: Offset(-1, -1),
      heightFactor: 78 / 162,
      child: ElementsProperties(
        Color(0xfffcd116),
        shape: Star(points: 16, radiusFactor: 0.45),
        offset: Offset(0, 0.15),
        heightFactor: 0.85,
        angle: 10,
        child: ElementsProperties(
          Color(0xff7b3f00),
          shape: Star(points: 16, radiusFactor: 0.3),
          offset: Offset(-0.01, 0),
          angle: 32,
          child: ElementsProperties(
            Color(0xfffcd116),
            shape: Ellipse(),
            heightFactor: 1 / 3,
          ),
        ),
      ),
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
      Color(0xffffffff),
      shape: Triangle(),
      offset: Offset(-1, -1.4),
      heightFactor: 1.4,
      widthFactor: 0.7,
      child: ElementsProperties(
        Color(0xff007A4D),
        shape: Rectangle(),
        offset: Offset(-0.5, 0),
        heightFactor: 0.143,
        widthFactor: 1,
      ),
    ),
    ElementsProperties(
      Color(0xff007A4D),
      shape: Triangle(),
      offset: Offset(-1, -1.25),
      heightFactor: 1.25,
      widthFactor: 0.62,
    ),
    ElementsProperties(
      Color(0xffFFB612),
      shape: Triangle(),
      offset: Offset(-1, -0.75),
      heightFactor: 0.75,
      widthFactor: 0.38,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Triangle(),
        offset: Offset(-1, -0.8),
        heightFactor: 0.8,
        widthFactor: 0.8,
      ),
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
      Color(0xff000000),
      shape: Triangle(),
      offset: Offset(-1, -1.06),
      heightFactor: 1.06,
      widthFactor: 0.35,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Triangle(),
        offset: Offset(-1, -0.94),
        heightFactor: 0.94,
        widthFactor: 0.94,
        child: ElementsProperties(
          Color(0xffd40000),
          shape: Star(),
          offset: Offset(-0.225, -0.05),
          heightFactor: 29 / 64,
          child: ElementsProperties(
            Color(0xffffcc00),
            shape: Star(points: 4),
            offset: Offset(0, 0.1),
            heightFactor: 0.6,
            angle: 30,
          ),
        ),
      ),
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff199a00),
      offset: Offset(0, 0.55),
      heightFactor: 0.33,
      widthFactor: 0.125,
    ),
    CustomElementsProperties(
      Color(0xff199a00),
      offset: Offset(-0.6, -0.05),
      heightFactor: 0.33,
      widthFactor: 0.125,
    ),
    CustomElementsProperties(
      Color(0xff199a00),
      offset: Offset(0.6, -0.05),
      heightFactor: 0.33,
      widthFactor: 0.125,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Saint_Vincent_and_the_Grenadines_(construction_sheet).svg",
);

/// Flag properties of country Tokelau (TK).
const flagTklProperties = FlagProperties(
  [ColorsProperties(Color(0xff00247d))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xfffed100),
      offset: Offset(0.6, 0),
      heightFactor: 0.86,
      widthFactor: 0.94,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.42, -0.405),
      heightFactor: 1 / 12,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(-5.02, 11.5),
        heightFactor: 1.55,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(0, -11.3),
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(-4.66, 5),
            heightFactor: 1.1,
          ),
        ),
      ),
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Tokelau.svg",
);

/// Flag properties of country Burkina Faso (BF).
const flagBfaProperties = FlagProperties(
  [ColorsProperties(Color(0xffEF2B2D)), ColorsProperties(Color(0xff35a100))],
  elementsProperties: [
    ElementsProperties(Color(0xfffff300), shape: Star(), heightFactor: 4 / 12),
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
      Color(0xffCC0D0D),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 0.43,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(-1 / 3, 0),
        heightFactor: 5 / 15,
      ),
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
      Color(0xffe05206),
      shape: Ellipse(),
      heightFactor: 1 / 4,
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
      Color(0xffffffff),
      shape: Star(points: 12, radiusFactor: 1 / 2),
      offset: Offset(-0.5, 0.42),
      heightFactor: 8 / 24,
      angle: 45,
    ),
  ],
  url: "https://wikipedia.org/wiki/File:Flag_of_Nauru_(construction_sheet).svg",
);

/// Flag properties of country North Macedonia (MK).
const flagMkdProperties = FlagProperties(
  [ColorsProperties(Color(0xffCE2028))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(Color(0xffF9D616)),
    ElementsProperties(
      Color(0xffCE2028),
      shape: Ellipse(),
      heightFactor: 0.355,
      child: ElementsProperties(
        Color(0xffF9D616),
        shape: Ellipse(),
        heightFactor: 0.8,
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Construction_sheet_of_the_flag_of_North_Macedonia.svg",
);

/// Flag properties of country Nepal (NP).
const flagNplProperties = FlagProperties(
  [ColorsProperties(Color.fromARGB(0, 0, 0, 0))],
  aspectRatio: 41 / 50,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffce0000),
      otherColors: [Color(0xff000063)],
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(points: 12, radiusFactor: 0.6),
      offset: Offset(-0.51, 0.45),
      heightFactor: 0.3,
      angle: 15,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Moon(radius: 1, offset: Offset(0, -0.32)),
      offset: Offset(-0.51, -0.36),
      heightFactor: 0.28,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(points: 16, radiusFactor: 0.7),
        offset: Offset(0, 0.04),
        heightFactor: 1,
      ),
    ),
  ],
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
  stripeOrientation: StripeOrientation.vertical,
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
      Color(0xff000000),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 0.43,
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
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.78, -0.666),
      heightFactor: 12 / 72,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.56, -0.333),
      heightFactor: 16 / 72,
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
      Color(0xfff42a41),
      shape: Ellipse(),
      offset: Offset(-0.1, 0),
      heightFactor: 8 / 12,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Bangladesh_(construction_sheet).svg",
);

/// Flag properties of country Vatican City (VA).
const flagVatProperties = FlagProperties(
  [ColorsProperties(Color(0xffffe000)), ColorsProperties(Color(0xffffffff))],
  aspectRatio: 1,
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffce9d09),
      otherColors: [
        Color(0xffcccccc),
        Color(0xfffa0204),
        Color(0xff000000),
      ],
      offset: Offset(0.5, 0),
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
      Color(0xffffffff),
      shape: Moon(radius: 1, offset: Offset(0.31, 0)),
      offset: Offset(-0.72, -0.68),
      heightFactor: 30 / 125,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(1.75, 0.8),
        heightFactor: 0.2,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(4.2, 0.1),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(4.2, 0.1),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(4.2, 0.1),
              heightFactor: 1.1,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(4.2, 0.1),
                heightFactor: 1.1,
                child: ElementsProperties(
                  Color(0xffffffff),
                  shape: Star(),
                  offset: Offset(0, -4.4),
                  heightFactor: 1.1,
                  child: ElementsProperties(
                    Color(0xffffffff),
                    shape: Star(),
                    offset: Offset(-4.2, 0.1),
                    heightFactor: 1.1,
                    child: ElementsProperties(
                      Color(0xffffffff),
                      shape: Star(),
                      offset: Offset(-4.2, 0.1),
                      heightFactor: 1.1,
                      child: ElementsProperties(
                        Color(0xffffffff),
                        shape: Star(),
                        offset: Offset(-4.3, 0.1),
                        heightFactor: 1.1,
                        child: ElementsProperties(
                          Color(0xffffffff),
                          shape: Star(),
                          offset: Offset(4.3, -4.5),
                          heightFactor: 1.1,
                          child: ElementsProperties(
                            Color(0xffffffff),
                            shape: Star(),
                            offset: Offset(4.3, 0.1),
                            heightFactor: 1.1,
                            child: ElementsProperties(
                              Color(0xffffffff),
                              shape: Star(),
                              offset: Offset(4.3, 0.1),
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
    CustomElementsProperties(
      Color(0xffd0a650),
      offset: Offset(0, -1),
      heightFactor: 0.55,
      widthFactor: 1.1,
    ),
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.1, -0.6),
      heightFactor: 0.12,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(2.45, 0.1),
        heightFactor: 1.1,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(2.45, 0.6),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(-7.35, 0.1),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(-2.333, 1),
              heightFactor: 1.1,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(12.05, 0.1),
                heightFactor: 1.1,
              ),
            ),
          ),
        ),
      ),
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
      Color(0xff002b7f),
      shape: Rectangle(aspectRatio: 2),
      offset: Offset(-1, -1),
      heightFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(-0.305, -0.18),
        heightFactor: 0.23,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(2.8, -2.3),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(2.85, 2),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(-1.5, 2.25),
              heightFactor: 0.7,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(-2.2, 4.1),
                heightFactor: 2.2,
              ),
            ),
          ),
        ),
      ),
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffd52b1e),
      heightFactor: 0.85,
      widthFactor: 0.62,
    ),
  ],
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
  stripeOrientation: StripeOrientation.vertical,
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
      Color(0xffF7D116),
      shape: Star(),
      offset: Offset(-0.53, 0.425),
      heightFactor: 2 / 22,
      child: ElementsProperties(
        Color(0xffF7D116),
        shape: Star(),
        offset: Offset(0, -4),
        heightFactor: 1.1,
        child: ElementsProperties(
          Color(0xffF7D116),
          shape: Star(),
          offset: Offset(2.05, -3),
          heightFactor: 1.1,
          child: ElementsProperties(
            Color(0xffF7D116),
            shape: Star(),
            offset: Offset(3.5, -1.1),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffF7D116),
              shape: Star(),
              offset: Offset(3.5, 1.3),
              heightFactor: 1.1,
              child: ElementsProperties(
                Color(0xffF7D116),
                shape: Star(),
                offset: Offset(2.3, 3.3),
                heightFactor: 1.1,
                child: ElementsProperties(
                  Color(0xffF7D116),
                  shape: Star(),
                  offset: Offset(0, 4.3),
                  heightFactor: 1.1,
                  child: ElementsProperties(
                    Color(0xffF7D116),
                    shape: Star(),
                    offset: Offset(-2.3, 3.2),
                    heightFactor: 1.1,
                    child: ElementsProperties(
                      Color(0xffF7D116),
                      shape: Star(),
                      offset: Offset(-7, 0.2),
                      heightFactor: 1.1,
                      child: ElementsProperties(
                        Color(0xffF7D116),
                        shape: Star(),
                        offset: Offset(3.44, 1.2),
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
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Cape_Verde_(construction_sheet).svg",
);

/// Flag properties of country Anguilla (AI).
const flagAiaProperties = FlagProperties(
  [ColorsProperties(Color(0xff012169))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xffffffff),
        Color(0xffff9900),
        Color(0xffffffff),
        Color(0xff99ccff),
        Color(0xff99ccff),
        Color(0xfffdc301),
      ],
      offset: Offset(0.5, 0),
      heightFactor: 0.4,
      widthFactor: 0.15,
    ),
  ],
  url: "https://www.vexilla-mundi.com/anguilla/anguilla_sheet.png",
);

/// Flag properties of country Brazil (BR).
const flagBraProperties = FlagProperties(
  [ColorsProperties(Color(0xff229e45))],
  aspectRatio: 10 / 7,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xfff8e509),
      otherColors: [Color(0xff2b49a3), Color(0xff229e45)],
      heightFactor: 530 / 700,
      widthFactor: 0.82,
      angle: 30,
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
      Color(0xffffffff),
      shape: Moon(radius: 0.86),
      heightFactor: 6 / 24,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(1.6, 0),
        heightFactor: 0.7,
        angle: 54,
      ),
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff007833),
      heightFactor: 78 / 92,
      widthFactor: 0.3,
    ),
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
      Color(0xff000066),
      shape: Rectangle(aspectRatio: 28 / 16),
      offset: Offset(-1, -1),
      heightFactor: 8 / 14,
      child: ElementsProperties(
        Color(0xffffcc00),
        shape: Moon(radius: 0.9),
        offset: Offset(-0.175, 0),
        heightFactor: 6 / 8,
        child: ElementsProperties(
          Color(0xffffcc00),
          shape: Star(points: 14),
          offset: Offset(1.6, 0),
          heightFactor: 0.8,
          angle: 38,
        ),
      ),
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
  stripeOrientation: StripeOrientation.vertical,
  elementsProperties: [
    ElementsProperties(
      Color(0xffffd900),
      shape: Rectangle(aspectRatio: 0.92),
      offset: Offset(-0.82, 0.5),
      heightFactor: 24 / 60,
      child: ElementsProperties(
        Color(0xffda2032),
        shape: Rectangle(aspectRatio: 0.5),
        child: ElementsProperties(
          Color(0xffffd900),
          shape: Ellipse(),
          offset: Offset(0, -2.3),
          heightFactor: 0.2,
          child: ElementsProperties(
            Color(0xffffd900),
            shape: Ellipse(),
            offset: Offset(0, 3.2),
            heightFactor: 1.6,
            child: ElementsProperties(
              Color(0xffffd900),
              shape: Moon(radius: 1.0, offset: Offset(0, -0.3)),
              offset: Offset(0, 0.4),
              heightFactor: 1.4,
              child: ElementsProperties(
                Color(0xffffd900),
                shape: Triangle(),
                offset: Offset(0.06, 1.75),
                heightFactor: 0.45,
                widthFactor: 0.9,
                angle: 90,
                child: ElementsProperties(
                  Color(0xffffd900),
                  shape: Triangle(),
                  offset: Offset(0, 15.1),
                  angle: 90,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color.fromARGB(0, 255, 217, 0),
      shape: Rectangle(aspectRatio: 0.92),
      offset: Offset(-0.82, 0.5),
      heightFactor: 24 / 60,
      child: ElementsProperties(
        Color.fromARGB(0, 255, 217, 0),
        shape: Rectangle(aspectRatio: 0.5),
        child: ElementsProperties(
          Color(0xffffd900),
          shape: Rectangle(aspectRatio: 0.6),
          heightFactor: 0.666,
          child: ElementsProperties(
            Color(0xffda2032),
            shape: Rectangle(),
            heightFactor: 0.75,
            child: ElementsProperties(
              Color(0xffffd900),
              shape: Ellipse(),
              heightFactor: 0.85,
            ),
          ),
        ),
      ),
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Mongolia_(construction_sheet).svg",
);

/// Flag properties of country Niue (NU).
const flagNiuProperties = FlagProperties(
  [ColorsProperties(Color(0xfffedd00))],
  aspectRatio: 2,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xfffedd00),
      otherColors: [
        Color(0xfffedd00),
        Color(0xfffedd00),
        Color(0xfffedd00),
        Color(0xfffedd00),
        Color(0xfffedd00),
      ],
    ),
  ],
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
      Color(0xffffffff),
      shape: Moon(),
      offset: Offset(-0.05, 0),
      heightFactor: 0.3,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(points: 8, radiusFactor: 0.5),
        offset: Offset(1.4, 0),
        heightFactor: 0.52,
        angle: 22,
      ),
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
      Color(0xff001489),
      shape: Rectangle(aspectRatio: 2),
      offset: Offset(0.5, 0),
      child: ElementsProperties(
        Color(0xffFFCD00),
        shape: Triangle(),
        offset: Offset(0.266, 0),
        angle: 90,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(-1.185, -1.02),
          heightFactor: 0.18,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(1.485, 1.665),
            heightFactor: 1.1,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(1.485, 1.665),
              heightFactor: 1.1,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(1.485, 1.665),
                heightFactor: 1.1,
                child: ElementsProperties(
                  Color(0xffffffff),
                  shape: Star(),
                  offset: Offset(1.485, 1.665),
                  heightFactor: 1.1,
                  child: ElementsProperties(
                    Color(0xffffffff),
                    shape: Star(),
                    offset: Offset(1.485, 1.665),
                    heightFactor: 1.1,
                    child: ElementsProperties(
                      Color(0xffffffff),
                      shape: Star(),
                      offset: Offset(1.485, 1.665),
                      heightFactor: 1.1,
                      child: ElementsProperties(
                        Color(0xffffffff),
                        shape: Star(),
                        offset: Offset(1.485, 1.665),
                        heightFactor: 1.1,
                        child: ElementsProperties(
                          Color(0xffffffff),
                          shape: Star(),
                          offset: Offset(1.485, 1.665),
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
    ElementsProperties(
      Color(0xff001489),
      shape: Rectangle(),
      offset: Offset(1, 0),
      widthFactor: 0.235,
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
  elementsProperties: [
    CustomElementsProperties(
      Color(0xffffffff),
      otherColors: [
        Color(0xff002b7f),
        Color(0xff74acdf),
        Color(0xff74acdf),
        Color(0xff001489),
        Color(0xff001489),
        Color(0xffDA291C),
        Color(0xffffffff),
      ],
      offset: Offset(-0.4, 0),
      heightFactor: 0.2,
      widthFactor: 0.1,
    ),
  ],
  url:
      "https://wikipedia.org/wiki/File:Flag_of_Costa_Rica_(construction_sheet).svg",
);

/// Flag properties of country Timor-Leste (TL).
const flagTlsProperties = FlagProperties(
  [ColorsProperties(Color(0xffcb000f))],
  aspectRatio: 2,
  elementsProperties: [
    ElementsProperties(
      Color(0xfff8c00c),
      shape: Triangle(),
      offset: Offset(-1, -1),
      widthFactor: 1 / 2,
      child: ElementsProperties(
        Color(0xff000000),
        shape: Triangle(),
        offset: Offset(-1, -1),
        widthFactor: 12 / 18,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(-1 / 3, 0),
          heightFactor: 0.32,
          angle: -24,
        ),
      ),
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
      Color(0xffffffff),
      shape: Moon(radius: 1.02, offset: Offset(-0.3, -0.2)),
      offset: Offset(-0.075, -0.55),
      heightFactor: 0.25,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(-0.86, 0.1),
        heightFactor: 0.2,
        angle: 36,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(-2.8, -1.45),
          heightFactor: 1.1,
          angle: 36,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(2.8, -1.4),
            heightFactor: 1.1,
            angle: 36,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(2.8, -1.4),
              heightFactor: 1.1,
              angle: 36,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(-2.8, -1.4),
                heightFactor: 1.1,
                angle: 36,
              ),
            ),
          ),
        ),
      ),
    ),
    ElementsProperties(
      Color(0xffd22630),
      shape: Rectangle(aspectRatio: 0.27),
      offset: Offset(-0.71, 0),
      child: CustomElementsProperties(
        Color(0xff00853A),
        otherColors: [
          Color(0xffffffff),
          Color(0xffd22630),
          Color(0xff383739),
          Color(0xffffc72c),
        ],
      ),
    ),
  ],
  url: "https://www.vexilla-mundi.com/turkmenistan/turkmenistan_sheet.png",
);

/// Flag properties of country Tanzania (TZ).
const flagTzaProperties = FlagProperties(
  [
    ColorsProperties(Color(0xff009900), ratio: 100),
    ColorsProperties(Color(0xffffff00), ratio: 4),
    ColorsProperties(Color(0xff000001), ratio: 17),
    ColorsProperties(Color(0xffffff00), ratio: 4),
    ColorsProperties(Color(0xff0099ff), ratio: 100),
  ],
  stripeOrientation: StripeOrientation.diagonalBottomLeftToTopRight,
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
    ElementsProperties(
      Color(0xffffffff),
      shape: Star(),
      offset: Offset(-0.07, -0.172),
      heightFactor: 0.08,
      angle: -10,
      child: ElementsProperties(
        Color(0xffffffff),
        shape: Star(),
        offset: Offset(2.75, 0.08),
        heightFactor: 1.1,
        angle: 10,
        child: ElementsProperties(
          Color(0xffffffff),
          shape: Star(),
          offset: Offset(2.5, 1.05),
          heightFactor: 1.13,
          angle: 30,
          child: ElementsProperties(
            Color(0xffffffff),
            shape: Star(),
            offset: Offset(-7.6, 0.1),
            heightFactor: 1.13,
            angle: -30,
            child: ElementsProperties(
              Color(0xffffffff),
              shape: Star(),
              offset: Offset(-2, 1.8),
              heightFactor: 1.13,
              angle: -45,
              child: ElementsProperties(
                Color(0xffffffff),
                shape: Star(),
                offset: Offset(11.2, 0.1),
                heightFactor: 1.13,
                angle: 45,
                child: ElementsProperties(
                  Color(0xffffffff),
                  shape: Star(),
                  offset: Offset(1.32, 2.25),
                  heightFactor: 1.1,
                  angle: -2,
                  child: ElementsProperties(
                    Color(0xffffffff),
                    shape: Star(),
                    offset: Offset(-13.7, 0.1),
                    heightFactor: 1.1,
                    angle: 2,
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
      "https://wikipedia.org/wiki/File:Flag_of_Venezuela_(construction_sheet).svg",
);

/// Flag properties of country Albania (AL).
const flagAlbProperties = FlagProperties(
  [ColorsProperties(Color(0xffff0000))],
  aspectRatio: 7 / 5,
  elementsProperties: [
    CustomElementsProperties(
      Color(0xff000000),
      heightFactor: 0.65,
      widthFactor: 0.45,
    ),
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
