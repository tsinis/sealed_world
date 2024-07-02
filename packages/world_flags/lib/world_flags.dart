/// Every flag is a Widget.
library world_flags;

import "package:sealed_countries/sealed_countries.dart";

import "src/data/flags_map_part_1.data.dart";
import "src/data/flags_map_part_2.data.dart";
import "src/data/flags_map_part_3.data.dart";
import "src/ui/flags/basic_flag.dart";
import "src/ui/flags/ellipse_flag.dart";
import "src/ui/flags/moon_flag.dart";
import "src/ui/flags/multi_element_flag.dart";
import "src/ui/flags/rectangle_flag.dart";
import "src/ui/flags/star_flag.dart";
import "src/ui/flags/triangle_flag.dart";
import "src/ui/painters/custom/david_star_painter.dart";
import "src/ui/painters/custom/maple_leaf_painter.dart";
import "src/ui/painters/custom/tto_line_painter.dart";
import "src/ui/painters/multi_element_painter.dart";

export "package:sealed_countries/sealed_countries.dart";

export "src/collections/properties_map.dart";
export "src/data/flags_map_part_1.data.dart";
export "src/data/flags_map_part_2.data.dart";
export "src/data/flags_map_part_3.data.dart";
export "src/helpers/extensions/basic_flag_extension_copy_with.dart";
export "src/helpers/extensions/box_decoration_extension.dart";
export "src/helpers/extensions/world_flags_build_context_extension.dart";
export "src/interfaces/decorated_flag_interface.dart";
export "src/model/colors_properties.dart";
export "src/model/elements/custom_elements_properties.dart";
export "src/model/elements/elements_properties.dart";
export "src/model/flag_properties.dart";
export "src/model/shape.dart";
export "src/model/stripe_orientation.dart";
export "src/model/typedefs.dart";
export "src/theme/flag_theme_data.dart";
export "src/ui/country_flag.dart";
export "src/ui/flags/basic_flag.dart";
export "src/ui/flags/ellipse_flag.dart";
export "src/ui/flags/moon_flag.dart";
export "src/ui/flags/multi_element_flag.dart";
export "src/ui/flags/rectangle_flag.dart";
export "src/ui/flags/star_flag.dart";
export "src/ui/flags/triangle_flag.dart";
export "src/ui/painters/basic/custom_elements_painter.dart";
export "src/ui/painters/basic/elements_painter.dart";
export "src/ui/painters/basic/stripes_painter.dart";
export "src/ui/painters/common/diagonal_line_painter.dart";
export "src/ui/painters/common/ellipse_painter.dart";
export "src/ui/painters/common/moon_painter.dart";
export "src/ui/painters/common/rectangle_painter.dart";
export "src/ui/painters/common/star_painter.dart";
export "src/ui/painters/common/triangle_painter.dart";
export "src/ui/painters/custom/david_star_painter.dart";
export "src/ui/painters/custom/maple_leaf_painter.dart";
export "src/ui/painters/custom/tto_line_painter.dart";
export "src/ui/painters/multi_element_painter.dart";

