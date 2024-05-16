import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

import "colors_extractor.dart";

// ignore: prefer-static-class, temporary map.
const flags = {
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
