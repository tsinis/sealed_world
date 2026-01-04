// ignore_for_file: prefer-static-class, avoid-long-files
/// Every flag is a Widget.
library world_flags;

import "package:sealed_countries/sealed_countries.dart";

import "src/data/alternative_flags_map.data.dart";
import "src/data/flags_map_part_1.data.dart";
import "src/data/flags_map_part_2.data.dart";
import "src/data/flags_map_part_3.data.dart";
import "src/data/other_iso_flags_map.dart";
import "src/ui/flags/basic_flag.dart";
import "src/ui/flags/ellipse_flag.dart";
import "src/ui/flags/moon_flag.dart";
import "src/ui/flags/multi_element_flag.dart";
import "src/ui/flags/rectangle_flag.dart";
import "src/ui/flags/star_flag.dart";
import "src/ui/flags/triangle_flag.dart";
import "src/ui/painters/custom/ago_painter.dart";
import "src/ui/painters/custom/alb_painter.dart";
import "src/ui/painters/custom/almond_painter.dart";
import "src/ui/painters/custom/ata_painter.dart";
import "src/ui/painters/custom/blr_painter.dart";
import "src/ui/painters/custom/brb_painter.dart";
import "src/ui/painters/custom/btn_painter.dart";
import "src/ui/painters/custom/clipped_triangle_painter.dart";
import "src/ui/painters/custom/cyp_painter.dart";
import "src/ui/painters/custom/david_star_painter.dart";
import "src/ui/painters/custom/eagle_painter.dart";
import "src/ui/painters/custom/eri_painter.dart";
import "src/ui/painters/custom/esp_painter.dart";
import "src/ui/painters/custom/ggy_painter.dart";
import "src/ui/painters/custom/hkg_painter.dart";
import "src/ui/painters/custom/hrv_painter.dart";
import "src/ui/painters/custom/imn_painter.dart";
import "src/ui/painters/custom/irq_painter.dart";
import "src/ui/painters/custom/ken_painter.dart";
import "src/ui/painters/custom/khm_painter.dart";
import "src/ui/painters/custom/lbn_painter.dart";
import "src/ui/painters/custom/lie_painter.dart";
import "src/ui/painters/custom/lka_painter.dart";
import "src/ui/painters/custom/lso_painter.dart";
import "src/ui/painters/custom/mac_painter.dart";
import "src/ui/painters/custom/maple_leaf_painter.dart";
import "src/ui/painters/custom/npl_painter.dart";
import "src/ui/painters/custom/pine_painter.dart";
import "src/ui/painters/custom/prt_painter.dart";
import "src/ui/painters/custom/shahada_painter.dart";
import "src/ui/painters/custom/smr_painter.dart";
import "src/ui/painters/custom/srb_painter.dart";
import "src/ui/painters/custom/svk_painter.dart";
import "src/ui/painters/custom/svn_painter.dart";
import "src/ui/painters/custom/syc_painter.dart";
import "src/ui/painters/custom/taegukgi_painter.dart";
import "src/ui/painters/custom/tto_line_painter.dart";
import "src/ui/painters/custom/vat_painter.dart";
import "src/ui/painters/custom/vct_painter.dart";
import "src/ui/painters/custom/vir_painter.dart";
import "src/ui/painters/multi_element_painter.dart";

export "package:sealed_countries/sealed_countries.dart";

