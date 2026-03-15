import "package:sealed_countries/sealed_countries.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../data/flags_map_part_2.data.dart";
import "../../../data/flags_map_part_3.data.dart";
import "../../../data/other_iso_flags_map.dart";
import "../../painters/custom/ago_painter.dart";
import "../../painters/custom/alb_painter.dart";
import "../../painters/custom/almond_painter.dart";
import "../../painters/custom/blr_painter.dart";
import "../../painters/custom/brb_painter.dart";
import "../../painters/custom/btn_painter.dart";
import "../../painters/custom/clipped_triangle_painter.dart";
import "../../painters/custom/david_star_painter.dart";
import "../../painters/custom/eagle_painter.dart";
import "../../painters/custom/eri_painter.dart";
import "../../painters/custom/hkg_painter.dart";
import "../../painters/custom/irq_painter.dart";
import "../../painters/custom/ken_painter.dart";
import "../../painters/custom/khm_painter.dart";
import "../../painters/custom/lbn_painter.dart";
import "../../painters/custom/lie_painter.dart";
import "../../painters/custom/lka_painter.dart";
import "../../painters/custom/lso_painter.dart";
import "../../painters/custom/mac_painter.dart";
import "../../painters/custom/maple_leaf_painter.dart";
import "../../painters/custom/npl_painter.dart";
import "../../painters/custom/shahada_painter.dart";
import "../../painters/custom/srb_painter.dart";
import "../../painters/custom/syc_painter.dart";
import "../../painters/custom/taegukgi_painter.dart";
import "../../painters/custom/tto_line_painter.dart";
import "../../painters/multi_element_painter.dart";
import "../basic_flag.dart";
import "../ellipse_flag.dart";
import "../moon_flag.dart";
import "../multi_element_flag.dart";
import "../rectangle_flag.dart";
import "../star_flag.dart";
import "../triangle_flag.dart";
import "dual_flag.dart";

/// {@template currency_flag}
/// A widget that displays a dual flag for a fiat currency.
///
/// When both a primary and secondary flag exist for the given currency and
/// they differ, renders a split flag with the primary (conventional) flag as
/// background and the secondary (locale-adapted) flag clipped on top.
///
/// When no secondary flag is available or both flags are identical, renders the
/// primary flag as a regular [BasicFlag].
///
/// Example usage:
/// ```dart
/// CurrencyFlag(
///   const FiatUsd(),
///   alternativeMap: context.maps.currencyFlags,
/// )
/// ```
/// {@endtemplate}
class CurrencyFlag extends DualFlag<FiatCurrency, BasicFlag> {
  /// Creates a new instance of [CurrencyFlag].
  ///
  /// - [currency]: The fiat currency for which to display the flag.
  /// - [alternativeMap]: A map of secondary flags for currencies used in
  ///   multiple countries. Defaults to [defaultSecondaryCountryCurrencyFlags]
  ///   which maps currencies to their most recognizable secondary country
  ///   (e.g. EUR → France, USD → Ecuador, GBP → Jersey).
  /// - [splitAngle]: The angle of the split line in degrees. Defaults to 45.
  /// - [clipSecondary]: When `true` (default), the secondary flag is clipped.
  ///   When `false`, the primary flag is clipped instead.
  /// - [key]: The key for the widget.
  const CurrencyFlag(
    FiatCurrency currency, {
    super.alternativeMap = defaultSecondaryCountryCurrencyFlags,
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
  }) : super(currency, defaultConventionalCurrencyFlags);