// ignore_for_file: prefer-static-class, to follow pattern from eco-system.
const smallSimplifiedFlagsMap = {
  CountryAbw(): StarFlag(flagAbwProperties),
  CountryAfg(): EllipseFlag(flagAfgProperties),
  CountryAgo(): MultiElementFlag(flagAgoProperties),
  CountryAia():
      BasicFlag(flagAiaProperties, elementsBuilder: UnionJackPainter.half),
  CountryAla(): MultiElementFlag(flagAlaProperties),
  CountryAlb(): BasicFlag(
    flagAlbProperties,
    elementsBuilder: SimpleBirdPainter.alb,
  ),
  CountryAnd(): BasicFlag(
    flagAndProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithDividers,
  ),
  CountryAre(): RectangleFlag(flagAreProperties),
  CountryArg(): StarFlag(flagArgProperties),
  CountryArm(): BasicFlag(flagArmProperties),
  CountryAsm(): TriangleFlag(flagAsmProperties),
  CountryAta(): BasicFlag(flagAtaProperties),
  CountryAtf(): MultiElementFlag(flagAtfProperties),
  CountryAtg(): BasicFlag(flagAtgProperties),
  CountryAus():
      BasicFlag(flagAusProperties, elementsBuilder: UnionJackPainter.half),
  CountryAut(): BasicFlag(flagAutProperties),
  CountryAze(): MoonFlag(flagAzeProperties),
  CountryBdi(): MultiElementFlag(flagBdiProperties),
  CountryBel(): BasicFlag(flagBelProperties),
  CountryBen(): RectangleFlag(flagBenProperties),
  CountryBes(): BasicFlag(flagBesProperties),
  CountryBfa(): StarFlag(flagBfaProperties),
  CountryBgd(): EllipseFlag(flagBgdProperties),
  CountryBgr(): BasicFlag(flagBgrProperties),
  CountryBhr(): TriangleFlag(flagBhrProperties),
  CountryBhs(): TriangleFlag(flagBhsProperties),
  CountryBih(): MultiElementFlag(flagBihProperties),
  CountryBlm(): BasicFlag(flagBlmProperties),
  CountryBlr(): RectangleFlag(flagBlrProperties),
  CountryBlz(): MultiElementFlag(flagBlzProperties),
  CountryBmu(): BasicFlag(
    flagBmuProperties,
    elementsBuilder: UnionJackPainter.halfWithoutOutline,
  ),
  CountryBol(): BasicFlag(flagBolProperties),
  CountryBra():
      BasicFlag(flagBraProperties, elementsBuilder: RhombusPainter.new),
  CountryBrb(): MultiElementFlag(flagBrbProperties),
  CountryBrn(): BasicFlag(flagBrnProperties),
  CountryBtn(): BasicFlag(flagBtnProperties),
  CountryBvt(): MultiElementFlag(flagBvtProperties),
  CountryBwa(): BasicFlag(flagBwaProperties),
  CountryCaf(): MultiElementFlag(flagCafProperties),
  CountryCan():
      BasicFlag(flagCanProperties, elementsBuilder: MapleLeafPainter.new),
  CountryCck(): MultiElementFlag(flagCckProperties),
  CountryChe(): MultiElementFlag(flagCheProperties),
  CountryChl(): RectangleFlag(flagChlProperties),
  CountryChn(): MultiElementFlag(flagChnProperties),
  CountryCiv(): BasicFlag(flagCivProperties),
  CountryCmr(): StarFlag(flagCmrProperties),
  CountryCod(): BasicFlag(
    flagCodProperties,
    elementsBuilder: CustomDiagonalPainter.horizontal,
  ),
  CountryCog(): BasicFlag(
    flagCogProperties,
    elementsBuilder: CustomDiagonalPainter.vertical,
  ),
  CountryCok():
      BasicFlag(flagCokProperties, elementsBuilder: UnionJackPainter.half),
  CountryCol(): BasicFlag(flagColProperties),
  CountryCom(): TriangleFlag(flagComProperties),
  CountryCpv(): StarFlag(flagCpvProperties),
  CountryCri(): BasicFlag(
    flagCriProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
  ),
  CountryCub(): TriangleFlag(flagCubProperties),
  CountryCuw(): MultiElementFlag(flagCuwProperties),
  CountryCxr(): MultiElementFlag(flagCxrProperties),
  CountryCym():
      BasicFlag(flagCymProperties, elementsBuilder: UnionJackPainter.half),
  CountryCyp(): BasicFlag(flagCypProperties),
  CountryCze(): TriangleFlag(flagCzeProperties),
  CountryDeu(): BasicFlag(flagDeuProperties),
  CountryDji(): TriangleFlag(flagDjiProperties),
  CountryDma(): MultiElementFlag(flagDmaProperties),
  CountryDnk(): RectangleFlag(flagDnkProperties),
  CountryDom(): MultiElementFlag(flagDomProperties),
  CountryDza(): MoonFlag(flagDzaProperties),
  CountryEcu(): BasicFlag(
    flagEcuProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
  ),
  CountryEgy():
      BasicFlag(flagEgyProperties, elementsBuilder: SimpleBirdPainter.egy),
  CountryEri(): TriangleFlag(flagEriProperties),
  CountryEsh(): MultiElementFlag(flagEshProperties),
  CountryEsp(): BasicFlag(
    flagEspProperties,
    elementsBuilder: SimpleShieldPainter.withoutDividers,
  ),
  CountryEst(): BasicFlag(flagEstProperties),
  CountryEth(): MultiElementFlag(flagEthProperties),
  CountryFin(): RectangleFlag(flagFinProperties),
  CountryFji(): BasicFlag(
    flagFjiProperties,
    elementsBuilder: UnionJackPainter.halfWithDividers,
  ),
  CountryFlk(): BasicFlag(
    flagFlkProperties,
    elementsBuilder: UnionJackPainter.halfWithoutOutline,
  ),
  CountryFra(): BasicFlag(flagFraProperties),
  CountryFro(): MultiElementFlag(flagFroProperties),
  CountryFsm(): StarFlag(flagFsmProperties),
  CountryGab(): BasicFlag(flagGabProperties),
  CountryGbr():
      BasicFlag(flagGbrProperties, elementsBuilder: UnionJackPainter.full),
  CountryGeo(): MultiElementFlag(flagGeoProperties),
  CountryGgy(): MultiElementFlag(flagGgyProperties),
  CountryGha(): StarFlag(flagGhaProperties),
  CountryGib(): MultiElementFlag(flagGibProperties),
  CountryGin(): BasicFlag(flagGinProperties),
  CountryGlp(): BasicFlag(flagGlpProperties),
  CountryGmb(): BasicFlag(flagGmbProperties),
  CountryGnb(): RectangleFlag(flagGnbProperties),
  CountryGnq(): BasicFlag(
    flagGnqProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
  ),
  CountryGrc(): MultiElementFlag(flagGrcProperties),
  CountryGrd(): MultiElementFlag(flagGrdProperties),
  CountryGrl():
      BasicFlag(flagGrlProperties, elementsBuilder: HalfEllipsePainter.new),
  CountryGtm(): EllipseFlag(flagGtmProperties),
  CountryGuf(): BasicFlag(flagGufProperties),
  CountryGum(): RectangleFlag(flagGumProperties),
  CountryGuy(): MultiElementFlag(flagGuyProperties),
  CountryHkg(): BasicFlag(flagHkgProperties),
  CountryHmd():
      BasicFlag(flagHmdProperties, elementsBuilder: UnionJackPainter.half),
  CountryHnd(): MultiElementFlag(flagHndProperties),
  CountryHrv(): BasicFlag(
    flagHrvProperties,
    elementsBuilder: SimpleShieldPainter.withoutDividers,
  ),
  CountryHti(): RectangleFlag(flagHtiProperties),
  CountryHun(): BasicFlag(flagHunProperties),
  CountryIdn(): BasicFlag(flagIdnProperties),
  CountryImn(): BasicFlag(flagImnProperties),
  CountryInd(): EllipseFlag(flagIndProperties),
  CountryIot(): BasicFlag(
    flagIotProperties,
    elementsBuilder: UnionJackPainter.halfWithoutOutline,
  ),
  CountryIrl(): BasicFlag(flagIrlProperties),
  CountryIrn(): EllipseFlag(flagIrnProperties),
  CountryIrq(): BasicFlag(flagIrqProperties),
  CountryIsl(): MultiElementFlag(flagIslProperties),
  CountryIsr():
      BasicFlag(flagIsrProperties, elementsBuilder: DavidStarPainter.new),
  CountryIta(): BasicFlag(flagItaProperties),
  CountryJam(): MultiElementFlag(flagJamProperties),
  CountryJey(): BasicFlag(
    flagJeyProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
  ),
  CountryJor(): TriangleFlag(flagJorProperties),
  CountryJpn(): EllipseFlag(flagJpnProperties),
  CountryKaz(): MultiElementFlag(flagKazProperties),
  CountryKen(): BasicFlag(flagKenProperties),
  CountryKgz(): StarFlag(flagKgzProperties),
  CountryKhm(): RectangleFlag(flagKhmProperties),
  CountryKir():
      BasicFlag(flagKirProperties, elementsBuilder: HalfEllipsePainter.new),
  CountryKna(): MultiElementFlag(flagKnaProperties),
  CountryKor(): EllipseFlag(flagKorProperties),
  CountryKwt(): MultiElementFlag(flagKwtProperties),
  CountryLao(): EllipseFlag(flagLaoProperties),
  CountryLbn(): BasicFlag(flagLbnProperties),
  CountryLbr(): RectangleFlag(flagLbrProperties),
  CountryLby(): MoonFlag(flagLbyProperties),
  CountryLca(): RectangleFlag(flagLcaProperties),
  CountryLie(): RectangleFlag(flagLieProperties),
  CountryLka(): MultiElementFlag(flagLkaProperties),
  CountryLso(): TriangleFlag(flagLsoProperties),
  CountryLtu(): BasicFlag(flagLtuProperties),
  CountryLux(): BasicFlag(flagLuxProperties),
  CountryLva(): BasicFlag(flagLvaProperties),
  CountryMac(): MultiElementFlag(flagMacProperties),
  CountryMaf(): BasicFlag(flagMafProperties),
  CountryMar(): StarFlag(flagMarProperties),
  CountryMco(): BasicFlag(flagMcoProperties),
  CountryMda():
      BasicFlag(flagMdaProperties, elementsBuilder: SimpleBirdPainter.mda),
  CountryMdg(): RectangleFlag(flagMdgProperties),
  CountryMdv(): RectangleFlag(flagMdvProperties),
  CountryMex(): BasicFlag(flagMexProperties),
  CountryMhl(): MultiElementFlag(flagMhlProperties),
  CountryMkd(): MultiElementFlag(flagMkdProperties),
  CountryMli(): BasicFlag(flagMliProperties),
  CountryMlt(): MultiElementFlag(flagMltProperties),
  CountryMmr(): StarFlag(flagMmrProperties),
  CountryMne():
      BasicFlag(flagMneProperties, elementsBuilder: SimpleBirdPainter.egy),
  CountryMng(): MultiElementFlag(flagMngProperties),
  CountryMnp(): MultiElementFlag(flagMnpProperties),
  CountryMoz(): TriangleFlag(flagMozProperties),
  CountryMrt(): MoonFlag(flagMrtProperties),
  CountryMsr(): BasicFlag(
    flagMsrProperties,
    elementsBuilder: UnionJackPainter.halfWithoutOutline,
  ),
  CountryMtq(): TriangleFlag(flagMtqProperties),
  CountryMus(): BasicFlag(flagMusProperties),
  CountryMwi():
      BasicFlag(flagMwiProperties, elementsBuilder: HalfEllipsePainter.new),
  CountryMys(): RectangleFlag(flagMysProperties),
  CountryMyt(): BasicFlag(flagMytProperties),
  CountryNam(): StarFlag(flagNamProperties),
  CountryNcl(): BasicFlag(flagNclProperties),
  CountryNer(): EllipseFlag(flagNerProperties),
  CountryNfk(): BasicFlag(flagNfkProperties),
  CountryNga(): BasicFlag(flagNgaProperties),
  CountryNic(): EllipseFlag(flagNicProperties),
  CountryNiu():
      BasicFlag(flagNiuProperties, elementsBuilder: UnionJackPainter.half),
  CountryNld(): BasicFlag(flagNldProperties),
  CountryNor(): MultiElementFlag(flagNorProperties),
  CountryNpl(): BasicFlag(flagNplProperties),
  CountryNru(): StarFlag(flagNruProperties),
  CountryNzl():
      BasicFlag(flagNzlProperties, elementsBuilder: UnionJackPainter.half),
  CountryOmn(): MultiElementFlag(flagOmnProperties),
  CountryPak(): MoonFlag(flagPakProperties),
  CountryPan(): MultiElementFlag(flagPanProperties),
  CountryPcn():
      BasicFlag(flagPcnProperties, elementsBuilder: UnionJackPainter.half),
  CountryPer(): BasicFlag(flagPerProperties),
  CountryPhl(): MultiElementFlag(flagPhlProperties),
  CountryPlw(): EllipseFlag(flagPlwProperties),
  CountryPng(): MultiElementFlag(flagPngProperties),
  CountryPol(): BasicFlag(flagPolProperties),
  CountryPri(): TriangleFlag(flagPriProperties),
  CountryPrk(): EllipseFlag(flagPrkProperties),
  CountryPrt(): BasicFlag(
    flagPrtProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithDividers,
  ),
  CountryPry(): EllipseFlag(flagPryProperties),
  CountryPse(): TriangleFlag(flagPseProperties),
  CountryPyf(): BasicFlag(flagPyfProperties),
  CountryQat(): MultiElementFlag(flagQatProperties),
  CountryReu(): BasicFlag(flagReuProperties),
  CountryRou(): BasicFlag(flagRouProperties),
  CountryRus(): BasicFlag(flagRusProperties),
  CountryRwa(): StarFlag(flagRwaProperties),
  CountrySau(): BasicFlag(flagSauProperties),
  CountrySdn(): TriangleFlag(flagSdnProperties),
  CountrySen(): StarFlag(flagSenProperties),
  CountrySgp(): MultiElementFlag(flagSgpProperties),
  CountrySgs():
      BasicFlag(flagSgsProperties, elementsBuilder: UnionJackPainter.half),
  CountryShn():
      BasicFlag(flagShnProperties, elementsBuilder: UnionJackPainter.full),
  CountrySjm(): MultiElementFlag(flagSjmProperties),
  CountrySlb(): MultiElementFlag(flagSlbProperties),
  CountrySle(): BasicFlag(flagSleProperties),
  CountrySlv(): EllipseFlag(flagSlvProperties),
  CountrySmr(): BasicFlag(
    flagSmrProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
  ),
  CountrySom(): StarFlag(flagSomProperties),
  CountrySpm(): BasicFlag(flagSpmProperties),
  CountrySrb(): BasicFlag(
    flagSrbProperties,
    elementsBuilder: SimpleShieldPainter.withDividers,
  ),
  CountrySsd(): TriangleFlag(flagSsdProperties),
  CountryStp(): MultiElementFlag(flagStpProperties),
  CountrySur(): StarFlag(flagSurProperties),
  CountrySvk(): BasicFlag(
    flagSvkProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithDividers,
  ),
  CountrySvn(): BasicFlag(
    flagSvnProperties,
    elementsBuilder: SimpleShieldPainter.withoutDividers,
  ),
  CountrySwe(): RectangleFlag(flagSweProperties),
  CountrySwz(): BasicFlag(flagSwzProperties),
  CountrySxm(): TriangleFlag(flagSxmProperties),
  CountrySyc(): BasicFlag(flagSycProperties),
  CountrySyr(): MultiElementFlag(flagSyrProperties),
  CountryTca():
      BasicFlag(flagTcaProperties, elementsBuilder: UnionJackPainter.half),
  CountryTcd(): BasicFlag(flagTcdProperties),
  CountryTgo(): RectangleFlag(flagTgoProperties),
  CountryTha(): BasicFlag(flagThaProperties),
  CountryTjk(): MultiElementFlag(flagTjkProperties),
  CountryTkl(): MultiElementFlag(flagTklProperties),
  CountryTkm(): MultiElementFlag(flagTkmProperties),
  CountryTls(): TriangleFlag(flagTlsProperties),
  CountryTon(): MultiElementFlag(flagTonProperties),
  CountryTto():
      BasicFlag(flagTtoProperties, elementsBuilder: TtoLinePainter.new),
  CountryTun(): EllipseFlag(flagTunProperties),
  CountryTur(): MoonFlag(flagTurProperties),
  CountryTuv():
      BasicFlag(flagTuvProperties, elementsBuilder: UnionJackPainter.half),
  CountryTwn(): RectangleFlag(flagTwnProperties),
  CountryTza(): BasicFlag(flagTzaProperties),
  CountryUga(): EllipseFlag(flagUgaProperties),
  CountryUkr(): BasicFlag(flagUkrProperties),
  CountryUmi():
      BasicFlag(flagUmiProperties, elementsBuilder: UsaStarsPainter.new),
  CountryUry(): RectangleFlag(flagUryProperties),
  CountryUsa():
      BasicFlag(flagUsaProperties, elementsBuilder: UsaStarsPainter.new),
  CountryUzb(): MoonFlag(flagUzbProperties),
  CountryVat(): BasicFlag(flagVatProperties),
  CountryVct(): BasicFlag(flagVctProperties),
  CountryVen(): StarFlag(flagVenProperties),
  CountryVgb():
      BasicFlag(flagVgbProperties, elementsBuilder: UnionJackPainter.half),
  CountryVir(): BasicFlag(flagVirProperties),
  CountryVnm(): StarFlag(flagVnmProperties),
  CountryVut(): MultiElementFlag(flagVutProperties),
  CountryWlf(): BasicFlag(flagWlfProperties),
  CountryWsm(): RectangleFlag(flagWsmProperties),
  CountryYem(): BasicFlag(flagYemProperties),
  CountryZaf(): MultiElementFlag(flagZafProperties),
  CountryZmb(): MultiElementFlag(flagZmbProperties),
  CountryZwe(): TriangleFlag(flagZweProperties),
  CountryUnk(): MultiElementFlag(flagUnkProperties),
};

const notReadyYet = [
  CountryAgo(),
  CountryAsm(),
  CountryAta(),
  CountryAtg(),
  CountryBrn(),
  CountryCyp(),
  CountryGeo(),
  CountryGum(),
  CountryHkg(),
  CountryImn(),
  CountryIrq(),
  CountryKor(),
  CountryLbn(),
  CountryLka(),
  CountryMac(),
  CountryMhl(),
  CountryMkd(),
  CountryNfk(),
  CountryNpl(),
  CountryPyf(),
  CountrySau(),
  CountrySwz(),
  CountrySyc(),
  CountryTkl(),
  CountryVct(),
  CountryVir(),
];