export "src/collections/properties_map.dart";
export "src/constants/flag_constants.dart";
export "src/data/alternative_flags_map.data.dart";
export "src/data/flags_map_part_1.data.dart";
export "src/data/flags_map_part_2.data.dart";
export "src/data/flags_map_part_3.data.dart";
export "src/data/other_iso_flags_map.dart";
export "src/debug/flag_properties_property.dart";
export "src/debug/iso_diagnostics_property.dart";
export "src/helpers/extensions/basic_flag_extension_copy_with.dart";
export "src/helpers/extensions/box_decoration_extension.dart";
export "src/helpers/extensions/country_flag_extension.dart";
export "src/helpers/extensions/decorated_flag_interface_extension.dart";
export "src/helpers/extensions/flag_extension.dart";
export "src/helpers/extensions/iso_flag_extension.dart";
export "src/helpers/extensions/world_flags_build_context_extension.dart";
export "src/interfaces/decorated_flag_interface.dart";
export "src/model/colors_properties.dart";
export "src/model/elements/custom_elements_properties.dart";
export "src/model/elements/elements_properties.dart";
export "src/model/flag_elements_type.dart";
export "src/model/flag_properties.dart";
export "src/model/shape.dart";
export "src/model/stripe_orientation.dart";
export "src/model/typedefs.dart";
export "src/theme/flag_theme_data.dart";
export "src/ui/country_flag.dart";
export "src/ui/decorated_flag_widget.dart";
export "src/ui/effects/flag_shader_delegate.dart";
export "src/ui/effects/flag_shader_options.dart";
export "src/ui/effects/flag_shader_surface.dart";
export "src/ui/effects/waved_flag_shader_delegate.dart";
export "src/ui/flags/basic_flag.dart";
export "src/ui/flags/ellipse_flag.dart";
export "src/ui/flags/moon_flag.dart";
export "src/ui/flags/multi_element_flag.dart";
export "src/ui/flags/rectangle_flag.dart";
export "src/ui/flags/star_flag.dart";
export "src/ui/flags/triangle_flag.dart";
export "src/ui/iso_flag.dart";
export "src/ui/painters/basic/custom_elements_painter.dart";
export "src/ui/painters/basic/elements_painter.dart";
export "src/ui/painters/basic/shader_stripes_painter.dart";
export "src/ui/painters/basic/stripes_painter.dart";
export "src/ui/painters/common/diagonal_line_painter.dart";
export "src/ui/painters/common/ellipse_painter.dart";
export "src/ui/painters/common/moon_painter.dart";
export "src/ui/painters/common/rectangle_painter.dart";
export "src/ui/painters/common/star_painter.dart";
export "src/ui/painters/common/triangle_painter.dart";
export "src/ui/painters/custom/ago_painter.dart";
export "src/ui/painters/custom/alb_painter.dart";
export "src/ui/painters/custom/almond_painter.dart";
export "src/ui/painters/custom/ata_painter.dart";
export "src/ui/painters/custom/blr_painter.dart";
export "src/ui/painters/custom/brb_painter.dart";
export "src/ui/painters/custom/btn_painter.dart";
export "src/ui/painters/custom/clipped_triangle_painter.dart";
export "src/ui/painters/custom/cyp_painter.dart";
export "src/ui/painters/custom/david_star_painter.dart";
export "src/ui/painters/custom/eagle_painter.dart";
export "src/ui/painters/custom/eri_painter.dart";
export "src/ui/painters/custom/esp_painter.dart";
export "src/ui/painters/custom/ggy_painter.dart";
export "src/ui/painters/custom/hkg_painter.dart";
export "src/ui/painters/custom/hrv_painter.dart";
export "src/ui/painters/custom/imn_painter.dart";
export "src/ui/painters/custom/irq_painter.dart";
export "src/ui/painters/custom/ken_painter.dart";
export "src/ui/painters/custom/khm_painter.dart";
export "src/ui/painters/custom/lbn_painter.dart";
export "src/ui/painters/custom/lie_painter.dart";
export "src/ui/painters/custom/lka_painter.dart";
export "src/ui/painters/custom/lso_painter.dart";
export "src/ui/painters/custom/mac_painter.dart";
export "src/ui/painters/custom/maple_leaf_painter.dart";
export "src/ui/painters/custom/npl_painter.dart";
export "src/ui/painters/custom/pine_painter.dart";
export "src/ui/painters/custom/prt_painter.dart";
export "src/ui/painters/custom/shahada_painter.dart";
export "src/ui/painters/custom/smr_painter.dart";
export "src/ui/painters/custom/srb_painter.dart";
export "src/ui/painters/custom/svk_painter.dart";
export "src/ui/painters/custom/svn_painter.dart";
export "src/ui/painters/custom/syc_painter.dart";
export "src/ui/painters/custom/taegukgi_painter.dart";
export "src/ui/painters/custom/tto_line_painter.dart";
export "src/ui/painters/custom/vat_painter.dart";
export "src/ui/painters/custom/vct_painter.dart";
export "src/ui/painters/custom/vir_painter.dart";
export "src/ui/painters/multi_element_painter.dart";

