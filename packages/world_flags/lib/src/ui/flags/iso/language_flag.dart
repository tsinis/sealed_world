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
import "../../painters/custom/cyp_painter.dart";
import "../../painters/custom/david_star_painter.dart";
import "../../painters/custom/eagle_painter.dart";
import "../../painters/custom/eri_painter.dart";
import "../../painters/custom/esp_painter.dart";
import "../../painters/custom/hrv_painter.dart";
import "../../painters/custom/imn_painter.dart";
import "../../painters/custom/irq_painter.dart";
import "../../painters/custom/ken_painter.dart";
import "../../painters/custom/khm_painter.dart";
import "../../painters/custom/lka_painter.dart";
import "../../painters/custom/lso_painter.dart";
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
  /// - [alternativeMap]: A map of secondary (locale-adapted) flags. Defaults to
  ///   [defaultSecondaryCountryLanguageFlags] which maps languages to their
  ///  most recognizable secondary country (e.g. English → US, French → Canada).
  /// - [splitAngle]: The angle of the split line in degrees. Defaults to 45.
  /// - [clipSecondary]: When `true` (default), the secondary flag is clipped.
  ///   When `false`, the primary flag is clipped instead.
  /// - [key]: The key for the widget.
  const LanguageFlag(
    NaturalLanguage language, {
    super.alternativeMap = defaultSecondaryCountryLanguageFlags,
    super.splitAngle,
    super.clipSecondary,
    super.clipBehavior,
    super.orElse,
    super.height,
    super.width,
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.shader,
    super.child,
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
    LangAar(): BasicFlag(flagEthProperties),
    LangAbk(): BasicFlag(flagGeoProperties, elementsBuilder: GeoPainter.new),
    LangAfr(): BasicFlag(flagZafProperties),
    LangAka(): BasicFlag(flagGhaProperties),
    LangAmh(): BasicFlag(flagEthProperties),
    LangAra(): BasicFlag(
      flagEgyProperties,
      elementsBuilder: SimpleBirdPainter.egy,
    ),
    LangArg(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
    LangAsm(): BasicFlag(flagIndProperties),
    LangAva(): BasicFlag(flagRusProperties),
    LangAve(): BasicFlag(flagIrnProperties, elementsBuilder: IrnPainter.new),
    LangAym(): BasicFlag(flagPerProperties),
    LangAze(): BasicFlag(flagAzeProperties),
    LangBak(): BasicFlag(flagRusProperties),
    LangBam(): BasicFlag(flagMliProperties),
    LangBel(): BasicFlag(flagBlrProperties, elementsBuilder: BlrPainter.new),
    LangBen(): BasicFlag(flagBgdProperties),
    LangBih(): BasicFlag(flagIndProperties),
    LangBis(): BasicFlag(flagVutProperties),
    LangBod(): BasicFlag(flagChnProperties),
    LangBos(): BasicFlag(flagBihProperties),
    LangBre(): BasicFlag(flagFraProperties),
    LangBul(): BasicFlag(flagBgrProperties),
    LangCat(): BasicFlag(
      flagAndProperties,
      elementsBuilder: SimpleShieldPainter.outlinedWithDividers,
    ),
    LangCes(): BasicFlag(flagCzeProperties),
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
    LangDan(): BasicFlag(flagDnkProperties),
    LangDeu(): BasicFlag(flagDeuProperties),
    LangDiv(): BasicFlag(flagMdvProperties),
    LangDzo(): BasicFlag(flagBtnProperties, elementsBuilder: BtnPainter.new),
    LangEll(): BasicFlag(flagGrcProperties),
    LangEng(): BasicFlag(
      flagGbrProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    LangEst(): BasicFlag(flagEstProperties),
    LangEus(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
    LangEwe(): BasicFlag(flagGhaProperties),
    LangFao(): BasicFlag(flagFroProperties),
    LangFas(): BasicFlag(flagIrnProperties, elementsBuilder: IrnPainter.new),
    LangFij(): BasicFlag(
      flagFjiProperties,
      elementsBuilder: UnionJackPainter.halfWithDividers,
    ),
    LangFin(): BasicFlag(flagFinProperties),
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
    LangGrn(): BasicFlag(flagPryProperties),
    LangGuj(): BasicFlag(flagIndProperties),
    LangHat(): BasicFlag(flagHtiProperties),
    LangHau(): BasicFlag(flagNgaProperties),
    LangHeb(): BasicFlag(
      flagIsrProperties,
      elementsBuilder: DavidStarPainter.new,
    ),
    LangHer(): BasicFlag(flagNamProperties),
    LangHin(): BasicFlag(flagIndProperties),
    LangHmo(): BasicFlag(flagPngProperties, elementsBuilder: PngPainter.new),
    LangHrv(): BasicFlag(flagHrvProperties, elementsBuilder: HrvPainter.new),
    LangHun(): BasicFlag(flagHunProperties),
    LangHye(): BasicFlag(flagArmProperties),
    LangIbo(): BasicFlag(flagNgaProperties),
    LangIii(): BasicFlag(flagChnProperties),
    LangIku(): BasicFlag(
      flagCanProperties,
      elementsBuilder: MapleLeafPainter.new,
    ),
    LangInd(): BasicFlag(flagIdnProperties),
    LangIpk(): BasicFlag(
      flagUsaProperties,
      elementsBuilder: UsaStarsPainter.new,
    ),
    LangIsl(): BasicFlag(flagIslProperties),
    LangIta(): BasicFlag(flagItaProperties),
    LangJav(): BasicFlag(flagIdnProperties),
    LangJpn(): BasicFlag(flagJpnProperties),
    LangKal(): BasicFlag(
      flagGrlProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    LangKan(): BasicFlag(flagIndProperties),
    LangKas(): BasicFlag(flagIndProperties),
    LangKat(): BasicFlag(flagGeoProperties, elementsBuilder: GeoPainter.new),
    LangKau(): BasicFlag(flagNgaProperties),
    LangKaz(): BasicFlag(flagKazProperties, elementsBuilder: KazPainter.new),
    LangKhm(): BasicFlag(flagKhmProperties, elementsBuilder: KhmPainter.new),
    LangKik(): BasicFlag(flagKenProperties, elementsBuilder: KenPainter.new),
    LangKin(): BasicFlag(flagRwaProperties),
    LangKir(): BasicFlag(flagKgzProperties),
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
    LangLao(): BasicFlag(flagLaoProperties),
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
    LangMal(): BasicFlag(flagIndProperties),
    LangMar(): BasicFlag(flagIndProperties),
    LangMkd(): BasicFlag(flagMkdProperties, elementsBuilder: MkdPainter.new),
    LangMlg(): BasicFlag(flagMdgProperties),
    LangMlt(): BasicFlag(flagMltProperties),
    LangMon(): BasicFlag(flagMngProperties),
    LangMri(): BasicFlag(
      flagNzlProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    LangMsa(): BasicFlag(flagMysProperties),
    LangMya(): BasicFlag(flagMmrProperties),
    LangNau(): BasicFlag(flagNruProperties),
    LangNav(): BasicFlag(
      flagUsaProperties,
      elementsBuilder: UsaStarsPainter.new,
    ),
    LangNbl(): BasicFlag(flagZafProperties),
    LangNde(): BasicFlag(flagZweProperties),
    LangNdo(): BasicFlag(flagNamProperties),
    LangNep(): BasicFlag(flagNplProperties, elementsBuilder: NplPainter.new),
    LangNld(): BasicFlag(flagNldProperties),
    LangNno(): BasicFlag(flagNorProperties),
    LangNob(): BasicFlag(flagNorProperties),
    LangNor(): BasicFlag(flagSjmProperties),
    LangNya(): BasicFlag(
      flagMwiProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    LangOci(): BasicFlag(flagFraProperties),
    LangOji(): BasicFlag(
      flagCanProperties,
      elementsBuilder: MapleLeafPainter.new,
    ),
    LangOri(): BasicFlag(flagIndProperties),
    LangOrm(): BasicFlag(flagEthProperties),
    LangOss(): BasicFlag(flagRusProperties),
    LangPan(): BasicFlag(flagPakProperties),
    LangPli(): BasicFlag(flagIndProperties),
    LangPol(): BasicFlag(flagPolProperties),
    LangPor(): BasicFlag(flagPrtProperties, elementsBuilder: PrtPainter.new),
    LangPus(): BasicFlag(
      flagAfgProperties,
      elementsBuilder: ShahadaPainter.afg,
    ),
    LangQue(): BasicFlag(flagPerProperties),
    LangRoh(): BasicFlag(flagCheProperties),
    LangRon(): BasicFlag(flagRouProperties),
    LangRun(): BasicFlag(flagBdiProperties),
    LangRus(): BasicFlag(flagRusProperties),
    LangSag(): BasicFlag(flagCafProperties),
    LangSan(): BasicFlag(flagIndProperties),
    LangSin(): BasicFlag(flagLkaProperties, elementsBuilder: LkaPainter.new),
    LangSlk(): BasicFlag(flagSvkProperties, elementsBuilder: SvkPainter.new),
    LangSlv(): BasicFlag(flagSvnProperties, elementsBuilder: SvnPainter.new),
    LangSme(): BasicFlag(flagNorProperties),
    LangSmo(): BasicFlag(flagWsmProperties),
    LangSna(): BasicFlag(flagZweProperties),
    LangSnd(): BasicFlag(flagPakProperties),
    LangSom(): BasicFlag(flagSomProperties),
    LangSot(): BasicFlag(flagZafProperties),
    LangSpa(): BasicFlag(flagEspProperties, elementsBuilder: EspPainter.new),
    LangSqi(): BasicFlag(flagAlbProperties, elementsBuilder: AlbPainter.new),
    LangSrd(): BasicFlag(flagItaProperties),
    LangSrp(): BasicFlag(flagSrbProperties, elementsBuilder: SrbPainter.new),
    LangSsw(): BasicFlag(flagSwzProperties, elementsBuilder: AlmondPainter.swz),
    LangSun(): BasicFlag(flagIdnProperties),
    LangSwa(): BasicFlag(flagTzaProperties),
    LangSwe(): BasicFlag(flagSweProperties),
    LangTah(): BasicFlag(flagPyfProperties, elementsBuilder: PyfPainter.new),
    LangTam(): BasicFlag(flagIndProperties),
    LangTat(): BasicFlag(flagRusProperties),
    LangTel(): BasicFlag(flagIndProperties),
    LangTgk(): BasicFlag(flagTjkProperties, elementsBuilder: TjkPainter.new),
    LangTgl(): BasicFlag(flagPhlProperties),
    LangTha(): BasicFlag(flagThaProperties),
    LangTir(): BasicFlag(flagEthProperties),
    LangTon(): BasicFlag(flagTonProperties),
    LangTsn(): BasicFlag(flagBwaProperties),
    LangTso(): BasicFlag(flagZafProperties),
    LangTuk(): BasicFlag(flagTkmProperties, elementsBuilder: TkmPainter.new),
    LangTur(): BasicFlag(flagTurProperties),
    LangTwi(): BasicFlag(flagGhaProperties),
    LangUig(): BasicFlag(flagChnProperties),
    LangUkr(): BasicFlag(flagUkrProperties),
    LangUrd(): BasicFlag(flagPakProperties),
    LangUzb(): BasicFlag(flagUzbProperties),
    LangVen(): BasicFlag(flagZafProperties),
    LangVie(): BasicFlag(flagVnmProperties),
    LangWln(): BasicFlag(flagBelProperties),
    LangWol(): BasicFlag(flagSenProperties),
    LangXho(): BasicFlag(flagZafProperties),
    LangYid(): BasicFlag(
      flagIsrProperties,
      elementsBuilder: DavidStarPainter.new,
    ),
    LangYor(): BasicFlag(flagNgaProperties),
    LangZha(): BasicFlag(flagChnProperties),
    LangZho(): BasicFlag(flagChnProperties),
    LangZul(): BasicFlag(flagZafProperties),
  };

  /// Default secondary country flags for languages spoken in multiple
  /// countries.
  ///
  /// Maps each [NaturalLanguage] that has a notable secondary country to the
  /// flag of that country. For example, English (primary: UK) maps to the US
  /// flag, French (primary: France) maps to the Canadian flag, etc.
  ///
  /// Only languages with a well-known secondary country association are
  /// included. Languages spoken in only one country are omitted.
  static const defaultSecondaryCountryLanguageFlags =
      <NaturalLanguage, BasicFlag>{
        LangAbk(): BasicFlag(flagRusProperties),
        LangAfr(): BasicFlag(flagNamProperties),
        LangAra(): BasicFlag(
          flagSauProperties,
          elementsBuilder: ShahadaPainter.sau,
        ),
        LangAym(): BasicFlag(flagBolProperties),
        LangBih(): BasicFlag(
          flagNplProperties,
          elementsBuilder: NplPainter.new,
        ),
        LangBod(): BasicFlag(
          flagBtnProperties,
          elementsBuilder: BtnPainter.new,
        ),
        LangCha(): BasicFlag(flagMnpProperties),
        LangCos(): BasicFlag(flagItaProperties),
        LangDan(): BasicFlag(flagFroProperties),
        LangDeu(): BasicFlag(flagAutProperties),
        LangEll(): BasicFlag(
          flagCypProperties,
          elementsBuilder: CypPainter.new,
        ),
        LangEng(): BasicFlag(
          flagUsaProperties,
          elementsBuilder: UsaStarsPainter.new,
        ),
        LangEus(): BasicFlag(flagFraProperties),
        LangEwe(): BasicFlag(flagTgoProperties),
        LangFra(): BasicFlag(
          flagCanProperties,
          elementsBuilder: MapleLeafPainter.new,
        ),
        LangFul(): BasicFlag(flagNerProperties),
        LangGlg(): BasicFlag(
          flagPrtProperties,
          elementsBuilder: PrtPainter.new,
        ),
        LangGrn(): BasicFlag(flagBolProperties),
        LangHau(): BasicFlag(flagNerProperties),
        LangHrv(): BasicFlag(flagBihProperties),
        LangIpk(): BasicFlag(
          flagCanProperties,
          elementsBuilder: MapleLeafPainter.new,
        ),
        LangIta(): BasicFlag(flagCheProperties),
        LangKas(): BasicFlag(flagPakProperties),
        LangKau(): BasicFlag(flagNerProperties),
        LangKor(): BasicFlag(flagPrkProperties),
        LangKua(): BasicFlag(flagNamProperties),
        LangLim(): BasicFlag(flagBelProperties),
        LangMsa(): BasicFlag(flagSgpProperties),
        LangNld(): BasicFlag(flagBelProperties),
        LangNya(): BasicFlag(flagZweProperties),
        LangOci(): BasicFlag(
          flagEspProperties,
          elementsBuilder: EspPainter.new,
        ),
        LangOji(): BasicFlag(
          flagUsaProperties,
          elementsBuilder: UsaStarsPainter.new,
        ),
        LangOss(): BasicFlag(
          flagGeoProperties,
          elementsBuilder: GeoPainter.new,
        ),
        LangPan(): BasicFlag(flagIndProperties),
        LangPor(): BasicFlag(
          flagBraProperties,
          elementsBuilder: BraPainter.new,
        ),
        LangQue(): BasicFlag(flagBolProperties),
        LangRon(): BasicFlag(
          flagMdaProperties,
          elementsBuilder: SimpleBirdPainter.mda,
        ),
        LangRus(): BasicFlag(
          flagBlrProperties,
          elementsBuilder: BlrPainter.new,
        ),
        LangSmo(): BasicFlag(
          flagAsmProperties,
          elementsBuilder: EaglePainter.new,
        ),
        LangSnd(): BasicFlag(flagIndProperties),
        LangSom(): BasicFlag(flagEthProperties),
        LangSot(): BasicFlag(
          flagLsoProperties,
          elementsBuilder: LsoPainter.new,
        ),
        LangSpa(): BasicFlag(
          flagMexProperties,
          elementsBuilder: EaglePainter.new,
        ),
        LangSqi(): BasicFlag(
          flagUnkProperties,
          elementsBuilder: KosovoPainter.new,
        ),
        LangSrp(): BasicFlag(flagBihProperties),
        LangSsw(): BasicFlag(flagZafProperties),
        LangSwa(): BasicFlag(
          flagKenProperties,
          elementsBuilder: KenPainter.new,
        ),
        LangSwe(): BasicFlag(flagFinProperties),
        LangTam(): BasicFlag(
          flagLkaProperties,
          elementsBuilder: LkaPainter.new,
        ),
        LangTir(): BasicFlag(
          flagEriProperties,
          elementsBuilder: EriPainter.new,
        ),
        LangTsn(): BasicFlag(flagZafProperties),
        LangTso(): BasicFlag(flagZweProperties),
        LangTur(): BasicFlag(
          flagCypProperties,
          elementsBuilder: CypPainter.new,
        ),
        LangVen(): BasicFlag(flagZweProperties),
        LangXho(): BasicFlag(flagZweProperties),
        LangYid(): BasicFlag(flagDeuProperties),
        LangZho(): BasicFlag(flagTwnProperties),
      };
}
