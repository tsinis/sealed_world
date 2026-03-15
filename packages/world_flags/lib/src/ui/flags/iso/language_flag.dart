import "package:sealed_countries/sealed_countries.dart";

// ignore: avoid-importing-entrypoint-exports, only show constructed flags.
import "../../../../world_flags.dart" show smallSimplifiedLanguageFlagsMap;
import "../../../data/flags_map_part_1.data.dart";
import "../../../data/flags_map_part_2.data.dart";
import "../../../data/flags_map_part_3.data.dart";
import "../../painters/custom/ago_painter.dart";
import "../../painters/custom/alb_painter.dart";
import "../../painters/custom/almond_painter.dart";
import "../../painters/custom/blr_painter.dart";
import "../../painters/custom/btn_painter.dart";
import "../../painters/custom/david_star_painter.dart";
import "../../painters/custom/esp_painter.dart";
import "../../painters/custom/hrv_painter.dart";
import "../../painters/custom/imn_painter.dart";
import "../../painters/custom/irq_painter.dart";
import "../../painters/custom/ken_painter.dart";
import "../../painters/custom/khm_painter.dart";
import "../../painters/custom/lka_painter.dart";
import "../../painters/custom/maple_leaf_painter.dart";
import "../../painters/custom/npl_painter.dart";
import "../../painters/custom/prt_painter.dart";
import "../../painters/custom/shahada_painter.dart";
import "../../painters/custom/srb_painter.dart";
import "../../painters/custom/svk_painter.dart";
import "../../painters/custom/svn_painter.dart";
import "../../painters/custom/taegukgi_painter.dart";
import "../../painters/custom/vat_painter.dart";
import "../../painters/multi_element_painter.dart";
import "../basic_flag.dart";
import "../ellipse_flag.dart";
import "../moon_flag.dart";
import "../multi_element_flag.dart";
import "../rectangle_flag.dart";
import "../star_flag.dart";
import "../triangle_flag.dart";
import "dual_flag.dart";

/// {@template language_flag}
/// A widget that displays a dual flag for a natural language.
///
/// When both a primary and secondary flag exist for the given language and
/// they differ, renders a split flag with the primary (conventional) flag as
/// background and the secondary (locale-adapted) flag clipped on top.
///
/// When no secondary flag is available or both flags are identical, renders the
/// primary flag as a regular [BasicFlag].
///
/// Example usage:
/// ```dart
/// LanguageFlag(
///   const LangDeu(),
///   alternativeMap: context.maps.languageFlags,
/// )
/// ```
/// {@endtemplate}
class LanguageFlag extends DualFlag<NaturalLanguage, BasicFlag> {
  /// Creates a new instance of [LanguageFlag].
  ///
  /// - [language]: The natural language for which to display the flag.
  /// - [alternativeMap]: An optional map of locale-adapted (secondary) flags.
  /// - [splitAngle]: The angle of the split line in degrees. Defaults to 45.
  /// - [clipSecondary]: When `true` (default), the secondary flag is clipped.
  ///   When `false`, the primary flag is clipped instead.
  /// - [key]: The key for the widget.
  const LanguageFlag(
    NaturalLanguage language, {
    super.alternativeMap,
    super.splitAngle,
    super.clipSecondary,
    super.clipBehavior,
    super.key,
  }) : super(language, defaultConventionalLanguageFlags);

