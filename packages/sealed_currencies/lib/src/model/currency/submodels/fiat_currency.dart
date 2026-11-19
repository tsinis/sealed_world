// ignore_for_file: avoid-referencing-subclasses, those are static constants.

import "package:l10n_currencies/l10n_currencies.dart"
    show CurrenciesLocaleMapper;
import "package:sealed_languages/sealed_languages.dart";

import "../../../collections/fiat_currency_collections.dart";
import "../../../helpers/fiat_currency/fiat_currency_json.dart";
import "../currency.dart";

part "../../../data/currencies/aed.data.dart";
part "../../../data/currencies/afn.data.dart";
part "../../../data/currencies/all.data.dart";
part "../../../data/currencies/amd.data.dart";
part "../../../data/currencies/aoa.data.dart";
part "../../../data/currencies/ars.data.dart";
part "../../../data/currencies/aud.data.dart";
part "../../../data/currencies/awg.data.dart";
part "../../../data/currencies/azn.data.dart";
part "../../../data/currencies/bam.data.dart";
part "../../../data/currencies/bbd.data.dart";
part "../../../data/currencies/bdt.data.dart";
part "../../../data/currencies/bhd.data.dart";
part "../../../data/currencies/bif.data.dart";
part "../../../data/currencies/bmd.data.dart";
part "../../../data/currencies/bnd.data.dart";
part "../../../data/currencies/bob.data.dart";
part "../../../data/currencies/brl.data.dart";
part "../../../data/currencies/bsd.data.dart";
part "../../../data/currencies/btn.data.dart";
part "../../../data/currencies/bwp.data.dart";
part "../../../data/currencies/byn.data.dart";
part "../../../data/currencies/bzd.data.dart";
part "../../../data/currencies/cad.data.dart";
part "../../../data/currencies/cdf.data.dart";
part "../../../data/currencies/chf.data.dart";
part "../../../data/currencies/clf.data.dart";
part "../../../data/currencies/clp.data.dart";
part "../../../data/currencies/cny.data.dart";
part "../../../data/currencies/cop.data.dart";
part "../../../data/currencies/crc.data.dart";
part "../../../data/currencies/cuc.data.dart";
part "../../../data/currencies/cup.data.dart";
part "../../../data/currencies/custom.data.dart";
part "../../../data/currencies/cve.data.dart";
part "../../../data/currencies/czk.data.dart";
part "../../../data/currencies/djf.data.dart";
part "../../../data/currencies/dkk.data.dart";
part "../../../data/currencies/dop.data.dart";
part "../../../data/currencies/dzd.data.dart";
part "../../../data/currencies/egp.data.dart";
part "../../../data/currencies/ern.data.dart";
part "../../../data/currencies/etb.data.dart";
part "../../../data/currencies/eur.data.dart";
part "../../../data/currencies/fjd.data.dart";
part "../../../data/currencies/fkp.data.dart";
part "../../../data/currencies/gbp.data.dart";
part "../../../data/currencies/gel.data.dart";
part "../../../data/currencies/ghs.data.dart";
part "../../../data/currencies/gip.data.dart";
part "../../../data/currencies/gmd.data.dart";
part "../../../data/currencies/gnf.data.dart";
part "../../../data/currencies/gtq.data.dart";
part "../../../data/currencies/gyd.data.dart";
part "../../../data/currencies/hkd.data.dart";
part "../../../data/currencies/hnl.data.dart";
part "../../../data/currencies/htg.data.dart";
part "../../../data/currencies/huf.data.dart";
part "../../../data/currencies/idr.data.dart";
part "../../../data/currencies/ils.data.dart";
part "../../../data/currencies/inr.data.dart";
part "../../../data/currencies/iqd.data.dart";
part "../../../data/currencies/irr.data.dart";
part "../../../data/currencies/isk.data.dart";
part "../../../data/currencies/jmd.data.dart";
part "../../../data/currencies/jod.data.dart";
part "../../../data/currencies/jpy.data.dart";
part "../../../data/currencies/kes.data.dart";
part "../../../data/currencies/kgs.data.dart";
part "../../../data/currencies/khr.data.dart";
part "../../../data/currencies/kmf.data.dart";
part "../../../data/currencies/kpw.data.dart";
part "../../../data/currencies/krw.data.dart";
part "../../../data/currencies/kwd.data.dart";
part "../../../data/currencies/kyd.data.dart";
part "../../../data/currencies/kzt.data.dart";
part "../../../data/currencies/lak.data.dart";
part "../../../data/currencies/lbp.data.dart";
part "../../../data/currencies/lkr.data.dart";
part "../../../data/currencies/lrd.data.dart";
part "../../../data/currencies/lsl.data.dart";
part "../../../data/currencies/lyd.data.dart";
part "../../../data/currencies/mad.data.dart";
part "../../../data/currencies/mdl.data.dart";
part "../../../data/currencies/mga.data.dart";
part "../../../data/currencies/mkd.data.dart";
part "../../../data/currencies/mmk.data.dart";
part "../../../data/currencies/mnt.data.dart";
part "../../../data/currencies/mop.data.dart";
part "../../../data/currencies/mru.data.dart";
part "../../../data/currencies/mur.data.dart";
part "../../../data/currencies/mvr.data.dart";
part "../../../data/currencies/mwk.data.dart";
part "../../../data/currencies/mxn.data.dart";
part "../../../data/currencies/myr.data.dart";
part "../../../data/currencies/mzn.data.dart";
part "../../../data/currencies/nad.data.dart";
part "../../../data/currencies/ngn.data.dart";
part "../../../data/currencies/nio.data.dart";
part "../../../data/currencies/nok.data.dart";
part "../../../data/currencies/npr.data.dart";
part "../../../data/currencies/nzd.data.dart";
part "../../../data/currencies/omr.data.dart";
part "../../../data/currencies/pab.data.dart";
part "../../../data/currencies/pen.data.dart";
part "../../../data/currencies/pgk.data.dart";
part "../../../data/currencies/php.data.dart";
part "../../../data/currencies/pkr.data.dart";
part "../../../data/currencies/pln.data.dart";
part "../../../data/currencies/pyg.data.dart";
part "../../../data/currencies/qar.data.dart";
part "../../../data/currencies/ron.data.dart";
part "../../../data/currencies/rsd.data.dart";
part "../../../data/currencies/rub.data.dart";
part "../../../data/currencies/rwf.data.dart";
part "../../../data/currencies/sar.data.dart";
part "../../../data/currencies/sbd.data.dart";
part "../../../data/currencies/scr.data.dart";
part "../../../data/currencies/sdg.data.dart";
part "../../../data/currencies/sek.data.dart";
part "../../../data/currencies/sgd.data.dart";
part "../../../data/currencies/shp.data.dart";
part "../../../data/currencies/sle.data.dart";
part "../../../data/currencies/sos.data.dart";
part "../../../data/currencies/srd.data.dart";
part "../../../data/currencies/ssp.data.dart";
part "../../../data/currencies/stn.data.dart";
part "../../../data/currencies/syp.data.dart";
part "../../../data/currencies/szl.data.dart";
part "../../../data/currencies/thb.data.dart";
part "../../../data/currencies/tjs.data.dart";
part "../../../data/currencies/tmt.data.dart";
part "../../../data/currencies/tnd.data.dart";
part "../../../data/currencies/top.data.dart";
part "../../../data/currencies/try.data.dart";
part "../../../data/currencies/ttd.data.dart";
part "../../../data/currencies/twd.data.dart";
part "../../../data/currencies/tzs.data.dart";
part "../../../data/currencies/uah.data.dart";
part "../../../data/currencies/ugx.data.dart";
part "../../../data/currencies/usd.data.dart";
part "../../../data/currencies/uyu.data.dart";
part "../../../data/currencies/uzs.data.dart";
part "../../../data/currencies/ves.data.dart";
part "../../../data/currencies/vnd.data.dart";
part "../../../data/currencies/vuv.data.dart";
part "../../../data/currencies/wst.data.dart";
part "../../../data/currencies/xaf.data.dart";
part "../../../data/currencies/xag.data.dart";
part "../../../data/currencies/xau.data.dart";
part "../../../data/currencies/xba.data.dart";
part "../../../data/currencies/xbb.data.dart";
part "../../../data/currencies/xbc.data.dart";
part "../../../data/currencies/xbd.data.dart";
part "../../../data/currencies/xcd.data.dart";
part "../../../data/currencies/xcg.data.dart";
part "../../../data/currencies/xdr.data.dart";
part "../../../data/currencies/xof.data.dart";
part "../../../data/currencies/xpd.data.dart";
part "../../../data/currencies/xpf.data.dart";
part "../../../data/currencies/xpt.data.dart";
part "../../../data/currencies/xts.data.dart";
part "../../../data/currencies/yer.data.dart";
part "../../../data/currencies/zar.data.dart";
part "../../../data/currencies/zmw.data.dart";
part "../../../data/currencies/zwg.data.dart";

