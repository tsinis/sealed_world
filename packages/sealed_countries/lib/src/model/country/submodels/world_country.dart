part of "../country.dart";

/// A class that represents a country in the world.
///
/// The [WorldCountry] class is a class that represents a country in the world.
/// It extends the [Country] class, which represents a country. It consists of
/// various fields that describe the country, such as its name, code,
/// currencies, languages, and more. The [WorldCountry] class includes methods
/// to create a new country object from its code or code short, and a static
/// method [maybeFromValue] to create a new country object from a value, such as
/// a string, while handling null values. The [WorldCountry] class also includes
/// methods to convert the country object to a string representation, and a
/// static constant [list] that contains all of the countries of the world.
///
/// Example usage:
///
/// ```dart
/// final spain = WorldCountry.fromCode("ESP");
/// print(spain.name); // Output: "Spain"
///
/// final japan = WorldCountry.fromCodeShort("JP");
/// print(japan.name); // Output: "Japan"
///
/// final unknown = WorldCountry.maybeFromValue<int>(42);
/// print(unknown); // Output: null
/// ```
class WorldCountry extends Country
    implements
        IsoTranslated<TranslatedName, CountryName, BasicTypedLocale>,
        JsonEncodable<WorldCountry>,
        Comparable<WorldCountry> {
  /// {@template country_constructor}
  /// Creates a new [WorldCountry] object with the given properties.
  ///
  /// The [name] parameter is required and must not be empty. The
  /// [altSpellings], [languages], [namesNative], [translations], [demonyms],
  /// [timezones], [bordersCodes], and [tld] parameters should not be `null`.
  /// The [codeShort], [codeNumeric], [code], [emoji], [idd], [latLng], [maps],
  /// [areaMetric], [population], and [startOfWeek] parameters should not be
  /// `null` and must be valid values.
  /// {@endtemplate}
  const WorldCountry({
    required super.name,
    required this.altSpellings,
    required this.areaMetric,
    required this.code, // CCA3.
    required this.codeNumeric, // CCN3.
    required this.codeShort, // CCA2.
    required this.continent,
    required this.emoji,
    required this.idd, // International Direct Dialing.
    required this.latLng,
    required this.maps,
    required this.population,
    required this.timezones,
    required this.tld, // Top Level Domain.
    this.currencies,
    this.capitalInfo,
    this.car = const Car(),
    this.cioc, // International Olympic Committee.
    this.fifa,
    this.gini, // Gini Coefficient.
    this.hasCoatOfArms = true,
    this.independent = true,
    this.landlocked = false,
    this.postalCode,
    this.bordersCodes,
    this.startOfWeek = Weekday.monday,
    this.subregion,
    this.unMember = true,
    this.regionalBlocs,
    List<Demonyms>? demonyms,
    List<NaturalLanguage>? languages,
    List<CountryName>? namesNative,
    @Deprecated("Translations are now provided via `l10n`")
    List<TranslatedName>? translations,
  }) : assert(
         code.length == IsoStandardized.codeLength,
         """`code` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       assert(
         codeShort.length == IsoStandardized.codeShortLength,
         """`codeShort` should be exactly ${IsoStandardized.codeShortLength} characters long!""",
       ),
       assert(
         codeNumeric.length == IsoStandardized.codeLength,
         """`codeNumeric` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       assert(cioc == null || cioc.length > 0, "`cioc` should not be empty!"),
       assert(fifa == null || fifa.length > 0, "`fifa` should not be empty!"),
       assert(tld != const <String>[], "`tld` should not be empty!"),
       assert(emoji.length > 0, "`emoji` should not be empty!"),
       assert(
         altSpellings != const <String>[],
         "`altSpellings` should not be empty!",
       ),
       assert(
         timezones != const <String>[],
         "`timezones` should not be empty!",
       ),
       assert(
         bordersCodes != const <String>[],
         "`bordersCodes` should not be empty!",
       ),
       assert(
         regionalBlocs != const <RegionalBloc>[],
         "`regionalBlocs` should not be empty!",
       ),
       _namesNative = namesNative,
       _demonyms = demonyms,
       _languages = languages,
       _translations = translations;

  /// {@macro sealed_world.country_abw_constructor}
  const factory WorldCountry.abw() = _AbwFactory;

  /// {@macro sealed_world.country_afg_constructor}
  const factory WorldCountry.afg() = _AfgFactory;

  /// {@macro sealed_world.country_ago_constructor}
  const factory WorldCountry.ago() = _AgoFactory;

  /// {@macro sealed_world.country_aia_constructor}
  const factory WorldCountry.aia() = _AiaFactory;

  /// {@macro sealed_world.country_ala_constructor}
  const factory WorldCountry.ala() = _AlaFactory;

  /// {@macro sealed_world.country_alb_constructor}
  const factory WorldCountry.alb() = _AlbFactory;

  /// {@macro sealed_world.country_and_constructor}
  const factory WorldCountry.and() = _AndFactory;

  /// {@macro sealed_world.country_are_constructor}
  const factory WorldCountry.are() = _AreFactory;

  /// {@macro sealed_world.country_arg_constructor}
  const factory WorldCountry.arg() = _ArgFactory;

  /// {@macro sealed_world.country_arm_constructor}
  const factory WorldCountry.arm() = _ArmFactory;

  /// {@macro sealed_world.country_asm_constructor}
  const factory WorldCountry.asm() = _AsmFactory;

  /// {@macro sealed_world.country_ata_constructor}
  const factory WorldCountry.ata() = _AtaFactory;

  /// {@macro sealed_world.country_atf_constructor}
  const factory WorldCountry.atf() = _AtfFactory;

  /// {@macro sealed_world.country_atg_constructor}
  const factory WorldCountry.atg() = _AtgFactory;

  /// {@macro sealed_world.country_aus_constructor}
  const factory WorldCountry.aus() = _AusFactory;

  /// {@macro sealed_world.country_aut_constructor}
  const factory WorldCountry.aut() = _AutFactory;

  /// {@macro sealed_world.country_aze_constructor}
  const factory WorldCountry.aze() = _AzeFactory;

  /// {@macro sealed_world.country_bdi_constructor}
  const factory WorldCountry.bdi() = _BdiFactory;

  /// {@macro sealed_world.country_bel_constructor}
  const factory WorldCountry.bel() = _BelFactory;

  /// {@macro sealed_world.country_ben_constructor}
  const factory WorldCountry.ben() = _BenFactory;

  /// {@macro sealed_world.country_bes_constructor}
  const factory WorldCountry.bes() = _BesFactory;

  /// {@macro sealed_world.country_bfa_constructor}
  const factory WorldCountry.bfa() = _BfaFactory;

  /// {@macro sealed_world.country_bgd_constructor}
  const factory WorldCountry.bgd() = _BgdFactory;

  /// {@macro sealed_world.country_bgr_constructor}
  const factory WorldCountry.bgr() = _BgrFactory;

  /// {@macro sealed_world.country_bhr_constructor}
  const factory WorldCountry.bhr() = _BhrFactory;

  /// {@macro sealed_world.country_bhs_constructor}
  const factory WorldCountry.bhs() = _BhsFactory;

  /// {@macro sealed_world.country_bih_constructor}
  const factory WorldCountry.bih() = _BihFactory;

  /// {@macro sealed_world.country_blm_constructor}
  const factory WorldCountry.blm() = _BlmFactory;

  /// {@macro sealed_world.country_blr_constructor}
  const factory WorldCountry.blr() = _BlrFactory;

  /// {@macro sealed_world.country_blz_constructor}
  const factory WorldCountry.blz() = _BlzFactory;

  /// {@macro sealed_world.country_bmu_constructor}
  const factory WorldCountry.bmu() = _BmuFactory;

  /// {@macro sealed_world.country_bol_constructor}
  const factory WorldCountry.bol() = _BolFactory;

  /// {@macro sealed_world.country_bra_constructor}
  const factory WorldCountry.bra() = _BraFactory;

  /// {@macro sealed_world.country_brb_constructor}
  const factory WorldCountry.brb() = _BrbFactory;

  /// {@macro sealed_world.country_brn_constructor}
  const factory WorldCountry.brn() = _BrnFactory;

  /// {@macro sealed_world.country_btn_constructor}
  const factory WorldCountry.btn() = _BtnFactory;

  /// {@macro sealed_world.country_bvt_constructor}
  const factory WorldCountry.bvt() = _BvtFactory;

  /// {@macro sealed_world.country_bwa_constructor}
  const factory WorldCountry.bwa() = _BwaFactory;

  /// {@macro sealed_world.country_caf_constructor}
  const factory WorldCountry.caf() = _CafFactory;

  /// {@macro sealed_world.country_can_constructor}
  const factory WorldCountry.can() = _CanFactory;

  /// {@macro sealed_world.country_cck_constructor}
  const factory WorldCountry.cck() = _CckFactory;

  /// {@macro sealed_world.country_che_constructor}
  const factory WorldCountry.che() = _CheFactory;

  /// {@macro sealed_world.country_chl_constructor}
  const factory WorldCountry.chl() = _ChlFactory;

  /// {@macro sealed_world.country_chn_constructor}
  const factory WorldCountry.chn() = _ChnFactory;

  /// {@macro sealed_world.country_civ_constructor}
  const factory WorldCountry.civ() = _CivFactory;

  /// {@macro sealed_world.country_cmr_constructor}
  const factory WorldCountry.cmr() = _CmrFactory;

  /// {@macro sealed_world.country_cod_constructor}
  const factory WorldCountry.cod() = _CodFactory;

  /// {@macro sealed_world.country_cog_constructor}
  const factory WorldCountry.cog() = _CogFactory;

  /// {@macro sealed_world.country_cok_constructor}
  const factory WorldCountry.cok() = _CokFactory;

  /// {@macro sealed_world.country_col_constructor}
  const factory WorldCountry.col() = _ColFactory;

  /// {@macro sealed_world.country_com_constructor}
  const factory WorldCountry.com() = _ComFactory;

  /// {@macro sealed_world.country_cpv_constructor}
  const factory WorldCountry.cpv() = _CpvFactory;

  /// {@macro sealed_world.country_cri_constructor}
  const factory WorldCountry.cri() = _CriFactory;

  /// {@macro sealed_world.country_cub_constructor}
  const factory WorldCountry.cub() = _CubFactory;

  /// {@macro sealed_world.country_cuw_constructor}
  const factory WorldCountry.cuw() = _CuwFactory;

  /// {@macro sealed_world.country_cxr_constructor}
  const factory WorldCountry.cxr() = _CxrFactory;

  /// {@macro sealed_world.country_cym_constructor}
  const factory WorldCountry.cym() = _CymFactory;

  /// {@macro sealed_world.country_cyp_constructor}
  const factory WorldCountry.cyp() = _CypFactory;

  /// {@macro sealed_world.country_cze_constructor}
  const factory WorldCountry.cze() = _CzeFactory;

  /// {@macro sealed_world.country_deu_constructor}
  const factory WorldCountry.deu() = _DeuFactory;

  /// {@macro sealed_world.country_dji_constructor}
  const factory WorldCountry.dji() = _DjiFactory;

  /// {@macro sealed_world.country_dma_constructor}
  const factory WorldCountry.dma() = _DmaFactory;

  /// {@macro sealed_world.country_dnk_constructor}
  const factory WorldCountry.dnk() = _DnkFactory;

  /// {@macro sealed_world.country_dom_constructor}
  const factory WorldCountry.dom() = _DomFactory;

  /// {@macro sealed_world.country_dza_constructor}
  const factory WorldCountry.dza() = _DzaFactory;

  /// {@macro sealed_world.country_ecu_constructor}
  const factory WorldCountry.ecu() = _EcuFactory;

  /// {@macro sealed_world.country_egy_constructor}
  const factory WorldCountry.egy() = _EgyFactory;

  /// {@macro sealed_world.country_eri_constructor}
  const factory WorldCountry.eri() = _EriFactory;

  /// {@macro sealed_world.country_esh_constructor}
  const factory WorldCountry.esh() = _EshFactory;

  /// {@macro sealed_world.country_esp_constructor}
  const factory WorldCountry.esp() = _EspFactory;

  /// {@macro sealed_world.country_est_constructor}
  const factory WorldCountry.est() = _EstFactory;

  /// {@macro sealed_world.country_eth_constructor}
  const factory WorldCountry.eth() = _EthFactory;

  /// {@macro sealed_world.country_fin_constructor}
  const factory WorldCountry.fin() = _FinFactory;

  /// {@macro sealed_world.country_fji_constructor}
  const factory WorldCountry.fji() = _FjiFactory;

  /// {@macro sealed_world.country_flk_constructor}
  const factory WorldCountry.flk() = _FlkFactory;

  /// {@macro sealed_world.country_fra_constructor}
  const factory WorldCountry.fra() = _FraFactory;

  /// {@macro sealed_world.country_fro_constructor}
  const factory WorldCountry.fro() = _FroFactory;

  /// {@macro sealed_world.country_fsm_constructor}
  const factory WorldCountry.fsm() = _FsmFactory;

  /// {@macro sealed_world.country_gab_constructor}
  const factory WorldCountry.gab() = _GabFactory;

  /// {@macro sealed_world.country_gbr_constructor}
  const factory WorldCountry.gbr() = _GbrFactory;

  /// {@macro sealed_world.country_geo_constructor}
  const factory WorldCountry.geo() = _GeoFactory;

  /// {@macro sealed_world.country_ggy_constructor}
  const factory WorldCountry.ggy() = _GgyFactory;

  /// {@macro sealed_world.country_gha_constructor}
  const factory WorldCountry.gha() = _GhaFactory;

  /// {@macro sealed_world.country_gib_constructor}
  const factory WorldCountry.gib() = _GibFactory;

  /// {@macro sealed_world.country_gin_constructor}
  const factory WorldCountry.gin() = _GinFactory;

  /// {@macro sealed_world.country_glp_constructor}
  const factory WorldCountry.glp() = _GlpFactory;

  /// {@macro sealed_world.country_gmb_constructor}
  const factory WorldCountry.gmb() = _GmbFactory;

  /// {@macro sealed_world.country_gnb_constructor}
  const factory WorldCountry.gnb() = _GnbFactory;

  /// {@macro sealed_world.country_gnq_constructor}
  const factory WorldCountry.gnq() = _GnqFactory;

  /// {@macro sealed_world.country_grc_constructor}
  const factory WorldCountry.grc() = _GrcFactory;

  /// {@macro sealed_world.country_grd_constructor}
  const factory WorldCountry.grd() = _GrdFactory;

  /// {@macro sealed_world.country_grl_constructor}
  const factory WorldCountry.grl() = _GrlFactory;

  /// {@macro sealed_world.country_gtm_constructor}
  const factory WorldCountry.gtm() = _GtmFactory;

  /// {@macro sealed_world.country_guf_constructor}
  const factory WorldCountry.guf() = _GufFactory;

  /// {@macro sealed_world.country_gum_constructor}
  const factory WorldCountry.gum() = _GumFactory;

  /// {@macro sealed_world.country_guy_constructor}
  const factory WorldCountry.guy() = _GuyFactory;

  /// {@macro sealed_world.country_hkg_constructor}
  const factory WorldCountry.hkg() = _HkgFactory;

  /// {@macro sealed_world.country_hmd_constructor}
  const factory WorldCountry.hmd() = _HmdFactory;

  /// {@macro sealed_world.country_hnd_constructor}
  const factory WorldCountry.hnd() = _HndFactory;

  /// {@macro sealed_world.country_hrv_constructor}
  const factory WorldCountry.hrv() = _HrvFactory;

  /// {@macro sealed_world.country_hti_constructor}
  const factory WorldCountry.hti() = _HtiFactory;

  /// {@macro sealed_world.country_hun_constructor}
  const factory WorldCountry.hun() = _HunFactory;

  /// {@macro sealed_world.country_idn_constructor}
  const factory WorldCountry.idn() = _IdnFactory;

  /// {@macro sealed_world.country_imn_constructor}
  const factory WorldCountry.imn() = _ImnFactory;

  /// {@macro sealed_world.country_ind_constructor}
  const factory WorldCountry.ind() = _IndFactory;

  /// {@macro sealed_world.country_iot_constructor}
  const factory WorldCountry.iot() = _IotFactory;

  /// {@macro sealed_world.country_irl_constructor}
  const factory WorldCountry.irl() = _IrlFactory;

  /// {@macro sealed_world.country_irn_constructor}
  const factory WorldCountry.irn() = _IrnFactory;

  /// {@macro sealed_world.country_irq_constructor}
  const factory WorldCountry.irq() = _IrqFactory;

  /// {@macro sealed_world.country_isl_constructor}
  const factory WorldCountry.isl() = _IslFactory;

  /// {@macro sealed_world.country_isr_constructor}
  const factory WorldCountry.isr() = _IsrFactory;

  /// {@macro sealed_world.country_ita_constructor}
  const factory WorldCountry.ita() = _ItaFactory;

  /// {@macro sealed_world.country_jam_constructor}
  const factory WorldCountry.jam() = _JamFactory;

  /// {@macro sealed_world.country_jey_constructor}
  const factory WorldCountry.jey() = _JeyFactory;

  /// {@macro sealed_world.country_jor_constructor}
  const factory WorldCountry.jor() = _JorFactory;

  /// {@macro sealed_world.country_jpn_constructor}
  const factory WorldCountry.jpn() = _JpnFactory;

  /// {@macro sealed_world.country_kaz_constructor}
  const factory WorldCountry.kaz() = _KazFactory;

  /// {@macro sealed_world.country_ken_constructor}
  const factory WorldCountry.ken() = _KenFactory;

  /// {@macro sealed_world.country_kgz_constructor}
  const factory WorldCountry.kgz() = _KgzFactory;

  /// {@macro sealed_world.country_khm_constructor}
  const factory WorldCountry.khm() = _KhmFactory;

  /// {@macro sealed_world.country_kir_constructor}
  const factory WorldCountry.kir() = _KirFactory;

  /// {@macro sealed_world.country_kna_constructor}
  const factory WorldCountry.kna() = _KnaFactory;

  /// {@macro sealed_world.country_kor_constructor}
  const factory WorldCountry.kor() = _KorFactory;

  /// {@macro sealed_world.country_kwt_constructor}
  const factory WorldCountry.kwt() = _KwtFactory;

  /// {@macro sealed_world.country_lao_constructor}
  const factory WorldCountry.lao() = _LaoFactory;

  /// {@macro sealed_world.country_lbn_constructor}
  const factory WorldCountry.lbn() = _LbnFactory;

  /// {@macro sealed_world.country_lbr_constructor}
  const factory WorldCountry.lbr() = _LbrFactory;

  /// {@macro sealed_world.country_lby_constructor}
  const factory WorldCountry.lby() = _LbyFactory;

  /// {@macro sealed_world.country_lca_constructor}
  const factory WorldCountry.lca() = _LcaFactory;

  /// {@macro sealed_world.country_lie_constructor}
  const factory WorldCountry.lie() = _LieFactory;

  /// {@macro sealed_world.country_lka_constructor}
  const factory WorldCountry.lka() = _LkaFactory;

  /// {@macro sealed_world.country_lso_constructor}
  const factory WorldCountry.lso() = _LsoFactory;

  /// {@macro sealed_world.country_ltu_constructor}
  const factory WorldCountry.ltu() = _LtuFactory;

  /// {@macro sealed_world.country_lux_constructor}
  const factory WorldCountry.lux() = _LuxFactory;

  /// {@macro sealed_world.country_lva_constructor}
  const factory WorldCountry.lva() = _LvaFactory;

  /// {@macro sealed_world.country_mac_constructor}
  const factory WorldCountry.mac() = _MacFactory;

  /// {@macro sealed_world.country_maf_constructor}
  const factory WorldCountry.maf() = _MafFactory;

  /// {@macro sealed_world.country_mar_constructor}
  const factory WorldCountry.mar() = _MarFactory;

  /// {@macro sealed_world.country_mco_constructor}
  const factory WorldCountry.mco() = _McoFactory;

  /// {@macro sealed_world.country_mda_constructor}
  const factory WorldCountry.mda() = _MdaFactory;

  /// {@macro sealed_world.country_mdg_constructor}
  const factory WorldCountry.mdg() = _MdgFactory;

  /// {@macro sealed_world.country_mdv_constructor}
  const factory WorldCountry.mdv() = _MdvFactory;

  /// {@macro sealed_world.country_mex_constructor}
  const factory WorldCountry.mex() = _MexFactory;

  /// {@macro sealed_world.country_mhl_constructor}
  const factory WorldCountry.mhl() = _MhlFactory;

  /// {@macro sealed_world.country_mkd_constructor}
  const factory WorldCountry.mkd() = _MkdFactory;

  /// {@macro sealed_world.country_mli_constructor}
  const factory WorldCountry.mli() = _MliFactory;

  /// {@macro sealed_world.country_mlt_constructor}
  const factory WorldCountry.mlt() = _MltFactory;

  /// {@macro sealed_world.country_mmr_constructor}
  const factory WorldCountry.mmr() = _MmrFactory;

  /// {@macro sealed_world.country_mne_constructor}
  const factory WorldCountry.mne() = _MneFactory;

  /// {@macro sealed_world.country_mng_constructor}
  const factory WorldCountry.mng() = _MngFactory;

  /// {@macro sealed_world.country_mnp_constructor}
  const factory WorldCountry.mnp() = _MnpFactory;

  /// {@macro sealed_world.country_moz_constructor}
  const factory WorldCountry.moz() = _MozFactory;

  /// {@macro sealed_world.country_mrt_constructor}
  const factory WorldCountry.mrt() = _MrtFactory;

  /// {@macro sealed_world.country_msr_constructor}
  const factory WorldCountry.msr() = _MsrFactory;

  /// {@macro sealed_world.country_mtq_constructor}
  const factory WorldCountry.mtq() = _MtqFactory;

  /// {@macro sealed_world.country_mus_constructor}
  const factory WorldCountry.mus() = _MusFactory;

  /// {@macro sealed_world.country_mwi_constructor}
  const factory WorldCountry.mwi() = _MwiFactory;

  /// {@macro sealed_world.country_mys_constructor}
  const factory WorldCountry.mys() = _MysFactory;

  /// {@macro sealed_world.country_myt_constructor}
  const factory WorldCountry.myt() = _MytFactory;

  /// {@macro sealed_world.country_nam_constructor}
  const factory WorldCountry.nam() = _NamFactory;

  /// {@macro sealed_world.country_ncl_constructor}
  const factory WorldCountry.ncl() = _NclFactory;

  /// {@macro sealed_world.country_ner_constructor}
  const factory WorldCountry.ner() = _NerFactory;

  /// {@macro sealed_world.country_nfk_constructor}
  const factory WorldCountry.nfk() = _NfkFactory;

  /// {@macro sealed_world.country_nga_constructor}
  const factory WorldCountry.nga() = _NgaFactory;

  /// {@macro sealed_world.country_nic_constructor}
  const factory WorldCountry.nic() = _NicFactory;

  /// {@macro sealed_world.country_niu_constructor}
  const factory WorldCountry.niu() = _NiuFactory;

  /// {@macro sealed_world.country_nld_constructor}
  const factory WorldCountry.nld() = _NldFactory;

  /// {@macro sealed_world.country_nor_constructor}
  const factory WorldCountry.nor() = _NorFactory;

  /// {@macro sealed_world.country_npl_constructor}
  const factory WorldCountry.npl() = _NplFactory;

  /// {@macro sealed_world.country_nru_constructor}
  const factory WorldCountry.nru() = _NruFactory;

  /// {@macro sealed_world.country_nzl_constructor}
  const factory WorldCountry.nzl() = _NzlFactory;

  /// {@macro sealed_world.country_omn_constructor}
  const factory WorldCountry.omn() = _OmnFactory;

  /// {@macro sealed_world.country_pak_constructor}
  const factory WorldCountry.pak() = _PakFactory;

  /// {@macro sealed_world.country_pan_constructor}
  const factory WorldCountry.pan() = _PanFactory;

  /// {@macro sealed_world.country_pcn_constructor}
  const factory WorldCountry.pcn() = _PcnFactory;

  /// {@macro sealed_world.country_per_constructor}
  const factory WorldCountry.per() = _PerFactory;

  /// {@macro sealed_world.country_phl_constructor}
  const factory WorldCountry.phl() = _PhlFactory;

  /// {@macro sealed_world.country_plw_constructor}
  const factory WorldCountry.plw() = _PlwFactory;

  /// {@macro sealed_world.country_png_constructor}
  const factory WorldCountry.png() = _PngFactory;

  /// {@macro sealed_world.country_pol_constructor}
  const factory WorldCountry.pol() = _PolFactory;

  /// {@macro sealed_world.country_pri_constructor}
  const factory WorldCountry.pri() = _PriFactory;

  /// {@macro sealed_world.country_prk_constructor}
  const factory WorldCountry.prk() = _PrkFactory;

  /// {@macro sealed_world.country_prt_constructor}
  const factory WorldCountry.prt() = _PrtFactory;

  /// {@macro sealed_world.country_pry_constructor}
  const factory WorldCountry.pry() = _PryFactory;

  /// {@macro sealed_world.country_pse_constructor}
  const factory WorldCountry.pse() = _PseFactory;

  /// {@macro sealed_world.country_pyf_constructor}
  const factory WorldCountry.pyf() = _PyfFactory;

  /// {@macro sealed_world.country_qat_constructor}
  const factory WorldCountry.qat() = _QatFactory;

  /// {@macro sealed_world.country_reu_constructor}
  const factory WorldCountry.reu() = _ReuFactory;

  /// {@macro sealed_world.country_rou_constructor}
  const factory WorldCountry.rou() = _RouFactory;

  /// {@macro sealed_world.country_rus_constructor}
  const factory WorldCountry.rus() = _RusFactory;

  /// {@macro sealed_world.country_rwa_constructor}
  const factory WorldCountry.rwa() = _RwaFactory;

  /// {@macro sealed_world.country_sau_constructor}
  const factory WorldCountry.sau() = _SauFactory;

  /// {@macro sealed_world.country_sdn_constructor}
  const factory WorldCountry.sdn() = _SdnFactory;

  /// {@macro sealed_world.country_sen_constructor}
  const factory WorldCountry.sen() = _SenFactory;

  /// {@macro sealed_world.country_sgp_constructor}
  const factory WorldCountry.sgp() = _SgpFactory;

  /// {@macro sealed_world.country_sgs_constructor}
  const factory WorldCountry.sgs() = _SgsFactory;

  /// {@macro sealed_world.country_shn_constructor}
  const factory WorldCountry.shn() = _ShnFactory;

  /// {@macro sealed_world.country_sjm_constructor}
  const factory WorldCountry.sjm() = _SjmFactory;

  /// {@macro sealed_world.country_slb_constructor}
  const factory WorldCountry.slb() = _SlbFactory;

  /// {@macro sealed_world.country_sle_constructor}
  const factory WorldCountry.sle() = _SleFactory;

  /// {@macro sealed_world.country_slv_constructor}
  const factory WorldCountry.slv() = _SlvFactory;

  /// {@macro sealed_world.country_smr_constructor}
  const factory WorldCountry.smr() = _SmrFactory;

  /// {@macro sealed_world.country_som_constructor}
  const factory WorldCountry.som() = _SomFactory;

  /// {@macro sealed_world.country_spm_constructor}
  const factory WorldCountry.spm() = _SpmFactory;

  /// {@macro sealed_world.country_srb_constructor}
  const factory WorldCountry.srb() = _SrbFactory;

  /// {@macro sealed_world.country_ssd_constructor}
  const factory WorldCountry.ssd() = _SsdFactory;

  /// {@macro sealed_world.country_stp_constructor}
  const factory WorldCountry.stp() = _StpFactory;

  /// {@macro sealed_world.country_sur_constructor}
  const factory WorldCountry.sur() = _SurFactory;

  /// {@macro sealed_world.country_svk_constructor}
  const factory WorldCountry.svk() = _SvkFactory;

  /// {@macro sealed_world.country_svn_constructor}
  const factory WorldCountry.svn() = _SvnFactory;

  /// {@macro sealed_world.country_swe_constructor}
  const factory WorldCountry.swe() = _SweFactory;

  /// {@macro sealed_world.country_swz_constructor}
  const factory WorldCountry.swz() = _SwzFactory;

  /// {@macro sealed_world.country_sxm_constructor}
  const factory WorldCountry.sxm() = _SxmFactory;

  /// {@macro sealed_world.country_syc_constructor}
  const factory WorldCountry.syc() = _SycFactory;

  /// {@macro sealed_world.country_syr_constructor}
  const factory WorldCountry.syr() = _SyrFactory;

  /// {@macro sealed_world.country_tca_constructor}
  const factory WorldCountry.tca() = _TcaFactory;

  /// {@macro sealed_world.country_tcd_constructor}
  const factory WorldCountry.tcd() = _TcdFactory;

  /// {@macro sealed_world.country_tgo_constructor}
  const factory WorldCountry.tgo() = _TgoFactory;

  /// {@macro sealed_world.country_tha_constructor}
  const factory WorldCountry.tha() = _ThaFactory;

  /// {@macro sealed_world.country_tjk_constructor}
  const factory WorldCountry.tjk() = _TjkFactory;

  /// {@macro sealed_world.country_tkl_constructor}
  const factory WorldCountry.tkl() = _TklFactory;

  /// {@macro sealed_world.country_tkm_constructor}
  const factory WorldCountry.tkm() = _TkmFactory;

  /// {@macro sealed_world.country_tls_constructor}
  const factory WorldCountry.tls() = _TlsFactory;

  /// {@macro sealed_world.country_ton_constructor}
  const factory WorldCountry.ton() = _TonFactory;

  /// {@macro sealed_world.country_tto_constructor}
  const factory WorldCountry.tto() = _TtoFactory;

  /// {@macro sealed_world.country_tun_constructor}
  const factory WorldCountry.tun() = _TunFactory;

  /// {@macro sealed_world.country_tur_constructor}
  const factory WorldCountry.tur() = _TurFactory;

  /// {@macro sealed_world.country_tuv_constructor}
  const factory WorldCountry.tuv() = _TuvFactory;

  /// {@macro sealed_world.country_twn_constructor}
  const factory WorldCountry.twn() = _TwnFactory;

  /// {@macro sealed_world.country_tza_constructor}
  const factory WorldCountry.tza() = _TzaFactory;

  /// {@macro sealed_world.country_uga_constructor}
  const factory WorldCountry.uga() = _UgaFactory;

  /// {@macro sealed_world.country_ukr_constructor}
  const factory WorldCountry.ukr() = _UkrFactory;

  /// {@macro sealed_world.country_umi_constructor}
  const factory WorldCountry.umi() = _UmiFactory;

  /// {@macro sealed_world.country_ury_constructor}
  const factory WorldCountry.ury() = _UryFactory;

  /// {@macro sealed_world.country_usa_constructor}
  const factory WorldCountry.usa() = _UsaFactory;

  /// {@macro sealed_world.country_uzb_constructor}
  const factory WorldCountry.uzb() = _UzbFactory;

  /// {@macro sealed_world.country_vat_constructor}
  const factory WorldCountry.vat() = _VatFactory;

  /// {@macro sealed_world.country_vct_constructor}
  const factory WorldCountry.vct() = _VctFactory;

  /// {@macro sealed_world.country_ven_constructor}
  const factory WorldCountry.ven() = _VenFactory;

  /// {@macro sealed_world.country_vgb_constructor}
  const factory WorldCountry.vgb() = _VgbFactory;

  /// {@macro sealed_world.country_vir_constructor}
  const factory WorldCountry.vir() = _VirFactory;

  /// {@macro sealed_world.country_vnm_constructor}
  const factory WorldCountry.vnm() = _VnmFactory;

  /// {@macro sealed_world.country_vut_constructor}
  const factory WorldCountry.vut() = _VutFactory;

  /// {@macro sealed_world.country_wlf_constructor}
  const factory WorldCountry.wlf() = _WlfFactory;

  /// {@macro sealed_world.country_wsm_constructor}
  const factory WorldCountry.wsm() = _WsmFactory;

  /// {@macro sealed_world.country_yem_constructor}
  const factory WorldCountry.yem() = _YemFactory;

  /// {@macro sealed_world.country_zaf_constructor}
  const factory WorldCountry.zaf() = _ZafFactory;

  /// {@macro sealed_world.country_zmb_constructor}
  const factory WorldCountry.zmb() = _ZmbFactory;

  /// {@macro sealed_world.country_zwe_constructor}
  const factory WorldCountry.zwe() = _ZweFactory;

  /// {@macro sealed_world.country_unk_constructor}
  const factory WorldCountry.unk() = _UnkFactory;

  /// {@macro permissive_constructor}
  /// {@macro country_constructor}
  @Deprecated(
    "Use concrete instance and `copyWith` method instead, this "
    "constructor will be renamed to `custom` in future versions.",
  )
  const WorldCountry.permissive({
    required super.name,
    required this.code,
    this.altSpellings = const [],
    this.areaMetric = 1,
    this.codeNumeric = "",
    this.codeShort = "",
    this.continent = const Europe(),
    this.emoji = "🏳️", // ignore: avoid-non-ascii-symbols, for permissive one.
    this.idd = const Idd(root: 0, suffixes: [0]),
    this.latLng = const LatLng(0, 0),
    this.maps = const Maps(googleMaps: " ", openStreetMaps: " "),
    this.population = 1,
    this.timezones = const [],
    this.tld = const [],
    this.currencies,
    this.capitalInfo,
    this.car = const Car(),
    this.cioc, // International Olympic Committee.
    this.fifa,
    this.gini, // Gini Coefficient.
    this.hasCoatOfArms = true,
    this.independent = true,
    this.landlocked = false,
    this.postalCode,
    this.bordersCodes,
    this.startOfWeek = Weekday.monday,
    this.subregion,
    this.unMember = true,
    this.regionalBlocs,
    List<Demonyms> demonyms = const [],
    List<NaturalLanguage>? languages,
    List<CountryName> namesNative = const [],
    List<TranslatedName>? translations,
  }) : _namesNative = namesNative,
       _demonyms = demonyms,
       _languages = languages,
       _translations = translations;

  /// Returns an [WorldCountry] object from the given [code]
  /// ISO 3166-1 Alpha-3 code.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a three-letter ISO 3166-1 Alpha-3 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a [StateError] if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  factory WorldCountry.fromCode(
    Object code, [
    Iterable<WorldCountry>? countries,
  ]) => countries == null
      ? codeMap.findByCodeOrThrow(code)
      : countries.firstIsoWhereCode(code);

  /// Returns an [WorldCountry] object from the given [codeShort]
  /// ISO 3166-1 Alpha-2 code.
  ///
  /// The [codeShort] parameter is required and must be a valid country code
  /// object representing a two-letter ISO 3166-1 Alpha-2 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a [StateError] if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  factory WorldCountry.fromCodeShort(
    Object codeShort, [
    Iterable<WorldCountry>? countries,
  ]) => countries == null
      ? codeShortMap.findByCodeOrThrow(codeShort)
      : countries.firstIsoWhereCodeOther(codeShort);

  /// Returns an [WorldCountry] object from the given ISO 3166-1 code.
  ///
  /// The [codeNumeric] parameter is required and must be a valid country code
  /// object representing a three-digit ISO 3166-1 numeric code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a [StateError] if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  factory WorldCountry.fromCodeNumeric(
    Object codeNumeric, [
    Iterable<WorldCountry>? countries,
    // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  ]) {
    if (countries == null) return codeNumericMap.findByCodeOrThrow(codeNumeric);

    final trimmedCode = IsoObject(codeNumeric).toCode();

    return countries.firstIsoWhere(
      (country) => country.codeNumeric == trimmedCode,
    );
  }

  /// Returns an instance of the [WorldCountry] class from any valid
  /// ISO 3166 code.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a ISO 3166-1 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or throws a [StateError] if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///
  /// Example:
  /// ```dart
  /// final country = WorldCountry.fromAnyCode("BLR");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "BLR". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [WorldCountry] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [WorldCountry] instance. The resulting [WorldCountry] instance is assigned
  /// to the [code] variable.
  factory WorldCountry.fromAnyCode(
    Object code, [
    Iterable<WorldCountry>? countries,
  ]) => countries == null
      ? map.findByCodeOrThrow(code)
      : IsoObject(code).maybeMapIsoCode(
          orElse: (regular) => WorldCountry.fromCode(regular, countries),
          numeric: (numb) => WorldCountry.fromCodeNumeric(numb, countries),
          short: (short) => WorldCountry.fromCodeShort(short, countries),
        );

  /// The top level domain names for the country.
  final List<String> tld;

  /// The three-letter ISO 3166-1 Alpha-3 code of the country.
  @override
  final String code;

  /// The three-digit ISO 3166-1 Numeric code of the country.
  final String codeNumeric;

  /// The two-letter ISO 3166-1 Alpha-2 code of the country.
  final String codeShort;

  /// The International Olympic Committee code of the country.
  final String? cioc;

  /// Whether the country is an independent state.
  final bool independent;

  /// Whether the country is a member of the United Nations.
  final bool unMember;

  /// The international direct dialing codes for the country.
  final Idd idd;

  /// The alternate spellings of the country name.
  final List<String> altSpellings;

  /// The continent where the country is located.
  final Continent continent;

  /// The subregion where the country is located.
  final SubRegion? subregion;

  /// The geographic coordinates of the country.
  final LatLng latLng;

  /// Whether the country is landlocked.
  final bool landlocked;

  /// The codes of the countries that share borders with this country.
  final List<String>? bordersCodes;

  /// The area of the country in square kilometers.
  final double areaMetric;

  /// The emoji flag for the country.
  final String emoji;

  /// The maps of the country.
  final Maps maps;

  /// The population of the country.
  final int population;

  /// The Gini coefficient of the country.
  final Gini? gini;

  /// The FIFA code of the country.
  final String? fifa;

  /// The car information of the country.
  final Car car;

  /// The time zones of the country.
  final List<String> timezones;

  /// Whether the country has an official coat of arms.
  final bool hasCoatOfArms;

  /// The first day of the week in the country.
  final Weekday startOfWeek;

  /// The capital city information of the country.
  final CapitalInfo? capitalInfo;

  /// The postal code information of the country.
  final PostalCode? postalCode;

  /// The regional blocs of the country.
  final List<RegionalBloc>? regionalBlocs;

  /// The two-letter ISO 3166-1 Alpha-2 code of the country.
  @override
  String get codeOther => codeShort;

  @override
  String get internationalName => name.common;

  /// The native names of the country.
  @override
  List<CountryName> get namesNative => _namesNative ?? const [];

  /// The currencies used in the country.
  final List<FiatCurrency>? currencies;

  /// The official languages spoken in the country.
  List<NaturalLanguage> get languages => _languages ?? const [];

  /// The demonym names for the people of the country.
  List<Demonyms> get demonyms => _demonyms ?? const [];

  @override
  List<TranslatedName> get translations =>
      _translations ?? l10n.translatedNames({this});

  @override
  TypedLocalizationDelegate get l10n =>
      TypedLocalizationDelegate(mapper: () => CountriesLocaleMapper().localize);

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'WorldCountry(name: const ${name.toString(short: short)}, tld: ${jsonEncode(tld)}, code: "$code", '
            'codeNumeric: "$codeNumeric", codeShort: "$codeShort", '
            '''${cioc == null ? '' : 'cioc: "$cioc", '}independent: $independent, '''
            "unMember: $unMember, idd: const $idd, "
            "altSpellings: ${jsonEncode(altSpellings)}, "
            "continent: const ${continent.runtimeType}(), "
            """${subregion == null ? '' : 'subregion: const ${subregion.runtimeType}(), '}"""
            "latLng: const $latLng, landlocked: $landlocked, "
            """${bordersCodes == null ? '' : 'bordersCodes: ${jsonEncode(bordersCodes)}, '}"""
            'areaMetric: $areaMetric, emoji: "$emoji", maps: const $maps, '
            "population: $population,${gini == null ? ' ' : 'gini: const $gini, '}"
            '${fifa == null ? '' : 'fifa: "$fifa", '}car: const $car, '
            """timezones: ${jsonEncode(timezones)}, hasCoatOfArms: $hasCoatOfArms, """
            "startOfWeek: $startOfWeek, "
            "${postalCode == null ? '' : 'postalCode: const $postalCode, '});"
            """${currencies == null ? '' : '@override List<FiatCurrency> get currencies => const ${currencies?.toInstancesString()}; '} """
            """${capitalInfo == null ? '' : '@override CapitalInfo get capitalInfo => const ${capitalInfo?.toString(short: short)}; '} """
            """${regionalBlocs == null ? '' : '@override List<RegionalBloc> get regionalBlocs => const ${regionalBlocs?.toInstancesString()}; '} """
            "@override List<Demonyms> get demonyms => const $demonyms; "
            """@override List<CountryName> get namesNative => const ${namesNative.map((e) => e.toString(short: short)).toList()}; """
            "@override "
            """List<NaturalLanguage> get languages => const ${languages.toInstancesString()}""";

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  int compareTo(WorldCountry other) => code.compareTo(other.code);

  /// Returns a [WorldCountry] object that represents the country with the given
  /// [value].
  ///
  /// The [value] parameter is required and should not be `null`. The [where]
  /// parameter is an optional function that takes a [WorldCountry] object as
  /// its parameter and returns a value to compare with [value]. If [where] is
  /// `null`, the [code] field of the [WorldCountry] object will be used. The
  /// [countries] parameter is an optional iterable of [WorldCountry] objects
  /// that defaults to [list]. Returns a [WorldCountry] object that represents
  /// the country with the given [value], or `null` if no such country exists.
  static WorldCountry? maybeFromValue<T extends Object>(
    T value, {
    T? Function(WorldCountry country)? where,
    Iterable<WorldCountry> countries = list,
  }) {
    countries.assertNotEmpty();

    for (final country in countries) {
      final expectedValue = where?.call(country) ?? country.code;
      if (expectedValue == value) return country;
    }

    return null;
  }

  /// Returns an nullable [WorldCountry] object from the given ISO 3166-1 code.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a three-letter ISO 3166-1 Alpha-3 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static WorldCountry? maybeFromCode(
    Object? code, [
    Iterable<WorldCountry>? countries,
  ]) {
    if (countries == null) return codeMap.maybeFindByCode(code);

    final string = IsoObject.maybe(
      code, // Dart 3.7+ formatting.
    )?.maybeToValidIsoUpperCaseCode(exactLength: IsoStandardized.codeLength);

    return countries.firstIsoWhereCodeOrNull(string, toUpperCase: false);
  }

  /// Returns an [WorldCountry] object from the given [codeShort]
  /// ISO 3166-1 Alpha-2 code, or `null` if no such instance exists.
  ///
  /// The [codeShort] parameter is required and must be a valid country code
  /// object representing a two-letter ISO 3166-1 Alpha-2 code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static WorldCountry? maybeFromCodeShort(
    Object? codeShort, [
    Iterable<WorldCountry>? countries,
  ]) {
    if (countries == null) return codeShortMap.maybeFindByCode(codeShort);

    final string = IsoObject.maybe(codeShort)?.maybeToValidIsoUpperCaseCode(
      exactLength: IsoStandardized.codeShortLength,
    );

    return countries.firstIsoWhereCodeOtherOrNull(string, toUpperCase: false);
  }

  /// Returns an [WorldCountry] object from the given [codeNumeric] ISO 3166-1
  /// code or `null` if no such instance exists.
  ///
  /// The [codeNumeric] parameter is required and must be a valid country code
  /// object representing a three-digit ISO 3166-1 numeric code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static WorldCountry? maybeFromCodeNumeric(
    Object codeNumeric, [
    Iterable<WorldCountry>? countries,
  ]) {
    if (countries == null) return codeNumericMap.maybeFindByCode(codeNumeric);
    final trimmedCode = IsoObject(
      codeNumeric, // Dart 3.7+ formatting.
    ).maybeToValidIsoCode(exactLength: IsoStandardized.codeLength);

    return countries.firstIsoWhereOrNull(
      (country) => country.codeNumeric == trimmedCode,
    );
  }

  /// Returns a [WorldCountry] instance that corresponds to the given code, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and must be a valid country code object
  /// representing a ISO 3166-1 country code.
  /// {@macro any_code_object}
  /// Returns a [WorldCountry] object that represents the country with the given
  /// code or `null` if no such country exists.
  ///
  /// The optional [countries] parameter can be used to specify a list of
  /// [WorldCountry] objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///
  /// Example:
  /// ```dart
  /// WorldCountry? blr = WorldCountry.maybeFromAnyCode(CountryEnum.blr.name);
  /// print(blr != null) // Prints: true.
  /// ```
  ///
  /// In the above example, the [maybeFromAnyCode] method is called with the
  /// value "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the value. If the value is numeric, it compares it
  /// with the `codeNumeric` property of each [WorldCountry] instance.
  /// If the value is two characters code, it compares it
  /// with the `codeShort` property of each [WorldCountry] instance.
  /// Otherwise, it compares it with the uppercase version of the [code]
  /// property of each [WorldCountry] instance. The resulting [WorldCountry]
  /// instance is assigned to the `country` variable.
  static WorldCountry? maybeFromAnyCode(
    Object? code, [
    Iterable<WorldCountry>? countries,
  ]) => countries == null
      ? map.maybeFindByCode(code)
      : IsoObject.maybe(code)?.maybeMapIsoCode(
          orElse: (regular) => WorldCountry.maybeFromCode(regular, countries),
          numeric: (numb) => WorldCountry.maybeFromCodeNumeric(numb, countries),
          short: (short) => WorldCountry.maybeFromCodeShort(short, countries),
        );

  /// The general standard ISO code for countries, defined as ISO 3166-1.
  static const standardGeneralName = "3166-1";

  /// The standard ISO code name for countries, defined as ISO 3166-1 Alpha-3.
  static const standardCodeName = "$standardGeneralName Alpha-3";

  /// The standard ISO code name for countries, defined as ISO 3166-1 Alpha-2.
  static const standardCodeShortName = "$standardGeneralName Alpha-2";

  /// The standard numeric ISO code name for countries, defined as
  /// ISO 3166-1 Numeric.
  static const standardCodeNumericName = "$standardGeneralName Numeric";

  /// A tree-shakable constant map containing country (ISO 3166-1 Alpha-3) codes
  /// and their associated [WorldCountry] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.codeMap['AFG']; // CountryAfg().
  /// ```
  static const codeMap = UpperCaseIsoMap<WorldCountry>(worldCountryCodeMap);

  /// A tree-shakable constant map containing numeric country
  /// (ISO 3166-1 Numeric) codes and their associated [WorldCountry] objects,
  /// for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.codeNumericMap[204]; // CountryBen().
  /// ```
  static const codeNumericMap = UpperCaseIsoMap<WorldCountry>(
    worldCountryCodeNumericMap,
  );

  /// A tree-shakable constant map containing country (ISO 3166-1 Alpha-2) codes
  /// and their associated [WorldCountry] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.codeShortMap['BF']; // CountryBfa().
  /// ```
  static const codeShortMap = UpperCaseIsoMap<WorldCountry>(
    worldCountryCodeOtherMap,
    exactLength: IsoStandardized.codeShortLength,
  );

  /// A tree-shakable combined map of [codeMap], [codeShortMap] and
  /// [codeNumericMap], providing a unified view of country codes and their
  /// [WorldCountry] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// WorldCountry.map[204]; // CountryBen().
  /// ```
  static const map = UpperCaseIsoMap<WorldCountry>(
    {
      ...worldCountryCodeMap,
      ...worldCountryCodeOtherMap,
      ...worldCountryCodeNumericMap,
    },
    exactLength: null, // Dart 3.8.0 format.
  );

  /// A list of all the countries currently supported
  /// by the [WorldCountry] class.
  // ignore_for_file: avoid-referencing-subclasses, transition to sealed class.
  static const list = <WorldCountry>[
    CountryAbw(),
    CountryAfg(),
    CountryAgo(),
    CountryAia(),
    CountryAla(),
    CountryAlb(),
    CountryAnd(),
    CountryAre(),
    CountryArg(),
    CountryArm(),
    CountryAsm(),
    CountryAta(),
    CountryAtf(),
    CountryAtg(),
    CountryAus(),
    CountryAut(),
    CountryAze(),
    CountryBdi(),
    CountryBel(),
    CountryBen(),
    CountryBes(),
    CountryBfa(),
    CountryBgd(),
    CountryBgr(),
    CountryBhr(),
    CountryBhs(),
    CountryBih(),
    CountryBlm(),
    CountryBlr(),
    CountryBlz(),
    CountryBmu(),
    CountryBol(),
    CountryBra(),
    CountryBrb(),
    CountryBrn(),
    CountryBtn(),
    CountryBvt(),
    CountryBwa(),
    CountryCaf(),
    CountryCan(),
    CountryCck(),
    CountryChe(),
    CountryChl(),
    CountryChn(),
    CountryCiv(),
    CountryCmr(),
    CountryCod(),
    CountryCog(),
    CountryCok(),
    CountryCol(),
    CountryCom(),
    CountryCpv(),
    CountryCri(),
    CountryCub(),
    CountryCuw(),
    CountryCxr(),
    CountryCym(),
    CountryCyp(),
    CountryCze(),
    CountryDeu(),
    CountryDji(),
    CountryDma(),
    CountryDnk(),
    CountryDom(),
    CountryDza(),
    CountryEcu(),
    CountryEgy(),
    CountryEri(),
    CountryEsh(),
    CountryEsp(),
    CountryEst(),
    CountryEth(),
    CountryFin(),
    CountryFji(),
    CountryFlk(),
    CountryFra(),
    CountryFro(),
    CountryFsm(),
    CountryGab(),
    CountryGbr(),
    CountryGeo(),
    CountryGgy(),
    CountryGha(),
    CountryGib(),
    CountryGin(),
    CountryGlp(),
    CountryGmb(),
    CountryGnb(),
    CountryGnq(),
    CountryGrc(),
    CountryGrd(),
    CountryGrl(),
    CountryGtm(),
    CountryGuf(),
    CountryGum(),
    CountryGuy(),
    CountryHkg(),
    CountryHmd(),
    CountryHnd(),
    CountryHrv(),
    CountryHti(),
    CountryHun(),
    CountryIdn(),
    CountryImn(),
    CountryInd(),
    CountryIot(),
    CountryIrl(),
    CountryIrn(),
    CountryIrq(),
    CountryIsl(),
    CountryIsr(),
    CountryIta(),
    CountryJam(),
    CountryJey(),
    CountryJor(),
    CountryJpn(),
    CountryKaz(),
    CountryKen(),
    CountryKgz(),
    CountryKhm(),
    CountryKir(),
    CountryKna(),
    CountryKor(),
    CountryKwt(),
    CountryLao(),
    CountryLbn(),
    CountryLbr(),
    CountryLby(),
    CountryLca(),
    CountryLie(),
    CountryLka(),
    CountryLso(),
    CountryLtu(),
    CountryLux(),
    CountryLva(),
    CountryMac(),
    CountryMaf(),
    CountryMar(),
    CountryMco(),
    CountryMda(),
    CountryMdg(),
    CountryMdv(),
    CountryMex(),
    CountryMhl(),
    CountryMkd(),
    CountryMli(),
    CountryMlt(),
    CountryMmr(),
    CountryMne(),
    CountryMng(),
    CountryMnp(),
    CountryMoz(),
    CountryMrt(),
    CountryMsr(),
    CountryMtq(),
    CountryMus(),
    CountryMwi(),
    CountryMys(),
    CountryMyt(),
    CountryNam(),
    CountryNcl(),
    CountryNer(),
    CountryNfk(),
    CountryNga(),
    CountryNic(),
    CountryNiu(),
    CountryNld(),
    CountryNor(),
    CountryNpl(),
    CountryNru(),
    CountryNzl(),
    CountryOmn(),
    CountryPak(),
    CountryPan(),
    CountryPcn(),
    CountryPer(),
    CountryPhl(),
    CountryPlw(),
    CountryPng(),
    CountryPol(),
    CountryPri(),
    CountryPrk(),
    CountryPrt(),
    CountryPry(),
    CountryPse(),
    CountryPyf(),
    CountryQat(),
    CountryReu(),
    CountryRou(),
    CountryRus(),
    CountryRwa(),
    CountrySau(),
    CountrySdn(),
    CountrySen(),
    CountrySgp(),
    CountrySgs(),
    CountryShn(),
    CountrySjm(),
    CountrySlb(),
    CountrySle(),
    CountrySlv(),
    CountrySmr(),
    CountrySom(),
    CountrySpm(),
    CountrySrb(),
    CountrySsd(),
    CountryStp(),
    CountrySur(),
    CountrySvk(),
    CountrySvn(),
    CountrySwe(),
    CountrySwz(),
    CountrySxm(),
    CountrySyc(),
    CountrySyr(),
    CountryTca(),
    CountryTcd(),
    CountryTgo(),
    CountryTha(),
    CountryTjk(),
    CountryTkl(),
    CountryTkm(),
    CountryTls(),
    CountryTon(),
    CountryTto(),
    CountryTun(),
    CountryTur(),
    CountryTuv(),
    CountryTwn(),
    CountryTza(),
    CountryUga(),
    CountryUkr(),
    CountryUmi(),
    CountryUry(),
    CountryUsa(),
    CountryUzb(),
    CountryVat(),
    CountryVct(),
    CountryVen(),
    CountryVgb(),
    CountryVir(),
    CountryVnm(),
    CountryVut(),
    CountryWlf(),
    CountryWsm(),
    CountryYem(),
    CountryZaf(),
    CountryZmb(),
    CountryZwe(),
    CountryUnk(),
  ];

  final List<Demonyms>? _demonyms;
  final List<NaturalLanguage>? _languages;
  final List<CountryName>? _namesNative;
  final List<TranslatedName>? _translations;
}