  /// Default conventional language-to-flag associations.
  ///
  /// Maps each [NaturalLanguage] to the flag of its main/conventional country.
  /// For example, German maps to the Germany flag, English to the UK flag, etc.
  ///
  /// This map is generated from [NaturalLanguage.list.byCountryMap()] with
  /// `en_GB` locale, providing the standard language-country associations based
  /// on cultural/historical significance.
  static const defaultConventionalLanguageFlags = <NaturalLanguage, BasicFlag>{
    ...smallSimplifiedLanguageFlagsMap,
    LangAar(): MultiElementFlag(flagEthProperties),
    LangAbk(): BasicFlag(flagGeoProperties, elementsBuilder: GeoPainter.new),
    LangAfr(): MultiElementFlag(flagZafProperties),
    LangAka(): StarFlag(flagGhaProperties),
    LangAmh(): MultiElementFlag(flagEthProperties),
    LangAra(): BasicFlag(
      flagEgyProperties,
      elementsBuilder: SimpleBirdPainter.egy,
    ),
    LangArg(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
    LangAsm(): EllipseFlag(flagIndProperties),
    LangAva(): BasicFlag(flagRusProperties),
    LangAve(): BasicFlag(flagIrnProperties, elementsBuilder: IrnPainter.new),
    LangAym(): BasicFlag(flagPerProperties),
    LangAze(): MoonFlag(flagAzeProperties),
    LangBak(): BasicFlag(flagRusProperties),
    LangBam(): BasicFlag(flagMliProperties),
    LangBel(): BasicFlag(flagBlrProperties, elementsBuilder: BlrPainter.new),
    LangBen(): EllipseFlag(flagBgdProperties),
    LangBih(): EllipseFlag(flagIndProperties),
    LangBis(): MultiElementFlag(flagVutProperties),
    LangBod(): MultiElementFlag(flagChnProperties),
    LangBos(): MultiElementFlag(flagBihProperties),
    LangBre(): BasicFlag(flagFraProperties),
    LangBul(): BasicFlag(flagBgrProperties),
    LangCat(): BasicFlag(
      flagAndProperties,
      elementsBuilder: SimpleShieldPainter.outlinedWithDividers,
    ),
    LangCes(): TriangleFlag(flagCzeProperties),
    LangCha(): BasicFlag(flagGumProperties, elementsBuilder: AlmondPainter.gum),
    LangChe(): BasicFlag(flagRusProperties),
    LangChu(): BasicFlag(flagBgrProperties),
    LangChv(): BasicFlag(flagRusProperties),
    LangCor(): BasicFlag(
      flagGbrProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    LangCos(): BasicFlag(flagFraProperties),
    LangCre(): BasicFlag(
      flagCanProperties,
      elementsBuilder: MapleLeafPainter.new,
    ),
    LangCym(): BasicFlag(
      flagGbrProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    LangDan(): RectangleFlag(flagDnkProperties),
    LangDeu(): BasicFlag(flagDeuProperties),
    LangDiv(): RectangleFlag(flagMdvProperties),
    LangDzo(): BasicFlag(flagBtnProperties, elementsBuilder: BtnPainter.new),
    LangEll(): MultiElementFlag(flagGrcProperties),
    LangEng(): BasicFlag(
      flagGbrProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    LangEst(): BasicFlag(flagEstProperties),
    LangEus(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
    LangEwe(): StarFlag(flagGhaProperties),
    LangFao(): MultiElementFlag(flagFroProperties),
    LangFas(): BasicFlag(flagIrnProperties, elementsBuilder: IrnPainter.new),
    LangFij(): BasicFlag(
      flagFjiProperties,
      elementsBuilder: UnionJackPainter.halfWithDividers,
    ),
    LangFin(): RectangleFlag(flagFinProperties),
    LangFra(): BasicFlag(flagFraProperties),
    LangFry(): BasicFlag(flagNldProperties),
    LangFul(): BasicFlag(flagNgaProperties),
    LangGla(): BasicFlag(
      flagGbrProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    LangGle(): BasicFlag(flagIrlProperties),
    LangGlg(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
    LangGlv(): BasicFlag(flagImnProperties, elementsBuilder: ImnPainter.new),
    LangGrn(): EllipseFlag(flagPryProperties),
    LangGuj(): EllipseFlag(flagIndProperties),
    LangHat(): RectangleFlag(flagHtiProperties),
    LangHau(): BasicFlag(flagNgaProperties),
    LangHeb(): BasicFlag(
      flagIsrProperties,
      elementsBuilder: DavidStarPainter.new,
    ),
    LangHer(): StarFlag(flagNamProperties),
    LangHin(): EllipseFlag(flagIndProperties),
    LangHmo(): BasicFlag(flagPngProperties, elementsBuilder: PngPainter.new),
    LangHrv(): BasicFlag(flagHrvProperties, elementsBuilder: HrvPainter.new),
    LangHun(): BasicFlag(flagHunProperties),
    LangHye(): BasicFlag(flagArmProperties),
    LangIbo(): BasicFlag(flagNgaProperties),
    LangIii(): MultiElementFlag(flagChnProperties),
    LangIku(): BasicFlag(
      flagCanProperties,
      elementsBuilder: MapleLeafPainter.new,
    ),
    LangInd(): BasicFlag(flagIdnProperties),
    LangIpk(): BasicFlag(
      flagUsaProperties,
      elementsBuilder: UsaStarsPainter.new,
    ),
    LangIsl(): MultiElementFlag(flagIslProperties),
    LangIta(): BasicFlag(flagItaProperties),
    LangJav(): BasicFlag(flagIdnProperties),
    LangJpn(): EllipseFlag(flagJpnProperties),
    LangKal(): BasicFlag(
      flagGrlProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    LangKan(): EllipseFlag(flagIndProperties),
    LangKas(): EllipseFlag(flagIndProperties),
    LangKat(): BasicFlag(flagGeoProperties, elementsBuilder: GeoPainter.new),
    LangKau(): BasicFlag(flagNgaProperties),
    LangKaz(): BasicFlag(flagKazProperties, elementsBuilder: KazPainter.new),
    LangKhm(): BasicFlag(flagKhmProperties, elementsBuilder: KhmPainter.new),
    LangKik(): BasicFlag(flagKenProperties, elementsBuilder: KenPainter.new),
    LangKin(): StarFlag(flagRwaProperties),
    LangKir(): StarFlag(flagKgzProperties),
    LangKom(): BasicFlag(flagRusProperties),
    LangKon(): BasicFlag(
      flagCogProperties,
      elementsBuilder: CustomDiagonalPainter.vertical,
    ),
    LangKor(): BasicFlag(
      flagKorProperties,
      elementsBuilder: TaegukgiPainter.new,
    ),
    LangKua(): BasicFlag(flagAgoProperties, elementsBuilder: AgoPainter.new),
    LangKur(): BasicFlag(flagIrqProperties, elementsBuilder: IrqPainter.new),
    LangLao(): EllipseFlag(flagLaoProperties),
    LangLat(): BasicFlag(flagVatProperties, elementsBuilder: VatPainter.new),
    LangLav(): BasicFlag(flagLvaProperties),
    LangLim(): BasicFlag(flagNldProperties),
    LangLin(): BasicFlag(
      flagCogProperties,
      elementsBuilder: CustomDiagonalPainter.vertical,
    ),
    LangLit(): BasicFlag(flagLtuProperties),
    LangLtz(): BasicFlag(flagLuxProperties),
    LangLub(): BasicFlag(
      flagCodProperties,
      elementsBuilder: CustomDiagonalPainter.horizontal,
    ),
    LangLug(): BasicFlag(flagUgaProperties, elementsBuilder: UgaPainter.new),
    LangMah(): BasicFlag(flagMhlProperties, elementsBuilder: MhlPainter.new),
    LangMal(): EllipseFlag(flagIndProperties),
    LangMar(): EllipseFlag(flagIndProperties),
    LangMkd(): BasicFlag(flagMkdProperties, elementsBuilder: MkdPainter.new),
    LangMlg(): RectangleFlag(flagMdgProperties),
    LangMlt(): MultiElementFlag(flagMltProperties),
    LangMon(): MultiElementFlag(flagMngProperties),
    LangMri(): BasicFlag(
      flagNzlProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    LangMsa(): RectangleFlag(flagMysProperties),
    LangMya(): StarFlag(flagMmrProperties),
    LangNau(): StarFlag(flagNruProperties),
    LangNav(): BasicFlag(
      flagUsaProperties,
      elementsBuilder: UsaStarsPainter.new,
    ),
    LangNbl(): MultiElementFlag(flagZafProperties),
    LangNde(): TriangleFlag(flagZweProperties),
    LangNdo(): StarFlag(flagNamProperties),
    LangNep(): BasicFlag(flagNplProperties, elementsBuilder: NplPainter.new),
    LangNld(): BasicFlag(flagNldProperties),
    LangNno(): MultiElementFlag(flagNorProperties),
    LangNob(): MultiElementFlag(flagNorProperties),
    LangNor(): MultiElementFlag(flagSjmProperties),
    LangNya(): BasicFlag(
      flagMwiProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    LangOci(): BasicFlag(flagFraProperties),
    LangOji(): BasicFlag(
      flagCanProperties,
      elementsBuilder: MapleLeafPainter.new,
    ),
    LangOri(): EllipseFlag(flagIndProperties),
    LangOrm(): MultiElementFlag(flagEthProperties),
    LangOss(): BasicFlag(flagRusProperties),
    LangPan(): MoonFlag(flagPakProperties),
    LangPli(): EllipseFlag(flagIndProperties),
    LangPol(): BasicFlag(flagPolProperties),
    LangPor(): BasicFlag(flagPrtProperties, elementsBuilder: PrtPainter.new),
    LangPus(): BasicFlag(
      flagAfgProperties,
      elementsBuilder: ShahadaPainter.afg,
    ),
    LangQue(): BasicFlag(flagPerProperties),
    LangRoh(): MultiElementFlag(flagCheProperties),
    LangRon(): BasicFlag(flagRouProperties),
    LangRun(): MultiElementFlag(flagBdiProperties),
    LangRus(): BasicFlag(flagRusProperties),
    LangSag(): MultiElementFlag(flagCafProperties),
    LangSan(): EllipseFlag(flagIndProperties),
    LangSin(): BasicFlag(flagLkaProperties, elementsBuilder: LkaPainter.new),
    LangSlk(): BasicFlag(flagSvkProperties, elementsBuilder: SvkPainter.new),
    LangSlv(): BasicFlag(flagSvnProperties, elementsBuilder: SvnPainter.new),
    LangSme(): MultiElementFlag(flagNorProperties),
    LangSmo(): RectangleFlag(flagWsmProperties),
    LangSna(): TriangleFlag(flagZweProperties),
    LangSnd(): MoonFlag(flagPakProperties),
    LangSom(): StarFlag(flagSomProperties),
    LangSot(): MultiElementFlag(flagZafProperties),
    LangSpa(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
    LangSqi(): BasicFlag(flagAlbProperties, elementsBuilder: AlbPainter.new),
    LangSrd(): BasicFlag(flagItaProperties),
    LangSrp(): BasicFlag(flagSrbProperties, elementsBuilder: SrbPainter.new),
    LangSsw(): BasicFlag(flagSwzProperties, elementsBuilder: AlmondPainter.swz),
    LangSun(): BasicFlag(flagIdnProperties),
    LangSwa(): BasicFlag(flagTzaProperties),
    LangSwe(): RectangleFlag(flagSweProperties),
    LangTah(): BasicFlag(flagPyfProperties, elementsBuilder: PyfPainter.new),
    LangTam(): EllipseFlag(flagIndProperties),
    LangTat(): BasicFlag(flagRusProperties),
    LangTel(): EllipseFlag(flagIndProperties),
    LangTgk(): BasicFlag(flagTjkProperties, elementsBuilder: TjkPainter.new),
    LangTgl(): MultiElementFlag(flagPhlProperties),
    LangTha(): BasicFlag(flagThaProperties),
    LangTir(): MultiElementFlag(flagEthProperties),
    LangTon(): MultiElementFlag(flagTonProperties),
    LangTsn(): BasicFlag(flagBwaProperties),
    LangTso(): MultiElementFlag(flagZafProperties),
    LangTuk(): BasicFlag(flagTkmProperties, elementsBuilder: TkmPainter.new),
    LangTur(): MoonFlag(flagTurProperties),
    LangTwi(): StarFlag(flagGhaProperties),
    LangUig(): MultiElementFlag(flagChnProperties),
    LangUkr(): BasicFlag(flagUkrProperties),
    LangUrd(): MoonFlag(flagPakProperties),
    LangUzb(): MoonFlag(flagUzbProperties),
    LangVen(): MultiElementFlag(flagZafProperties),
    LangVie(): StarFlag(flagVnmProperties),
    LangWln(): BasicFlag(flagBelProperties),
    LangWol(): StarFlag(flagSenProperties),
    LangXho(): MultiElementFlag(flagZafProperties),
    LangYid(): BasicFlag(
      flagIsrProperties,
      elementsBuilder: DavidStarPainter.new,
    ),
    LangYor(): BasicFlag(flagNgaProperties),
    LangZha(): MultiElementFlag(flagChnProperties),
    LangZho(): MultiElementFlag(flagChnProperties),
    LangZul(): MultiElementFlag(flagZafProperties),
  };
}