/// A sealed class representing fiat currency.
///
/// This class extends the general [Currency] class and adds additional
/// properties specific to fiat currencies.
sealed class FiatCurrency extends Currency
    implements
        IsoTranslated<TranslatedName, String, BasicLocale>,
        JsonEncodable<FiatCurrency>,
        Comparable<FiatCurrency> {
  /// {@template currency_constructor}
  /// Creates a new instance of [FiatCurrency].
  ///
  /// The [code], [name], [namesNative] and [codeNumeric] parameters are
  /// required. The [priority] parameter defaults to 100, and the
  /// [smallestDenomination] parameter defaults to 1.
  ///
  /// The [alternateSymbols], [disambiguateSymbol], [htmlEntity], [subunit],
  /// [subunitToUnit], [decimalDigits], `mapper` and [unitFirst] parameters are
  /// optional.
  ///
  /// The [symbol], [decimalMark], and [thousandsSeparator] parameters are
  /// inherited from the [Currency] class and are also optional.
  /// {@endtemplate}
  /// Throws an [AssertionError] if [code] is not exactly 3 characters long,
  /// [codeNumeric] is not exactly 3 characters long, [namesNative] is empty,
  /// [htmlEntity] is empty, [subunit] is empty, [alternateSymbols] is empty,
  /// [smallestDenomination] is negative, or [decimalDigits] is not between 0
  /// and 20.
  /// Use the optional `mapper` parameter when you need custom localization
  /// data:
  /// {@macro sealed_world.locale_mapper_callback}
  const new({
    /// The international three-letter alphabetic code as defined by the ISO
    /// 4217 standard.
    required super.code,
    required super.name,
    required this.namesNative,
    required this.codeNumeric,
    this.alternateSymbols,
    this.disambiguateSymbol,
    this.htmlEntity,
    this.priority = 100,
    this.smallestDenomination = 1,
    this.subunit,
    this.subunitToUnit = 100,
    this.unitFirst = false,
    super.symbol,
    super.decimalMark = dot,
    super.thousandsSeparator = ",",

    /// {@macro sealed_world.currency_decimal_digits}
    this._decimalDigits,

    /// {@macro sealed_world.locale_mapper_callback}
    this._mapper,
  }) : assert(
         _decimalDigits == null ||
             (_decimalDigits >= 0 && _decimalDigits <= maxDecimalDigits),
         "`decimalDigits` should be between 0 and $maxDecimalDigits!",
       ),
       assert(
         code.length == IsoStandardized.codeLength,
         """`code` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       assert(
         codeNumeric.length == IsoStandardized.codeLength,
         """`codeNumeric` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       assert(
         namesNative != const <String>[],
         "`namesNative` should not be empty!",
       ),
       assert(
         htmlEntity == null || htmlEntity.length > 0,
         "`htmlEntity` should not be empty!",
       ),
       assert(
         subunit == null || subunit.length > 0,
         "`subunit` should not be empty!",
       ),
       assert(
         alternateSymbols != const <String>[],
         "`alternateSymbols` should not be empty!",
       ),
       assert(
         smallestDenomination >= 0,
         "`smallestDenomination` should not be negative!",
       );

  /// {@macro permissive_constructor}
  /// {@macro currency_constructor}
  const new _permissive({
    String? code,
    super.name = " ",
    this.namesNative = const [],
    this.codeNumeric = "",
    this.alternateSymbols,
    this.disambiguateSymbol,
    this.htmlEntity,
    this.priority = 100,
    this.smallestDenomination = 1,
    this.subunit,
    this.subunitToUnit = 100,
    this.unitFirst = false,
    super.symbol,
    super.decimalMark = dot,
    super.thousandsSeparator = ",",

    /// {@macro sealed_world.currency_decimal_digits}
    this._decimalDigits,

    /// {@macro sealed_world.locale_mapper_callback}
    this._mapper,
  }) : assert(
         (code?.length ?? 0) > 0 || codeNumeric.length > 0,
         "The `code` (or at least `codeNumeric`) must be provided!",
       ),
       assert(
         _decimalDigits == null ||
             (_decimalDigits >= 0 && _decimalDigits <= maxDecimalDigits),
         "`decimalDigits` should be between 0 and $maxDecimalDigits!",
       ),
       super(code: code ?? " ");

  /// {@macro sealed_world.currency_aed_constructor}
  const factory aed() = _AedFactory;

  /// {@macro sealed_world.currency_afn_constructor}
  const factory afn() = _AfnFactory;

  /// {@macro sealed_world.currency_all_constructor}
  const factory all() = _AllFactory;

  /// {@macro sealed_world.currency_amd_constructor}
  const factory amd() = _AmdFactory;

  /// {@macro sealed_world.currency_aoa_constructor}
  const factory aoa() = _AoaFactory;

  /// {@macro sealed_world.currency_ars_constructor}
  const factory ars() = _ArsFactory;

  /// {@macro sealed_world.currency_aud_constructor}
  const factory aud() = _AudFactory;

  /// {@macro sealed_world.currency_awg_constructor}
  const factory awg() = _AwgFactory;

  /// {@macro sealed_world.currency_azn_constructor}
  const factory azn() = _AznFactory;

  /// {@macro sealed_world.currency_bam_constructor}
  const factory bam() = _BamFactory;

  /// {@macro sealed_world.currency_bbd_constructor}
  const factory bbd() = _BbdFactory;

  /// {@macro sealed_world.currency_bdt_constructor}
  const factory bdt() = _BdtFactory;

  /// {@macro sealed_world.currency_bhd_constructor}
  const factory bhd() = _BhdFactory;

  /// {@macro sealed_world.currency_bif_constructor}
  const factory bif() = _BifFactory;

  /// {@macro sealed_world.currency_bmd_constructor}
  const factory bmd() = _BmdFactory;

  /// {@macro sealed_world.currency_bnd_constructor}
  const factory bnd() = _BndFactory;

  /// {@macro sealed_world.currency_bob_constructor}
  const factory bob() = _BobFactory;

  /// {@macro sealed_world.currency_brl_constructor}
  const factory brl() = _BrlFactory;

  /// {@macro sealed_world.currency_bsd_constructor}
  const factory bsd() = _BsdFactory;

  /// {@macro sealed_world.currency_btn_constructor}
  const factory btn() = _BtnFactory;

  /// {@macro sealed_world.currency_bwp_constructor}
  const factory bwp() = _BwpFactory;

  /// {@macro sealed_world.currency_byn_constructor}
  const factory byn() = _BynFactory;

  /// {@macro sealed_world.currency_bzd_constructor}
  const factory bzd() = _BzdFactory;

  /// {@macro sealed_world.currency_cad_constructor}
  const factory cad() = _CadFactory;

  /// {@macro sealed_world.currency_cdf_constructor}
  const factory cdf() = _CdfFactory;

  /// {@macro sealed_world.currency_chf_constructor}
  const factory chf() = _ChfFactory;

  /// {@macro sealed_world.currency_clf_constructor}
  const factory clf() = _ClfFactory;

  /// {@macro sealed_world.currency_clp_constructor}
  const factory clp() = _ClpFactory;

  /// {@macro sealed_world.currency_cny_constructor}
  const factory cny() = _CnyFactory;

  /// {@macro sealed_world.currency_cop_constructor}
  const factory cop() = _CopFactory;

  /// {@macro sealed_world.currency_crc_constructor}
  const factory crc() = _CrcFactory;

  /// {@macro sealed_world.currency_cuc_constructor}
  const factory cuc() = _CucFactory;

  /// {@macro sealed_world.currency_cup_constructor}
  const factory cup() = _CupFactory;

  /// {@macro sealed_world.currency_cve_constructor}
  const factory cve() = _CveFactory;

  /// {@macro sealed_world.currency_czk_constructor}
  const factory czk() = _CzkFactory;

  /// {@macro sealed_world.currency_djf_constructor}
  const factory djf() = _DjfFactory;

  /// {@macro sealed_world.currency_dkk_constructor}
  const factory dkk() = _DkkFactory;

  /// {@macro sealed_world.currency_dop_constructor}
  const factory dop() = _DopFactory;

  /// {@macro sealed_world.currency_dzd_constructor}
  const factory dzd() = _DzdFactory;

  /// {@macro sealed_world.currency_egp_constructor}
  const factory egp() = _EgpFactory;

  /// {@macro sealed_world.currency_ern_constructor}
  const factory ern() = _ErnFactory;

  /// {@macro sealed_world.currency_etb_constructor}
  const factory etb() = _EtbFactory;

  /// {@macro sealed_world.currency_eur_constructor}
  const factory eur() = _EurFactory;

  /// {@macro sealed_world.currency_fjd_constructor}
  const factory fjd() = _FjdFactory;

  /// {@macro sealed_world.currency_fkp_constructor}
  const factory fkp() = _FkpFactory;

  /// {@macro sealed_world.currency_gbp_constructor}
  const factory gbp() = _GbpFactory;

  /// {@macro sealed_world.currency_gel_constructor}
  const factory gel() = _GelFactory;

  /// {@macro sealed_world.currency_ghs_constructor}
  const factory ghs() = _GhsFactory;

  /// {@macro sealed_world.currency_gip_constructor}
  const factory gip() = _GipFactory;

  /// {@macro sealed_world.currency_gmd_constructor}
  const factory gmd() = _GmdFactory;

  /// {@macro sealed_world.currency_gnf_constructor}
  const factory gnf() = _GnfFactory;

  /// {@macro sealed_world.currency_gtq_constructor}
  const factory gtq() = _GtqFactory;

  /// {@macro sealed_world.currency_gyd_constructor}
  const factory gyd() = _GydFactory;

  /// {@macro sealed_world.currency_hkd_constructor}
  const factory hkd() = _HkdFactory;

  /// {@macro sealed_world.currency_hnl_constructor}
  const factory hnl() = _HnlFactory;

  /// {@macro sealed_world.currency_htg_constructor}
  const factory htg() = _HtgFactory;

  /// {@macro sealed_world.currency_huf_constructor}
  const factory huf() = _HufFactory;

  /// {@macro sealed_world.currency_idr_constructor}
  const factory idr() = _IdrFactory;

  /// {@macro sealed_world.currency_ils_constructor}
  const factory ils() = _IlsFactory;

  /// {@macro sealed_world.currency_inr_constructor}
  const factory inr() = _InrFactory;

  /// {@macro sealed_world.currency_iqd_constructor}
  const factory iqd() = _IqdFactory;

  /// {@macro sealed_world.currency_irr_constructor}
  const factory irr() = _IrrFactory;

  /// {@macro sealed_world.currency_isk_constructor}
  const factory isk() = _IskFactory;

  /// {@macro sealed_world.currency_jmd_constructor}
  const factory jmd() = _JmdFactory;

  /// {@macro sealed_world.currency_jod_constructor}
  const factory jod() = _JodFactory;

  /// {@macro sealed_world.currency_jpy_constructor}
  const factory jpy() = _JpyFactory;

  /// {@macro sealed_world.currency_kes_constructor}
  const factory kes() = _KesFactory;

  /// {@macro sealed_world.currency_kgs_constructor}
  const factory kgs() = _KgsFactory;

  /// {@macro sealed_world.currency_khr_constructor}
  const factory khr() = _KhrFactory;

  /// {@macro sealed_world.currency_kmf_constructor}
  const factory kmf() = _KmfFactory;

  /// {@macro sealed_world.currency_kpw_constructor}
  const factory kpw() = _KpwFactory;

  /// {@macro sealed_world.currency_krw_constructor}
  const factory krw() = _KrwFactory;

  /// {@macro sealed_world.currency_kwd_constructor}
  const factory kwd() = _KwdFactory;

  /// {@macro sealed_world.currency_kyd_constructor}
  const factory kyd() = _KydFactory;

  /// {@macro sealed_world.currency_kzt_constructor}
  const factory kzt() = _KztFactory;

  /// {@macro sealed_world.currency_lak_constructor}
  const factory lak() = _LakFactory;

  /// {@macro sealed_world.currency_lbp_constructor}
  const factory lbp() = _LbpFactory;

  /// {@macro sealed_world.currency_lkr_constructor}
  const factory lkr() = _LkrFactory;

  /// {@macro sealed_world.currency_lrd_constructor}
  const factory lrd() = _LrdFactory;

  /// {@macro sealed_world.currency_lsl_constructor}
  const factory lsl() = _LslFactory;

  /// {@macro sealed_world.currency_lyd_constructor}
  const factory lyd() = _LydFactory;

  /// {@macro sealed_world.currency_mad_constructor}
  const factory mad() = _MadFactory;

  /// {@macro sealed_world.currency_mdl_constructor}
  const factory mdl() = _MdlFactory;

  /// {@macro sealed_world.currency_mga_constructor}
  const factory mga() = _MgaFactory;

  /// {@macro sealed_world.currency_mkd_constructor}
  const factory mkd() = _MkdFactory;

  /// {@macro sealed_world.currency_mmk_constructor}
  const factory mmk() = _MmkFactory;

  /// {@macro sealed_world.currency_mnt_constructor}
  const factory mnt() = _MntFactory;

  /// {@macro sealed_world.currency_mop_constructor}
  const factory mop() = _MopFactory;

  /// {@macro sealed_world.currency_mru_constructor}
  const factory mru() = _MruFactory;

  /// {@macro sealed_world.currency_mur_constructor}
  const factory mur() = _MurFactory;

  /// {@macro sealed_world.currency_mvr_constructor}
  const factory mvr() = _MvrFactory;

  /// {@macro sealed_world.currency_mwk_constructor}
  const factory mwk() = _MwkFactory;

  /// {@macro sealed_world.currency_mxn_constructor}
  const factory mxn() = _MxnFactory;

  /// {@macro sealed_world.currency_myr_constructor}
  const factory myr() = _MyrFactory;

  /// {@macro sealed_world.currency_mzn_constructor}
  const factory mzn() = _MznFactory;

  /// {@macro sealed_world.currency_nad_constructor}
  const factory nad() = _NadFactory;

  /// {@macro sealed_world.currency_ngn_constructor}
  const factory ngn() = _NgnFactory;

  /// {@macro sealed_world.currency_nio_constructor}
  const factory nio() = _NioFactory;

  /// {@macro sealed_world.currency_nok_constructor}
  const factory nok() = _NokFactory;

  /// {@macro sealed_world.currency_npr_constructor}
  const factory npr() = _NprFactory;

  /// {@macro sealed_world.currency_nzd_constructor}
  const factory nzd() = _NzdFactory;

  /// {@macro sealed_world.currency_omr_constructor}
  const factory omr() = _OmrFactory;

  /// {@macro sealed_world.currency_pab_constructor}
  const factory pab() = _PabFactory;

  /// {@macro sealed_world.currency_pen_constructor}
  const factory pen() = _PenFactory;

  /// {@macro sealed_world.currency_pgk_constructor}
  const factory pgk() = _PgkFactory;

  /// {@macro sealed_world.currency_php_constructor}
  const factory php() = _PhpFactory;

  /// {@macro sealed_world.currency_pkr_constructor}
  const factory pkr() = _PkrFactory;

  /// {@macro sealed_world.currency_pln_constructor}
  const factory pln() = _PlnFactory;

  /// {@macro sealed_world.currency_pyg_constructor}
  const factory pyg() = _PygFactory;

  /// {@macro sealed_world.currency_qar_constructor}
  const factory qar() = _QarFactory;

  /// {@macro sealed_world.currency_ron_constructor}
  const factory ron() = _RonFactory;

  /// {@macro sealed_world.currency_rsd_constructor}
  const factory rsd() = _RsdFactory;

  /// {@macro sealed_world.currency_rub_constructor}
  const factory rub() = _RubFactory;

  /// {@macro sealed_world.currency_rwf_constructor}
  const factory rwf() = _RwfFactory;

  /// {@macro sealed_world.currency_sar_constructor}
  const factory sar() = _SarFactory;

  /// {@macro sealed_world.currency_sbd_constructor}
  const factory sbd() = _SbdFactory;

  /// {@macro sealed_world.currency_scr_constructor}
  const factory scr() = _ScrFactory;

  /// {@macro sealed_world.currency_sdg_constructor}
  const factory sdg() = _SdgFactory;

  /// {@macro sealed_world.currency_sek_constructor}
  const factory sek() = _SekFactory;

  /// {@macro sealed_world.currency_sgd_constructor}
  const factory sgd() = _SgdFactory;

  /// {@macro sealed_world.currency_shp_constructor}
  const factory shp() = _ShpFactory;

  /// {@macro sealed_world.currency_sle_constructor}
  const factory sle() = _SleFactory;

  /// {@macro sealed_world.currency_sos_constructor}
  const factory sos() = _SosFactory;

  /// {@macro sealed_world.currency_srd_constructor}
  const factory srd() = _SrdFactory;

  /// {@macro sealed_world.currency_ssp_constructor}
  const factory ssp() = _SspFactory;

  /// {@macro sealed_world.currency_stn_constructor}
  const factory stn() = _StnFactory;

  /// {@macro sealed_world.currency_syp_constructor}
  const factory syp() = _SypFactory;

  /// {@macro sealed_world.currency_szl_constructor}
  const factory szl() = _SzlFactory;

  /// {@macro sealed_world.currency_thb_constructor}
  const factory thb() = _ThbFactory;

  /// {@macro sealed_world.currency_tjs_constructor}
  const factory tjs() = _TjsFactory;

  /// {@macro sealed_world.currency_tmt_constructor}
  const factory tmt() = _TmtFactory;

  /// {@macro sealed_world.currency_tnd_constructor}
  const factory tnd() = _TndFactory;

  /// {@macro sealed_world.currency_top_constructor}
  const factory top() = _TopFactory;

  /// {@macro sealed_world.currency_try_constructor}
  /// Name `try` can't be used because it's a keyword, so we use `try_` instead.
  const factory try_() = _TryFactory;

  /// {@macro sealed_world.currency_ttd_constructor}
  const factory ttd() = _TtdFactory;

  /// {@macro sealed_world.currency_twd_constructor}
  const factory twd() = _TwdFactory;

  /// {@macro sealed_world.currency_tzs_constructor}
  const factory tzs() = _TzsFactory;

  /// {@macro sealed_world.currency_uah_constructor}
  const factory uah() = _UahFactory;

  /// {@macro sealed_world.currency_ugx_constructor}
  const factory ugx() = _UgxFactory;

  /// {@macro sealed_world.currency_usd_constructor}
  const factory usd() = _UsdFactory;

  /// {@macro sealed_world.currency_uyu_constructor}
  const factory uyu() = _UyuFactory;

  /// {@macro sealed_world.currency_uzs_constructor}
  const factory uzs() = _UzsFactory;

  /// {@macro sealed_world.currency_ves_constructor}
  const factory ves() = _VesFactory;

  /// {@macro sealed_world.currency_vnd_constructor}
  const factory vnd() = _VndFactory;

  /// {@macro sealed_world.currency_vuv_constructor}
  const factory vuv() = _VuvFactory;

  /// {@macro sealed_world.currency_wst_constructor}
  const factory wst() = _WstFactory;

  /// {@macro sealed_world.currency_xaf_constructor}
  const factory xaf() = _XafFactory;

  /// {@macro sealed_world.currency_xcd_constructor}
  const factory xcd() = _XcdFactory;

  /// {@macro sealed_world.currency_xcg_constructor}
  const factory xcg() = _XcgFactory;

  /// {@macro sealed_world.currency_xof_constructor}
  const factory xof() = _XofFactory;

  /// {@macro sealed_world.currency_xpf_constructor}
  const factory xpf() = _XpfFactory;

  /// {@macro sealed_world.currency_yer_constructor}
  const factory yer() = _YerFactory;

  /// {@macro sealed_world.currency_zar_constructor}
  const factory zar() = _ZarFactory;

  /// {@macro sealed_world.currency_zmw_constructor}
  const factory zmw() = _ZmwFactory;

  /// {@macro sealed_world.currency_zwg_constructor}
  const factory zwg() = _ZwgFactory;

  /// {@macro sealed_world.currency_xag_constructor}
  const factory xag() = _XagFactory;

  /// {@macro sealed_world.currency_xau_constructor}
  const factory xau() = _XauFactory;

  /// {@macro sealed_world.currency_xba_constructor}
  const factory xba() = _XbaFactory;

  /// {@macro sealed_world.currency_xbb_constructor}
  const factory xbb() = _XbbFactory;

  /// {@macro sealed_world.currency_xbc_constructor}
  const factory xbc() = _XbcFactory;

  /// {@macro sealed_world.currency_xbd_constructor}
  const factory xbd() = _XbdFactory;

  /// {@macro sealed_world.currency_xdr_constructor}
  const factory xdr() = _XdrFactory;

  /// {@macro sealed_world.currency_xpd_constructor}
  const factory xpd() = _XpdFactory;

  /// {@macro sealed_world.currency_xpt_constructor}
  const factory xpt() = _XptFactory;

  /// {@macro sealed_world.currency_xts_constructor}
  const factory xts() = _XtsFactory;

  /// Returns a [FiatCurrency] instance from an letter ISO 4217 code.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance
  /// that corresponds to the given code, or throws a [StateError] if no such
  /// instance exists.
  factory fromCode(Object code, [Iterable<FiatCurrency>? currencies]) =>
      currencies == null
      ? codeMap.findByCodeOrThrow(code)
      : currencies.firstIsoWhereCode(code);

  /// Returns a [FiatCurrency] instance from an numeric ISO 4217 code.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-digit numeric ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// {@macro sealed_world.int_numeric_code}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the
  /// [FiatCurrency] instance that corresponds to the given code, or throws a
  /// [StateError] if no such instance exists.
  factory fromCodeNumeric(
    Object codeNumeric, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
      ? codeNumericMap.findByCodeOrThrow(codeNumeric)
      : currencies.firstIsoWhereCodeOther(codeNumeric);

  /// Returns a [FiatCurrency] instance from a currency name.
  ///
  /// The [name] parameter is required and should be an object non-empty string
  /// representing the name of the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the
  /// [FiatCurrency] instance that corresponds to the given name, or throws a
  /// [StateError] if no such instance exists.
  factory fromName(
    Object name, [
    Iterable<FiatCurrency> currencies = listExtended,
    // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  ]) {
    final upperCaseName = IsoObject.maybe(name)?.toUpperCaseCode();

    return currencies.firstIsoWhere(
      (currency) => currency.name.toUpperCase() == upperCaseName,
    );
  }

  /// Returns an instance of the [FiatCurrency] class from any valid
  /// ISO 4217 code.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// {@macro sealed_world.int_numeric_code}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// import 'package:sealed_currencies/sealed_currencies.dart';
  ///
  /// void main() {
  ///   final currency = FiatCurrency.fromAnyCode('eur');
  ///   assert(currency.name == 'Euro');
  /// }
  /// ```
  ///
  /// In the above example, the  factory method is called with the
  /// code "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [FiatCurrency] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [FiatCurrency] instance. The resulting [FiatCurrency] instance is assigned
  /// to the [code] variable.
  factory fromAnyCode(Object code, [Iterable<FiatCurrency>? currencies]) =>
      currencies == null
      ? map.findByCodeOrThrow(code)
      : IsoObject(code).maybeMapIsoCode(
          orElse: (regular) => FiatCurrency.fromCode(regular, currencies),
          numeric: (numb) => FiatCurrency.fromCodeNumeric(numb, currencies),
          minLength: IsoStandardized.codeLength,
        );

  /// Alternative symbols for this currency or `null` if no such symbols exists.
  final List<String>? alternateSymbols;

  /// Alternative currency used if symbol is ambiguous, or `null` if no such
  /// symbol exists.
  final String? disambiguateSymbol;

  /// The HTML entity for the currency symbol, or `null` if no such entity
  /// exists.
  final String? htmlEntity;

  /// The international 3-numeric non-empty numeric code as defined by the ISO
  /// 4217 standard.
  final String codeNumeric;

  /// The native names of the currency in different locales.
  @override
  final List<String> namesNative;

  /// A numerical value that can be used to sort/group any currency list.
  final int priority;

  /// Smallest amount of cash possible (in the subunit of this currency).
  final int smallestDenomination;

  /// The name of the fractional monetary unit, or `null` if no such name
  /// exists.
  final String? subunit;

  /// The proportion between the unit and the subunit.
  final int subunitToUnit;

  /// Should the currency symbol precede the amount, or should it come after?
  final bool unitFirst;

  /// Default decimal separator for most currencies.
  static const dot = ".";

  /// The largest supported [decimalDigits] (the limit of
  /// [num.toStringAsFixed]).
  static const maxDecimalDigits = 20;

  /// The general standard ISO code for currencies, defined as ISO 4217.
  static const standardGeneralName = "4217";

  /// The standard ISO code name for currencies, defined as ISO 4217 Alpha.
  static const standardCodeName = "$standardGeneralName Alpha";

  /// The standard numeric ISO code name for currencies, defined as
  /// ISO 4217 Numeric.
  static const standardCodeNumericName = "$standardGeneralName Numeric";

  /// A tree-shakable constant map containing 3-letter currency (ISO 4217 Alpha)
  /// codes and their associated [FiatCurrency] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// FiatCurrency.codeMap['USD']; // FiatUsd().
  /// ```
  static const codeMap = UpperCaseIsoMap<FiatCurrency>(fiatCurrencyCodeMap);

  /// A tree-shakable constant map containing 3-digit numeric currency
  /// (ISO 4217 Numeric) codes and their associated [FiatCurrency] objects,
  /// for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// FiatCurrency.codeNumericMap[840.toString()]; // FiatUsd().
  /// ```
  static const codeNumericMap = UpperCaseIsoMap<FiatCurrency>(
    fiatCurrencyCodeOtherMap,
  );

  /// A tree-shakable combined map of [codeMap] and [codeNumericMap], providing
  /// a unified view of currency codes (ISO 4217) and their [FiatCurrency]
  /// objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// FiatCurrency.map['usd']; // FiatUsd().
  /// ```
  static const map = UpperCaseIsoMap<FiatCurrency>({
    ...fiatCurrencyCodeMap,
    ...fiatCurrencyCodeOtherMap,
  });

  /// A list of special purpose fiat currencies (currencies that are
  /// not being used in the regular transactional currencies list).
  ///
  /// This list contains instances of various [FiatCurrency] subclasses
  /// that represent special purpose fiat currencies.
  static const specialPurposeList = <FiatCurrency>[
    FiatXag(),
    FiatXau(),
    FiatXba(),
    FiatXbb(),
    FiatXbc(),
    FiatXbd(),
    FiatXdr(),
    FiatXpd(),
    FiatXpt(),
    FiatXts(),
  ];

  /// A list of the regular currencies currently supported by the [FiatCurrency]
  /// class. For a full list with non-regular currencies please
  /// use [listExtended].
  static const list = <FiatCurrency>[
    FiatAed(),
    FiatAfn(),
    FiatAll(),
    FiatAmd(),
    FiatAoa(),
    FiatArs(),
    FiatAud(),
    FiatAwg(),
    FiatAzn(),
    FiatBam(),
    FiatBbd(),
    FiatBdt(),
    FiatBhd(),
    FiatBif(),
    FiatBmd(),
    FiatBnd(),
    FiatBob(),
    FiatBrl(),
    FiatBsd(),
    FiatBtn(),
    FiatBwp(),
    FiatByn(),
    FiatBzd(),
    FiatCad(),
    FiatCdf(),
    FiatChf(),
    FiatClf(),
    FiatClp(),
    FiatCny(),
    FiatCop(),
    FiatCrc(),
    FiatCuc(),
    FiatCup(),
    FiatCve(),
    FiatCzk(),
    FiatDjf(),
    FiatDkk(),
    FiatDop(),
    FiatDzd(),
    FiatEgp(),
    FiatErn(),
    FiatEtb(),
    FiatEur(),
    FiatFjd(),
    FiatFkp(),
    FiatGbp(),
    FiatGel(),
    FiatGhs(),
    FiatGip(),
    FiatGmd(),
    FiatGnf(),
    FiatGtq(),
    FiatGyd(),
    FiatHkd(),
    FiatHnl(),
    FiatHtg(),
    FiatHuf(),
    FiatIdr(),
    FiatIls(),
    FiatInr(),
    FiatIqd(),
    FiatIrr(),
    FiatIsk(),
    FiatJmd(),
    FiatJod(),
    FiatJpy(),
    FiatKes(),
    FiatKgs(),
    FiatKhr(),
    FiatKmf(),
    FiatKpw(),
    FiatKrw(),
    FiatKwd(),
    FiatKyd(),
    FiatKzt(),
    FiatLak(),
    FiatLbp(),
    FiatLkr(),
    FiatLrd(),
    FiatLsl(),
    FiatLyd(),
    FiatMad(),
    FiatMdl(),
    FiatMga(),
    FiatMkd(),
    FiatMmk(),
    FiatMnt(),
    FiatMop(),
    FiatMru(),
    FiatMur(),
    FiatMvr(),
    FiatMwk(),
    FiatMxn(),
    FiatMyr(),
    FiatMzn(),
    FiatNad(),
    FiatNgn(),
    FiatNio(),
    FiatNok(),
    FiatNpr(),
    FiatNzd(),
    FiatOmr(),
    FiatPab(),
    FiatPen(),
    FiatPgk(),
    FiatPhp(),
    FiatPkr(),
    FiatPln(),
    FiatPyg(),
    FiatQar(),
    FiatRon(),
    FiatRsd(),
    FiatRub(),
    FiatRwf(),
    FiatSar(),
    FiatSbd(),
    FiatScr(),
    FiatSdg(),
    FiatSek(),
    FiatSgd(),
    FiatShp(),
    FiatSle(),
    FiatSos(),
    FiatSrd(),
    FiatSsp(),
    FiatStn(),
    FiatSyp(),
    FiatSzl(),
    FiatThb(),
    FiatTjs(),
    FiatTmt(),
    FiatTnd(),
    FiatTop(),
    FiatTry(),
    FiatTtd(),
    FiatTwd(),
    FiatTzs(),
    FiatUah(),
    FiatUgx(),
    FiatUsd(),
    FiatUyu(),
    FiatUzs(),
    FiatVes(),
    FiatVnd(),
    FiatVuv(),
    FiatWst(),
    FiatXaf(),
    FiatXcd(),
    FiatXcg(),
    FiatXof(),
    FiatXpf(),
    FiatYer(),
    FiatZar(),
    FiatZmw(),
    FiatZwg(),
  ];

  /// A list of all currencies currently supported by the
  /// [FiatCurrency] class. This is combination of [FiatCurrency.list]
  /// plus all currencies from the [FiatCurrency.specialPurposeList].
  static const listExtended = <FiatCurrency>[...list, ...specialPurposeList];

  // ignore: prefer-correct-callback-field-name, follows delegate naming.
  final LocaleMapFunction<String> Function()? _mapper;

  final int? _decimalDigits;

  /// {@template sealed_world.currency_decimal_digits}
  /// The number of decimal digits (the ISO 4217 minor unit) of the currency.
  ///
  /// Unless set explicitly, it's the fewest digits that fit [subunitToUnit]:
  /// `0` for the Japanese yen (`1`), `2` for the Euro (`100`) and `3` for the
  /// Kuwaiti dinar (`1000`). The non-decimal Malagasy ariary and Mauritanian
  /// ouguiya (`subunitToUnit` is `5`) set it to `2`, as ISO 4217 does. Pass it
  /// to the `fractionDigits` parameter of `format` to round a value to the
  /// subunit.
  /// {@endtemplate}
  int get decimalDigits => _decimalDigits ?? _digitsFor(subunitToUnit);

  /// The number of digits of `subunitToUnit - 1`, which is the smallest
  /// `digits` where `10^digits >= subunitToUnit`. Divides instead of
  /// multiplying, so it can't overflow (at most 19 digits for 64-bit `int`).
  static int _digitsFor(int subunitToUnit) {
    int digits = 0;
    for (int rest = subunitToUnit - 1; rest > 0; rest ~/= 10) {
      digits += 1;
    }

    return digits;
  }

  /// The international 3-numeric non-empty numeric code as defined by the ISO
  /// 4217 standard.
  @override
  String get codeOther => codeNumeric;

  @override
  String get internationalName => name;

  @override
  LocalizationDelegate get l10n => LocalizationDelegate(
    mapper: _mapper ?? () => CurrenciesLocaleMapper().localize,
  );

  /// Returns a string representation of this instance.
  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'FiatCurrency(code: "$code", name: "$name", '
            'decimalMark: "$decimalMark", '
            'thousandsSeparator: "$thousandsSeparator", '
            '${symbol == null ? '' : 'symbol: r"$symbol", '}'
            '''${alternateSymbols == null ? '' : 'alternateSymbols: ${jsonEncode(alternateSymbols)}, '}'''
            '''${disambiguateSymbol == null ? '' : 'disambiguateSymbol: r"$disambiguateSymbol", '}'''
            '${htmlEntity == null ? '' : 'htmlEntity: r"$htmlEntity", '}'
            'codeNumeric: "$codeNumeric", '
            "namesNative: ${jsonEncode(namesNative)}, "
            "priority: $priority, smallestDenomination: $smallestDenomination, "
            '${subunit == null ? '' : 'subunit: "$subunit", '}'
            "subunitToUnit: $subunitToUnit, unitFirst: $unitFirst,"
            '''${_decimalDigits == null ? '' : ' decimalDigits: $_decimalDigits,'})''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  int compareTo(FiatCurrency other) => code.compareTo(other.code);

  /// Returns a [FiatCurrency] object whose [code] or the value returned by
  /// [where] matches the specified [value], or `null` if no such object exists
  /// in the specified [currencies] list.
  ///
  /// The [value] parameter is required and should be of type `T`. If [where] is
  /// not `null`, this method uses the result of calling [where] with each
  /// [FiatCurrency] object in [currencies] to determine whether the object's
  /// [code] matches [value]. If [where] is `null`, this method simply compares
  /// each [FiatCurrency]'s [code] to [value]. If [where] returns `null` for a
  /// currency, the [code] of that currency is compared to [value] instead.
  ///
  /// The optional [currencies] parameter specifies the list of [FiatCurrency]
  /// objects to search (defaults to [FiatCurrency.listExtended]).
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final euro = FiatCurrency.maybeFromValue(
  ///   'Euro',
  ///   where: (currency) => currency.namesNative.first,
  /// );
  /// print(euro); // Prints: 'Currency(code: 'EUR')'.
  /// ```
  static FiatCurrency? maybeFromValue<T extends Object>(
    T value, {
    T? Function(FiatCurrency currency)? where,
    Iterable<FiatCurrency> currencies = listExtended,
  }) {
    currencies.assertNotEmpty();

    for (final currency in currencies) {
      final expectedValue = where?.call(currency) ?? currency.code;
      if (expectedValue == value) return currency;
    }

    return null;
  }

  /// Returns a [FiatCurrency] instance that corresponds to the given code, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and represent the ISO 4217 currency code.
  /// {@macro any_code_object}
  /// {@macro sealed_world.int_numeric_code}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///  This method returns the
  /// [FiatCurrency] instance that corresponds to the given value, or `null` if
  /// no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// import 'package:sealed_currencies/sealed_currencies.dart';
  ///
  /// void main() {
  ///   final fiat = FiatCurrency.maybeFromAnyCode('eur');
  ///   assert(fiat != null);
  /// }
  /// ```
  ///
  /// In the above example, the `maybeFromAnyCode` method is called with the
  /// value "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the value. If the value is numeric, it compares it
  /// with the `codeNumeric` property of each [FiatCurrency] instance.
  /// Otherwise, it compares it with the uppercase version of the [code]
  /// property of each [FiatCurrency] instance. The resulting [FiatCurrency]
  /// instance is assigned to the `currency` variable.
  static FiatCurrency? maybeFromAnyCode(
    Object? code, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
      ? map.maybeFindByCode(code)
      : IsoObject.maybe(code)?.maybeMapIsoCode(
          orElse: (regular) => maybeFromCode(regular, currencies),
          numeric: (numeric) => maybeFromCodeNumeric(numeric, currencies),
          minLength: IsoStandardized.codeLength,
        );

  /// Returns a [FiatCurrency] instance from an letter ISO 4217 code, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance
  /// that corresponds to the given code, or `null` if no such
  /// instance exists.
  static FiatCurrency? maybeFromCode(
    Object? code, [
    Iterable<FiatCurrency>? currencies,
  ]) {
    if (currencies == null) return codeMap.maybeFindByCode(code);

    final string = IsoObject.maybe(code)
        ?.maybeToValidIsoUpperCaseCode(exactLength: IsoStandardized.codeLength);

    return currencies.firstIsoWhereCodeOrNull(string, toUpperCase: false);
  }

  /// Returns a [FiatCurrency] instance from an numeric ISO 4217 code, or
  /// `null` if no such instance exists.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-digit numeric ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// {@macro sealed_world.int_numeric_code}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance that corresponds to the
  /// given code, or `null` if no such instance exists.
  static FiatCurrency? maybeFromCodeNumeric(
    Object? codeNumeric, [
    Iterable<FiatCurrency>? currencies,
  ]) {
    if (currencies == null) return codeNumericMap.maybeFindByCode(codeNumeric);

    final string = IsoObject.maybe(codeNumeric)
        ?.maybeToValidIsoCode(exactLength: IsoStandardized.codeLength);

    return currencies.firstIsoWhereCodeOtherOrNull(string, toUpperCase: false);
  }
}
