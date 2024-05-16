import "dart:math" as math;

import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

import "colors_extractor.dart";

void main() {
  const width = 72.0;
  const height = 36.0;
  const absoluteX = 26.0;
  const absoluteY = 15.0;

  const normalizedX = absoluteX / width;
  const normalizedY = absoluteY / height;

  const relativeX = 2 * normalizedX - 1;
  const relativeY = 1 - 2 * normalizedY;

  print("Relative coordinates of element: ($relativeX, $relativeY)");

  const lineLength = 57.0;
  const angleInDegrees = 30.0;

  const angleInRadians = angleInDegrees * (math.pi / 180);

  final projectionX = lineLength * math.cos(angleInRadians);
  final projectionY = lineLength * math.sin(angleInRadians);

  print("Projection on X-axis: $projectionX cm");
  print("Projection on Y-axis: $projectionY cm");
}

// ignore: prefer-static-class, temporary map.
const flags = {
  /// Honduras: HN.
  CountryHnd(): FlagProperties(
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
  ),

  /// Dominica: DM.
  CountryDma(): FlagProperties(
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
        heightFactor: 1,
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
  ),

  /// France: FR.
  CountryFra(): FlagProperties(
    [
      ColorsProperties(Color(0xff002654)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffED2939)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_France_(construction_sheet).svg",
  ),

  /// Algeria: DZ.
  CountryDza(): FlagProperties(
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
  ),

  /// Gabon: GA.
  CountryGab(): FlagProperties(
    [
      ColorsProperties(Color(0xff36a100)),
      ColorsProperties(Color(0xffffe700)),
      ColorsProperties(Color(0xff006dbc)),
    ],
    aspectRatio: 4 / 3,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Gabon_(construction_sheet).svg",
  ),

  /// Philippines: PH.
  CountryPhl(): FlagProperties(
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
  ),

  /// South Sudan: SS.
  CountrySsd(): FlagProperties(
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
  ),

  /// Rwanda: RW.
  CountryRwa(): FlagProperties(
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
  ),

  /// Sudan: SD.
  CountrySdn(): FlagProperties(
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
        angle: 36.9,
        type: ElementType.triangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Sudan_(construction_sheet).svg",
  ),

  /// Sweden: SE.
  CountrySwe(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 2 / 16,
        type: ElementType.rectangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Sweden_(construction_sheet).svg",
  ),

  /// Suriname: SR.
  CountrySur(): FlagProperties(
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
  ),

  /// Western Sahara: EH.
  CountryEsh(): FlagProperties(
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
    url:
        "https://www.vexilla-mundi.com/western_sahara/western_sahara_sheet.png",
  ),

  /// Guinea-Bissau: GW.
  CountryGnb(): FlagProperties(
    [
      ColorsProperties(Color(0xfffcd116)),
      ColorsProperties(Color(0xff009e49)),
    ],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffce1126)],
        x: -1,
        heightFactor: 1,
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
  ),

  /// Japan: JP.
  CountryJpn(): FlagProperties(
    [ColorsProperties(Color(0xffffffff))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffbc002d)],
        heightFactor: 12 / 20,
        type: ElementType.circle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Japan_(construction_sheet).svg",
  ),

  /// Heard Island and McDonald Islands: HM.
  CountryHmd(): FlagProperties([], sameAs: CountryAus()),

  /// Jersey: JE.
  CountryJey(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffcf142b)),
      ColorsProperties(Color(0xffffd700)),
      ColorsProperties(Color(0xff377bc8)),
      ColorsProperties(Color(0xff000000)),
    ],
    aspectRatio: 5 / 3,
    url: "https://www.vexilla-mundi.com/jersey/jersey_sheet.png",
  ),

  /// Guam: GU.
  CountryGum(): FlagProperties(
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
  ),

  /// United Kingdom: GB.
  CountryGbr(): FlagProperties(
    [ColorsProperties(Color(0xff012169))],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties([Color(0xffffffff), Color(0xffc8102e)]),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_United_Kingdom_(1-2)_(construction_sheet).svg",
  ),

  /// Pakistan: PK.
  CountryPak(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff), ratio: 15),
      ColorsProperties(Color(0xff115740), ratio: 60),
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
  ),

  /// Singapore: SG.
  CountrySgp(): FlagProperties(
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
  ),

  /// Russia: RU.
  CountryRus(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff0036A7)),
      ColorsProperties(Color(0xffD62718)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Russia_(construction_sheet).svg",
  ),

  /// Dominican Republic: DO.
  CountryDom(): FlagProperties(
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
        heightFactor: 1,
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
  ),

  /// Guatemala: GT.
  CountryGtm(): FlagProperties(
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
  ),

  /// Kuwait: KW.
  CountryKwt(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 3 / 12,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Kuwait_(construction_sheet).svg",
  ),

  /// Israel: IL.
  CountryIsr(): FlagProperties(
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
  ),

  /// Guernsey: GG.
  CountryGgy(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff), ratio: 5),
      ColorsProperties(Color(0xffe8112d), ratio: 2),
      ColorsProperties(Color(0xffffffff), ratio: 5),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffe8112d)],
        heightFactor: 1,
        widthFactor: 2 / 12,
      ),
      ElementsProperties([Color(0xfff9dd16)], heightFactor: 0.8),
    ],
    url: "https://www.vexilla-mundi.com/guernsey/guernsey_sheet.png",
  ),

  /// Guadeloupe: GP.
  CountryGlp(): FlagProperties([], sameAs: CountryFra()),

  /// Denmark: DK.
  CountryDnk(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 4 / 37,
        type: ElementType.rectangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Denmark_(construction_sheet).svg",
  ),

  /// Solomon Islands: SB.
  CountrySlb(): FlagProperties(
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
  ),

  /// Paraguay: PY.
  CountryPry(): FlagProperties(
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
  ),

  /// Pitcairn Islands: PN.
  CountryPcn(): FlagProperties(
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
  ),

  /// São Tomé and Príncipe: ST.
  CountryStp(): FlagProperties(
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
        angle: 60, // TODO!
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
  ),

  /// Seychelles: SC.
  CountrySyc(): FlagProperties(
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
  ),

  /// Djibouti: DJ.
  CountryDji(): FlagProperties(
    [
      ColorsProperties(Color(0xff6AB2E7)),
      ColorsProperties(Color(0xff12AD2B)),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        x: -1,
        angle: 66, // TODO!
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
  ),

  /// Equatorial Guinea: GQ.
  CountryGnq(): FlagProperties(
    [
      ColorsProperties(Color(0xff3e9a00)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffe32118)),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xff0073ce)],
        x: -1,
        angle: 30, // TODO!
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
  ),

  /// French Guiana: GF.
  CountryGuf(): FlagProperties([], sameAs: CountryFra()),

  /// South Korea: KR.
  CountryKor(): FlagProperties(
    [ColorsProperties(Color(0xffffffff))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffcd2e3a)],
        heightFactor: 24 / 48,
        type: ElementType.circle,
        children: [
          ElementsProperties([Color(0xff0047a0)]),
        ],
      ),
      ElementsProperties([Color(0xff000000)]), // TODO!
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_South_Korea_(construction_sheet).svg",
  ),

  /// Isle of Man: IM.
  CountryImn(): FlagProperties(
    [ColorsProperties(Color(0xffCF142B))],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff), Color(0xffF9DD16), Color(0xFF000000)],
        heightFactor: 75 / 100,
      ),
    ],
    url: "https://www.vexilla-mundi.com/man/man_sheet.png",
  ),

  /// Kenya: KE.
  CountryKen(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Kenya_(construction_sheet).png",
  ),

  /// Kyrgyzstan: KG.
  CountryKgz(): FlagProperties(
    [ColorsProperties(Color(0xffff0000))],
    aspectRatio: 5 / 3,
    elementsProperties: [
      ElementsProperties([Color(0xffFFED00)], heightFactor: 3 / 5),
    ],
    url: "https://www.vexilla-mundi.com/kyrgyzstan/kyrgyzstan_sheet.png",
  ),

  /// Hong Kong: HK.
  CountryHkg(): FlagProperties(
    [ColorsProperties(Color(0xffec1b2e))],
    elementsProperties: [
      ElementsProperties([Color(0xffffffff)], heightFactor: 18 / 30),
    ],
    url: "https://wikipedia.org/wiki/File:HKSARFlagConstructionSheet_2.svg",
  ),

  /// North Korea: KP.
  CountryPrk(): FlagProperties(
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
  ),

  /// British Indian Ocean Territory: IO.
  CountryIot(): FlagProperties(
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
  ),

  /// Grenada: GD.
  CountryGrd(): FlagProperties(
    [
      ColorsProperties(Color(0xffFFD100)),
      ColorsProperties(Color(0xffEF3340)),
      ColorsProperties(Color(0xff009739)),
    ],
    aspectRatio: 5 / 3,
    url: "https://www.vexilla-mundi.com/grenada/grenada_sheet.png",
  ),

  /// South Georgia: GS.
  CountrySgs(): FlagProperties(
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
  ),

  /// Saudi Arabia: SA.
  CountrySau(): FlagProperties(
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
  ),

  /// Réunion: RE.
  CountryReu(): FlagProperties([], sameAs: CountryFra()),

  /// Saint Pierre and Miquelon: PM.
  CountrySpm(): FlagProperties([], sameAs: CountryFra()),

  /// El Salvador: SV.
  CountrySlv(): FlagProperties(
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
  ),

  /// Serbia: RS.
  CountrySrb(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Serbia_construction_sheet.svg",
  ),

  /// Poland: PL.
  CountryPol(): FlagProperties(
    [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xffdc143c))],
    aspectRatio: 8 / 5,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Poland_(construction_sheet).svg",
  ),

  /// Greece: GR.
  CountryGrc(): FlagProperties(
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
          ElementsProperties([Color(0xffffffff)]),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Greece_(construction_sheet).svg",
  ),

  /// Georgia: GE.
  CountryGeo(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff), ratio: 80),
      ColorsProperties(Color(0xffff0000), ratio: 40),
      ColorsProperties(Color(0xffffffff), ratio: 80),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffff0000)],
        heightFactor: 1,
        widthFactor: 40 / 300,
        type: ElementType.rectangle,
      ),
      ElementsProperties([Color(0xffff0000)], heightFactor: 40 / 200), // TODO!
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Georgia_(construction_sheet).svg",
  ),

  /// India: IN.
  CountryInd(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_India_(construction_sheet).svg",
  ),

  /// Maldives: MV.
  CountryMdv(): FlagProperties(
    [ColorsProperties(Color(0xffd21034))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xff007e3a)],
        heightFactor: 1 / 2,
        widthFactor: 48 / 72,
        type: ElementType.circle,
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
  ),

  /// Liberia: LR.
  CountryLbr(): FlagProperties(
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
  ),

  /// Morocco: MA.
  CountryMar(): FlagProperties(
    [ColorsProperties(Color(0xffc1272d))],
    elementsProperties: [
      ElementsProperties([Color(0xff006233)], heightFactor: 1.9 / 4),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Morocco_(construction_sheet).svg",
  ),

  /// New Zealand: NZ.
  CountryNzl(): FlagProperties(
    [
      ColorsProperties(Color(0xff012169)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffC8102E)),
    ],
    aspectRatio: 2,
    url: "https://wikipedia.org/wiki/File:Flag_of_New_Zealand_construction.svg",
  ),

  /// Australia: AU.
  CountryAus(): FlagProperties(
    [
      ColorsProperties(Color(0xff012169)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffE4002B)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Australia_(construction_sheet).svg",
  ),

  /// Brunei: BN.
  CountryBrn(): FlagProperties(
    [
      ColorsProperties(Color(0xfff7e017)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000000)),
      ColorsProperties(Color(0xffcf1126)),
    ],
    aspectRatio: 2,
    url:
        "https://wikipedia.org/wiki/File:Brunei_Flag_Official_Measurements.jpg",
  ),

  /// Belarus: BY.
  CountryBlr(): FlagProperties(
    [
      ColorsProperties(Color(0xffD22730), ratio: 2),
      ColorsProperties(Color(0xff009739)),
    ],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        heightFactor: 1,
        widthFactor: 2 / 18,
        type: ElementType.rectangle,
        children: [
          ElementsProperties([Color(0xffD22730), Color(0xffffffff)]),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Belarus_(construction_sheet).svg",
  ),

  /// Trinidad and Tobago: TT.
  CountryTto(): FlagProperties(
    [ColorsProperties(Color(0xffe00000))],
    aspectRatio: 5 / 3,
    elementsProperties: [
      ElementsProperties([Color(0xffffffff), Color(0xff000000)]),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Trinidad_and_Tobago_(construction_sheet).svg",
  ),

  /// Uganda: UG.
  CountryUga(): FlagProperties(
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
          ElementsProperties([
            Color(0xff000000),
            Color(0xffFCDC04),
            Color(0xffD90000),
            Color(0xffffffff),
            Color(0xff9ca69c),
          ]),
        ],
      ),
    ],
    url: "https://www.vexilla-mundi.com/uganda/uganda_sheet.png",
  ),

  /// Turks and Caicos Islands: TC.
  CountryTca(): FlagProperties(
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
  ),

  /// Yemen: YE.
  CountryYem(): FlagProperties(
    [
      ColorsProperties(Color(0xffCE1126)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000000)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Yemen_(construction_sheet).svg",
  ),

  /// Cook Islands: CK.
  CountryCok(): FlagProperties(
    [
      ColorsProperties(Color(0xff00205B)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffEF3340)),
    ],
    aspectRatio: 2,
    url: "https://www.vexilla-mundi.com/cook_islands/cook_islands_sheet.png",
  ),

  /// Bolivia: BO.
  CountryBol(): FlagProperties(
    [
      ColorsProperties(Color(0xffDA291C)),
      ColorsProperties(Color(0xffF4E400)),
      ColorsProperties(Color(0xff007A33)),
    ],
    aspectRatio: 22 / 15,
    url: "https://www.vexilla-mundi.com/bolivia/bolivia_sheet.png",
  ),

  /// Austria: AT.
  CountryAut(): FlagProperties(
    [
      ColorsProperties(Color(0xffc8102e)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffc8102e)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Austria_(construction_sheet).svg",
  ),

  /// Lesotho: LS.
  CountryLso(): FlagProperties(
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
  ),

  /// Malawi: MW.
  CountryMwi(): FlagProperties(
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
  ),

  /// Netherlands: NL.
  CountryNld(): FlagProperties(
    [
      ColorsProperties(Color(0xffAD1D25)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff1E4785)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_Netherlands_(construction_sheet).svg",
  ),

  /// Mauritius: MU.
  CountryMus(): FlagProperties(
    [
      ColorsProperties(Color(0xffEB2436)),
      ColorsProperties(Color(0xff131A6D)),
      ColorsProperties(Color(0xffFFD600)),
      ColorsProperties(Color(0xff00A650)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Mauritius_(construction_sheet).svg",
  ),

  /// Ivory Coast: CI.
  CountryCiv(): FlagProperties(
    [
      ColorsProperties(Color(0xffFF8200)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff009A44)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Ivory_Coast_(construction_sheet).svg",
  ),

  /// Bermuda: BM.
  CountryBmu(): FlagProperties(
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
  ),

  /// Belize: BZ.
  CountryBlz(): FlagProperties(
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
            type: ElementType.circle,
          ),
        ],
      ),
    ],
    url: "https://www.vexilla-mundi.com/belize/belize_sheet.png",
  ),

  /// Taiwan: TW.
  CountryTwn(): FlagProperties(
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
  ),

  /// United States: US.
  CountryUsa(): FlagProperties(
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
  ),

  /// United States Virgin Islands: VI.
  CountryVir(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff369443)),
      ColorsProperties(Color(0xfff4c53d)),
      ColorsProperties(Color(0xff0081c6)),
      ColorsProperties(Color(0xffa60032)),
      ColorsProperties(Color(0xff162667)),
      ColorsProperties(Color(0xff010002)),
    ],
    url:
        "https://www.vexilla-mundi.com/virgin_islands/virgin_islands_sheet.png",
  ),

  /// Tuvalu: TV.
  CountryTuv(): FlagProperties(
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
  ),

  /// Saint Barthélemy: BL.
  CountryBlm(): FlagProperties([], sameAs: CountryFra()),

  /// Aruba: AW.
  CountryAbw(): FlagProperties(
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
  ),

  /// Switzerland: CH.
  CountryChe(): FlagProperties(
    [ColorsProperties(Color(0xffff0000))],
    aspectRatio: 1,
    elementsProperties: [
      ElementsProperties([Color(0xffffffff)], heightFactor: 20 / 32),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Switzerland_(construction_sheet).svg",
  ),

  /// Monaco: MC.
  CountryMco(): FlagProperties(
    [ColorsProperties(Color(0xffCE1126)), ColorsProperties(Color(0xffffffff))],
    aspectRatio: 5 / 4,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Monaco_(construction_sheet).svg",
  ),

  /// Malta: MT.
  CountryMlt(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Malta_(construction_sheet).svg",
  ),

  /// Norway: NO.
  CountryNor(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 4 / 22,
        type: ElementType.rectangle,
        children: [
          ElementsProperties(
            [Color(0xff002664)],
            heightFactor: 1,
            widthFactor: 1 / 2,
            type: ElementType.rectangle,
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Norway_(construction_sheet).svg",
  ),

  /// Saint Lucia: LC.
  CountryLca(): FlagProperties(
    [ColorsProperties(Color(0xff65cfff))],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        heightFactor: 0.824,
        widthFactor: 1 / 2,
        angle: 90,
        children: [
          ElementsProperties([Color(0xff000000), Color(0xffffce00)]),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Saint_Lucia_(construction_sheet).svg",
  ),

  /// Madagascar: MG.
  CountryMdg(): FlagProperties([
    ColorsProperties(Color(0xfffc3d32)),
    ColorsProperties(Color(0xff007e3a)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Lithuania: LT.
  CountryLtu(): FlagProperties([
    ColorsProperties(Color(0xff006a44)),
    ColorsProperties(Color(0xffc1272d)),
    ColorsProperties(Color(0xfffdb913)),
  ]),

  /// Northern Mariana Islands: MP.
  CountryMnp(): FlagProperties([
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
  ]),

  /// Andorra: AD.
  CountryAnd(): FlagProperties([
    ColorsProperties(Color(0xffd0103a)),
    ColorsProperties(Color(0xfffedf00)),
    ColorsProperties(Color(0xff0018a8)),
    ColorsProperties(Color(0xffc7b37f)),
    ColorsProperties(Color(0xff703d29)),
    ColorsProperties(Color(0xffd52b1e)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xfffcd900)),
    ColorsProperties(Color(0xff0065bd)),
  ]),

  /// Chile: CL.
  CountryChl(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0039a6)),
    ColorsProperties(Color(0xffd52b1e)),
  ]),

  /// American Samoa: AS.
  CountryAsm(): FlagProperties([
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xffbd1021)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffc221)),
    ColorsProperties(Color(0xff5a3719)),
    ColorsProperties(Color(0xff7b3c20)),
    ColorsProperties(Color(0xffaa5323)),
    ColorsProperties(Color(0xff999999)),
  ]),

  /// Bahrain: BH.
  CountryBhr(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffce1126)),
  ]),

  /// Ukraine: UA.
  CountryUkr(): FlagProperties([
    ColorsProperties(Color(0xffffd700)),
    ColorsProperties(Color(0xff0057b8)),
  ]),

  /// Turkey: TR.
  CountryTur(): FlagProperties([
    ColorsProperties(Color(0xffe30a17)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Mayotte: YT.
  CountryMyt(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000091)),
    ColorsProperties(Color(0xffe1000f)),
  ]),

  /// Chad: TD.
  CountryTcd(): FlagProperties([
    ColorsProperties(Color(0xff002664)),
    ColorsProperties(Color(0xffc60c30)),
    ColorsProperties(Color(0xfffecb00)),
  ]),

  /// Burundi: BI.
  CountryBdi(): FlagProperties([
    ColorsProperties(Color(0xff18b637)),
    ColorsProperties(Color(0xffcf0921)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Argentina: AR.
  CountryArg(): FlagProperties([
    ColorsProperties(Color(0xff74acdf)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xfff6b40e)),
    ColorsProperties(Color(0xff85340a)),
    ColorsProperties(Color(0xff843511)),
  ]),

  /// Cameroon: CM.
  CountryCmr(): FlagProperties([
    ColorsProperties(Color(0xff007a5e)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xfffcd116)),
  ]),

  /// United Arab Emirates: AE.
  CountryAre(): FlagProperties([
    ColorsProperties(Color(0xff00732f)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffff0000)),
  ]),

  /// Czechia: CZ.
  CountryCze(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd7141a)),
    ColorsProperties(Color(0xff11457e)),
  ]),

  /// Martinique: MQ.
  CountryMtq(): FlagProperties([
    ColorsProperties(Color(0xff231f1e)),
    ColorsProperties(Color(0xff00a650)),
    ColorsProperties(Color(0xffef1923)),
  ]),

  /// Luxembourg: LU.
  CountryLux(): FlagProperties([
    ColorsProperties(Color(0xff00a1de)),
    ColorsProperties(Color(0xffed2939)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Saint Martin: MF.
  CountryMaf(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000091)),
    ColorsProperties(Color(0xffe1000f)),
  ]),

  /// Lebanon: LB.
  CountryLbn(): FlagProperties([
    ColorsProperties(Color(0xffee161f)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff00a850)),
  ]),

  /// Moldova: MD.
  CountryMda(): FlagProperties([
    ColorsProperties(Color(0xff00319c)),
    ColorsProperties(Color(0xffffde00)),
    ColorsProperties(Color(0xffde2110)),
    ColorsProperties(Color(0xffff1900)),
    ColorsProperties(Color(0xffa77b3b)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff564dff)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xffda4500)),
    ColorsProperties(Color(0xffcac9c7)),
    ColorsProperties(Color(0xff008500)),
    ColorsProperties(Color(0xff008f00)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Montserrat: MS.
  CountryMsr(): FlagProperties([
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
  ]),

  /// Antigua and Barbuda: AG.
  CountryAtg(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff0072c6)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xfffcd116)),
  ]),

  /// Christmas Island: CX.
  CountryCxr(): FlagProperties([
    ColorsProperties(Color(0xff0021ad)),
    ColorsProperties(Color(0xff1c8a42)),
    ColorsProperties(Color(0xffffc639)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Colombia: CO.
  CountryCol(): FlagProperties([
    ColorsProperties(Color(0xffffe800)),
    ColorsProperties(Color(0xff00148e)),
    ColorsProperties(Color(0xffda0010)),
  ]),

  /// French Southern and Antarctic Lands: TF.
  CountryAtf(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff002395)),
    ColorsProperties(Color(0xffed2939)),
  ]),

  /// Vietnam: VN.
  CountryVnm(): FlagProperties([
    ColorsProperties(Color(0xffda251d)),
    ColorsProperties(Color(0xffffff00)),
  ]),

  /// Zambia: ZM.
  CountryZmb(): FlagProperties([
    ColorsProperties(Color(0xff198a00)),
    ColorsProperties(Color(0xffef7d00)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffde2010)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Togo: TG.
  CountryTgo(): FlagProperties([
    ColorsProperties(Color(0xffffe300)),
    ColorsProperties(Color(0xff118600)),
    ColorsProperties(Color(0xffd80000)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// China: CN.
  CountryChn(): FlagProperties([
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xffee1c25)),
  ]),

  /// Benin: BJ.
  CountryBen(): FlagProperties([
    ColorsProperties(Color(0xff808080)),
    ColorsProperties(Color(0xff319400)),
    ColorsProperties(Color(0xffffd600)),
    ColorsProperties(Color(0xffde2110)),
  ]),

  /// Antarctica: AQ.
  CountryAta(): FlagProperties([
    ColorsProperties(Color(0xff3a7dce)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Cyprus: CY.
  CountryCyp(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff435125)),
    ColorsProperties(Color(0xffd47600)),
  ]),

  /// Afghanistan: AF.
  CountryAfg(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xffbf0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffbd6b00)),
  ]),

  /// Latvia: LV.
  CountryLva(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff981e32)),
  ]),

  /// Oman: OM.
  CountryOmn(): FlagProperties([
    ColorsProperties(Color(0xffef2d29)),
    ColorsProperties(Color(0xff009025)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffef0000)),
    ColorsProperties(Color(0xffef2d28)),
  ]),

  /// Mauritania: MR.
  CountryMrt(): FlagProperties([
    ColorsProperties(Color(0xffcd2a3e)),
    ColorsProperties(Color(0xff006233)),
    ColorsProperties(Color(0xffffc400)),
  ]),

  /// Nicaragua: NI.
  CountryNic(): FlagProperties([
    ColorsProperties(Color(0xff0067c6)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8a400)),
    ColorsProperties(Color(0xff17c0eb)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffff6600)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xff00ff00)),
    ColorsProperties(Color(0xff00ccff)),
    ColorsProperties(Color(0xff0000ff)),
    ColorsProperties(Color(0xff800080)),
    ColorsProperties(Color(0xff510000)),
    ColorsProperties(Color(0xffff2a2a)),
    ColorsProperties(Color(0xff910000)),
    ColorsProperties(Color(0xffff3a3a)),
    ColorsProperties(Color(0xffccd11e)),
    ColorsProperties(Color(0xff97c924)),
    ColorsProperties(Color(0xffede71f)),
    ColorsProperties(Color(0xffc6cb24)),
    ColorsProperties(Color(0xff9ecb34)),
    ColorsProperties(Color(0xff93bc30)),
  ]),

  /// Laos: LA.
  CountryLao(): FlagProperties([
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xff002868)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Montenegro: ME.
  CountryMne(): FlagProperties([
    ColorsProperties(Color(0xffd3ae3b)),
    ColorsProperties(Color(0xffc40308)),
    ColorsProperties(Color(0xffb96b29)),
    ColorsProperties(Color(0xffd4af3a)),
    ColorsProperties(Color(0xff1d5e91)),
    ColorsProperties(Color(0xff6d8c3e)),
    ColorsProperties(Color(0xffc52126)),
  ]),

  /// Marshall Islands: MH.
  CountryMhl(): FlagProperties([
    ColorsProperties(Color(0xff3b5aa3)),
    ColorsProperties(Color(0xffe2ae57)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Cocos (Keeling) Islands: CC.
  CountryCck(): FlagProperties([
    ColorsProperties(Color(0xff008000)),
    ColorsProperties(Color(0xffffe000)),
    ColorsProperties(Color(0xff802000)),
    ColorsProperties(Color(0xff7b3100)),
  ]),

  /// Bulgaria: BG.
  CountryBgr(): FlagProperties([
    ColorsProperties(Color(0xffd62612)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff00966e)),
  ]),

  /// Tajikistan: TJ.
  CountryTjk(): FlagProperties([
    ColorsProperties(Color(0xff006600)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xfff8c300)),
  ]),

  /// Vanuatu: VU.
  CountryVut(): FlagProperties([
    ColorsProperties(Color(0xff009543)),
    ColorsProperties(Color(0xffd21034)),
    ColorsProperties(Color(0xfffdce12)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Wallis and Futuna: WF.
  CountryWlf(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000091)),
    ColorsProperties(Color(0xffe1000f)),
  ]),

  /// Uruguay: UY.
  CountryUry(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0038a8)),
    ColorsProperties(Color(0xfffcd116)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// South Africa: ZA.
  CountryZaf(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff000c8a)),
    ColorsProperties(Color(0xffe1392d)),
    ColorsProperties(Color(0xffffb915)),
    ColorsProperties(Color(0xff007847)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Zimbabwe: ZW.
  CountryZwe(): FlagProperties([
    ColorsProperties(Color(0xff0000ff)),
    ColorsProperties(Color(0xff006400)),
    ColorsProperties(Color(0xffffd200)),
    ColorsProperties(Color(0xffd40000)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffcc00)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Saint Vincent and the Grenadines: VC.
  CountryVct(): FlagProperties([
    ColorsProperties(Color(0xfff4f100)),
    ColorsProperties(Color(0xff199a00)),
    ColorsProperties(Color(0xff0058aa)),
  ]),

  /// Tokelau: TK.
  CountryTkl(): FlagProperties([
    ColorsProperties(Color(0xff00247d)),
    ColorsProperties(Color(0xfffed100)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Burkina Faso: BF.
  CountryBfa(): FlagProperties([
    ColorsProperties(Color(0xffde0000)),
    ColorsProperties(Color(0xff35a100)),
    ColorsProperties(Color(0xfffff300)),
  ]),

  /// Caribbean Netherlands: BQ.
  CountryBes(): FlagProperties([
    ColorsProperties(Color(0xff21468b)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffae1c28)),
  ]),

  /// Cuba: CU.
  CountryCub(): FlagProperties([
    ColorsProperties(Color(0xff002a8f)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcb1515)),
  ]),

  /// Niger: NE.
  CountryNer(): FlagProperties([
    ColorsProperties(Color(0xff0db02b)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffe05206)),
  ]),

  /// Nauru: NR.
  CountryNru(): FlagProperties([
    ColorsProperties(Color(0xff002170)),
    ColorsProperties(Color(0xffffb20d)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// North Macedonia: MK.
  CountryMkd(): FlagProperties([
    ColorsProperties(Color(0xffd20000)),
    ColorsProperties(Color(0xffffe600)),
  ]),

  /// Nepal: NP.
  CountryNpl(): FlagProperties([
    ColorsProperties(Color(0xffce0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000063)),
  ]),

  /// Nigeria: NG.
  CountryNga(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff008753)),
  ]),

  /// Bahamas: BS.
  CountryBhs(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffe900)),
    ColorsProperties(Color(0xff08ced6)),
    ColorsProperties(Color(0xff000001)),
  ]),

  /// Curaçao: CW.
  CountryCuw(): FlagProperties([
    ColorsProperties(Color(0xff002b7f)),
    ColorsProperties(Color(0xfff9e814)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Bangladesh: BD.
  CountryBgd(): FlagProperties([
    ColorsProperties(Color(0xff006a4e)),
    ColorsProperties(Color(0xfff42a41)),
  ]),

  /// United States Minor Outlying Islands: UM.
  CountryUmi(): FlagProperties([
    ColorsProperties(Color(0xffbd3d44)),
    ColorsProperties(Color(0xff192f5d)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Vatican City: VA.
  CountryVat(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffe000)),
    ColorsProperties(Color(0xffce9d09)),
    ColorsProperties(Color(0xffcccccc)),
    ColorsProperties(Color(0xfffa0204)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Uzbekistan: UZ.
  CountryUzb(): FlagProperties([
    ColorsProperties(Color(0xff1eb53a)),
    ColorsProperties(Color(0xff0099b5)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Kosovo: XK.
  CountryUnk(): FlagProperties([
    ColorsProperties(Color(0xff244aa5)),
    ColorsProperties(Color(0xffd0a650)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Samoa: WS.
  CountryWsm(): FlagProperties([
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xff002b7f)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Thailand: TH.
  CountryTha(): FlagProperties([
    ColorsProperties(Color(0xfff4f5f8)),
    ColorsProperties(Color(0xff2d2a4a)),
    ColorsProperties(Color(0xffa51931)),
  ]),

  /// Canada: CA.
  CountryCan(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd52b1e)),
  ]),

  /// Belgium: BE.
  CountryBel(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffd90c)),
    ColorsProperties(Color(0xfff31830)),
  ]),

  /// Cape Verde: CV.
  CountryCpv(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff081873)),
    ColorsProperties(Color(0xffde3929)),
    ColorsProperties(Color(0xffffce08)),
  ]),

  /// Anguilla: AI.
  CountryAia(): FlagProperties([
    ColorsProperties(Color(0xffff9900)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff99ccff)),
    ColorsProperties(Color(0xfffdc301)),
    ColorsProperties(Color(0xffc8102e)),
  ]),

  /// Brazil: BR.
  CountryBra(): FlagProperties([
    ColorsProperties(Color(0xff229e45)),
    ColorsProperties(Color(0xfff8e509)),
    ColorsProperties(Color(0xff2b49a3)),
    ColorsProperties(Color(0xffffffef)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff309e3a)),
    ColorsProperties(Color(0xfff7ffff)),
  ]),

  /// Libya: LY.
  CountryLby(): FlagProperties([
    ColorsProperties(Color(0xff239e46)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffe70013)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Norfolk Island: NF.
  CountryNfk(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff198200)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Malaysia: MY.
  CountryMys(): FlagProperties([
    ColorsProperties(Color(0xffcc0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xffffcc00)),
  ]),

  /// Mongolia: MN.
  CountryMng(): FlagProperties([
    ColorsProperties(Color(0xffffd900)),
    ColorsProperties(Color(0xffda2032)),
    ColorsProperties(Color(0xff0066b3)),
  ]),

  /// Niue: NU.
  CountryNiu(): FlagProperties([
    ColorsProperties(Color(0xfffedd00)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
  ]),

  /// Azerbaijan: AZ.
  CountryAze(): FlagProperties([
    ColorsProperties(Color(0xff3f9c35)),
    ColorsProperties(Color(0xffed2939)),
    ColorsProperties(Color(0xff00b9e4)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Bosnia and Herzegovina: BA.
  CountryBih(): FlagProperties([
    ColorsProperties(Color(0xff000099)),
    ColorsProperties(Color(0xffffcc00)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Bouvet Island: BV.
  CountryBvt(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd72828)),
    ColorsProperties(Color(0xff003897)),
  ]),

  /// Armenia: AM.
  CountryArm(): FlagProperties([
    ColorsProperties(Color(0xffd90012)),
    ColorsProperties(Color(0xff0033a0)),
    ColorsProperties(Color(0xfff2a800)),
  ]),

  /// Costa Rica: CR.
  CountryCri(): FlagProperties([
    ColorsProperties(Color(0xff0000b4)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd90000)),
  ]),

  /// Timor-Leste: TL.
  CountryTls(): FlagProperties([
    ColorsProperties(Color(0xffcb000f)),
    ColorsProperties(Color(0xfff8c00c)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Turkmenistan: TM.
  CountryTkm(): FlagProperties([
    ColorsProperties(Color(0xff00843d)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd22630)),
    ColorsProperties(Color(0xff383739)),
    ColorsProperties(Color(0xffffc72c)),
  ]),

  /// Tanzania: TZ.
  CountryTza(): FlagProperties([
    ColorsProperties(Color(0xff0099ff)),
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffff00)),
  ]),

  /// Venezuela: VE.
  CountryVen(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffcf142b)),
    ColorsProperties(Color(0xff00247d)),
    ColorsProperties(Color(0xffffcc00)),
  ]),

  /// Albania: AL.
  CountryAlb(): FlagProperties([
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff000001)),
  ]),

  /// Botswana: BW.
  CountryBwa(): FlagProperties([
    ColorsProperties(Color(0xff00cbff)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000001)),
  ]),

  /// DR Congo: CD.
  CountryCod(): FlagProperties([
    ColorsProperties(Color(0xff007fff)),
    ColorsProperties(Color(0xfff7d618)),
    ColorsProperties(Color(0xffce1021)),
  ]),

  /// Sri Lanka: LK.
  CountryLka(): FlagProperties([
    ColorsProperties(Color(0xffffb700)),
    ColorsProperties(Color(0xffff5b00)),
    ColorsProperties(Color(0xff005641)),
    ColorsProperties(Color(0xff8d2029)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Macau: MO.
  CountryMac(): FlagProperties([
    ColorsProperties(Color(0xff00785e)),
    ColorsProperties(Color(0xfffbd116)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Mexico: MX.
  CountryMex(): FlagProperties([
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff006847)),
    ColorsProperties(Color(0xfffcca3e)),
    ColorsProperties(Color(0xffaa8c30)),
    ColorsProperties(Color(0xff9ca168)),
    ColorsProperties(Color(0xff717732)),
    ColorsProperties(Color(0xff016848)),
    ColorsProperties(Color(0xffcd202a)),
    ColorsProperties(Color(0xff30c2dc)),
    ColorsProperties(Color(0xfff8c83c)),
    ColorsProperties(Color(0xfff9aa51)),
    ColorsProperties(Color(0xff953220)),
    ColorsProperties(Color(0xff231f20)),
    ColorsProperties(Color(0xff8cbebf)),
    ColorsProperties(Color(0xff0c8489)),
    ColorsProperties(Color(0xff04534e)),
    ColorsProperties(Color(0xffe92736)),
    ColorsProperties(Color(0xfff7e204)),
    ColorsProperties(Color(0xffa8ac71)),
    ColorsProperties(Color(0xfff1a720)),
    ColorsProperties(Color(0xff78732e)),
    ColorsProperties(Color(0xffc6c7a6)),
    ColorsProperties(Color(0xff1c242f)),
    ColorsProperties(Color(0xffaf7029)),
    ColorsProperties(Color(0xff816c2a)),
    ColorsProperties(Color(0xfffcca3d)),
    ColorsProperties(Color(0xff6f5b24)),
    ColorsProperties(Color(0xff404118)),
    ColorsProperties(Color(0xffab6d29)),
    ColorsProperties(Color(0xff4d2a15)),
    ColorsProperties(Color(0xffd2a567)),
    ColorsProperties(Color(0xff8f4620)),
    ColorsProperties(Color(0xff202020)),
    ColorsProperties(Color(0xff202220)),
    ColorsProperties(Color(0xff4b4139)),
    ColorsProperties(Color(0xff904720)),
    ColorsProperties(Color(0xff803f1d)),
    ColorsProperties(Color(0xffb07229)),
    ColorsProperties(Color(0xff5c3a1d)),
    ColorsProperties(Color(0xff8b441f)),
    ColorsProperties(Color(0xff312317)),
    ColorsProperties(Color(0xff1e2121)),
    ColorsProperties(Color(0xff5c3818)),
    ColorsProperties(Color(0xff171717)),
    ColorsProperties(Color(0xff45392d)),
    ColorsProperties(Color(0xffdbad6c)),
    ColorsProperties(Color(0xff874f20)),
    ColorsProperties(Color(0xffb27129)),
    ColorsProperties(Color(0xff6c3f18)),
    ColorsProperties(Color(0xfff16e16)),
    ColorsProperties(Color(0xffd5d3ca)),
    ColorsProperties(Color(0xff6c4119)),
    ColorsProperties(Color(0xffbf802d)),
    ColorsProperties(Color(0xfff9c83a)),
    ColorsProperties(Color(0xfffcf3d8)),
    ColorsProperties(Color(0xfffdeaaf)),
    ColorsProperties(Color(0xff513625)),
    ColorsProperties(Color(0xff8b5122)),
    ColorsProperties(Color(0xff977c2e)),
    ColorsProperties(Color(0xff0872a7)),
  ]),

  /// New Caledonia: NC.
  CountryNcl(): FlagProperties([
    ColorsProperties(Color(0xff009543)),
    ColorsProperties(Color(0xffed4135)),
    ColorsProperties(Color(0xff0035ad)),
    ColorsProperties(Color(0xfffae600)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Namibia: NA.
  CountryNam(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff3662a2)),
    ColorsProperties(Color(0xff38a100)),
    ColorsProperties(Color(0xffc70000)),
    ColorsProperties(Color(0xffffe700)),
  ]),

  /// Mozambique: MZ.
  CountryMoz(): FlagProperties([
    ColorsProperties(Color(0xff009a00)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffca00)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Liechtenstein: LI.
  CountryLie(): FlagProperties([
    ColorsProperties(Color(0xff002b7f)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xffffd83d)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Myanmar: MM.
  CountryMmr(): FlagProperties([
    ColorsProperties(Color(0xfffecb00)),
    ColorsProperties(Color(0xff34b233)),
    ColorsProperties(Color(0xffea2839)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Central African Republic: CF.
  CountryCaf(): FlagProperties([
    ColorsProperties(Color(0xff0000ff)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xff009a00)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffff0000)),
  ]),

  /// Barbados: BB.
  CountryBrb(): FlagProperties([
    ColorsProperties(Color(0xff00267f)),
    ColorsProperties(Color(0xffffc726)),
    ColorsProperties(Color(0xff000001)),
  ]),

  /// British Virgin Islands: VG.
  CountryVgb(): FlagProperties([
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff006129)),
    ColorsProperties(Color(0xffffc72c)),
    ColorsProperties(Color(0xffffc6b5)),
    ColorsProperties(Color(0xff9c5100)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Tonga: TO.
  CountryTon(): FlagProperties([
    ColorsProperties(Color(0xffc10000)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Tunisia: TN.
  CountryTun(): FlagProperties([
    ColorsProperties(Color(0xffe70013)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Angola: AO.
  CountryAgo(): FlagProperties([
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffec00)),
    ColorsProperties(Color(0xffffee00)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Bhutan: BT.
  CountryBtn(): FlagProperties([
    ColorsProperties(Color(0xffffd520)),
    ColorsProperties(Color(0xffff4e12)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Åland Islands: AX.
  CountryAla(): FlagProperties([
    ColorsProperties(Color(0xff0053a5)),
    ColorsProperties(Color(0xffffce00)),
    ColorsProperties(Color(0xffd21034)),
  ]),

  /// Republic of the Congo: CG.
  CountryCog(): FlagProperties([
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xff00ca00)),
    ColorsProperties(Color(0xffff0000)),
  ]),

  /// Mali: ML.
  CountryMli(): FlagProperties([
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff009a00)),
    ColorsProperties(Color(0xffffff00)),
  ]),

  /// Jordan: JO.
  CountryJor(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xffff0000)),
  ]),

  /// Italy: IT.
  CountryIta(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009246)),
    ColorsProperties(Color(0xffce2b37)),
  ]),

  /// Ghana: GH.
  CountryGha(): FlagProperties([
    ColorsProperties(Color(0xff006b3f)),
    ColorsProperties(Color(0xfffcd116)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xff000001)),
  ]),

  /// San Marino: SM.
  CountrySmr(): FlagProperties([
    ColorsProperties(Color(0xff19b6ef)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffdd00)),
    ColorsProperties(Color(0xff4fd46b)),
    ColorsProperties(Color(0xff65c7ff)),
    ColorsProperties(Color(0xff8fc753)),
    ColorsProperties(Color(0xffe40000)),
    ColorsProperties(Color(0xffc76e2e)),
    ColorsProperties(Color(0xffffe100)),
    ColorsProperties(Color(0xff9d4916)),
    ColorsProperties(Color(0xffb97700)),
    ColorsProperties(Color(0xff006800)),
    ColorsProperties(Color(0xff7d6c00)),
    ColorsProperties(Color(0xff3a9d4f)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xffac0000)),
    ColorsProperties(Color(0xffe9bf00)),
    ColorsProperties(Color(0xff68300e)),
    ColorsProperties(Color(0xffa9a9a9)),
    ColorsProperties(Color(0xffa8a8a8)),
    ColorsProperties(Color(0xff004100)),
    ColorsProperties(Color(0xff00a400)),
  ]),

  /// Panama: PA.
  CountryPan(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffdb0000)),
    ColorsProperties(Color(0xff0000ab)),
    ColorsProperties(Color(0xffd80000)),
  ]),

  /// Eswatini: SZ.
  CountrySwz(): FlagProperties([
    ColorsProperties(Color(0xff3e5eb9)),
    ColorsProperties(Color(0xffffd900)),
    ColorsProperties(Color(0xffb10c0c)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffa70000)),
    ColorsProperties(Color(0xff333333)),
    ColorsProperties(Color(0xffb3b3b3)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Palau: PW.
  CountryPlw(): FlagProperties([
    ColorsProperties(Color(0xff4aadd6)),
    ColorsProperties(Color(0xffffde00)),
  ]),

  /// Sierra Leone: SL.
  CountrySle(): FlagProperties([
    ColorsProperties(Color(0xff0000cd)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff00cd00)),
  ]),

  /// Germany: DE.
  CountryDeu(): FlagProperties([
    ColorsProperties(Color(0xffffcc00)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffff0000)),
  ]),

  /// Gibraltar: GI.
  CountryGib(): FlagProperties([
    ColorsProperties(Color(0xffda000c)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xfff8d80e)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Micronesia: FM.
  CountryFsm(): FlagProperties([
    ColorsProperties(Color(0xff6797d6)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Cambodia: KH.
  CountryKhm(): FlagProperties([
    ColorsProperties(Color(0xff032ea1)),
    ColorsProperties(Color(0xffe00025)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Ethiopia: ET.
  CountryEth(): FlagProperties([
    ColorsProperties(Color(0xffffc621)),
    ColorsProperties(Color(0xffef2118)),
    ColorsProperties(Color(0xff298c08)),
    ColorsProperties(Color(0xff006bc6)),
  ]),

  /// Faroe Islands: FO.
  CountryFro(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff003897)),
    ColorsProperties(Color(0xffd72828)),
  ]),

  /// Ecuador: EC.
  CountryEcu(): FlagProperties([
    ColorsProperties(Color(0xffffe800)),
    ColorsProperties(Color(0xff00148e)),
    ColorsProperties(Color(0xffda0010)),
    ColorsProperties(Color(0xff808080)),
    ColorsProperties(Color(0xffffdf00)),
    ColorsProperties(Color(0xff0000c4)),
    ColorsProperties(Color(0xffe10000)),
    ColorsProperties(Color(0xff005b00)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffcececc)),
    ColorsProperties(Color(0xff908f8a)),
    ColorsProperties(Color(0xffb74d00)),
    ColorsProperties(Color(0xffa7cfff)),
    ColorsProperties(Color(0xffafff7b)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xfffede00)),
    ColorsProperties(Color(0xff38a9f9)),
    ColorsProperties(Color(0xffb7e1ff)),
    ColorsProperties(Color(0xff984000)),
    ColorsProperties(Color(0xff812e00)),
    ColorsProperties(Color(0xff000000)),
    ColorsProperties(Color(0xff772600)),
    ColorsProperties(Color(0xff782600)),
  ]),

  /// Senegal: SN.
  CountrySen(): FlagProperties([
    ColorsProperties(Color(0xff0b7226)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xffbc0000)),
  ]),

  /// Syria: SY.
  CountrySyr(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xff007a3d)),
  ]),

  /// Sint Maarten: SX.
  CountrySxm(): FlagProperties([
    ColorsProperties(Color(0xffed2939)),
    ColorsProperties(Color(0xff002395)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff80cfe1)),
    ColorsProperties(Color(0xff7e7e7e)),
    ColorsProperties(Color(0xff009fc5)),
    ColorsProperties(Color(0xffbc715f)),
    ColorsProperties(Color(0xff008737)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Portugal: PT.
  CountryPrt(): FlagProperties([
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff006600)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff003399)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Somalia: SO.
  CountrySom(): FlagProperties([
    ColorsProperties(Color(0xff40a6ff)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Jamaica: JM.
  CountryJam(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xffffcc00)),
  ]),

  /// Croatia: HR.
  CountryHrv(): FlagProperties([
    ColorsProperties(Color(0xff171796)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xff0093dd)),
    ColorsProperties(Color(0xfff7db17)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Kiribati: KI.
  CountryKir(): FlagProperties([
    ColorsProperties(Color(0xffe73e2d)),
    ColorsProperties(Color(0xfffec74a)),
    ColorsProperties(Color(0xff005989)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffc84b)),
    ColorsProperties(Color(0xffd8aa3f)),
    ColorsProperties(Color(0xffd9a43e)),
  ]),

  /// Kazakhstan: KZ.
  CountryKaz(): FlagProperties([
    ColorsProperties(Color(0xff00abc2)),
    ColorsProperties(Color(0xffffec2d)),
  ]),

  /// Ireland: IE.
  CountryIrl(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009a49)),
    ColorsProperties(Color(0xffff7900)),
  ]),

  /// Comoros: KM.
  CountryCom(): FlagProperties([
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffbe0027)),
    ColorsProperties(Color(0xff3b5aa3)),
    ColorsProperties(Color(0xff239e46)),
  ]),

  /// Iran: IR.
  CountryIrn(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffda0000)),
    ColorsProperties(Color(0xff239f40)),
    ColorsProperties(Color(0xffd90000)),
    ColorsProperties(Color(0xff239e3f)),
  ]),

  /// Guyana: GY.
  CountryGuy(): FlagProperties([
    ColorsProperties(Color(0xff399408)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffffde08)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffde2110)),
  ]),

  /// Guinea: GN.
  CountryGin(): FlagProperties([
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffffff00)),
    ColorsProperties(Color(0xff009900)),
  ]),

  /// Fiji: FJ.
  CountryFji(): FlagProperties([
    ColorsProperties(Color(0xff68bfe5)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd21034)),
    ColorsProperties(Color(0xffffd100)),
    ColorsProperties(Color(0xff00a651)),
    ColorsProperties(Color(0xff964b36)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xfffff200)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Papua New Guinea: PG.
  CountryPng(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffffcc00)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Slovakia: SK.
  CountrySvk(): FlagProperties([
    ColorsProperties(Color(0xffee1c25)),
    ColorsProperties(Color(0xff0b4ea2)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Romania: RO.
  CountryRou(): FlagProperties([
    ColorsProperties(Color(0xff00319c)),
    ColorsProperties(Color(0xffffde00)),
    ColorsProperties(Color(0xffde2110)),
  ]),

  /// Svalbard and Jan Mayen: SJ.
  CountrySjm(): FlagProperties([
    ColorsProperties(Color(0xffef2b2d)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff002868)),
  ]),

  /// French Polynesia: PF.
  CountryPyf(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff083d9c)),
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffef7d08)),
    ColorsProperties(Color(0xffde2010)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Falkland Islands: FK.
  CountryFlk(): FlagProperties([
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
  ]),

  /// Egypt: EG.
  CountryEgy(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xffc09300)),
  ]),

  /// Iceland: IS.
  CountryIsl(): FlagProperties([
    ColorsProperties(Color(0xff003897)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd72828)),
  ]),

  /// Indonesia: ID.
  CountryIdn(): FlagProperties([
    ColorsProperties(Color(0xffe70011)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Cayman Islands: KY.
  CountryCym(): FlagProperties([
    ColorsProperties(Color(0xff000066)),
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
    ColorsProperties(Color(0xfffcea83)),
    ColorsProperties(Color(0xff00493d)),
    ColorsProperties(Color(0xff073163)),
    ColorsProperties(Color(0xfff9d050)),
    ColorsProperties(Color(0xff059334)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff0b50a0)),
    ColorsProperties(Color(0xff024919)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Iraq: IQ.
  CountryIrq(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffce1126)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff007a3d)),
  ]),

  /// Saint Kitts and Nevis: KN.
  CountryKna(): FlagProperties([
    ColorsProperties(Color(0xffffe900)),
    ColorsProperties(Color(0xff35a100)),
    ColorsProperties(Color(0xffc70000)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Hungary: HU.
  CountryHun(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff388d00)),
    ColorsProperties(Color(0xffd43516)),
  ]),

  /// Estonia: EE.
  CountryEst(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff1791ff)),
  ]),

  /// Eritrea: ER.
  CountryEri(): FlagProperties([
    ColorsProperties(Color(0xffbe0027)),
    ColorsProperties(Color(0xffb4d7f4)),
    ColorsProperties(Color(0xff239e46)),
    ColorsProperties(Color(0xfff3e295)),
  ]),

  /// Finland: FI.
  CountryFin(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff002f6c)),
  ]),

  /// Gambia: GM.
  CountryGmb(): FlagProperties([
    ColorsProperties(Color(0xffff0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff000099)),
    ColorsProperties(Color(0xff009900)),
  ]),

  /// Saint Helena, Ascension and Tristan da Cunha: SH.
  CountryShn(): FlagProperties([
    ColorsProperties(Color(0xff012169)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffc8102e)),
  ]),

  /// Palestine: PS.
  CountryPse(): FlagProperties([
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff009900)),
    ColorsProperties(Color(0xffff0000)),
  ]),

  /// Puerto Rico: PR.
  CountryPri(): FlagProperties([
    ColorsProperties(Color(0xffed0000)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff0050f0)),
  ]),

  /// Slovenia: SI.
  CountrySvn(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd50000)),
    ColorsProperties(Color(0xff0000bf)),
    ColorsProperties(Color(0xffffdf00)),
  ]),

  /// Peru: PE.
  CountryPer(): FlagProperties([
    ColorsProperties(Color(0xffd91023)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Qatar: QA.
  CountryQat(): FlagProperties([
    ColorsProperties(Color(0xff8d1b3d)),
    ColorsProperties(Color(0xffffffff)),
  ]),

  /// Greenland: GL.
  CountryGrl(): FlagProperties([
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xffd00c33)),
  ]),

  /// Spain: ES.
  CountryEsp(): FlagProperties([
    ColorsProperties(Color(0xffaa151b)),
    ColorsProperties(Color(0xfff1bf00)),
    ColorsProperties(Color(0xffad1519)),
    ColorsProperties(Color(0xffc8b100)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff058e6e)),
    ColorsProperties(Color(0xff005bbf)),
    ColorsProperties(Color(0xffcccccc)),
    ColorsProperties(Color(0xffc7b500)),
    ColorsProperties(Color(0xffdb4446)),
    ColorsProperties(Color(0xffed72aa)),
    ColorsProperties(Color(0xffffd691)),
    ColorsProperties(Color(0xff0039f0)),
    ColorsProperties(Color(0xff000000)),
  ]),

  /// Haiti: HT.
  CountryHti(): FlagProperties([
    ColorsProperties(Color(0xffd21034)),
    ColorsProperties(Color(0xff00209f)),
    ColorsProperties(Color(0xfff1b517)),
    ColorsProperties(Color(0xffffffff)),
    ColorsProperties(Color(0xff016a16)),
    ColorsProperties(Color(0xff0a328c)),
    ColorsProperties(Color(0xffd20014)),
    ColorsProperties(Color(0xff503200)),
    ColorsProperties(Color(0xff000001)),
    ColorsProperties(Color(0xff000000)),
  ]),
};
