part of "../language.dart";

/// A class that represents a natural language.
class NaturalLanguage extends Language
    implements
        IsoTranslated<TranslatedName, String, BasicLocale>,
        JsonEncodable<NaturalLanguage>,
        Comparable<NaturalLanguage> {
  /// {@template natural_language_constructor}
  /// Creates a new instance of the [NaturalLanguage] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the natural language. The [codeShort] parameter
  /// is required and should be a two-letter string representing the ISO 639-1
  /// code for the language. The [namesNative] parameter is required and should
  /// be a list of non-empty strings representing the language's native names.
  /// The [code] parameter is required and should be a three-letter string
  /// representing the Terminological ISO 639-2 code for the language. The
  /// optional [bibliographicCode] parameter is a three-letter string
  /// representing the ISO 639-2/B Bibliographic code for the language. The
  /// optional [family] parameter specifies the language family to which the
  /// language belongs (defaults to the Indo-European family). The optional
  /// [isRightToLeft] parameter specifies whether the language is written
  /// right-to-left (defaults to `false`).
  /// {@endtemplate}
  const NaturalLanguage({
    required super.name,
    required this.codeShort,
    required this.namesNative,
    required this.code,
    this.bibliographicCode,
    this.family = const IndoEuropean(),
    this.isRightToLeft = false,
    this.scripts = const {ScriptLatn()},
  }) : assert(
         code.length == IsoStandardized.codeLength,
         """`code` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       assert(
         codeShort.length == IsoStandardized.codeShortLength,
         """`codeShort` should be exactly ${IsoStandardized.codeShortLength} characters long!""",
       ),
       assert(
         namesNative != const <String>[],
         "`namesNative` should not be empty!",
       ),
       assert(scripts != const <Script>{}, "`scripts` should not be empty!"),
       assert(
         bibliographicCode == null ||
             bibliographicCode.length == IsoStandardized.codeLength,
         """`bibliographicCode` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       _mapper = null;

  /// {@template permissive_constructor}
  /// Creates an instance of the class with relaxed constraints.
  ///
  /// This constructor provides a means to instantiate objects while bypassing
  /// the strict assertions typically enforced by classes adhering to the ISO
  /// standard. It should be utilized only in scenarios where strict compliance
  /// with the standard cannot be achieved. Be aware that minimal assertions
  /// from superclasses may still apply, ensuring basic integrity of the object.
  ///
  /// For instances where conformity to the ISO standard is required, prefer
  /// using the generative constructor to ensure full compatibility.
  ///
  /// Usage:
  /// ```dart
  /// class MyIsoClassInstance extends IsoClassWithPermissiveConstructor {
  ///   const MyIsoClassInstance() : super.permissive(name: "Name", code: "1");
  /// }
  /// ```
  /// Note: Employing this constructor may result in behavior that deviates from
  /// the established ISO specifications and should be approached with caution.
  /// {@endtemplate}
  /// {@macro natural_language_constructor}
  const NaturalLanguage.custom({
    required super.name,
    required this.code,
    this.codeShort = "",
    this.namesNative = const [],
    this.bibliographicCode,
    this.family = const IndoEuropean(),
    this.isRightToLeft = false,
    this.scripts = const {ScriptLatn()},
    LocaleMapFunction<String> Function()? mapper,
  }) : _mapper = mapper;

  /// {@macro sealed_world.language_aar_constructor}
  const factory NaturalLanguage.aar() = _AarFactory;

  /// {@macro sealed_world.language_abk_constructor}
  const factory NaturalLanguage.abk() = _AbkFactory;

  /// {@macro sealed_world.language_afr_constructor}
  const factory NaturalLanguage.afr() = _AfrFactory;

  /// {@macro sealed_world.language_aka_constructor}
  const factory NaturalLanguage.aka() = _AkaFactory;

  /// {@macro sealed_world.language_amh_constructor}
  const factory NaturalLanguage.amh() = _AmhFactory;

  /// {@macro sealed_world.language_ara_constructor}
  const factory NaturalLanguage.ara() = _AraFactory;

  /// {@macro sealed_world.language_arg_constructor}
  const factory NaturalLanguage.arg() = _ArgFactory;

  /// {@macro sealed_world.language_asm_constructor}
  const factory NaturalLanguage.asm() = _AsmFactory;

  /// {@macro sealed_world.language_ava_constructor}
  const factory NaturalLanguage.ava() = _AvaFactory;

  /// {@macro sealed_world.language_ave_constructor}
  const factory NaturalLanguage.ave() = _AveFactory;

  /// {@macro sealed_world.language_aym_constructor}
  const factory NaturalLanguage.aym() = _AymFactory;

  /// {@macro sealed_world.language_aze_constructor}
  const factory NaturalLanguage.aze() = _AzeFactory;

  /// {@macro sealed_world.language_bak_constructor}
  const factory NaturalLanguage.bak() = _BakFactory;

  /// {@macro sealed_world.language_bam_constructor}
  const factory NaturalLanguage.bam() = _BamFactory;

  /// {@macro sealed_world.language_bel_constructor}
  const factory NaturalLanguage.bel() = _BelFactory;

  /// {@macro sealed_world.language_ben_constructor}
  const factory NaturalLanguage.ben() = _BenFactory;

  /// {@macro sealed_world.language_bih_constructor}
  const factory NaturalLanguage.bih() = _BihFactory;

  /// {@macro sealed_world.language_bis_constructor}
  const factory NaturalLanguage.bis() = _BisFactory;

  /// {@macro sealed_world.language_bod_constructor}
  const factory NaturalLanguage.bod() = _BodFactory;

  /// {@macro sealed_world.language_bos_constructor}
  const factory NaturalLanguage.bos() = _BosFactory;

  /// {@macro sealed_world.language_bre_constructor}
  const factory NaturalLanguage.bre() = _BreFactory;

  /// {@macro sealed_world.language_bul_constructor}
  const factory NaturalLanguage.bul() = _BulFactory;

  /// {@macro sealed_world.language_cat_constructor}
  const factory NaturalLanguage.cat() = _CatFactory;

  /// {@macro sealed_world.language_ces_constructor}
  const factory NaturalLanguage.ces() = _CesFactory;

  /// {@macro sealed_world.language_cha_constructor}
  const factory NaturalLanguage.cha() = _ChaFactory;

  /// {@macro sealed_world.language_che_constructor}
  const factory NaturalLanguage.che() = _CheFactory;

  /// {@macro sealed_world.language_chu_constructor}
  const factory NaturalLanguage.chu() = _ChuFactory;

  /// {@macro sealed_world.language_chv_constructor}
  const factory NaturalLanguage.chv() = _ChvFactory;

  /// {@macro sealed_world.language_cor_constructor}
  const factory NaturalLanguage.cor() = _CorFactory;

  /// {@macro sealed_world.language_cos_constructor}
  const factory NaturalLanguage.cos() = _CosFactory;

  /// {@macro sealed_world.language_cre_constructor}
  const factory NaturalLanguage.cre() = _CreFactory;

  /// {@macro sealed_world.language_cym_constructor}
  const factory NaturalLanguage.cym() = _CymFactory;

  /// {@macro sealed_world.language_dan_constructor}
  const factory NaturalLanguage.dan() = _DanFactory;

  /// {@macro sealed_world.language_deu_constructor}
  const factory NaturalLanguage.deu() = _DeuFactory;

  /// {@macro sealed_world.language_div_constructor}
  const factory NaturalLanguage.div() = _DivFactory;

  /// {@macro sealed_world.language_dzo_constructor}
  const factory NaturalLanguage.dzo() = _DzoFactory;

  /// {@macro sealed_world.language_ell_constructor}
  const factory NaturalLanguage.ell() = _EllFactory;

  /// {@macro sealed_world.language_eng_constructor}
  const factory NaturalLanguage.eng() = _EngFactory;

  /// {@macro sealed_world.language_epo_constructor}
  const factory NaturalLanguage.epo() = _EpoFactory;

  /// {@macro sealed_world.language_est_constructor}
  const factory NaturalLanguage.est() = _EstFactory;

  /// {@macro sealed_world.language_eus_constructor}
  const factory NaturalLanguage.eus() = _EusFactory;

  /// {@macro sealed_world.language_ewe_constructor}
  const factory NaturalLanguage.ewe() = _EweFactory;

  /// {@macro sealed_world.language_fao_constructor}
  const factory NaturalLanguage.fao() = _FaoFactory;

  /// {@macro sealed_world.language_fas_constructor}
  const factory NaturalLanguage.fas() = _FasFactory;

  /// {@macro sealed_world.language_fij_constructor}
  const factory NaturalLanguage.fij() = _FijFactory;

  /// {@macro sealed_world.language_fin_constructor}
  const factory NaturalLanguage.fin() = _FinFactory;

  /// {@macro sealed_world.language_fra_constructor}
  const factory NaturalLanguage.fra() = _FraFactory;

  /// {@macro sealed_world.language_fry_constructor}
  const factory NaturalLanguage.fry() = _FryFactory;

  /// {@macro sealed_world.language_ful_constructor}
  const factory NaturalLanguage.ful() = _FulFactory;

  /// {@macro sealed_world.language_gla_constructor}
  const factory NaturalLanguage.gla() = _GlaFactory;

  /// {@macro sealed_world.language_gle_constructor}
  const factory NaturalLanguage.gle() = _GleFactory;

  /// {@macro sealed_world.language_glg_constructor}
  const factory NaturalLanguage.glg() = _GlgFactory;

  /// {@macro sealed_world.language_glv_constructor}
  const factory NaturalLanguage.glv() = _GlvFactory;

  /// {@macro sealed_world.language_grn_constructor}
  const factory NaturalLanguage.grn() = _GrnFactory;

  /// {@macro sealed_world.language_guj_constructor}
  const factory NaturalLanguage.guj() = _GujFactory;

  /// {@macro sealed_world.language_hat_constructor}
  const factory NaturalLanguage.hat() = _HatFactory;

  /// {@macro sealed_world.language_hau_constructor}
  const factory NaturalLanguage.hau() = _HauFactory;

  /// {@macro sealed_world.language_heb_constructor}
  const factory NaturalLanguage.heb() = _HebFactory;

  /// {@macro sealed_world.language_her_constructor}
  const factory NaturalLanguage.her() = _HerFactory;

  /// {@macro sealed_world.language_hin_constructor}
  const factory NaturalLanguage.hin() = _HinFactory;

  /// {@macro sealed_world.language_hmo_constructor}
  const factory NaturalLanguage.hmo() = _HmoFactory;

  /// {@macro sealed_world.language_hrv_constructor}
  const factory NaturalLanguage.hrv() = _HrvFactory;

  /// {@macro sealed_world.language_hun_constructor}
  const factory NaturalLanguage.hun() = _HunFactory;

  /// {@macro sealed_world.language_hye_constructor}
  const factory NaturalLanguage.hye() = _HyeFactory;

  /// {@macro sealed_world.language_ibo_constructor}
  const factory NaturalLanguage.ibo() = _IboFactory;

  /// {@macro sealed_world.language_ido_constructor}
  const factory NaturalLanguage.ido() = _IdoFactory;

  /// {@macro sealed_world.language_iii_constructor}
  const factory NaturalLanguage.iii() = _IiiFactory;

  /// {@macro sealed_world.language_iku_constructor}
  const factory NaturalLanguage.iku() = _IkuFactory;

  /// {@macro sealed_world.language_ile_constructor}
  const factory NaturalLanguage.ile() = _IleFactory;

  /// {@macro sealed_world.language_ina_constructor}
  const factory NaturalLanguage.ina() = _InaFactory;

  /// {@macro sealed_world.language_ind_constructor}
  const factory NaturalLanguage.ind() = _IndFactory;

  /// {@macro sealed_world.language_ipk_constructor}
  const factory NaturalLanguage.ipk() = _IpkFactory;

  /// {@macro sealed_world.language_isl_constructor}
  const factory NaturalLanguage.isl() = _IslFactory;

  /// {@macro sealed_world.language_ita_constructor}
  const factory NaturalLanguage.ita() = _ItaFactory;

  /// {@macro sealed_world.language_jav_constructor}
  const factory NaturalLanguage.jav() = _JavFactory;

  /// {@macro sealed_world.language_jpn_constructor}
  const factory NaturalLanguage.jpn() = _JpnFactory;

  /// {@macro sealed_world.language_kal_constructor}
  const factory NaturalLanguage.kal() = _KalFactory;

  /// {@macro sealed_world.language_kan_constructor}
  const factory NaturalLanguage.kan() = _KanFactory;

  /// {@macro sealed_world.language_kas_constructor}
  const factory NaturalLanguage.kas() = _KasFactory;

  /// {@macro sealed_world.language_kat_constructor}
  const factory NaturalLanguage.kat() = _KatFactory;

  /// {@macro sealed_world.language_kau_constructor}
  const factory NaturalLanguage.kau() = _KauFactory;

  /// {@macro sealed_world.language_kaz_constructor}
  const factory NaturalLanguage.kaz() = _KazFactory;

  /// {@macro sealed_world.language_khm_constructor}
  const factory NaturalLanguage.khm() = _KhmFactory;

  /// {@macro sealed_world.language_kik_constructor}
  const factory NaturalLanguage.kik() = _KikFactory;

  /// {@macro sealed_world.language_kin_constructor}
  const factory NaturalLanguage.kin() = _KinFactory;

  /// {@macro sealed_world.language_kir_constructor}
  const factory NaturalLanguage.kir() = _KirFactory;

  /// {@macro sealed_world.language_kom_constructor}
  const factory NaturalLanguage.kom() = _KomFactory;

  /// {@macro sealed_world.language_kon_constructor}
  const factory NaturalLanguage.kon() = _KonFactory;

  /// {@macro sealed_world.language_kor_constructor}
  const factory NaturalLanguage.kor() = _KorFactory;

  /// {@macro sealed_world.language_kua_constructor}
  const factory NaturalLanguage.kua() = _KuaFactory;

  /// {@macro sealed_world.language_kur_constructor}
  const factory NaturalLanguage.kur() = _KurFactory;

  /// {@macro sealed_world.language_lao_constructor}
  const factory NaturalLanguage.lao() = _LaoFactory;

  /// {@macro sealed_world.language_lat_constructor}
  const factory NaturalLanguage.lat() = _LatFactory;

  /// {@macro sealed_world.language_lav_constructor}
  const factory NaturalLanguage.lav() = _LavFactory;

  /// {@macro sealed_world.language_lim_constructor}
  const factory NaturalLanguage.lim() = _LimFactory;

  /// {@macro sealed_world.language_lin_constructor}
  const factory NaturalLanguage.lin() = _LinFactory;

  /// {@macro sealed_world.language_lit_constructor}
  const factory NaturalLanguage.lit() = _LitFactory;

  /// {@macro sealed_world.language_ltz_constructor}
  const factory NaturalLanguage.ltz() = _LtzFactory;

  /// {@macro sealed_world.language_lub_constructor}
  const factory NaturalLanguage.lub() = _LubFactory;

  /// {@macro sealed_world.language_lug_constructor}
  const factory NaturalLanguage.lug() = _LugFactory;

  /// {@macro sealed_world.language_mah_constructor}
  const factory NaturalLanguage.mah() = _MahFactory;

  /// {@macro sealed_world.language_mal_constructor}
  const factory NaturalLanguage.mal() = _MalFactory;

  /// {@macro sealed_world.language_mar_constructor}
  const factory NaturalLanguage.mar() = _MarFactory;

  /// {@macro sealed_world.language_mkd_constructor}
  const factory NaturalLanguage.mkd() = _MkdFactory;

  /// {@macro sealed_world.language_mlg_constructor}
  const factory NaturalLanguage.mlg() = _MlgFactory;

  /// {@macro sealed_world.language_mlt_constructor}
  const factory NaturalLanguage.mlt() = _MltFactory;

  /// {@macro sealed_world.language_mon_constructor}
  const factory NaturalLanguage.mon() = _MonFactory;

  /// {@macro sealed_world.language_mri_constructor}
  const factory NaturalLanguage.mri() = _MriFactory;

  /// {@macro sealed_world.language_msa_constructor}
  const factory NaturalLanguage.msa() = _MsaFactory;

  /// {@macro sealed_world.language_mya_constructor}
  const factory NaturalLanguage.mya() = _MyaFactory;

  /// {@macro sealed_world.language_nau_constructor}
  const factory NaturalLanguage.nau() = _NauFactory;

  /// {@macro sealed_world.language_nav_constructor}
  const factory NaturalLanguage.nav() = _NavFactory;

  /// {@macro sealed_world.language_nbl_constructor}
  const factory NaturalLanguage.nbl() = _NblFactory;

  /// {@macro sealed_world.language_nde_constructor}
  const factory NaturalLanguage.nde() = _NdeFactory;

  /// {@macro sealed_world.language_ndo_constructor}
  const factory NaturalLanguage.ndo() = _NdoFactory;

  /// {@macro sealed_world.language_nep_constructor}
  const factory NaturalLanguage.nep() = _NepFactory;

  /// {@macro sealed_world.language_nld_constructor}
  const factory NaturalLanguage.nld() = _NldFactory;

  /// {@macro sealed_world.language_nno_constructor}
  const factory NaturalLanguage.nno() = _NnoFactory;

  /// {@macro sealed_world.language_nob_constructor}
  const factory NaturalLanguage.nob() = _NobFactory;

  /// {@macro sealed_world.language_nor_constructor}
  const factory NaturalLanguage.nor() = _NorFactory;

  /// {@macro sealed_world.language_nya_constructor}
  const factory NaturalLanguage.nya() = _NyaFactory;

  /// {@macro sealed_world.language_oci_constructor}
  const factory NaturalLanguage.oci() = _OciFactory;

  /// {@macro sealed_world.language_oji_constructor}
  const factory NaturalLanguage.oji() = _OjiFactory;

  /// {@macro sealed_world.language_ori_constructor}
  const factory NaturalLanguage.ori() = _OriFactory;

  /// {@macro sealed_world.language_orm_constructor}
  const factory NaturalLanguage.orm() = _OrmFactory;

  /// {@macro sealed_world.language_oss_constructor}
  const factory NaturalLanguage.oss() = _OssFactory;

  /// {@macro sealed_world.language_pan_constructor}
  const factory NaturalLanguage.pan() = _PanFactory;

  /// {@macro sealed_world.language_pli_constructor}
  const factory NaturalLanguage.pli() = _PliFactory;

  /// {@macro sealed_world.language_pol_constructor}
  const factory NaturalLanguage.pol() = _PolFactory;

  /// {@macro sealed_world.language_por_constructor}
  const factory NaturalLanguage.por() = _PorFactory;

  /// {@macro sealed_world.language_pus_constructor}
  const factory NaturalLanguage.pus() = _PusFactory;

  /// {@macro sealed_world.language_que_constructor}
  const factory NaturalLanguage.que() = _QueFactory;

  /// {@macro sealed_world.language_roh_constructor}
  const factory NaturalLanguage.roh() = _RohFactory;

  /// {@macro sealed_world.language_ron_constructor}
  const factory NaturalLanguage.ron() = _RonFactory;

  /// {@macro sealed_world.language_run_constructor}
  const factory NaturalLanguage.run() = _RunFactory;

  /// {@macro sealed_world.language_rus_constructor}
  const factory NaturalLanguage.rus() = _RusFactory;

  /// {@macro sealed_world.language_sag_constructor}
  const factory NaturalLanguage.sag() = _SagFactory;

  /// {@macro sealed_world.language_san_constructor}
  const factory NaturalLanguage.san() = _SanFactory;

  /// {@macro sealed_world.language_sin_constructor}
  const factory NaturalLanguage.sin() = _SinFactory;

  /// {@macro sealed_world.language_slk_constructor}
  const factory NaturalLanguage.slk() = _SlkFactory;

  /// {@macro sealed_world.language_slv_constructor}
  const factory NaturalLanguage.slv() = _SlvFactory;

  /// {@macro sealed_world.language_sme_constructor}
  const factory NaturalLanguage.sme() = _SmeFactory;

  /// {@macro sealed_world.language_smo_constructor}
  const factory NaturalLanguage.smo() = _SmoFactory;

  /// {@macro sealed_world.language_sna_constructor}
  const factory NaturalLanguage.sna() = _SnaFactory;

  /// {@macro sealed_world.language_snd_constructor}
  const factory NaturalLanguage.snd() = _SndFactory;

  /// {@macro sealed_world.language_som_constructor}
  const factory NaturalLanguage.som() = _SomFactory;

  /// {@macro sealed_world.language_sot_constructor}
  const factory NaturalLanguage.sot() = _SotFactory;

  /// {@macro sealed_world.language_spa_constructor}
  const factory NaturalLanguage.spa() = _SpaFactory;

  /// {@macro sealed_world.language_sqi_constructor}
  const factory NaturalLanguage.sqi() = _SqiFactory;

  /// {@macro sealed_world.language_srd_constructor}
  const factory NaturalLanguage.srd() = _SrdFactory;

  /// {@macro sealed_world.language_srp_constructor}
  const factory NaturalLanguage.srp() = _SrpFactory;

  /// {@macro sealed_world.language_ssw_constructor}
  const factory NaturalLanguage.ssw() = _SswFactory;

  /// {@macro sealed_world.language_sun_constructor}
  const factory NaturalLanguage.sun() = _SunFactory;

  /// {@macro sealed_world.language_swa_constructor}
  const factory NaturalLanguage.swa() = _SwaFactory;

  /// {@macro sealed_world.language_swe_constructor}
  const factory NaturalLanguage.swe() = _SweFactory;

  /// {@macro sealed_world.language_tah_constructor}
  const factory NaturalLanguage.tah() = _TahFactory;

  /// {@macro sealed_world.language_tam_constructor}
  const factory NaturalLanguage.tam() = _TamFactory;

  /// {@macro sealed_world.language_tat_constructor}
  const factory NaturalLanguage.tat() = _TatFactory;

  /// {@macro sealed_world.language_tel_constructor}
  const factory NaturalLanguage.tel() = _TelFactory;

  /// {@macro sealed_world.language_tgk_constructor}
  const factory NaturalLanguage.tgk() = _TgkFactory;

  /// {@macro sealed_world.language_tgl_constructor}
  const factory NaturalLanguage.tgl() = _TglFactory;

  /// {@macro sealed_world.language_tha_constructor}
  const factory NaturalLanguage.tha() = _ThaFactory;

  /// {@macro sealed_world.language_tir_constructor}
  const factory NaturalLanguage.tir() = _TirFactory;

  /// {@macro sealed_world.language_ton_constructor}
  const factory NaturalLanguage.ton() = _TonFactory;

  /// {@macro sealed_world.language_tsn_constructor}
  const factory NaturalLanguage.tsn() = _TsnFactory;

  /// {@macro sealed_world.language_tso_constructor}
  const factory NaturalLanguage.tso() = _TsoFactory;

  /// {@macro sealed_world.language_tuk_constructor}
  const factory NaturalLanguage.tuk() = _TukFactory;

  /// {@macro sealed_world.language_tur_constructor}
  const factory NaturalLanguage.tur() = _TurFactory;

  /// {@macro sealed_world.language_twi_constructor}
  const factory NaturalLanguage.twi() = _TwiFactory;

  /// {@macro sealed_world.language_uig_constructor}
  const factory NaturalLanguage.uig() = _UigFactory;

  /// {@macro sealed_world.language_ukr_constructor}
  const factory NaturalLanguage.ukr() = _UkrFactory;

  /// {@macro sealed_world.language_urd_constructor}
  const factory NaturalLanguage.urd() = _UrdFactory;

  /// {@macro sealed_world.language_uzb_constructor}
  const factory NaturalLanguage.uzb() = _UzbFactory;

  /// {@macro sealed_world.language_ven_constructor}
  const factory NaturalLanguage.ven() = _VenFactory;

  /// {@macro sealed_world.language_vie_constructor}
  const factory NaturalLanguage.vie() = _VieFactory;

  /// {@macro sealed_world.language_vol_constructor}
  const factory NaturalLanguage.vol() = _VolFactory;

  /// {@macro sealed_world.language_wln_constructor}
  const factory NaturalLanguage.wln() = _WlnFactory;

  /// {@macro sealed_world.language_wol_constructor}
  const factory NaturalLanguage.wol() = _WolFactory;

  /// {@macro sealed_world.language_xho_constructor}
  const factory NaturalLanguage.xho() = _XhoFactory;

  /// {@macro sealed_world.language_yid_constructor}
  const factory NaturalLanguage.yid() = _YidFactory;

  /// {@macro sealed_world.language_yor_constructor}
  const factory NaturalLanguage.yor() = _YorFactory;

  /// {@macro sealed_world.language_zha_constructor}
  const factory NaturalLanguage.zha() = _ZhaFactory;

  /// {@macro sealed_world.language_zho_constructor}
  const factory NaturalLanguage.zho() = _ZhoFactory;

  /// {@macro sealed_world.language_zul_constructor}
  const factory NaturalLanguage.zul() = _ZulFactory;

  /// Returns an instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter Terminological ISO 639-2 code for the language.
  /// {@template any_code_object}
  /// Provided value could be any type of [Object] that returns ISO code on
  /// `toString()` call. For example it could be an instance of [StringBuffer],
  /// [String], [Enum] (in case of enum - `.name.toUpperCase()` will be used):
  ///
  /// ```dart
  /// enum IsoEnum {de, fr, ar} // On (IsoEnum.de) call it will use "DE" input.
  /// ```
  ///
  ///  Or has a custom `toString()` override, i.e.:
  /// ```dart
  /// class CustomIsoCodeClass {
  ///  const CustomIsoCodeClass({String code = '123', this.foo}) : _code = code;
  ///  final String _code;
  ///  final Foo? foo;
  ///
  ///  @override
  ///  String toString() => _code; // Has to override toString() with ISO value.
  /// }
  ///
  /// // On (CustomIsoCodeClass(code: ' 321 ')) call it will use "321" input.
  ///```
  ///
  /// {@endtemplate}
  /// {@macro natural_language_constructor}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@template optional_instances_array_parameter}
  /// If this optional array is not provided (it's default to `null`), this will
  /// search in 0(1) access time case-insensitive [UpperCaseIsoMap] hash-map.
  /// Otherwise it will search in provided array with equivalent of `firstWhere`
  /// method, which might not be that fast comparing to the hashmap one,
  /// especially for large arrays.
  /// If you only need to add additional custom ISO instances of yours -
  /// consider using the `copyWith` method with your custom instances in default
  /// maps of this class (i.e. `codeMap.copyWith()`, `map.copyWith()` etc.).
  /// This will ensure O(1) performance for your custom instances too.
  /// {@endtemplate}
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromCode(
    Object code, [
    Iterable<NaturalLanguage>? languages,
  ]) => languages == null
      ? codeMap.findByCodeOrThrow(code)
      : languages.firstIsoWhereCode(code);

  /// Returns an instance of the [NaturalLanguage] class from a two-letter
  /// ISO 639-1 code.
  ///
  /// The [codeShort] parameter is required and should be an object
  /// representing the two-letter ISO 639-1 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromCodeShort(
    Object codeShort, [
    Iterable<NaturalLanguage>? languages,
  ]) => languages == null
      ? codeShortMap.findByCodeOrThrow(codeShort)
      : languages.firstIsoWhereCodeOther(codeShort);

  /// Returns an instance of the [NaturalLanguage] class from the name of the
  /// language.
  ///
  /// The [name] parameter is required and should be a object
  /// representing the non-empty name of the natural language.
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given name, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromName(
    Object name, [
    Iterable<NaturalLanguage> languages = list,
    // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  ]) {
    final upperCaseName = IsoObject(name).toUpperCaseCode();

    return languages.firstIsoWhere(
      (language) => language.name.toUpperCase() == upperCaseName,
    );
  }

  /// Returns an instance of the [NaturalLanguage] class from any valid ISO 639
  /// code.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 639 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final language = NaturalLanguage.fromAnyCode("en");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "en". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is a short code, it calls
  /// the `fromCodeShort` factory method to create a [NaturalLanguage] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [NaturalLanguage] instance. The resulting [NaturalLanguage] instance is
  /// assigned to the `language` variable.
  factory NaturalLanguage.fromAnyCode(
    Object code, [
    Iterable<NaturalLanguage>? languages,
  ]) => languages == null
      ? map.findByCodeOrThrow(code)
      : IsoObject(code).maybeMapIsoCode(
          orElse: (regular) => NaturalLanguage.fromCode(regular, languages),
          short: (short) => NaturalLanguage.fromCodeShort(short, languages),
        );

  /// Returns an instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code if it exists. Returns `null` otherwise.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter Terminological ISO 639-2 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static NaturalLanguage? maybeFromCode(
    Object? code, [
    Iterable<NaturalLanguage>? languages,
  ]) => languages == null
      ? codeMap.maybeFindByCode(code)
      : languages.firstIsoWhereCodeOrNull(
          IsoObject.maybe(code)?.maybeToValidIsoUpperCaseCode(
            exactLength: IsoStandardized.codeLength,
          ),
        );

  /// Returns an instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code if it exists. Returns `null` otherwise.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter Terminological ISO 639-2 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static NaturalLanguage? maybeFromCodeShort(
    Object? codeShort, [
    Iterable<NaturalLanguage>? languages,
  ]) => languages == null
      ? codeShortMap.maybeFindByCode(codeShort)
      : languages.firstIsoWhereCodeOtherOrNull(
          IsoObject.maybe(codeShort)?.maybeToValidIsoUpperCaseCode(
            exactLength: IsoStandardized.codeShortLength,
          ),
        );

  /// A three-letter string representing the Terminological ISO 639-2 code for
  /// the language.
  @override
  final String code;

  /// A two-letter string representing the ISO 639-1 code for the language.
  final String codeShort;

  /// A list of non-empty strings representing the language's native names.
  @override
  final List<String> namesNative;

  /// A three-letter string representing the ISO 639-2/B Bibliographic code for
  /// the language, or `null` if no such code exists.
  final String? bibliographicCode;

  /// The language family to which the language belongs.
  final NaturalLanguageFamily family;

  /// Whether the language is written right-to-left.
  final bool isRightToLeft;

  /// The ISO 15924 scripts used by the language.
  final Set<Script> scripts;

  /// The general standard ISO code for languages, defined as ISO 639.
  static const standardGeneralName = "639";

  /// The standard ISO code name for languages, defined as ISO 639-2/T.
  static const standardCodeName = "$standardGeneralName-2/T";

  /// The standard short ISO code name for languages, defined as ISO 639-1.
  static const standardCodeShortName = "$standardGeneralName-1";

  /// The standard bibliographic ISO code name for languages,
  /// defined as ISO 639-2/B.
  static const standardBibliographicCodeName = "$standardGeneralName-2/B";

  /// A tree-shakable constant map containing language
  /// (Terminological ISO 639-2) codes and their associated [NaturalLanguage]
  /// objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage.codeMap[' eng']; // LangEng().
  /// ```
  static const codeMap = UpperCaseIsoMap<NaturalLanguage>(
    naturalLanguageCodeMap,
  );

  /// A tree-shakable constant map containing short language (ISO 639-1) codes
  /// and their associated [NaturalLanguage] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage.codeShortMap['en ']; // LangEng().
  /// ```
  static const codeShortMap = UpperCaseIsoMap<NaturalLanguage>(
    naturalLanguageCodeOtherMap,
    exactLength: IsoStandardized.codeShortLength,
  );

  /// A tree-shakable combined map of [codeMap] and [codeShortMap], providing a
  /// unified view of language codes and their [NaturalLanguage] objects, for a
  /// O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage.map[' en ']; // LangEng().
  /// ```
  static const map = UpperCaseIsoMap<NaturalLanguage>(
    {...naturalLanguageCodeMap, ...naturalLanguageCodeOtherMap},
    exactLength: null, // Dart 3.8 formatting.
  );

  /// A tree-shakable list of all the natural languages currently
  /// supported by the [NaturalLanguage] class.
  // ignore_for_file: avoid-referencing-subclasses, transition to sealed class.
  static const list = <NaturalLanguage>[
    LangAar(),
    LangAbk(),
    LangAfr(),
    LangAka(),
    LangAmh(),
    LangAra(),
    LangArg(),
    LangAsm(),
    LangAva(),
    LangAve(),
    LangAym(),
    LangAze(),
    LangBak(),
    LangBam(),
    LangBel(),
    LangBen(),
    LangBih(),
    LangBis(),
    LangBod(),
    LangBos(),
    LangBre(),
    LangBul(),
    LangCat(),
    LangCes(),
    LangCha(),
    LangChe(),
    LangChu(),
    LangChv(),
    LangCor(),
    LangCos(),
    LangCre(),
    LangCym(),
    LangDan(),
    LangDeu(),
    LangDiv(),
    LangDzo(),
    LangEll(),
    LangEng(),
    LangEpo(),
    LangEst(),
    LangEus(),
    LangEwe(),
    LangFao(),
    LangFas(),
    LangFij(),
    LangFin(),
    LangFra(),
    LangFry(),
    LangFul(),
    LangGla(),
    LangGle(),
    LangGlg(),
    LangGlv(),
    LangGrn(),
    LangGuj(),
    LangHat(),
    LangHau(),
    LangHeb(),
    LangHer(),
    LangHin(),
    LangHmo(),
    LangHrv(),
    LangHun(),
    LangHye(),
    LangIbo(),
    LangIdo(),
    LangIii(),
    LangIku(),
    LangIle(),
    LangIna(),
    LangInd(),
    LangIpk(),
    LangIsl(),
    LangIta(),
    LangJav(),
    LangJpn(),
    LangKal(),
    LangKan(),
    LangKas(),
    LangKat(),
    LangKau(),
    LangKaz(),
    LangKhm(),
    LangKik(),
    LangKin(),
    LangKir(),
    LangKom(),
    LangKon(),
    LangKor(),
    LangKua(),
    LangKur(),
    LangLao(),
    LangLat(),
    LangLav(),
    LangLim(),
    LangLin(),
    LangLit(),
    LangLtz(),
    LangLub(),
    LangLug(),
    LangMah(),
    LangMal(),
    LangMar(),
    LangMkd(),
    LangMlg(),
    LangMlt(),
    LangMon(),
    LangMri(),
    LangMsa(),
    LangMya(),
    LangNau(),
    LangNav(),
    LangNbl(),
    LangNde(),
    LangNdo(),
    LangNep(),
    LangNld(),
    LangNno(),
    LangNob(),
    LangNor(),
    LangNya(),
    LangOci(),
    LangOji(),
    LangOri(),
    LangOrm(),
    LangOss(),
    LangPan(),
    LangPli(),
    LangPol(),
    LangPor(),
    LangPus(),
    LangQue(),
    LangRoh(),
    LangRon(),
    LangRun(),
    LangRus(),
    LangSag(),
    LangSan(),
    LangSin(),
    LangSlk(),
    LangSlv(),
    LangSme(),
    LangSmo(),
    LangSna(),
    LangSnd(),
    LangSom(),
    LangSot(),
    LangSpa(),
    LangSqi(),
    LangSrd(),
    LangSrp(),
    LangSsw(),
    LangSun(),
    LangSwa(),
    LangSwe(),
    LangTah(),
    LangTam(),
    LangTat(),
    LangTel(),
    LangTgk(),
    LangTgl(),
    LangTha(),
    LangTir(),
    LangTon(),
    LangTsn(),
    LangTso(),
    LangTuk(),
    LangTur(),
    LangTwi(),
    LangUig(),
    LangUkr(),
    LangUrd(),
    LangUzb(),
    LangVen(),
    LangVie(),
    LangVol(),
    LangWln(),
    LangWol(),
    LangXho(),
    LangYid(),
    LangYor(),
    LangZha(),
    LangZho(),
    LangZul(),
  ];

  /// A two-letter string representing the ISO 639-1 code for the language.
  @override
  String get codeOther => codeShort;

  @override
  String get internationalName => name;

  // ignore: prefer-correct-callback-field-name, follows delegate naming.
  final LocaleMapFunction<String> Function()? _mapper;

  @override
  LocalizationDelegate get l10n => LocalizationDelegate(
    mapper: _mapper ?? () => LanguagesLocaleMapper().localize,
  );

  /// Returns a string representation of this [NaturalLanguage] object.
  ///
  /// The optional [short] parameter specifies whether to use a short format
  /// (defaults to `true`). If [short] is `true`, this method returns the same
  /// string as the [Language.toString] method. If [short] is `false`, this
  /// method returns a string that includes additional information about the
  /// language, such as its ISO codes, native names, and family.
  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'NaturalLanguage(name: "$name", code: "$code", '
            'codeShort: "$codeShort", namesNative: ${jsonEncode(namesNative)}, '
            '''${bibliographicCode == null ? '' : 'bibliographicCode: "$bibliographicCode", '}'''
            "family: const ${family.runtimeType}(), "
            "isRightToLeft: $isRightToLeft, "
            "scripts: const ${scripts.toUniqueInstancesString()},)";

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  int compareTo(NaturalLanguage other) => code.compareTo(other.code);

  /// Returns a [NaturalLanguage] object whose [code] or the value returned by
  /// [where] matches the specified [value], or `null` if no such object exists
  /// in the specified [languages] list.
  ///
  /// The [value] parameter is required and should be of type `T`. If [where] is
  /// not `null`, this method uses the result of calling [where] with each
  /// [NaturalLanguage] object in [languages] to determine whether the object's
  /// [code] matches [value]. If [where] is `null`, this method simply compares
  /// each [NaturalLanguage]'s [code] to [value].
  ///
  /// The optional [languages] parameter specifies the list of [NaturalLanguage]
  /// objects to search (defaults to [NaturalLanguage.list]).
  ///
  /// Example usage:
  ///
  /// ```dart
  ///  final maybeCzech = NaturalLanguage.maybeFromValue(
  ///    "CZE",
  ///    where: (language) => language.bibliographicCode,
  ///  );
  ///
  ///  // This will print: "Native name: čeština".
  ///  print("Native name: ${maybeCzech?.namesNative.first}");
  /// ```
  static NaturalLanguage? maybeFromValue<T extends Object>(
    T value, {
    T? Function(NaturalLanguage language)? where,
    Iterable<NaturalLanguage> languages = list,
  }) {
    // ignore: avoid-collection-mutating-methods, not mutating anything.
    languages.assertNotEmpty();

    for (final language in languages) {
      final expectedValue = where?.call(language) ?? language.code;
      if (expectedValue == value) return language;
    }

    return null;
  }

  /// Returns a [NaturalLanguage] object whose [code] matches the specified
  /// [code],
  /// or `null` if no such object exists in the specified [languages] list.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 639 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter specifies the list of [NaturalLanguage]
  /// objects to search.
  /// {@macro optional_instances_array_parameter}
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage? language = NaturalLanguage.maybeFromAnyCode(LangEnum.en);
  /// print(language != null); // Prints: true
  /// ```
  static NaturalLanguage? maybeFromAnyCode(
    Object? code, [
    Iterable<NaturalLanguage>? languages,
  ]) => languages == null
      ? map.maybeFindByCode(code)
      : IsoObject.maybe(code)?.maybeMapIsoCode(
          orElse: (regular) => maybeFromCode(regular, languages),
          short: (short) => maybeFromCodeShort(short, languages),
        );
}
