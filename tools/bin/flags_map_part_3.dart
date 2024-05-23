import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

import "colors_extractor.dart";

// ignore: prefer-static-class, temporary map.
const flags3 = {
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
