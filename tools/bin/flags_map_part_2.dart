import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

import "colors_extractor.dart";

// ignore: prefer-static-class, temporary map.
const flags = {
  /// Madagascar: MG.
  CountryMdg(): FlagProperties(
    [ColorsProperties(Color(0xfffc3d32)), ColorsProperties(Color(0xff007e3a))],
    isHorizontalStriped: false,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff)],
        x: -1,
        heightFactor: 1,
        widthFactor: 1 / 3,
        type: ElementType.rectangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Madagascar_(construction_sheet).svg",
  ),

  /// Lithuania: LT.
  CountryLtu(): FlagProperties(
    [
      ColorsProperties(Color(0xfffdb913)),
      ColorsProperties(Color(0xff006a44)),
      ColorsProperties(Color(0xffc1272d)),
    ],
    aspectRatio: 5 / 3,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Lithuania_(construction_sheet).svg",
  ),

  /// Northern Mariana Islands: MP.
  CountryMnp(): FlagProperties(
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
  ),

  /// Andorra: AD.
  CountryAnd(): FlagProperties(
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
  ),

  /// Chile: CL.
  CountryChl(): FlagProperties(
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
  ),

  /// American Samoa: AS.
  CountryAsm(): FlagProperties(
    [ColorsProperties(Color(0xff00205b))],
    aspectRatio: 19 / 10,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffef3340)],
        y: 1,
        heightFactor: 1,
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
    url:
        "https://www.vexilla-mundi.com/american_samoa/american_samoa_sheet.png",
  ),

  /// Bahrain: BH.
  CountryBhr(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 1 / 3,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Bahrain_(construction_sheet).svg",
  ),

  /// Ukraine: UA.
  CountryUkr(): FlagProperties(
    [
      ColorsProperties(Color(0xffffd700)),
      ColorsProperties(Color(0xff0057b8)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Ukraine_(construction_sheet).svg",
  ),

  /// Turkey: TR.
  CountryTur(): FlagProperties(
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
  ),

  /// Mayotte: YT.
  CountryMyt(): FlagProperties([], sameAs: CountryFra()),

  /// Chad: TD.
  CountryTcd(): FlagProperties(
    [
      ColorsProperties(Color(0xff002664)),
      ColorsProperties(Color(0xfffecb00)),
      ColorsProperties(Color(0xffc60c30)),
    ],
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Chad_(construction_sheet).svg",
  ),

  /// Burundi: BI.
  CountryBdi(): FlagProperties(
    [
      ColorsProperties(Color(0xff18b637)),
      ColorsProperties(Color(0xffcf0921)),
      ColorsProperties(Color(0xffffffff)),
    ],
    aspectRatio: 5 / 3,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Burundi_(construction_sheet).svg",
  ),

  /// Argentina: AR.
  CountryArg(): FlagProperties(
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
  ),

  /// Cameroon: CM.
  CountryCmr(): FlagProperties(
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
  ),

  /// United Arab Emirates: AE.
  CountryAre(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 3 / 12,
        type: ElementType.rectangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_United_Arab_Emirates_(construction_sheet).svg",
  ),

  /// Czechia: CZ.
  CountryCze(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffd7141a)),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xff11457e)],
        x: -1,
        heightFactor: 1,
        widthFactor: 1 / 2,
        type: ElementType.triangle,
      ),
    ],
    url: "https://wikipedia.org/wiki/File:Czech_flag_construction.svg",
  ),

  /// Martinique: MQ.
  CountryMtq(): FlagProperties(
    [
      ColorsProperties(Color(0xff00a650)),
      ColorsProperties(Color(0xff000000)),
    ],
    elementsProperties: [
      ElementsProperties(
        [Color(0xffef1923)],
        x: -1,
        heightFactor: 1,
        widthFactor: 1 / 2,
        type: ElementType.triangle,
      ),
    ],
    url: "https://www.vexilla-mundi.com/martinique/martinique_sheet.png",
  ),

  /// Luxembourg: LU.
  CountryLux(): FlagProperties(
    [
      ColorsProperties(Color(0xffEF3340)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff00A3E0)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Luxembourg_(construction_sheet).svg",
  ),

  /// Saint Martin: MF.
  CountryMaf(): FlagProperties([], sameAs: CountryFra()),

  /// Lebanon: LB.
  CountryLbn(): FlagProperties(
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
  ),

  /// Moldova: MD.
  CountryMda(): FlagProperties(
    [
      ColorsProperties(Color(0xff0046AE)),
      ColorsProperties(Color(0xffFFD200)),
      ColorsProperties(Color(0xffCC092F)),
      ColorsProperties(Color(0xffB07E5B)),
      ColorsProperties(Color(0xff007A50)),
      ColorsProperties(Color(0xff000000)),
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
  ),

  /// Montserrat: MS.
  CountryMsr(): FlagProperties(
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
  ),

  /// Antigua and Barbuda: AG.
  CountryAtg(): FlagProperties(
    [ColorsProperties(Color(0xffce1126))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xff000000)],
        heightFactor: 1,
        widthFactor: 1,
        type: ElementType.triangle,
        children: [
          ElementsProperties(
            [Color(0xfffcd116), Color(0xff0072c6), Color(0xffffffff)],
          ),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Antigua_and_Barbuda_(construction_sheet).svg",
  ),

  /// Christmas Island: CX.
  CountryCxr(): FlagProperties(
    [
      ColorsProperties(Color(0xff0021ad)),
      ColorsProperties(Color(0xff1c8a42)),
      ColorsProperties(Color(0xffffc639)),
      ColorsProperties(Color(0xffffffff)),
    ],
    aspectRatio: 2,
    url:
        "https://www.vexilla-mundi.com/christmas_island/christmas_island_sheet.png",
  ),

  /// Colombia: CO.
  CountryCol(): FlagProperties(
    [
      ColorsProperties(Color(0xffFCD116), ratio: 2),
      ColorsProperties(Color(0xff003893)),
      ColorsProperties(Color(0xffCE1126)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Colombia_(construction_sheet).svg",
  ),

  /// French Southern and Antarctic Lands: TF.
  CountryAtf(): FlagProperties(
    [
      ColorsProperties(Color(0xff002654)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffED2939)),
    ],
    url:
        "https://www.vexilla-mundi.com/french_southern_and_antarctic_lands/french_southern_and_antarctic_lands_sheet.png",
  ),

  /// Vietnam: VN.
  CountryVnm(): FlagProperties(
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
  ),

  /// Zambia: ZM.
  CountryZmb(): FlagProperties(
    [
      ColorsProperties(Color(0xff009E49)),
      ColorsProperties(Color(0xffFCAD56)),
      ColorsProperties(Color(0xffEF3340)),
      ColorsProperties(Color(0xff000000)),
    ],
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
  ),

  /// Togo: TG.
  CountryTgo(): FlagProperties(
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
  ),

  /// China: CN.
  CountryChn(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_China_(construction_sheet).svg",
  ),

  /// Benin: BJ.
  CountryBen(): FlagProperties(
    [ColorsProperties(Color(0xffFCD20F)), ColorsProperties(Color(0xffE90929))],
    elementsProperties: [
      ElementsProperties(
        [Color(0xff008850)],
        x: -1,
        heightFactor: 1,
        widthFactor: 6 / 15,
        type: ElementType.rectangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Benin_(construction_sheet).svg",
  ),

  /// Antarctica: AQ.
  CountryAta(): FlagProperties(
    [ColorsProperties(Color(0xff3a7dce))],
    elementsProperties: [
      ElementsProperties([Color(0xffffffff)], heightFactor: 0.9),
    ],
    url:
        "https://wikipedia.org/wiki/File:Proposed_flag_of_Antarctica_(Graham_Bartram).svg",
  ),

  /// Cyprus: CY.
  CountryCyp(): FlagProperties(
    [ColorsProperties(Color(0xffffffff))],
    elementsProperties: [
      ElementsProperties([Color(0xffD57800)], heightFactor: 6 / 12),
      ElementsProperties([Color(0xff4E5B31)], heightFactor: 3 / 12),
    ],
    url: "https://www.vexilla-mundi.com/cyprus/cyprus_sheet.png",
  ),

  /// Afghanistan: AF.
  CountryAfg(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000000)),
    ],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties([Color(0xff000000)], heightFactor: 1 / 2),
    ],
    url:
        "https://www.vexilla-mundi.com/afghanistan/afghanistan_taliban_flag.png",
  ),

  /// Latvia: LV.
  CountryLva(): FlagProperties(
    [
      ColorsProperties(Color(0xff9D2235), ratio: 2),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff9D2235), ratio: 2),
    ],
    aspectRatio: 2,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Latvia_(construction_sheet).svg",
  ),

  /// Oman: OM.
  CountryOmn(): FlagProperties(
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
        heightFactor: 1,
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
  ),

  /// Mauritania: MR.
  CountryMrt(): FlagProperties(
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
  ),

  /// Nicaragua: NI.
  CountryNic(): FlagProperties(
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
  ),

  /// Laos: LA.
  CountryLao(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Laos_(construction_sheet).svg",
  ),

  /// Montenegro: ME.
  CountryMne(): FlagProperties(
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
  ),

  /// Marshall Islands: MH.
  CountryMhl(): FlagProperties(
    [ColorsProperties(Color(0xff003893))],
    aspectRatio: 19 / 10,
    elementsProperties: [
      ElementsProperties([Color(0xffDD7500), Color(0xffffffff)]),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_Marshall_Islands_(construction_sheet).svg",
  ),

  /// Cocos (Keeling) Islands: CC.
  CountryCck(): FlagProperties(
    [
      ColorsProperties(Color(0xff008000)),
      ColorsProperties(Color(0xffffe000)),
      ColorsProperties(Color(0xff802000)),
    ],
    aspectRatio: 2,
    url: "https://www.vexilla-mundi.com/cocos_islands/cocos_islands_sheet.png",
  ),

  /// Bulgaria: BG.
  CountryBgr(): FlagProperties(
    [
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff009900)),
      ColorsProperties(Color(0xffCC0000)),
    ],
    aspectRatio: 5 / 3,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Bulgaria_(construction_sheet).svg",
  ),

  /// Tajikistan: TJ.
  CountryTjk(): FlagProperties(
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
  ),

  /// Vanuatu: VU.
  CountryVut(): FlagProperties(
    [
      ColorsProperties(Color(0xffd21034), ratio: 15),
      ColorsProperties(Color(0xff000000), ratio: 2),
      ColorsProperties(Color(0xfffdce12), ratio: 2),
      ColorsProperties(Color(0xff000000), ratio: 2),
      ColorsProperties(Color(0xff009543), ratio: 15),
    ],
    elementsProperties: [
      ElementsProperties([Color(0xfffdce12), Color(0xff000000)]),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Vanuatu_(construction_sheet).svg",
  ),

  /// Wallis and Futuna: WF.
  CountryWlf(): FlagProperties([], sameAs: CountryFra()),

  /// Uruguay: UY.
  CountryUry(): FlagProperties(
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
  ),

  /// South Africa: ZA.
  CountryZaf(): FlagProperties(
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
  ),

  /// Zimbabwe: ZW.
  CountryZwe(): FlagProperties(
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
        heightFactor: 1,
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
  ),

  /// Saint Vincent and the Grenadines: VC.
  CountryVct(): FlagProperties(
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
  ),

  /// Tokelau: TK.
  CountryTkl(): FlagProperties(
    [
      ColorsProperties(Color(0xff00247d)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xfffed100)),
    ],
    aspectRatio: 2,
    url: "https://wikipedia.org/wiki/File:Flag_of_Tokelau.svg",
  ),

  /// Burkina Faso: BF.
  CountryBfa(): FlagProperties(
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
  ),

  /// Caribbean Netherlands: BQ.
  CountryBes(): FlagProperties([], sameAs: CountryNld()),

  /// Cuba: CU.
  CountryCub(): FlagProperties(
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
        heightFactor: 1,
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Cuba_(construction_sheet).svg",
  ),

  /// Niger: NE.
  CountryNer(): FlagProperties(
    [
      ColorsProperties(Color(0xff0db02b)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffe05206)),
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
  ),

  /// Nauru: NR.
  CountryNru(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Nauru_(construction_sheet).svg",
  ),

  /// North Macedonia: MK.
  CountryMkd(): FlagProperties(
    [ColorsProperties(Color(0xffCE2028))],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties([Color(0xffF9D616)]),
    ],
    url:
        "https://wikipedia.org/wiki/File:Construction_sheet_of_the_flag_of_North_Macedonia.svg",
  ),

  /// Nepal: NP.
  CountryNpl(): FlagProperties(
    [
      ColorsProperties(Color(0xffce0000)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff000063)),
    ],
    aspectRatio: 41 / 50, // Yep this one will be fun...
    url: "https://wikipedia.org/wiki/File:Nepal_Flag_Construction.png",
  ),

  /// Nigeria: NG.
  CountryNga(): FlagProperties(
    [
      ColorsProperties(Color(0xff008000)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xff008000)),
    ],
    aspectRatio: 2,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Nigeria_(construction_sheet).svg",
  ),

  /// Bahamas: BS.
  CountryBhs(): FlagProperties(
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
        heightFactor: 1,
        widthFactor: 0.4,
        type: ElementType.triangle,
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_the_Bahamas_(construction_sheet).svg",
  ),

  /// Curaçao: CW.
  CountryCuw(): FlagProperties(
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
  ),

  /// Bangladesh: BD.
  CountryBgd(): FlagProperties(
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
  ),

  /// United States Minor Outlying Islands: UM.
  CountryUmi(): FlagProperties([], sameAs: CountryUsa()),

  /// Vatican City: VA.
  CountryVat(): FlagProperties(
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
  ),

  /// Uzbekistan: UZ.
  CountryUzb(): FlagProperties(
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
  ),

  /// Kosovo: XK.
  CountryUnk(): FlagProperties(
    [ColorsProperties(Color(0xff244aa5))],
    aspectRatio: 7 / 5,
    elementsProperties: [
      ElementsProperties(
        [Color(0xffffffff), Color(0xffd0a650)],
        heightFactor: 3 / 4,
      ),
    ],
    url: "https://www.vexilla-mundi.com/kosovo/kosovo_sheet.png",
  ),

  /// Samoa: WS.
  CountryWsm(): FlagProperties(
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
          ElementsProperties([Color(0xffffffff)]),
        ],
      ),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Samoa_(construction_sheet).svg",
  ),

  /// Thailand: TH.
  CountryTha(): FlagProperties(
    [
      ColorsProperties(Color(0xffa51931)),
      ColorsProperties(Color(0xfff4f5f8)),
      ColorsProperties(Color(0xff2d2a4a), ratio: 2),
      ColorsProperties(Color(0xfff4f5f8)),
      ColorsProperties(Color(0xffa51931)),
    ],
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Thailand_(construction_sheet).svg",
  ),

  /// Canada: CA.
  CountryCan(): FlagProperties(
    [
      ColorsProperties(Color(0xffd52b1e)),
      ColorsProperties(Color(0xffffffff), ratio: 2),
      ColorsProperties(Color(0xffd52b1e)),
    ],
    aspectRatio: 2,
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Canada_(construction_sheet_-_leaf_geometry).svg",
  ),

  /// Belgium: BE.
  CountryBel(): FlagProperties(
    [
      ColorsProperties(Color(0xff000000)),
      ColorsProperties(Color(0xffFDDA24)),
      ColorsProperties(Color(0xffEF3340)),
    ],
    aspectRatio: 15 / 13,
    isHorizontalStriped: false,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Belgium_(construction_sheet).svg",
  ),

  /// Cape Verde: CV.
  CountryCpv(): FlagProperties(
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
  ),

  /// Anguilla: AI.
  CountryAia(): FlagProperties(
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
  ),

  /// Brazil: BR.
  CountryBra(): FlagProperties(
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
              ElementsProperties([Color(0xffffffff), Color(0xff229e45)]),
            ],
          ),
        ],
      ),
    ],
  ),

  /// Libya: LY.
  CountryLby(): FlagProperties(
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
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Libya_(construction_sheet).svg",
  ),

  /// Norfolk Island: NF.
  CountryNfk(): FlagProperties(
    [
      ColorsProperties(Color(0xff007833), ratio: 56),
      ColorsProperties(Color(0xffffffff), ratio: 72),
      ColorsProperties(Color(0xff007833), ratio: 56),
    ],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties([Color(0xff007833)], heightFactor: 78 / 92),
    ],
    url:
        "https://www.vexilla-mundi.com/norfolk_island/norfolk_island_sheet.png",
  ),

  /// Malaysia: MY.
  CountryMys(): FlagProperties(
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
  ),

  /// Mongolia: MN.
  CountryMng(): FlagProperties(
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
  ),

  /// Niue: NU.
  CountryNiu(): FlagProperties(
    [
      ColorsProperties(Color(0xfffedd00)),
      ColorsProperties(Color(0xff012169)),
      ColorsProperties(Color(0xffffffff)),
      ColorsProperties(Color(0xffc8102e)),
    ],
    aspectRatio: 2,
    url: "https://www.vexilla-mundi.com/niue/niue_sheet.png",
  ),

  /// Azerbaijan: AZ.
  CountryAze(): FlagProperties(
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
  ),

  /// Bosnia and Herzegovina: BA.
  CountryBih(): FlagProperties(
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
  ),

  /// Bouvet Island: BV.
  CountryBvt(): FlagProperties([], sameAs: CountryNor()),

  /// Armenia: AM.
  CountryArm(): FlagProperties(
    [
      ColorsProperties(Color(0xffd90012)),
      ColorsProperties(Color(0xff0033a0)),
      ColorsProperties(Color(0xfff2a800)),
    ],
    aspectRatio: 2,
    url:
        "https://wikipedia.org/wiki/File:Flag_of_Armenia_(construction_sheet).svg",
  ),

  /// Costa Rica: CR.
  CountryCri(): FlagProperties(
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
  ),

  /// Timor-Leste: TL.
  CountryTls(): FlagProperties(
    [ColorsProperties(Color(0xffcb000f))],
    aspectRatio: 2,
    elementsProperties: [
      ElementsProperties(
        [Color(0xfff8c00c)],
        x: -1,
        heightFactor: 1,
        widthFactor: 1 / 2,
        type: ElementType.triangle,
        children: [
          ElementsProperties(
            [Color(0xff000000)],
            x: -1,
            heightFactor: 1,
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
  ),

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