  /// Default conventional currency-to-flag associations.
  ///
  /// Maps each [FiatCurrency] to the flag of its main/conventional country.
  /// For example, USD maps to the USA flag, GBP to the UK flag, etc.
  ///
  /// This map is generated from [FiatCurrency.list.byCountryMap()] with
  /// `en_GB` locale, providing the standard currency-country associations based
  /// on cultural/historical significance.
  static const defaultConventionalCurrencyFlags = <FiatCurrency, BasicFlag>{
    FiatAed(): RectangleFlag(flagAreProperties),
    FiatAfn(): BasicFlag(
      flagAfgProperties,
      elementsBuilder: ShahadaPainter.afg,
    ),
    FiatAll(): BasicFlag(flagAlbProperties, elementsBuilder: AlbPainter.new),
    FiatAmd(): BasicFlag(flagArmProperties),
    FiatAoa(): BasicFlag(flagAgoProperties, elementsBuilder: AgoPainter.new),
    FiatArs(): StarFlag(flagArgProperties),
    FiatAud(): BasicFlag(
      flagAusProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    FiatAwg(): StarFlag(flagAbwProperties),
    FiatAzn(): MoonFlag(flagAzeProperties),
    FiatBam(): MultiElementFlag(flagBihProperties),
    FiatBbd(): BasicFlag(flagBrbProperties, elementsBuilder: BrbPainter.new),
    FiatBdt(): EllipseFlag(flagBgdProperties),
    FiatBhd(): BasicFlag(
      flagBhrProperties,
      elementsBuilder: ClippedTrianglePainter.new,
    ),
    FiatBif(): MultiElementFlag(flagBdiProperties),
    FiatBmd(): BasicFlag(
      flagBmuProperties,
      elementsBuilder: UnionJackPainter.halfWithoutOutline,
    ),
    FiatBnd(): BasicFlag(flagBrnProperties, elementsBuilder: BrnPainter.new),
    FiatBob(): BasicFlag(flagBolProperties),
    FiatBrl(): BasicFlag(flagBraProperties, elementsBuilder: BraPainter.new),
    FiatBsd(): TriangleFlag(flagBhsProperties),
    FiatBtn(): BasicFlag(flagBtnProperties, elementsBuilder: BtnPainter.new),
    FiatBwp(): BasicFlag(flagBwaProperties),
    FiatByn(): BasicFlag(flagBlrProperties, elementsBuilder: BlrPainter.new),
    FiatBzd(): MultiElementFlag(flagBlzProperties),
    FiatCad(): BasicFlag(
      flagCanProperties,
      elementsBuilder: MapleLeafPainter.new,
    ),
    FiatCdf(): BasicFlag(
      flagCodProperties,
      elementsBuilder: CustomDiagonalPainter.horizontal,
    ),
    FiatChf(): MultiElementFlag(flagCheProperties),
    FiatClf(): RectangleFlag(flagChlProperties),
    FiatClp(): RectangleFlag(flagChlProperties),
    FiatCny(): MultiElementFlag(flagChnProperties),
    FiatCop(): BasicFlag(flagColProperties),
    FiatCrc(): BasicFlag(
      flagCriProperties,
      elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
    ),
    FiatCuc(): TriangleFlag(flagCubProperties),
    FiatCup(): TriangleFlag(flagCubProperties),
    FiatCve(): StarFlag(flagCpvProperties),
    FiatCzk(): TriangleFlag(flagCzeProperties),
    FiatDjf(): TriangleFlag(flagDjiProperties),
    FiatDkk(): RectangleFlag(flagDnkProperties),
    FiatDop(): MultiElementFlag(flagDomProperties),
    FiatDzd(): MoonFlag(flagDzaProperties),
    FiatEgp(): BasicFlag(
      flagEgyProperties,
      elementsBuilder: SimpleBirdPainter.egy,
    ),
    FiatErn(): BasicFlag(flagEriProperties, elementsBuilder: EriPainter.new),
    FiatEtb(): MultiElementFlag(flagEthProperties),
    FiatEur(): StarFlag(flagEurProperties),
    FiatFjd(): BasicFlag(
      flagFjiProperties,
      elementsBuilder: UnionJackPainter.halfWithDividers,
    ),
    FiatFkp(): BasicFlag(
      flagFlkProperties,
      elementsBuilder: UnionJackPainter.halfWithoutOutline,
    ),
    FiatGbp(): BasicFlag(
      flagGbrProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    FiatGel(): BasicFlag(flagGeoProperties, elementsBuilder: GeoPainter.new),
    FiatGhs(): StarFlag(flagGhaProperties),
    FiatGip(): MultiElementFlag(flagGibProperties),
    FiatGmd(): BasicFlag(flagGmbProperties),
    FiatGnf(): BasicFlag(flagGinProperties),
    FiatGtq(): EllipseFlag(flagGtmProperties),
    FiatGyd(): MultiElementFlag(flagGuyProperties),
    FiatHkd(): BasicFlag(flagHkgProperties, elementsBuilder: HkgPainter.new),
    FiatHnl(): MultiElementFlag(flagHndProperties),
    FiatHtg(): RectangleFlag(flagHtiProperties),
    FiatHuf(): BasicFlag(flagHunProperties),
    FiatIdr(): BasicFlag(flagIdnProperties),
    FiatIls(): BasicFlag(
      flagIsrProperties,
      elementsBuilder: DavidStarPainter.new,
    ),
    FiatInr(): EllipseFlag(flagIndProperties),
    FiatIqd(): BasicFlag(flagIrqProperties, elementsBuilder: IrqPainter.new),
    FiatIrr(): BasicFlag(flagIrnProperties, elementsBuilder: IrnPainter.new),
    FiatIsk(): MultiElementFlag(flagIslProperties),
    FiatJmd(): MultiElementFlag(flagJamProperties),
    FiatJod(): TriangleFlag(flagJorProperties),
    FiatJpy(): EllipseFlag(flagJpnProperties),
    FiatKes(): BasicFlag(flagKenProperties, elementsBuilder: KenPainter.new),
    FiatKgs(): StarFlag(flagKgzProperties),
    FiatKhr(): BasicFlag(flagKhmProperties, elementsBuilder: KhmPainter.new),
    FiatKmf(): TriangleFlag(flagComProperties),
    FiatKpw(): EllipseFlag(flagPrkProperties),
    FiatKrw(): BasicFlag(
      flagKorProperties,
      elementsBuilder: TaegukgiPainter.new,
    ),
    FiatKwd(): MultiElementFlag(flagKwtProperties),
    FiatKyd(): BasicFlag(
      flagCymProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    FiatKzt(): BasicFlag(flagKazProperties, elementsBuilder: KazPainter.new),
    FiatLak(): EllipseFlag(flagLaoProperties),
    FiatLbp(): BasicFlag(flagLbnProperties, elementsBuilder: LbnPainter.new),
    FiatLkr(): BasicFlag(flagLkaProperties, elementsBuilder: LkaPainter.new),
    FiatLrd(): RectangleFlag(flagLbrProperties),
    FiatLsl(): BasicFlag(flagLsoProperties, elementsBuilder: LsoPainter.new),
    FiatLyd(): MoonFlag(flagLbyProperties),
    FiatMad(): StarFlag(flagMarProperties),
    FiatMdl(): BasicFlag(
      flagMdaProperties,
      elementsBuilder: SimpleBirdPainter.mda,
    ),
    FiatMga(): RectangleFlag(flagMdgProperties),
    FiatMkd(): BasicFlag(flagMkdProperties, elementsBuilder: MkdPainter.new),
    FiatMmk(): StarFlag(flagMmrProperties),
    FiatMnt(): MultiElementFlag(flagMngProperties),
    FiatMop(): BasicFlag(flagMacProperties, elementsBuilder: MacPainter.new),
    FiatMru(): StarFlag(flagMrtProperties),
    FiatMur(): BasicFlag(flagMusProperties),
    FiatMvr(): RectangleFlag(flagMdvProperties),
    FiatMwk(): BasicFlag(
      flagMwiProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    FiatMxn(): BasicFlag(flagMexProperties, elementsBuilder: EaglePainter.new),
    FiatMyr(): RectangleFlag(flagMysProperties),
    FiatMzn(): TriangleFlag(flagMozProperties),
    FiatNad(): StarFlag(flagNamProperties),
    FiatNgn(): BasicFlag(flagNgaProperties),
    FiatNio(): EllipseFlag(flagNicProperties),
    FiatNok(): MultiElementFlag(flagNorProperties),
    FiatNpr(): BasicFlag(flagNplProperties, elementsBuilder: NplPainter.new),
    FiatNzd(): BasicFlag(
      flagNzlProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    FiatOmr(): MultiElementFlag(flagOmnProperties),
    FiatPab(): MultiElementFlag(flagPanProperties),
    FiatPen(): BasicFlag(flagPerProperties),
    FiatPgk(): BasicFlag(flagPngProperties, elementsBuilder: PngPainter.new),
    FiatPhp(): MultiElementFlag(flagPhlProperties),
    FiatPkr(): MoonFlag(flagPakProperties),
    FiatPln(): BasicFlag(flagPolProperties),
    FiatPyg(): EllipseFlag(flagPryProperties),
    FiatQar(): MultiElementFlag(flagQatProperties),
    FiatRon(): BasicFlag(flagRouProperties),
    FiatRsd(): BasicFlag(flagSrbProperties, elementsBuilder: SrbPainter.new),
    FiatRub(): BasicFlag(flagRusProperties),
    FiatRwf(): StarFlag(flagRwaProperties),
    FiatSar(): BasicFlag(
      flagSauProperties,
      elementsBuilder: ShahadaPainter.sau,
    ),
    FiatSbd(): MultiElementFlag(flagSlbProperties),
    FiatScr(): BasicFlag(flagSycProperties, elementsBuilder: SycPainter.new),
    FiatSdg(): TriangleFlag(flagSdnProperties),
    FiatSek(): RectangleFlag(flagSweProperties),
    FiatSgd(): MultiElementFlag(flagSgpProperties),
    FiatShp(): BasicFlag(
      flagShnProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    FiatSle(): BasicFlag(flagSleProperties),
    FiatSos(): StarFlag(flagSomProperties),
    FiatSrd(): StarFlag(flagSurProperties),
    FiatSsp(): TriangleFlag(flagSsdProperties),
    FiatStn(): MultiElementFlag(flagStpProperties),
    FiatSyp(): MultiElementFlag(flagSyrProperties),
    FiatSzl(): BasicFlag(flagSwzProperties, elementsBuilder: AlmondPainter.swz),
    FiatThb(): BasicFlag(flagThaProperties),
    FiatTjs(): BasicFlag(flagTjkProperties, elementsBuilder: TjkPainter.new),
    FiatTmt(): BasicFlag(flagTkmProperties, elementsBuilder: TkmPainter.new),
    FiatTnd(): EllipseFlag(flagTunProperties),
    FiatTop(): MultiElementFlag(flagTonProperties),
    FiatTry(): MoonFlag(flagTurProperties),
    FiatTtd(): BasicFlag(
      flagTtoProperties,
      elementsBuilder: TtoLinePainter.new,
    ),
    FiatTwd(): RectangleFlag(flagTwnProperties),
    FiatTzs(): BasicFlag(flagTzaProperties),
    FiatUah(): BasicFlag(flagUkrProperties),
    FiatUgx(): BasicFlag(flagUgaProperties, elementsBuilder: UgaPainter.new),
    FiatUsd(): BasicFlag(
      flagUsaProperties,
      elementsBuilder: UsaStarsPainter.new,
    ),
    FiatUyu(): RectangleFlag(flagUryProperties),
    FiatUzs(): MoonFlag(flagUzbProperties),
    FiatVes(): StarFlag(flagVenProperties),
    FiatVnd(): StarFlag(flagVnmProperties),
    FiatVuv(): MultiElementFlag(flagVutProperties),
    FiatWst(): RectangleFlag(flagWsmProperties),
    FiatXaf(): StarFlag(flagCmrProperties),
    FiatXcd(): RectangleFlag(flagLcaProperties),
    FiatXcg(): MultiElementFlag(flagCuwProperties),
    FiatXof(): BasicFlag(flagCivProperties),
    FiatXpf(): BasicFlag(flagPyfProperties, elementsBuilder: PyfPainter.new),
    FiatYer(): BasicFlag(flagYemProperties),
    FiatZar(): MultiElementFlag(flagZafProperties),
    FiatZmw(): BasicFlag(flagZmbProperties, elementsBuilder: ZmbPainter.new),
    FiatZwg(): TriangleFlag(flagZweProperties),
  };

  /// Default secondary country flags for currencies used in multiple countries.
  ///
  /// Maps each [FiatCurrency] that is used in more than one country to the flag
  /// of a notable secondary country. For example, EUR (primary: Germany) maps
  /// to the French flag, USD (primary: US) maps to the Ecuadorian flag, etc.
  ///
  /// Only currencies with a well-known secondary country association are
  /// included. Single-country currencies are omitted.
  static const defaultSecondaryCountryCurrencyFlags = <FiatCurrency, BasicFlag>{
    FiatAud(): BasicFlag(
      flagKirProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    FiatChf(): BasicFlag(flagLieProperties, elementsBuilder: LiePainter.new),
    FiatDkk(): BasicFlag(
      flagGrlProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    FiatDzd(): MultiElementFlag(flagEshProperties),
    FiatEgp(): TriangleFlag(flagPseProperties),
    FiatEur(): BasicFlag(flagDeuProperties),
    FiatGbp(): BasicFlag(
      flagJeyProperties,
      elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
    ),
    FiatIls(): TriangleFlag(flagPseProperties),
    FiatInr(): BasicFlag(flagBtnProperties, elementsBuilder: BtnPainter.new),
    FiatJod(): TriangleFlag(flagPseProperties),
    FiatMad(): MultiElementFlag(flagEshProperties),
    FiatMru(): MultiElementFlag(flagEshProperties),
    FiatNzd(): BasicFlag(
      flagCokProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    FiatSgd(): BasicFlag(flagBrnProperties, elementsBuilder: BrnPainter.new),
    FiatUsd(): BasicFlag(
      flagEcuProperties,
      elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
    ),
    FiatXaf(): BasicFlag(flagTcdProperties),
    FiatXcd(): MultiElementFlag(flagGrdProperties),
    FiatXcg(): TriangleFlag(flagSxmProperties),
    FiatXof(): StarFlag(flagSenProperties),
    FiatXpf(): BasicFlag(flagNclProperties),
    FiatZar(): StarFlag(flagNamProperties),
  };
}