/// A map that associates country objects (excluding Afghanistan and French
/// Guiana - because they have alternative flag representations) with simplified
/// flag representations.
///
/// This map is used to provide simplified flag representations for various
/// countries. Each entry in the map consists of a country as the key and a
/// country flag as the value.
///
/// Example usage:
/// ```dart
/// final usaFlag = uniqueSimplifiedFlagsMap[const CountryUsa()];
/// ```
const uniqueSimplifiedFlagsMap = <WorldCountry, BasicFlag>{
  CountryAbw(): StarFlag(flagAbwProperties),
  CountryAfg(): BasicFlag(
    flagAfgProperties,
    elementsBuilder: ShahadaPainter.afg,
  ),
  CountryAgo(): BasicFlag(flagAgoProperties, elementsBuilder: AgoPainter.new),
  CountryAia(): BasicFlag(
    flagAiaProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryAla(): MultiElementFlag(flagAlaProperties),
  CountryAlb(): BasicFlag(flagAlbProperties, elementsBuilder: AlbPainter.new),
  CountryAnd(): BasicFlag(
    flagAndProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithDividers,
  ),
  CountryAre(): RectangleFlag(flagAreProperties),
  CountryArg(): StarFlag(flagArgProperties),
  CountryArm(): BasicFlag(flagArmProperties),
  CountryAsm(): BasicFlag(flagAsmProperties, elementsBuilder: EaglePainter.new),
  CountryAta(): BasicFlag(flagAtaProperties, elementsBuilder: AtaPainter.new),
  CountryAtf(): BasicFlag(flagAtfProperties, elementsBuilder: AtfPainter.new),
  CountryAtg(): BasicFlag(flagAtgProperties, elementsBuilder: AtgPainter.new),
  CountryAus(): BasicFlag(
    flagAusProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryAut(): BasicFlag(flagAutProperties),
  CountryAze(): MoonFlag(flagAzeProperties),
  CountryBdi(): MultiElementFlag(flagBdiProperties),
  CountryBel(): BasicFlag(flagBelProperties),
  CountryBen(): RectangleFlag(flagBenProperties),
  CountryBes(): BasicFlag(flagBesProperties),
  CountryBfa(): StarFlag(flagBfaProperties),
  CountryBgd(): EllipseFlag(flagBgdProperties),
  CountryBgr(): BasicFlag(flagBgrProperties),
  CountryBhr(): BasicFlag(
    flagBhrProperties,
    elementsBuilder: ClippedTrianglePainter.new,
  ),
  CountryBhs(): TriangleFlag(flagBhsProperties),
  CountryBih(): MultiElementFlag(flagBihProperties),
  CountryBlm(): BasicFlag(flagBlmProperties),
  CountryBlr(): BasicFlag(flagBlrProperties, elementsBuilder: BlrPainter.new),
  CountryBlz(): MultiElementFlag(flagBlzProperties),
  CountryBmu(): BasicFlag(
    flagBmuProperties,
    elementsBuilder: UnionJackPainter.halfWithoutOutline,
  ),
  CountryBol(): BasicFlag(flagBolProperties),
  CountryBra(): BasicFlag(flagBraProperties, elementsBuilder: BraPainter.new),
  CountryBrb(): BasicFlag(flagBrbProperties, elementsBuilder: BrbPainter.new),
  CountryBrn(): BasicFlag(flagBrnProperties, elementsBuilder: BrnPainter.new),
  CountryBtn(): BasicFlag(flagBtnProperties, elementsBuilder: BtnPainter.new),
  CountryBvt(): MultiElementFlag(flagBvtProperties),
  CountryBwa(): BasicFlag(flagBwaProperties),
  CountryCaf(): MultiElementFlag(flagCafProperties),
  CountryCan(): BasicFlag(
    flagCanProperties,
    elementsBuilder: MapleLeafPainter.new,
  ),
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
  CountryCok(): BasicFlag(
    flagCokProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
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
  CountryCym(): BasicFlag(
    flagCymProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryCyp(): BasicFlag(flagCypProperties, elementsBuilder: CypPainter.new),
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
  CountryEgy(): BasicFlag(
    flagEgyProperties,
    elementsBuilder: SimpleBirdPainter.egy,
  ),
  CountryEri(): BasicFlag(flagEriProperties, elementsBuilder: EriPainter.new),
  CountryEsh(): MultiElementFlag(flagEshProperties),
  CountryEsp(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
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
  CountryGbr(): BasicFlag(
    flagGbrProperties,
    elementsBuilder: UnionJackPainter.full,
  ),
  CountryGeo(): BasicFlag(flagGeoProperties, elementsBuilder: GeoPainter.new),
  CountryGgy(): BasicFlag(flagGgyProperties, elementsBuilder: GgyPainter.new),
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
  CountryGrl(): BasicFlag(
    flagGrlProperties,
    elementsBuilder: HalfEllipsePainter.new,
  ),
  CountryGtm(): EllipseFlag(flagGtmProperties),
  CountryGum(): BasicFlag(
    flagGumProperties,
    elementsBuilder: AlmondPainter.gum,
  ),
  CountryGuy(): MultiElementFlag(flagGuyProperties),
  CountryHkg(): BasicFlag(flagHkgProperties, elementsBuilder: HkgPainter.new),
  CountryHmd(): BasicFlag(
    flagHmdProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryHnd(): MultiElementFlag(flagHndProperties),
  CountryHrv(): BasicFlag(flagHrvProperties, elementsBuilder: HrvPainter.new),
  CountryHti(): RectangleFlag(flagHtiProperties),
  CountryHun(): BasicFlag(flagHunProperties),
  CountryIdn(): BasicFlag(flagIdnProperties),
  CountryImn(): BasicFlag(flagImnProperties, elementsBuilder: ImnPainter.new),
  CountryInd(): EllipseFlag(flagIndProperties),
  CountryIot(): BasicFlag(
    flagIotProperties,
    elementsBuilder: UnionJackPainter.halfWithoutOutline,
  ),
  CountryIrl(): BasicFlag(flagIrlProperties),
  CountryIrn(): BasicFlag(flagIrnProperties, elementsBuilder: IrnPainter.new),
  CountryIrq(): BasicFlag(flagIrqProperties, elementsBuilder: IrqPainter.new),
  CountryIsl(): MultiElementFlag(flagIslProperties),
  CountryIsr(): BasicFlag(
    flagIsrProperties,
    elementsBuilder: DavidStarPainter.new,
  ),
  CountryIta(): BasicFlag(flagItaProperties),
  CountryJam(): MultiElementFlag(flagJamProperties),
  CountryJey(): BasicFlag(
    flagJeyProperties,
    elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
  ),
  CountryJor(): TriangleFlag(flagJorProperties),
  CountryJpn(): EllipseFlag(flagJpnProperties),
  CountryKaz(): BasicFlag(flagKazProperties, elementsBuilder: KazPainter.new),
  CountryKen(): BasicFlag(flagKenProperties, elementsBuilder: KenPainter.new),
  CountryKgz(): StarFlag(flagKgzProperties),
  CountryKhm(): BasicFlag(flagKhmProperties, elementsBuilder: KhmPainter.new),
  CountryKir(): BasicFlag(
    flagKirProperties,
    elementsBuilder: HalfEllipsePainter.new,
  ),
  CountryKna(): MultiElementFlag(flagKnaProperties),
  CountryKor(): BasicFlag(
    flagKorProperties,
    elementsBuilder: TaegukgiPainter.new,
  ),
  CountryKwt(): MultiElementFlag(flagKwtProperties),
  CountryLao(): EllipseFlag(flagLaoProperties),
  CountryLbn(): BasicFlag(flagLbnProperties, elementsBuilder: LbnPainter.new),
  CountryLbr(): RectangleFlag(flagLbrProperties),
  CountryLby(): MoonFlag(flagLbyProperties),
  CountryLca(): RectangleFlag(flagLcaProperties),
  CountryLie(): BasicFlag(flagLieProperties, elementsBuilder: LiePainter.new),
  CountryLka(): BasicFlag(flagLkaProperties, elementsBuilder: LkaPainter.new),
  CountryLso(): BasicFlag(flagLsoProperties, elementsBuilder: LsoPainter.new),
  CountryLtu(): BasicFlag(flagLtuProperties),
  CountryLux(): BasicFlag(flagLuxProperties),
  CountryLva(): BasicFlag(flagLvaProperties),
  CountryMac(): BasicFlag(flagMacProperties, elementsBuilder: MacPainter.new),
  CountryMaf(): BasicFlag(flagMafProperties),
  CountryMar(): StarFlag(flagMarProperties),
  CountryMco(): BasicFlag(flagMcoProperties),
  CountryMda(): BasicFlag(
    flagMdaProperties,
    elementsBuilder: SimpleBirdPainter.mda,
  ),
  CountryMdg(): RectangleFlag(flagMdgProperties),
  CountryMdv(): RectangleFlag(flagMdvProperties),
  CountryMex(): BasicFlag(flagMexProperties, elementsBuilder: EaglePainter.new),
  CountryMhl(): BasicFlag(flagMhlProperties, elementsBuilder: MhlPainter.new),
  CountryMkd(): BasicFlag(flagMkdProperties, elementsBuilder: MkdPainter.new),
  CountryMli(): BasicFlag(flagMliProperties),
  CountryMlt(): MultiElementFlag(flagMltProperties),
  CountryMmr(): StarFlag(flagMmrProperties),
  CountryMne(): BasicFlag(flagMneProperties, elementsBuilder: MnePainter.new),
  CountryMng(): MultiElementFlag(flagMngProperties),
  CountryMnp(): MultiElementFlag(flagMnpProperties),
  CountryMoz(): TriangleFlag(flagMozProperties),
  CountryMrt(): StarFlag(flagMrtProperties),
  CountryMsr(): BasicFlag(
    flagMsrProperties,
    elementsBuilder: UnionJackPainter.halfWithoutOutline,
  ),
  CountryMtq(): TriangleFlag(flagMtqProperties),
  CountryMus(): BasicFlag(flagMusProperties),
  CountryMwi(): BasicFlag(
    flagMwiProperties,
    elementsBuilder: HalfEllipsePainter.new,
  ),
  CountryMys(): RectangleFlag(flagMysProperties),
  CountryMyt(): BasicFlag(flagMytProperties),
  CountryNam(): StarFlag(flagNamProperties),
  CountryNcl(): BasicFlag(flagNclProperties),
  CountryNer(): EllipseFlag(flagNerProperties),
  CountryNfk(): BasicFlag(flagNfkProperties, elementsBuilder: PinePainter.new),
  CountryNga(): BasicFlag(flagNgaProperties),
  CountryNic(): EllipseFlag(flagNicProperties),
  CountryNiu(): BasicFlag(
    flagNiuProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryNld(): BasicFlag(flagNldProperties),
  CountryNor(): MultiElementFlag(flagNorProperties),
  CountryNpl(): BasicFlag(flagNplProperties, elementsBuilder: NplPainter.new),
  CountryNru(): StarFlag(flagNruProperties),
  CountryNzl(): BasicFlag(
    flagNzlProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryOmn(): MultiElementFlag(flagOmnProperties),
  CountryPak(): MoonFlag(flagPakProperties),
  CountryPan(): MultiElementFlag(flagPanProperties),
  CountryPcn(): BasicFlag(
    flagPcnProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryPer(): BasicFlag(flagPerProperties),
  CountryPhl(): MultiElementFlag(flagPhlProperties),
  CountryPlw(): EllipseFlag(flagPlwProperties),
  CountryPng(): BasicFlag(flagPngProperties, elementsBuilder: PngPainter.new),
  CountryPol(): BasicFlag(flagPolProperties),
  CountryPri(): TriangleFlag(flagPriProperties),
  CountryPrk(): EllipseFlag(flagPrkProperties),
  CountryPrt(): BasicFlag(flagPrtProperties, elementsBuilder: PrtPainter.new),
  CountryPry(): EllipseFlag(flagPryProperties),
  CountryPse(): TriangleFlag(flagPseProperties),
  CountryPyf(): BasicFlag(flagPyfProperties, elementsBuilder: PyfPainter.new),
  CountryQat(): MultiElementFlag(flagQatProperties),
  CountryReu(): BasicFlag(flagReuProperties),
  CountryRou(): BasicFlag(flagRouProperties),
  CountryRus(): BasicFlag(flagRusProperties),
  CountryRwa(): StarFlag(flagRwaProperties),
  CountrySau(): BasicFlag(
    flagSauProperties,
    elementsBuilder: ShahadaPainter.sau,
  ),
  CountrySdn(): TriangleFlag(flagSdnProperties),
  CountrySen(): StarFlag(flagSenProperties),
  CountrySgp(): MultiElementFlag(flagSgpProperties),
  CountrySgs(): BasicFlag(
    flagSgsProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryShn(): BasicFlag(
    flagShnProperties,
    elementsBuilder: UnionJackPainter.full,
  ),
  CountrySjm(): MultiElementFlag(flagSjmProperties),
  CountrySlb(): MultiElementFlag(flagSlbProperties),
  CountrySle(): BasicFlag(flagSleProperties),
  CountrySlv(): EllipseFlag(flagSlvProperties),
  CountrySmr(): BasicFlag(flagSmrProperties, elementsBuilder: SmrPainter.new),
  CountrySom(): StarFlag(flagSomProperties),
  CountrySpm(): BasicFlag(flagSpmProperties),
  CountrySrb(): BasicFlag(flagSrbProperties, elementsBuilder: SrbPainter.new),
  CountrySsd(): TriangleFlag(flagSsdProperties),
  CountryStp(): MultiElementFlag(flagStpProperties),
  CountrySur(): StarFlag(flagSurProperties),
  CountrySvk(): BasicFlag(flagSvkProperties, elementsBuilder: SvkPainter.new),
  CountrySvn(): BasicFlag(flagSvnProperties, elementsBuilder: SvnPainter.new),
  CountrySwe(): RectangleFlag(flagSweProperties),
  CountrySwz(): BasicFlag(
    flagSwzProperties,
    elementsBuilder: AlmondPainter.swz,
  ),
  CountrySxm(): TriangleFlag(flagSxmProperties),
  CountrySyc(): BasicFlag(flagSycProperties, elementsBuilder: SycPainter.new),
  CountrySyr(): MultiElementFlag(flagSyrProperties),
  CountryTca(): BasicFlag(
    flagTcaProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryTcd(): BasicFlag(flagTcdProperties),
  CountryTgo(): RectangleFlag(flagTgoProperties),
  CountryTha(): BasicFlag(flagThaProperties),
  CountryTjk(): BasicFlag(flagTjkProperties, elementsBuilder: TjkPainter.new),
  CountryTkl(): BasicFlag(flagTklProperties, elementsBuilder: TklPainter.new),
  CountryTkm(): BasicFlag(flagTkmProperties, elementsBuilder: TkmPainter.new),
  CountryTls(): TriangleFlag(flagTlsProperties),
  CountryTon(): MultiElementFlag(flagTonProperties),
  CountryTto(): BasicFlag(
    flagTtoProperties,
    elementsBuilder: TtoLinePainter.new,
  ),
  CountryTun(): EllipseFlag(flagTunProperties),
  CountryTur(): MoonFlag(flagTurProperties),
  CountryTuv(): BasicFlag(
    flagTuvProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryTwn(): RectangleFlag(flagTwnProperties),
  CountryTza(): BasicFlag(flagTzaProperties),
  CountryUga(): BasicFlag(flagUgaProperties, elementsBuilder: UgaPainter.new),
  CountryUkr(): BasicFlag(flagUkrProperties),
  CountryUmi(): BasicFlag(
    flagUmiProperties,
    elementsBuilder: UsaStarsPainter.new,
  ),
  CountryUry(): RectangleFlag(flagUryProperties),
  CountryUsa(): BasicFlag(
    flagUsaProperties,
    elementsBuilder: UsaStarsPainter.new,
  ),
  CountryUzb(): MoonFlag(flagUzbProperties),
  CountryVat(): BasicFlag(flagVatProperties, elementsBuilder: VatPainter.new),
  CountryVct(): BasicFlag(flagVctProperties, elementsBuilder: VctPainter.new),
  CountryVen(): StarFlag(flagVenProperties),
  CountryVgb(): BasicFlag(
    flagVgbProperties,
    elementsBuilder: UnionJackPainter.half,
  ),
  CountryVir(): BasicFlag(flagVirProperties, elementsBuilder: VirPainter.new),
  CountryVnm(): StarFlag(flagVnmProperties),
  CountryVut(): MultiElementFlag(flagVutProperties),
  CountryWlf(): BasicFlag(flagWlfProperties),
  CountryWsm(): RectangleFlag(flagWsmProperties),
  CountryYem(): BasicFlag(flagYemProperties),
  CountryZaf(): MultiElementFlag(flagZafProperties),
  CountryZmb(): BasicFlag(flagZmbProperties, elementsBuilder: ZmbPainter.new),
  CountryZwe(): TriangleFlag(flagZweProperties),
  CountryUnk(): BasicFlag(
    flagUnkProperties,
    elementsBuilder: KosovoPainter.new,
  ),
};

/// A map that associates country objects with simplified flag representations.
///
/// This map is used to provide simplified flag representations for various
/// countries. Each entry in the map consists of a country as the key and a
/// country flag as the value.
///
/// Example usage:
/// ```dart
/// final usaFlag = smallSimplifiedFlagsMap[const CountryUsa()];
/// ```
const smallSimplifiedFlagsMap = <WorldCountry, BasicFlag>{
  ...uniqueSimplifiedFlagsMap,
  CountryGuf(): BasicFlag(flagGufProperties),
};

/// Alternative flags for specific countries. As an alternative for flags from
/// the [smallSimplifiedFlagsMap]. For example Afghanistan flag is no longer
/// using the old version but rather using the new flag properties (after 2021).
/// Also French Guiana flag is represented by unofficial, but very popular
/// and more commonly used green-yellow flag with a red star in the center.
const smallSimplifiedAlternativeFlagsMap = <WorldCountry, BasicFlag>{
  CountryGuf(): StarFlag(flagGufPropertiesAlt),
};

/// A map that associates language objects with simplified flag representations.
///
/// This map is used to provide simplified flag representations for constructed
/// languages. Each entry in the map consists of a language as the key and a
/// flag as the value.
///
/// Example usage:
/// ```dart
/// final esperantoFlag = smallSimplifiedFlagsMap[const LangEpo()];
/// ```
const smallSimplifiedLanguageFlagsMap = <NaturalLanguage, BasicFlag>{
  LangEpo(): RectangleFlag(flagEpoProperties),
  LangIdo(): StarFlag(flagIdoProperties),
  LangIle(): EllipseFlag(flagIleProperties),
  LangIna(): StarFlag(flagInaProperties),
  LangVol(): RectangleFlag(flagVolProperties),
};
