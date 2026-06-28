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
/// ```dart#no-test
/// CurrencyFlag.fromFlagMap(
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
  const CurrencyFlag.fromFlagMap(
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
    FiatAed(): BasicFlag(flagAreProperties),
    FiatAfn(): BasicFlag(
      flagAfgProperties,
      elementsBuilder: ShahadaPainter.afg,
    ),
    FiatAll(): BasicFlag(flagAlbProperties, elementsBuilder: AlbPainter.new),
    FiatAmd(): BasicFlag(flagArmProperties),
    FiatAoa(): BasicFlag(flagAgoProperties, elementsBuilder: AgoPainter.new),
    FiatArs(): BasicFlag(flagArgProperties),
    FiatAud(): BasicFlag(
      flagAusProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    FiatAwg(): BasicFlag(flagAbwProperties),
    FiatAzn(): BasicFlag(flagAzeProperties),
    FiatBam(): BasicFlag(flagBihProperties),
    FiatBbd(): BasicFlag(flagBrbProperties, elementsBuilder: BrbPainter.new),
    FiatBdt(): BasicFlag(flagBgdProperties),
    FiatBhd(): BasicFlag(
      flagBhrProperties,
      elementsBuilder: ClippedTrianglePainter.new,
    ),
    FiatBif(): BasicFlag(flagBdiProperties),
    FiatBmd(): BasicFlag(
      flagBmuProperties,
      elementsBuilder: UnionJackPainter.halfWithoutOutline,
    ),
    FiatBnd(): BasicFlag(flagBrnProperties, elementsBuilder: BrnPainter.new),
    FiatBob(): BasicFlag(flagBolProperties),
    FiatBrl(): BasicFlag(flagBraProperties, elementsBuilder: BraPainter.new),
    FiatBsd(): BasicFlag(flagBhsProperties),
    FiatBtn(): BasicFlag(flagBtnProperties, elementsBuilder: BtnPainter.new),
    FiatBwp(): BasicFlag(flagBwaProperties),
    FiatByn(): BasicFlag(flagBlrProperties, elementsBuilder: BlrPainter.new),
    FiatBzd(): BasicFlag(flagBlzProperties),
    FiatCad(): BasicFlag(
      flagCanProperties,
      elementsBuilder: MapleLeafPainter.new,
    ),
    FiatCdf(): BasicFlag(
      flagCodProperties,
      elementsBuilder: CustomDiagonalPainter.horizontal,
    ),
    FiatChf(): BasicFlag(flagCheProperties),
    FiatClf(): BasicFlag(flagChlProperties),
    FiatClp(): BasicFlag(flagChlProperties),
    FiatCny(): BasicFlag(flagChnProperties),
    FiatCop(): BasicFlag(flagColProperties),
    FiatCrc(): BasicFlag(
      flagCriProperties,
      elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
    ),
    FiatCuc(): BasicFlag(flagCubProperties),
    FiatCup(): BasicFlag(flagCubProperties),
    FiatCve(): BasicFlag(flagCpvProperties),
    FiatCzk(): BasicFlag(flagCzeProperties),
    FiatDjf(): BasicFlag(flagDjiProperties),
    FiatDkk(): BasicFlag(flagDnkProperties),
    FiatDop(): BasicFlag(flagDomProperties),
    FiatDzd(): BasicFlag(flagDzaProperties),
    FiatEgp(): BasicFlag(
      flagEgyProperties,
      elementsBuilder: SimpleBirdPainter.egy,
    ),
    FiatErn(): BasicFlag(flagEriProperties, elementsBuilder: EriPainter.new),
    FiatEtb(): BasicFlag(flagEthProperties),
    FiatEur(): BasicFlag(flagEurProperties),
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
    FiatGhs(): BasicFlag(flagGhaProperties),
    FiatGip(): BasicFlag(flagGibProperties),
    FiatGmd(): BasicFlag(flagGmbProperties),
    FiatGnf(): BasicFlag(flagGinProperties),
    FiatGtq(): BasicFlag(flagGtmProperties),
    FiatGyd(): BasicFlag(flagGuyProperties),
    FiatHkd(): BasicFlag(flagHkgProperties, elementsBuilder: HkgPainter.new),
    FiatHnl(): BasicFlag(flagHndProperties),
    FiatHtg(): BasicFlag(flagHtiProperties),
    FiatHuf(): BasicFlag(flagHunProperties),
    FiatIdr(): BasicFlag(flagIdnProperties),
    FiatIls(): BasicFlag(
      flagIsrProperties,
      elementsBuilder: DavidStarPainter.new,
    ),
    FiatInr(): BasicFlag(flagIndProperties),
    FiatIqd(): BasicFlag(flagIrqProperties, elementsBuilder: IrqPainter.new),
    FiatIrr(): BasicFlag(flagIrnProperties, elementsBuilder: IrnPainter.new),
    FiatIsk(): BasicFlag(flagIslProperties),
    FiatJmd(): BasicFlag(flagJamProperties),
    FiatJod(): BasicFlag(flagJorProperties),
    FiatJpy(): BasicFlag(flagJpnProperties),
    FiatKes(): BasicFlag(flagKenProperties, elementsBuilder: KenPainter.new),
    FiatKgs(): BasicFlag(flagKgzProperties),
    FiatKhr(): BasicFlag(flagKhmProperties, elementsBuilder: KhmPainter.new),
    FiatKmf(): BasicFlag(flagComProperties),
    FiatKpw(): BasicFlag(flagPrkProperties),
    FiatKrw(): BasicFlag(
      flagKorProperties,
      elementsBuilder: TaegukgiPainter.new,
    ),
    FiatKwd(): BasicFlag(flagKwtProperties),
    FiatKyd(): BasicFlag(
      flagCymProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    FiatKzt(): BasicFlag(flagKazProperties, elementsBuilder: KazPainter.new),
    FiatLak(): BasicFlag(flagLaoProperties),
    FiatLbp(): BasicFlag(flagLbnProperties, elementsBuilder: LbnPainter.new),
    FiatLkr(): BasicFlag(flagLkaProperties, elementsBuilder: LkaPainter.new),
    FiatLrd(): BasicFlag(flagLbrProperties),
    FiatLsl(): BasicFlag(flagLsoProperties, elementsBuilder: LsoPainter.new),
    FiatLyd(): BasicFlag(flagLbyProperties),
    FiatMad(): BasicFlag(flagMarProperties),
    FiatMdl(): BasicFlag(
      flagMdaProperties,
      elementsBuilder: SimpleBirdPainter.mda,
    ),
    FiatMga(): BasicFlag(flagMdgProperties),
    FiatMkd(): BasicFlag(flagMkdProperties, elementsBuilder: MkdPainter.new),
    FiatMmk(): BasicFlag(flagMmrProperties),
    FiatMnt(): BasicFlag(flagMngProperties),
    FiatMop(): BasicFlag(flagMacProperties, elementsBuilder: MacPainter.new),
    FiatMru(): BasicFlag(flagMrtProperties),
    FiatMur(): BasicFlag(flagMusProperties),
    FiatMvr(): BasicFlag(flagMdvProperties),
    FiatMwk(): BasicFlag(
      flagMwiProperties,
      elementsBuilder: HalfEllipsePainter.new,
    ),
    FiatMxn(): BasicFlag(flagMexProperties, elementsBuilder: EaglePainter.new),
    FiatMyr(): BasicFlag(flagMysProperties),
    FiatMzn(): BasicFlag(flagMozProperties),
    FiatNad(): BasicFlag(flagNamProperties),
    FiatNgn(): BasicFlag(flagNgaProperties),
    FiatNio(): BasicFlag(flagNicProperties),
    FiatNok(): BasicFlag(flagNorProperties),
    FiatNpr(): BasicFlag(flagNplProperties, elementsBuilder: NplPainter.new),
    FiatNzd(): BasicFlag(
      flagNzlProperties,
      elementsBuilder: UnionJackPainter.half,
    ),
    FiatOmr(): BasicFlag(flagOmnProperties),
    FiatPab(): BasicFlag(flagPanProperties),
    FiatPen(): BasicFlag(flagPerProperties),
    FiatPgk(): BasicFlag(flagPngProperties, elementsBuilder: PngPainter.new),
    FiatPhp(): BasicFlag(flagPhlProperties),
    FiatPkr(): BasicFlag(flagPakProperties),
    FiatPln(): BasicFlag(flagPolProperties),
    FiatPyg(): BasicFlag(flagPryProperties),
    FiatQar(): BasicFlag(flagQatProperties),
    FiatRon(): BasicFlag(flagRouProperties),
    FiatRsd(): BasicFlag(flagSrbProperties, elementsBuilder: SrbPainter.new),
    FiatRub(): BasicFlag(flagRusProperties),
    FiatRwf(): BasicFlag(flagRwaProperties),
    FiatSar(): BasicFlag(
      flagSauProperties,
      elementsBuilder: ShahadaPainter.sau,
    ),
    FiatSbd(): BasicFlag(flagSlbProperties),
    FiatScr(): BasicFlag(flagSycProperties, elementsBuilder: SycPainter.new),
    FiatSdg(): BasicFlag(flagSdnProperties),
    FiatSek(): BasicFlag(flagSweProperties),
    FiatSgd(): BasicFlag(flagSgpProperties),
    FiatShp(): BasicFlag(
      flagShnProperties,
      elementsBuilder: UnionJackPainter.full,
    ),
    FiatSle(): BasicFlag(flagSleProperties),
    FiatSos(): BasicFlag(flagSomProperties),
    FiatSrd(): BasicFlag(flagSurProperties),
    FiatSsp(): BasicFlag(flagSsdProperties),
    FiatStn(): BasicFlag(flagStpProperties),
    FiatSyp(): BasicFlag(flagSyrProperties),
    FiatSzl(): BasicFlag(flagSwzProperties, elementsBuilder: AlmondPainter.swz),
    FiatThb(): BasicFlag(flagThaProperties),
    FiatTjs(): BasicFlag(flagTjkProperties, elementsBuilder: TjkPainter.new),
    FiatTmt(): BasicFlag(flagTkmProperties, elementsBuilder: TkmPainter.new),
    FiatTnd(): BasicFlag(flagTunProperties),
    FiatTop(): BasicFlag(flagTonProperties),
    FiatTry(): BasicFlag(flagTurProperties),
    FiatTtd(): BasicFlag(
      flagTtoProperties,
      elementsBuilder: TtoLinePainter.new,
    ),
    FiatTwd(): BasicFlag(flagTwnProperties),
    FiatTzs(): BasicFlag(flagTzaProperties),
    FiatUah(): BasicFlag(flagUkrProperties),
    FiatUgx(): BasicFlag(flagUgaProperties, elementsBuilder: UgaPainter.new),
    FiatUsd(): BasicFlag(
      flagUsaProperties,
      elementsBuilder: UsaStarsPainter.new,
    ),
    FiatUyu(): BasicFlag(flagUryProperties),
    FiatUzs(): BasicFlag(flagUzbProperties),
    FiatVes(): BasicFlag(flagVenProperties),
    FiatVnd(): BasicFlag(flagVnmProperties),
    FiatVuv(): BasicFlag(flagVutProperties),
    FiatWst(): BasicFlag(flagWsmProperties),
    FiatXaf(): BasicFlag(flagCmrProperties),
    FiatXcd(): BasicFlag(flagLcaProperties),
    FiatXcg(): BasicFlag(flagCuwProperties),
    FiatXof(): BasicFlag(flagCivProperties),
    FiatXpf(): BasicFlag(flagPyfProperties, elementsBuilder: PyfPainter.new),
    FiatYer(): BasicFlag(flagYemProperties),
    FiatZar(): BasicFlag(flagZafProperties),
    FiatZmw(): BasicFlag(flagZmbProperties, elementsBuilder: ZmbPainter.new),
    FiatZwg(): BasicFlag(flagZweProperties),
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
    FiatDzd(): BasicFlag(flagEshProperties),
    FiatEgp(): BasicFlag(flagPseProperties),
    FiatEur(): BasicFlag(flagDeuProperties),
    FiatGbp(): BasicFlag(
      flagJeyProperties,
      elementsBuilder: SimpleShieldPainter.outlinedWithoutDividers,
    ),
    FiatIls(): BasicFlag(flagPseProperties),
    FiatInr(): BasicFlag(flagBtnProperties, elementsBuilder: BtnPainter.new),
    FiatJod(): BasicFlag(flagPseProperties),
    FiatMad(): BasicFlag(flagEshProperties),
    FiatMru(): BasicFlag(flagEshProperties),
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
    FiatXcd(): BasicFlag(flagGrdProperties),
    FiatXcg(): BasicFlag(flagSxmProperties),
    FiatXof(): BasicFlag(flagSenProperties),
    FiatXpf(): BasicFlag(flagNclProperties),
    FiatZar(): BasicFlag(flagNamProperties),
  };
}
