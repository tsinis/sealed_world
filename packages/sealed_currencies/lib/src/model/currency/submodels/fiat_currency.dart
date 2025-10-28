// ignore_for_file: avoid-referencing-subclasses, those are static constants.

part of "../currency.dart";

/// A class representing fiat currency.
///
/// This class extends the general [Currency] class and adds additional
/// properties specific to fiat currencies.
class FiatCurrency extends Currency
    implements
        IsoTranslated<TranslatedName, String, BasicLocale>,
        JsonEncodable<FiatCurrency>,
        Comparable<FiatCurrency> {
  /// {@template currency_constructor}
  /// Creates a new instance of [FiatCurrency].
  ///
  /// The [code], [name], [namesNative], [translations] and [codeNumeric]
  /// parameters are required. The [priority] parameter defaults to 100, and
  /// the [smallestDenomination] parameter defaults to 1.
  ///
  /// The [alternateSymbols], [disambiguateSymbol], [htmlEntity], [subunit],
  /// [subunitToUnit], and [unitFirst] parameters are optional.
  ///
  /// The [symbol], [decimalMark], and [thousandsSeparator] parameters are
  /// inherited from the [Currency] class and are also optional.
  /// {@endtemplate}
  /// Throws an [AssertionError] if [code] is not exactly 3 characters long,
  /// [codeNumeric] is not exactly 3 characters long, [namesNative] is empty,
  /// [htmlEntity] is empty, [subunit] is empty, [alternateSymbols] is empty, or
  /// [smallestDenomination] is negative.
  const FiatCurrency({
    /// The international 3-numeric non-empty letter code as defined by the ISO
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
    @Deprecated("Translations are now provided via `l10n`")
    List<TranslatedName>? translations,
  }) : assert(
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
       ),
       _translations = translations;

  /// {@macro permissive_constructor}
  /// {@macro currency_constructor}
  @Deprecated(
    "Use concrete instance and `copyWith` method instead, this "
    "constructor will be renamed to `custom` in future versions.",
  )
  const FiatCurrency.permissive({
    required super.code,
    required super.name,
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
    List<TranslatedName>? translations,
  }) : _translations = translations;

  /// {@macro sealed_world.currency_aed_constructor}
  const factory FiatCurrency.aed() = _AedFactory;

  /// {@macro sealed_world.currency_afn_constructor}
  const factory FiatCurrency.afn() = _AfnFactory;

  /// {@macro sealed_world.currency_all_constructor}
  const factory FiatCurrency.all() = _AllFactory;

  /// {@macro sealed_world.currency_amd_constructor}
  const factory FiatCurrency.amd() = _AmdFactory;

  /// {@macro sealed_world.currency_ang_constructor}
  const factory FiatCurrency.ang() = _AngFactory;

  /// {@macro sealed_world.currency_aoa_constructor}
  const factory FiatCurrency.aoa() = _AoaFactory;

  /// {@macro sealed_world.currency_ars_constructor}
  const factory FiatCurrency.ars() = _ArsFactory;

  /// {@macro sealed_world.currency_aud_constructor}
  const factory FiatCurrency.aud() = _AudFactory;

  /// {@macro sealed_world.currency_awg_constructor}
  const factory FiatCurrency.awg() = _AwgFactory;

  /// {@macro sealed_world.currency_azn_constructor}
  const factory FiatCurrency.azn() = _AznFactory;

  /// {@macro sealed_world.currency_bam_constructor}
  const factory FiatCurrency.bam() = _BamFactory;

  /// {@macro sealed_world.currency_bbd_constructor}
  const factory FiatCurrency.bbd() = _BbdFactory;

  /// {@macro sealed_world.currency_bdt_constructor}
  const factory FiatCurrency.bdt() = _BdtFactory;

  /// {@macro sealed_world.currency_bgn_constructor}
  const factory FiatCurrency.bgn() = _BgnFactory;

  /// {@macro sealed_world.currency_bhd_constructor}
  const factory FiatCurrency.bhd() = _BhdFactory;

  /// {@macro sealed_world.currency_bif_constructor}
  const factory FiatCurrency.bif() = _BifFactory;

  /// {@macro sealed_world.currency_bmd_constructor}
  const factory FiatCurrency.bmd() = _BmdFactory;

  /// {@macro sealed_world.currency_bnd_constructor}
  const factory FiatCurrency.bnd() = _BndFactory;

  /// {@macro sealed_world.currency_bob_constructor}
  const factory FiatCurrency.bob() = _BobFactory;

  /// {@macro sealed_world.currency_brl_constructor}
  const factory FiatCurrency.brl() = _BrlFactory;

  /// {@macro sealed_world.currency_bsd_constructor}
  const factory FiatCurrency.bsd() = _BsdFactory;

  /// {@macro sealed_world.currency_btn_constructor}
  const factory FiatCurrency.btn() = _BtnFactory;

  /// {@macro sealed_world.currency_bwp_constructor}
  const factory FiatCurrency.bwp() = _BwpFactory;

  /// {@macro sealed_world.currency_byn_constructor}
  const factory FiatCurrency.byn() = _BynFactory;

  /// {@macro sealed_world.currency_bzd_constructor}
  const factory FiatCurrency.bzd() = _BzdFactory;

  /// {@macro sealed_world.currency_cad_constructor}
  const factory FiatCurrency.cad() = _CadFactory;

  /// {@macro sealed_world.currency_cdf_constructor}
  const factory FiatCurrency.cdf() = _CdfFactory;

  /// {@macro sealed_world.currency_chf_constructor}
  const factory FiatCurrency.chf() = _ChfFactory;

  /// {@macro sealed_world.currency_clf_constructor}
  const factory FiatCurrency.clf() = _ClfFactory;

  /// {@macro sealed_world.currency_clp_constructor}
  const factory FiatCurrency.clp() = _ClpFactory;

  /// {@macro sealed_world.currency_cny_constructor}
  const factory FiatCurrency.cny() = _CnyFactory;

  /// {@macro sealed_world.currency_cop_constructor}
  const factory FiatCurrency.cop() = _CopFactory;

  /// {@macro sealed_world.currency_crc_constructor}
  const factory FiatCurrency.crc() = _CrcFactory;

  /// {@macro sealed_world.currency_cuc_constructor}
  const factory FiatCurrency.cuc() = _CucFactory;

  /// {@macro sealed_world.currency_cup_constructor}
  const factory FiatCurrency.cup() = _CupFactory;

  /// {@macro sealed_world.currency_cve_constructor}
  const factory FiatCurrency.cve() = _CveFactory;

  /// {@macro sealed_world.currency_czk_constructor}
  const factory FiatCurrency.czk() = _CzkFactory;

  /// {@macro sealed_world.currency_djf_constructor}
  const factory FiatCurrency.djf() = _DjfFactory;

  /// {@macro sealed_world.currency_dkk_constructor}
  const factory FiatCurrency.dkk() = _DkkFactory;

  /// {@macro sealed_world.currency_dop_constructor}
  const factory FiatCurrency.dop() = _DopFactory;

  /// {@macro sealed_world.currency_dzd_constructor}
  const factory FiatCurrency.dzd() = _DzdFactory;

  /// {@macro sealed_world.currency_egp_constructor}
  const factory FiatCurrency.egp() = _EgpFactory;

  /// {@macro sealed_world.currency_ern_constructor}
  const factory FiatCurrency.ern() = _ErnFactory;

  /// {@macro sealed_world.currency_etb_constructor}
  const factory FiatCurrency.etb() = _EtbFactory;

  /// {@macro sealed_world.currency_eur_constructor}
  const factory FiatCurrency.eur() = _EurFactory;

  /// {@macro sealed_world.currency_fjd_constructor}
  const factory FiatCurrency.fjd() = _FjdFactory;

  /// {@macro sealed_world.currency_fkp_constructor}
  const factory FiatCurrency.fkp() = _FkpFactory;

  /// {@macro sealed_world.currency_gbp_constructor}
  const factory FiatCurrency.gbp() = _GbpFactory;

  /// {@macro sealed_world.currency_gel_constructor}
  const factory FiatCurrency.gel() = _GelFactory;

  /// {@macro sealed_world.currency_ghs_constructor}
  const factory FiatCurrency.ghs() = _GhsFactory;

  /// {@macro sealed_world.currency_gip_constructor}
  const factory FiatCurrency.gip() = _GipFactory;

  /// {@macro sealed_world.currency_gmd_constructor}
  const factory FiatCurrency.gmd() = _GmdFactory;

  /// {@macro sealed_world.currency_gnf_constructor}
  const factory FiatCurrency.gnf() = _GnfFactory;

  /// {@macro sealed_world.currency_gtq_constructor}
  const factory FiatCurrency.gtq() = _GtqFactory;

  /// {@macro sealed_world.currency_gyd_constructor}
  const factory FiatCurrency.gyd() = _GydFactory;

  /// {@macro sealed_world.currency_hkd_constructor}
  const factory FiatCurrency.hkd() = _HkdFactory;

  /// {@macro sealed_world.currency_hnl_constructor}
  const factory FiatCurrency.hnl() = _HnlFactory;

  /// {@macro sealed_world.currency_hrk_constructor}
  const factory FiatCurrency.hrk() = _HrkFactory;

  /// {@macro sealed_world.currency_htg_constructor}
  const factory FiatCurrency.htg() = _HtgFactory;

  /// {@macro sealed_world.currency_huf_constructor}
  const factory FiatCurrency.huf() = _HufFactory;

  /// {@macro sealed_world.currency_idr_constructor}
  const factory FiatCurrency.idr() = _IdrFactory;

  /// {@macro sealed_world.currency_ils_constructor}
  const factory FiatCurrency.ils() = _IlsFactory;

  /// {@macro sealed_world.currency_inr_constructor}
  const factory FiatCurrency.inr() = _InrFactory;

  /// {@macro sealed_world.currency_iqd_constructor}
  const factory FiatCurrency.iqd() = _IqdFactory;

  /// {@macro sealed_world.currency_irr_constructor}
  const factory FiatCurrency.irr() = _IrrFactory;

  /// {@macro sealed_world.currency_isk_constructor}
  const factory FiatCurrency.isk() = _IskFactory;

  /// {@macro sealed_world.currency_jmd_constructor}
  const factory FiatCurrency.jmd() = _JmdFactory;

  /// {@macro sealed_world.currency_jod_constructor}
  const factory FiatCurrency.jod() = _JodFactory;

  /// {@macro sealed_world.currency_jpy_constructor}
  const factory FiatCurrency.jpy() = _JpyFactory;

  /// {@macro sealed_world.currency_kes_constructor}
  const factory FiatCurrency.kes() = _KesFactory;

  /// {@macro sealed_world.currency_kgs_constructor}
  const factory FiatCurrency.kgs() = _KgsFactory;

  /// {@macro sealed_world.currency_khr_constructor}
  const factory FiatCurrency.khr() = _KhrFactory;

  /// {@macro sealed_world.currency_kmf_constructor}
  const factory FiatCurrency.kmf() = _KmfFactory;

  /// {@macro sealed_world.currency_kpw_constructor}
  const factory FiatCurrency.kpw() = _KpwFactory;

  /// {@macro sealed_world.currency_krw_constructor}
  const factory FiatCurrency.krw() = _KrwFactory;

  /// {@macro sealed_world.currency_kwd_constructor}
  const factory FiatCurrency.kwd() = _KwdFactory;

  /// {@macro sealed_world.currency_kyd_constructor}
  const factory FiatCurrency.kyd() = _KydFactory;

  /// {@macro sealed_world.currency_kzt_constructor}
  const factory FiatCurrency.kzt() = _KztFactory;

  /// {@macro sealed_world.currency_lak_constructor}
  const factory FiatCurrency.lak() = _LakFactory;

  /// {@macro sealed_world.currency_lbp_constructor}
  const factory FiatCurrency.lbp() = _LbpFactory;

  /// {@macro sealed_world.currency_lkr_constructor}
  const factory FiatCurrency.lkr() = _LkrFactory;

  /// {@macro sealed_world.currency_lrd_constructor}
  const factory FiatCurrency.lrd() = _LrdFactory;

  /// {@macro sealed_world.currency_lsl_constructor}
  const factory FiatCurrency.lsl() = _LslFactory;

  /// {@macro sealed_world.currency_lyd_constructor}
  const factory FiatCurrency.lyd() = _LydFactory;

  /// {@macro sealed_world.currency_mad_constructor}
  const factory FiatCurrency.mad() = _MadFactory;

  /// {@macro sealed_world.currency_mdl_constructor}
  const factory FiatCurrency.mdl() = _MdlFactory;

  /// {@macro sealed_world.currency_mga_constructor}
  const factory FiatCurrency.mga() = _MgaFactory;

  /// {@macro sealed_world.currency_mkd_constructor}
  const factory FiatCurrency.mkd() = _MkdFactory;

  /// {@macro sealed_world.currency_mmk_constructor}
  const factory FiatCurrency.mmk() = _MmkFactory;

  /// {@macro sealed_world.currency_mnt_constructor}
  const factory FiatCurrency.mnt() = _MntFactory;

  /// {@macro sealed_world.currency_mop_constructor}
  const factory FiatCurrency.mop() = _MopFactory;

  /// {@macro sealed_world.currency_mru_constructor}
  const factory FiatCurrency.mru() = _MruFactory;

  /// {@macro sealed_world.currency_mur_constructor}
  const factory FiatCurrency.mur() = _MurFactory;

  /// {@macro sealed_world.currency_mvr_constructor}
  const factory FiatCurrency.mvr() = _MvrFactory;

  /// {@macro sealed_world.currency_mwk_constructor}
  const factory FiatCurrency.mwk() = _MwkFactory;

  /// {@macro sealed_world.currency_mxn_constructor}
  const factory FiatCurrency.mxn() = _MxnFactory;

  /// {@macro sealed_world.currency_myr_constructor}
  const factory FiatCurrency.myr() = _MyrFactory;

  /// {@macro sealed_world.currency_mzn_constructor}
  const factory FiatCurrency.mzn() = _MznFactory;

  /// {@macro sealed_world.currency_nad_constructor}
  const factory FiatCurrency.nad() = _NadFactory;

  /// {@macro sealed_world.currency_ngn_constructor}
  const factory FiatCurrency.ngn() = _NgnFactory;

  /// {@macro sealed_world.currency_nio_constructor}
  const factory FiatCurrency.nio() = _NioFactory;

  /// {@macro sealed_world.currency_nok_constructor}
  const factory FiatCurrency.nok() = _NokFactory;

  /// {@macro sealed_world.currency_npr_constructor}
  const factory FiatCurrency.npr() = _NprFactory;

  /// {@macro sealed_world.currency_nzd_constructor}
  const factory FiatCurrency.nzd() = _NzdFactory;

  /// {@macro sealed_world.currency_omr_constructor}
  const factory FiatCurrency.omr() = _OmrFactory;

  /// {@macro sealed_world.currency_pab_constructor}
  const factory FiatCurrency.pab() = _PabFactory;

  /// {@macro sealed_world.currency_pen_constructor}
  const factory FiatCurrency.pen() = _PenFactory;

  /// {@macro sealed_world.currency_pgk_constructor}
  const factory FiatCurrency.pgk() = _PgkFactory;

  /// {@macro sealed_world.currency_php_constructor}
  const factory FiatCurrency.php() = _PhpFactory;

  /// {@macro sealed_world.currency_pkr_constructor}
  const factory FiatCurrency.pkr() = _PkrFactory;

  /// {@macro sealed_world.currency_pln_constructor}
  const factory FiatCurrency.pln() = _PlnFactory;

  /// {@macro sealed_world.currency_pyg_constructor}
  const factory FiatCurrency.pyg() = _PygFactory;

  /// {@macro sealed_world.currency_qar_constructor}
  const factory FiatCurrency.qar() = _QarFactory;

  /// {@macro sealed_world.currency_ron_constructor}
  const factory FiatCurrency.ron() = _RonFactory;

  /// {@macro sealed_world.currency_rsd_constructor}
  const factory FiatCurrency.rsd() = _RsdFactory;

  /// {@macro sealed_world.currency_rub_constructor}
  const factory FiatCurrency.rub() = _RubFactory;

  /// {@macro sealed_world.currency_rwf_constructor}
  const factory FiatCurrency.rwf() = _RwfFactory;

  /// {@macro sealed_world.currency_sar_constructor}
  const factory FiatCurrency.sar() = _SarFactory;

  /// {@macro sealed_world.currency_sbd_constructor}
  const factory FiatCurrency.sbd() = _SbdFactory;

  /// {@macro sealed_world.currency_scr_constructor}
  const factory FiatCurrency.scr() = _ScrFactory;

  /// {@macro sealed_world.currency_sdg_constructor}
  const factory FiatCurrency.sdg() = _SdgFactory;

  /// {@macro sealed_world.currency_sek_constructor}
  const factory FiatCurrency.sek() = _SekFactory;

  /// {@macro sealed_world.currency_sgd_constructor}
  const factory FiatCurrency.sgd() = _SgdFactory;

  /// {@macro sealed_world.currency_shp_constructor}
  const factory FiatCurrency.shp() = _ShpFactory;

  /// {@macro sealed_world.currency_sle_constructor}
  const factory FiatCurrency.sle() = _SleFactory;

  /// {@macro sealed_world.currency_sll_constructor}
  const factory FiatCurrency.sll() = _SllFactory;

  /// {@macro sealed_world.currency_sos_constructor}
  const factory FiatCurrency.sos() = _SosFactory;

  /// {@macro sealed_world.currency_srd_constructor}
  const factory FiatCurrency.srd() = _SrdFactory;

  /// {@macro sealed_world.currency_ssp_constructor}
  const factory FiatCurrency.ssp() = _SspFactory;

  /// {@macro sealed_world.currency_stn_constructor}
  const factory FiatCurrency.stn() = _StnFactory;

  /// {@macro sealed_world.currency_svc_constructor}
  const factory FiatCurrency.svc() = _SvcFactory;

  /// {@macro sealed_world.currency_syp_constructor}
  const factory FiatCurrency.syp() = _SypFactory;

  /// {@macro sealed_world.currency_szl_constructor}
  const factory FiatCurrency.szl() = _SzlFactory;

  /// {@macro sealed_world.currency_thb_constructor}
  const factory FiatCurrency.thb() = _ThbFactory;

  /// {@macro sealed_world.currency_tjs_constructor}
  const factory FiatCurrency.tjs() = _TjsFactory;

  /// {@macro sealed_world.currency_tmt_constructor}
  const factory FiatCurrency.tmt() = _TmtFactory;

  /// {@macro sealed_world.currency_tnd_constructor}
  const factory FiatCurrency.tnd() = _TndFactory;

  /// {@macro sealed_world.currency_top_constructor}
  const factory FiatCurrency.top() = _TopFactory;

  /// {@macro sealed_world.currency_try_constructor}
  /// Name `try` can't be used because it's a keyword, so we use `try_` instead.
  const factory FiatCurrency.try_() = _TryFactory;

  /// {@macro sealed_world.currency_ttd_constructor}
  const factory FiatCurrency.ttd() = _TtdFactory;

  /// {@macro sealed_world.currency_twd_constructor}
  const factory FiatCurrency.twd() = _TwdFactory;

  /// {@macro sealed_world.currency_tzs_constructor}
  const factory FiatCurrency.tzs() = _TzsFactory;

  /// {@macro sealed_world.currency_uah_constructor}
  const factory FiatCurrency.uah() = _UahFactory;

  /// {@macro sealed_world.currency_ugx_constructor}
  const factory FiatCurrency.ugx() = _UgxFactory;

  /// {@macro sealed_world.currency_usd_constructor}
  const factory FiatCurrency.usd() = _UsdFactory;

  /// {@macro sealed_world.currency_uyu_constructor}
  const factory FiatCurrency.uyu() = _UyuFactory;

  /// {@macro sealed_world.currency_uzs_constructor}
  const factory FiatCurrency.uzs() = _UzsFactory;

  /// {@macro sealed_world.currency_ves_constructor}
  const factory FiatCurrency.ves() = _VesFactory;

  /// {@macro sealed_world.currency_vnd_constructor}
  const factory FiatCurrency.vnd() = _VndFactory;

  /// {@macro sealed_world.currency_vuv_constructor}
  const factory FiatCurrency.vuv() = _VuvFactory;

  /// {@macro sealed_world.currency_wst_constructor}
  const factory FiatCurrency.wst() = _WstFactory;

  /// {@macro sealed_world.currency_xaf_constructor}
  const factory FiatCurrency.xaf() = _XafFactory;

  /// {@macro sealed_world.currency_xcd_constructor}
  const factory FiatCurrency.xcd() = _XcdFactory;

  /// {@macro sealed_world.currency_xcg_constructor}
  const factory FiatCurrency.xcg() = _XcgFactory;

  /// {@macro sealed_world.currency_xof_constructor}
  const factory FiatCurrency.xof() = _XofFactory;

  /// {@macro sealed_world.currency_xpf_constructor}
  const factory FiatCurrency.xpf() = _XpfFactory;

  /// {@macro sealed_world.currency_yer_constructor}
  const factory FiatCurrency.yer() = _YerFactory;

  /// {@macro sealed_world.currency_zar_constructor}
  const factory FiatCurrency.zar() = _ZarFactory;

  /// {@macro sealed_world.currency_zmw_constructor}
  const factory FiatCurrency.zmw() = _ZmwFactory;

  /// {@macro sealed_world.currency_zwg_constructor}
  const factory FiatCurrency.zwg() = _ZwgFactory;

  /// {@macro sealed_world.currency_zwl_constructor}
  const factory FiatCurrency.zwl() = _ZwlFactory;

  /// {@macro sealed_world.currency_xag_constructor}
  const factory FiatCurrency.xag() = _XagFactory;

  /// {@macro sealed_world.currency_xau_constructor}
  const factory FiatCurrency.xau() = _XauFactory;

  /// {@macro sealed_world.currency_xba_constructor}
  const factory FiatCurrency.xba() = _XbaFactory;

  /// {@macro sealed_world.currency_xbb_constructor}
  const factory FiatCurrency.xbb() = _XbbFactory;

  /// {@macro sealed_world.currency_xbc_constructor}
  const factory FiatCurrency.xbc() = _XbcFactory;

  /// {@macro sealed_world.currency_xbd_constructor}
  const factory FiatCurrency.xbd() = _XbdFactory;

  /// {@macro sealed_world.currency_xdr_constructor}
  const factory FiatCurrency.xdr() = _XdrFactory;

  /// {@macro sealed_world.currency_xpd_constructor}
  const factory FiatCurrency.xpd() = _XpdFactory;

  /// {@macro sealed_world.currency_xpt_constructor}
  const factory FiatCurrency.xpt() = _XptFactory;

  /// {@macro sealed_world.currency_xts_constructor}
  const factory FiatCurrency.xts() = _XtsFactory;

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
  factory FiatCurrency.fromCode(
    Object code, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
      ? codeMap.findByCodeOrThrow(code)
      : currencies.firstIsoWhereCode(code);

  /// Returns a [FiatCurrency] instance from an numeric ISO 4217 code.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-letter numeric ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the
  /// [FiatCurrency] instance that corresponds to the given code, or throws a
  /// [StateError] if no such instance exists.
  factory FiatCurrency.fromCodeNumeric(
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
  factory FiatCurrency.fromName(
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
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final currency = FiatCurrency.fromAnyCode("eur");
  /// ```
  ///
  /// In the above example, the  factory method is called with the
  /// code "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [FiatCurrency] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [FiatCurrency] instance. The resulting [FiatCurrency] instance is assigned
  /// to the [code] variable.
  factory FiatCurrency.fromAnyCode(
    Object code, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
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

  /// The international 3-numeric non-empty numeric code as defined by the ISO
  /// 4217 standard.
  @override
  String get codeOther => codeNumeric;

  @override
  String get internationalName => name;

  @override
  List<TranslatedName> get translations =>
      _translations ?? l10n.translatedNames({this});

  @override
  LocalizationDelegate get l10n =>
      LocalizationDelegate(mapper: () => CurrenciesLocaleMapper().localize);

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
            "subunitToUnit: $subunitToUnit, unitFirst: $unitFirst,)";

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
  /// each [FiatCurrency]'s [code] to [value].
  ///
  /// The optional [currencies] parameter specifies the list of [FiatCurrency]
  /// objects to search (defaults to [FiatCurrency.listExtended]).
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final euro = FiatCurrency.maybeFromValue(
  ///   "Euro",
  ///   where: (currency) => currency.namesNative.first,
  /// );
  /// print(euro); // Prints: "Currency(code: "EUR")".
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
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///  This method returns the
  /// [FiatCurrency] instance that corresponds to the given value, or `null` if
  /// no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// FiatCurrency? fiat = FiatCurrency.maybeFromAnyCode(CurrencyEnum.eur.name);
  /// print(fiat != null) // Prints: true.
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

    final string = IsoObject.maybe(
      code, // Dart 3.7+ formatting.
    )?.maybeToValidIsoUpperCaseCode(exactLength: IsoStandardized.codeLength);

    return currencies.firstIsoWhereCodeOrNull(string, toUpperCase: false);
  }

  /// Returns a [FiatCurrency] instance from an numeric ISO 4217 code, or
  /// `null` if no such instance exists.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-letter numeric ISO 4217 code for the currency.
  /// {@macro any_code_object}
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

    final string = IsoObject.maybe(
      codeNumeric, // Dart 3.7+ formatting.
    )?.maybeToValidIsoCode(exactLength: IsoStandardized.codeLength);

    return currencies.firstIsoWhereCodeOtherOrNull(string, toUpperCase: false);
  }

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
  /// a unified view of currency codes (ISO 4217) and their [FiatCurrency
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
    FiatAng(), // ignore: deprecated_member_use_from_same_package, TODO! End of 2025.
    FiatAoa(),
    FiatArs(),
    FiatAud(),
    FiatAwg(),
    FiatAzn(),
    FiatBam(),
    FiatBbd(),
    FiatBdt(),
    FiatBgn(), // ignore: deprecated_member_use_from_same_package, TODO! End of 2025.
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
    FiatHrk(), // ignore: deprecated_member_use_from_same_package, TODO! End of 2025.
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
    FiatSll(), // ignore: deprecated_member_use_from_same_package, TODO! End of 2025.
    FiatSos(),
    FiatSrd(),
    FiatSsp(),
    FiatStn(),
    FiatSvc(), // ignore: deprecated_member_use_from_same_package, TODO! End of 2025.
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
    FiatZwl(), // ignore: deprecated_member_use_from_same_package, TODO! End of 2025.
  ];

  /// A list of all currencies currently supported by the
  /// [FiatCurrency] class. This is combination of [FiatCurrency.list]
  /// plus all currencies from the [FiatCurrency.specialPurposeList].
  static const listExtended = <FiatCurrency>[...list, ...specialPurposeList];

  final List<TranslatedName>? _translations;
}
