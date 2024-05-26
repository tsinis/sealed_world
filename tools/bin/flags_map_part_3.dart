import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

import "colors_extractor.dart";

// ignore: prefer-static-class, temporary map.
const flags3 = {
  /// Åland Islands: AX.
  CountryAla(): FlagProperties(
    [
      ColorsProperties(Color(0xff0064AD), ratio: 60),
      ColorsProperties(Color(0xffFFD300), ratio: 15),
      ColorsProperties(Color(0xffDA0E15), ratio: 20),
      ColorsProperties(Color(0xffFFD300), ratio: 15),
      ColorsProperties(Color(0xff0064AD), ratio: 60),
    ],
    aspectRatio: 26 / 17,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffFFD300)],
        x: -0.375,
        heightFactor: 1,
        widthFactor: 50 / 260,
        type: ElementType.rectangle,
        children: [
          ElementsProperties(
            [Color(0xffDA0E15)],
            heightFactor: 1,
            widthFactor: 20 / 50,
            type: ElementType.rectangle,
          ),
        ],
      ),
    ],
    url: "https://www.vexilla-mundi.com/aland/aland_sheet.png",
  ),

  /// Republic of the Congo: CG.
  CountryCog(): FlagProperties(
    [ColorsProperties(Color(0xffFBDE4A))],
    isHorizontalStriped: null,
    elementsProperties: [
      ElementsProperties(
        [Color(0xff009543)],
        x: -1,
        heightFactor: 1,
        widthFactor: 2 / 3,
        angle: 90,
        type: ElementType.triangle,
      ),
      ElementsProperties(
        [Color(0xffDC241F)],
        x: 1,
        heightFactor: 1,
        widthFactor: 2 / 3,
        angle: -90,
        type: ElementType.triangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_Republic_of_the_Congo_(construction_sheet).svg",
  ),

  /// Mali: ML.
  CountryMli(): FlagProperties(
    [
      ColorsProperties(Color(0xff14B53A)),
      ColorsProperties(Color(0xffFCD116)),
      ColorsProperties(Color(0xffCE1126)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Mali_(construction_sheet).svg",
  ),

  /// Jordan: JO.
  CountryJor(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 1 / 2,
        type: ElementType.triangle,
        children: [
          ElementsProperties(
            [Color(0xffffffff)],
            heightFactor: 6 / 42,
            type: ElementType.sun,
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Jordan_(construction_sheet).svg",
  ),

  /// Italy: IT.
  CountryIta(): FlagProperties(
    [
      ColorsProperties(Color(0xff008C45)),
      ColorsProperties(Color(0xffF4F5F0)),
      ColorsProperties(Color(0xffCD212A)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Italy_(construction_sheet).svg",
  ),

  /// Ghana: GH.
  CountryGha(): FlagProperties(
    [
      ColorsProperties(Color(0xffCF0921)),
      ColorsProperties(Color(0xffFCD20F)),
      ColorsProperties(Color(0xff006B3D)),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xff000000)],
        heightFactor: 1 / 3,
        type: ElementType.star,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Ghana_(construction_sheet).svg",
  ),

  /// San Marino: SM.
  CountrySmr(): FlagProperties(
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
  ),

  /// Panama: PA.
  CountryPan(): FlagProperties(
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
        type: ElementType.rectangle,
        children: [
          ElementsProperties(
            [Color(0xff072357)],
            heightFactor: 2.21 / 4,
            type: ElementType.star,
          ),
        ],
      ),
      ElementsProperties(
        [Color(0xffffffff)],
        x: 1,
        y: 1,
        heightFactor: 1 / 2,
        widthFactor: 1 / 2,
        type: ElementType.rectangle,
        children: [
          ElementsProperties(
            [Color(0xffDA121A)],
            heightFactor: 2.21 / 4,
            type: ElementType.star,
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Panama_(construction_sheet).svg",
  ),

  /// Eswatini: SZ.
  CountrySwz(): FlagProperties(
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
  ),

  /// Palau: PW.
  CountryPlw(): FlagProperties(
    [ColorsProperties(Color(0xff4aadd6))],
    aspectRatio: 8 / 5,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffde00)],
        x: -0.125,
        heightFactor: 6 / 10,
        type: ElementType.circle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Palau_(construction_sheet).svg",
  ),

  /// Sierra Leone: SL.
  CountrySle(): FlagProperties(
    [
      ColorsProperties(Color(0xff1EB53A)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff0072C6)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Sierra_Leone_(construction_sheet).svg",
  ),

  /// Germany: DE.
  CountryDeu(): FlagProperties(
    [
      ColorsProperties(Color(0xff000000)),
      ColorsProperties(Color(0xffff0000)),
      ColorsProperties(Color(0xffffcc00)),
    ],
    aspectRatio: 5 / 3,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Germany_(construction_sheet).svg",
  ),

  /// Gibraltar: GI.
  CountryGib(): FlagProperties(
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
  ),

  /// Micronesia: FM.
  CountryFsm(): FlagProperties(
    [ColorsProperties(Color(0xff6797d6))],
    aspectRatio: 10 / 19,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        y: -0.6,
        heightFactor: 4 / 20,
        type: ElementType.star,
      ),
      ElementsProperties(
        [Color(0xffffffff)],
        y: 0.6,
        heightFactor: 4 / 20,
        angle: -20,
        type: ElementType.star,
      ),
      ElementsProperties(
        [Color(0xffffffff)],
        x: 0.6,
        heightFactor: 4 / 20,
        angle: 20,
        type: ElementType.star,
      ),
      ElementsProperties(
        [Color(0xffffffff)],
        x: -0.6,
        heightFactor: 4 / 20,
        angle: -20,
        type: ElementType.star,
      ),
    ],
    url: "https://www.vexilla-mundi.com/micronesia/micronesia_sheet.png",
  ),

  /// Cambodia: KH.
  CountryKhm(): FlagProperties(
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
        type: ElementType.star,
      ),
    ],
    url: "https://www.vexilla-mundi.com/cambodia/cambodia_sheet.png",
  ),

  /// Ethiopia: ET.
  CountryEth(): FlagProperties(
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
        type: ElementType.circle,
        children: [
          ElementsProperties([Color(0xffffc621)], heightFactor: 32 / 40),
        ],
      ),
    ],
    url: "https://www.vexilla-mundi.com/ethiopia/ethiopia_sheet.png",
  ),

  /// Faroe Islands: FO.
  CountryFro(): FlagProperties(
    [
      ColorsProperties(Color(0xffFFFFFF), ratio: 6),
      ColorsProperties(Color(0xff005EB9)),
      ColorsProperties(Color(0xffEF303E), ratio: 2),
      ColorsProperties(Color(0xff005EB9)),
      ColorsProperties(Color(0xffFFFFFF), ratio: 6),
    ],
    aspectRatio: 11 / 8,
    elementsProperties: [
      ElementsProperties(
        [Color(0xff005EB9)],
        x: -0.375,
        heightFactor: 1,
        widthFactor: 4 / 22,
        type: ElementType.rectangle,
        children: [
          ElementsProperties(
            [Color(0xffEF303E)],
            heightFactor: 1,
            widthFactor: 1 / 2,
            type: ElementType.rectangle,
          ),
        ],
      ),
    ],
    url: "https://www.vexilla-mundi.com/faroe_islands/faroe_islands_sheet.png",
  ),

  /// Ecuador: EC.
  CountryEcu(): FlagProperties(
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
  ),

  /// Senegal: SN.
  CountrySen(): FlagProperties(
    [
      ColorsProperties(Color(0xff0b7226)),
      ColorsProperties(Color(0xffffff00)),
      ColorsProperties(Color(0xffbc0000)),
    ],
    isHorizontalStriped: false,
    elementsProperties: [
      ElementsProperties(
        [Color(0xff0b7226)],
        heightFactor: 4 / 12,
        type: ElementType.star,
      ),
    ],
    url: "https://www.vexilla-mundi.com/senegal/senegal_sheet.png",
  ),

  /// Syria: SY.
  CountrySyr(): FlagProperties(
    [
      ColorsProperties(Color(0xffce1126)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000000)),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xff007a3d)],
        x: -0.2,
        heightFactor: 3 / 12,
        type: ElementType.star,
      ),
      ElementsProperties(
        [Color(0xff007a3d)],
        x: 0.2,
        heightFactor: 3 / 12,
        type: ElementType.star,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Approximate_Construction_of_the_Flag_of_Syria.svg",
  ),

  /// Sint Maarten: SX.
  CountrySxm(): FlagProperties(
    [ColorsProperties(Color(0xffed2939)), ColorsProperties(Color(0xff002395))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        x: -1,
        heightFactor: 1,
        widthFactor: 4 / 9,
        type: ElementType.triangle,
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
  ),

  /// Portugal: PT.
  CountryPrt(): FlagProperties(
    [
      ColorsProperties(Color(0xff006600), ratio: 2),
      ColorsProperties(Color(0xffff0000), ratio: 3),
      ColorsProperties(Color(0xffffff00)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff003399)),
      ColorsProperties(Color(0xff000000)),
    ],
    isHorizontalStriped: false,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffff00)],
        x: -1 / 3,
        heightFactor: 1 / 3,
        type: ElementType.circle,
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
  ),

  /// Somalia: SO.
  CountrySom(): FlagProperties(
    [ColorsProperties(Color(0xff418FDE))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        heightFactor: 4 / 12,
        type: ElementType.star,
      ),
    ],
    url: "https://www.vexilla-mundi.com/somalia/somalia_sheet.png",
  ),

  /// Jamaica: JM.
  CountryJam(): FlagProperties(
    [
      ColorsProperties(Color(0xff000000)),
      ColorsProperties(Color(0xff009900)),
      ColorsProperties(Color(0xffffcc00)),
    ],
    aspectRatio: 2,
    isHorizontalStriped: null,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Jamaica_(construction_sheet).svg",
  ),

  /// Croatia: HR.
  CountryHrv(): FlagProperties(
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
  ),

  /// Kiribati: KI.
  CountryKir(): FlagProperties(
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
  ),

  /// Kazakhstan: KZ.
  CountryKaz(): FlagProperties(
    [ColorsProperties(Color(0xff00abc2))],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties([Color(0xffffec2d)]),
      ElementsProperties(
        [Color(0xffffec2d)],
        x: -0.1,
        y: 0.1,
        type: ElementType.circle,
      ),
    ],
    url: "https://www.vexilla-mundi.com/kazakhstan/kazakhstan_sheet.png",
  ),

  /// Ireland: IE.
  CountryIrl(): FlagProperties(
    [
      ColorsProperties(Color(0xff169B62)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffFF883E)),
    ],
    aspectRatio: 2,
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Ireland_(construction_sheet).svg",
  ),

  /// Comoros: KM.
  CountryCom(): FlagProperties(
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
        widthFactor: 1 / 2,
        type: ElementType.triangle,
        children: [
          ElementsProperties(
            [Color(0xffffffff)],
            widthFactor: 68 / 144,
            type: ElementType.moon,
            children: [
              ElementsProperties(
                [Color(0xffffffff)],
                widthFactor: 14 / 68,
                type: ElementType.star,
              ),
            ],
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_Comoros_(construction_sheet).svg",
  ),

  /// Iran: IR.
  CountryIrn(): FlagProperties(
    [
      ColorsProperties(Color(0xff239f40)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffda0000)),
    ],
    aspectRatio: 7 / 4,
    elementsProperties: [
      ElementsProperties([Color(0xffda0000)], heightFactor: 63 / 252),
      ElementsProperties([Color(0xffffffff)]),
    ],
    url: "https://www.crwflags.com/fotw/images/i/ir'.gif",
  ),

  /// Guyana: GY.
  CountryGuy(): FlagProperties(
    [ColorsProperties(Color(0xff399408))],
    aspectRatio: 5 / 3,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        x: -1,
        heightFactor: 1,
        widthFactor: 1,
        type: ElementType.triangle,
        children: [
          ElementsProperties(
            [Color(0xffffde08)],
            x: -1,
            heightFactor: 0.9,
            widthFactor: 0.9,
            type: ElementType.triangle,
          ),
          ElementsProperties(
            [Color(0xff000000)],
            x: -1,
            heightFactor: 1,
            widthFactor: 1 / 2,
            type: ElementType.triangle,
            children: [
              ElementsProperties(
                [Color(0xffde2110)],
                x: -1,
                heightFactor: 0.9,
                widthFactor: 0.85,
                type: ElementType.triangle,
              ),
            ],
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Guyana_(construction_sheet).svg",
  ),

  /// Guinea: GN.
  CountryGin(): FlagProperties(
    [
      ColorsProperties(Color(0xffCE1126)),
      ColorsProperties(Color(0xffFCD116)),
      ColorsProperties(Color(0xff009460)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Guinea_(construction_sheet).svg",
  ),

  /// Fiji: FJ.
  CountryFji(): FlagProperties(
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
  ),

  /// Papua New Guinea: PG.
  CountryPng(): FlagProperties(
    [ColorsProperties(Color(0xffff0000))],
    aspectRatio: 4 / 3,
    elementsProperties: [
      ElementsProperties(
        [Color(0xff000000)],
        x: -1,
        heightFactor: 1,
        widthFactor: 1,
        angle: 90,
        type: ElementType.triangle,
        children: [
          ElementsProperties(
            [Color(0xffffffff)],
            heightFactor: 0.9,
            widthFactor: 0.9,
            type: ElementType.star,
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
  ),

  /// Slovakia: SK.
  CountrySvk(): FlagProperties(
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
  ),

  /// Romania: RO.
  CountryRou(): FlagProperties(
    [
      ColorsProperties(Color(0xff002B7F)),
      ColorsProperties(Color(0xffFCD116)),
      ColorsProperties(Color(0xffCE1126)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Romania_(construction_sheet).svg",
  ),

  /// Svalbard and Jan Mayen: SJ.
  CountrySjm(): FlagProperties([], sameAs: CountryNor()),

  /// French Polynesia: PF.
  CountryPyf(): FlagProperties(
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
  ),

  /// Falkland Islands: FK.
  CountryFlk(): FlagProperties(
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
  ),

  /// Egypt: EG.
  CountryEgy(): FlagProperties(
    [
      ColorsProperties(Color(0xffce1126)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000000)),
    ],
    elementsProperties: [
      ElementsProperties([Color(0xffc09300)], heightFactor: 0.3),
    ],
    url: "https://www.vexilla-mundi.com/egypt/egypt_sheet.png",
  ),

  /// Iceland: IS.
  CountryIsl(): FlagProperties(
    [
      ColorsProperties(Color(0xff02529C), ratio: 7),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffDC1E35), ratio: 2),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff02529C), ratio: 7),
    ],
    aspectRatio: 25 / 18,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        x: -0.357,
        heightFactor: 1,
        widthFactor: 4 / 25,
        type: ElementType.rectangle,
        children: [
          ElementsProperties(
            [Color(0xffDC1E35)],
            heightFactor: 1,
            widthFactor: 1 / 2,
            type: ElementType.rectangle,
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Iceland_(construction_sheet).svg",
  ),

  /// Indonesia: ID.
  CountryIdn(): FlagProperties(
    [ColorsProperties(Color(0xffff0000)), ColorsProperties(Color(0xffffffff))],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Indonesia_(construction_sheet).svg",
  ),

  /// Cayman Islands: KY.
  CountryCym(): FlagProperties(
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
    url:
        "https://www.vexilla-mundi.com/cayman_islands/cayman_islands_sheet.png",
  ),

  /// Iraq: IQ.
  CountryIrq(): FlagProperties(
    [
      ColorsProperties(Color(0xffcd1125)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000000)),
    ],
    elementsProperties: [
      ElementsProperties([Color(0xff017b3d)], heightFactor: 1 / 4),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Iraq_(construction_sheet).svg",
  ),

  /// Saint Kitts and Nevis: KN.
  CountryKna(): FlagProperties(
    [
      ColorsProperties(Color(0xff35a100)),
      ColorsProperties(Color(0xffffe900)),
      ColorsProperties(Color(0xffc70000)),
      ColorsProperties(Color(0xff000000)),
      ColorsProperties(Color(0xffffffff)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Saint_Kitts_and_Nevis_(construction_sheet).svg",
  ),

  /// Hungary: HU.
  CountryHun(): FlagProperties(
    [
      ColorsProperties(Color(0xffCE2939)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff477050)),
    ],
    aspectRatio: 2,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Hungary_(1-2)_(construction_sheet).svg",
  ),

  /// Estonia: EE.
  CountryEst(): FlagProperties(
    [
      ColorsProperties(Color(0xff0072CE)),
      ColorsProperties(Color(0xff000000)),
      ColorsProperties(Color(0xffffffff)),
    ],
    aspectRatio: 11 / 7,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Estonia_(construction_sheet).svg",
  ),

  /// Eritrea: ER.
  CountryEri(): FlagProperties(
    [ColorsProperties(Color(0xff0BAC24)), ColorsProperties(Color(0xff3C8BDC))],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffEB0433)],
        heightFactor: 1,
        widthFactor: 1,
        type: ElementType.triangle,
        children: [
          ElementsProperties([Color(0xffFBC724)], x: -0.5, heightFactor: 1 / 2),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Eritrea_(construction_sheet).svg",
  ),

  /// Finland: FI.
  CountryFin(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff), ratio: 4),
      ColorsProperties(Color(0xff002f6c), ratio: 3),
      ColorsProperties(Color(0xffffffff), ratio: 4),
    ],
    aspectRatio: 18 / 11,
    elementsProperties: [
      ElementsProperties(
        [Color(0xff002f6c)],
        x: -0.222,
        heightFactor: 1,
        widthFactor: 3 / 18,
        type: ElementType.rectangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Finland_(construction_sheet).svg",
  ),

  /// Gambia: GM.
  CountryGmb(): FlagProperties(
    [
      ColorsProperties(Color(0xffff0000), ratio: 6),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000099), ratio: 4),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff009900), ratio: 6),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_Gambia_(construction_sheet).svg",
  ),

  /// Saint Helena, Ascension and Tristan da Cunha: SH.
  CountryShn(): FlagProperties([], sameAs: CountryGbr()),

  /// Palestine: PS.
  CountryPse(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 2 / 6,
        type: ElementType.triangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Palestine_(construction_sheet).svg",
  ),

  /// Puerto Rico: PR.
  CountryPri(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 23 / 45,
        type: ElementType.triangle,
        children: [
          ElementsProperties(
            [Color(0xffffffff)],
            heightFactor: 27 / 60,
            type: ElementType.star,
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Puerto_Rico_(construction_sheet).svg",
  ),

  /// Slovenia: SI.
  CountrySvn(): FlagProperties(
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
  ),

  /// Peru: PE.
  CountryPer(): FlagProperties(
    [
      ColorsProperties(Color(0xffd91023)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffd91023)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Peru_(construction_sheet).svg",
  ),

  /// Qatar: QA.
  CountryQat(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff), ratio: 3696),
      ColorsProperties(Color(0xff8A1538), ratio: 8904),
    ],
    aspectRatio: 28 / 11,
    isHorizontalStriped: false,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        x: -1 / 3,
        heightFactor: 1,
        widthFactor: 1008 / 12600,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Qatar_(construction_sheet).svg",
  ),

  /// Greenland: GL.
  CountryGrl(): FlagProperties(
    [ColorsProperties(Color(0xffffffff)), ColorsProperties(Color(0xffd00c33))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        x: -0.222,
        heightFactor: 8 / 12,
        type: ElementType.circle,
        children: [
          ElementsProperties([Color(0xffd00c33)], y: -1, heightFactor: 1 / 2),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Greenland_(construction_sheet).svg",
  ),

  /// Spain: ES.
  CountryEsp(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Spain_(construction_sheet).png",
  ),

  /// Haiti: HT.
  CountryHti(): FlagProperties(
    [ColorsProperties(Color(0xff00209f)), ColorsProperties(Color(0xffd21034))],
    aspectRatio: 5 / 3,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        heightFactor: 90 / 348,
        widthFactor: 110 / 570,
        type: ElementType.rectangle,
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
  ),
};
