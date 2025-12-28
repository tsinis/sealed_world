import "../../../collections/script_collections.dart";
import "../../../helpers/extensions/iso_object_extension_type.dart";
import "../../../helpers/extensions/sealed_world_iterable_extension.dart";
import "../../../helpers/extensions/upper_case_iso_map_extension.dart";
import "../../../helpers/script/script_json.dart";
import "../../../interfaces/iso_standardized.dart";
import "../../../interfaces/json_encodable.dart";
import "../../core/upper_case_iso_map.dart";
import "../writing_system.dart";

part "../../../data/scripts/adlm.data.dart";
part "../../../data/scripts/afak.data.dart";
part "../../../data/scripts/aghb.data.dart";
part "../../../data/scripts/ahom.data.dart";
part "../../../data/scripts/arab.data.dart";
part "../../../data/scripts/aran.data.dart";
part "../../../data/scripts/armi.data.dart";
part "../../../data/scripts/armn.data.dart";
part "../../../data/scripts/avst.data.dart";
part "../../../data/scripts/bali.data.dart";
part "../../../data/scripts/bamu.data.dart";
part "../../../data/scripts/bass.data.dart";
part "../../../data/scripts/batk.data.dart";
part "../../../data/scripts/beng.data.dart";
part "../../../data/scripts/bhks.data.dart";
part "../../../data/scripts/blis.data.dart";
part "../../../data/scripts/bopo.data.dart";
part "../../../data/scripts/brah.data.dart";
part "../../../data/scripts/brai.data.dart";
part "../../../data/scripts/bugi.data.dart";
part "../../../data/scripts/buhd.data.dart";
part "../../../data/scripts/cakm.data.dart";
part "../../../data/scripts/cans.data.dart";
part "../../../data/scripts/cari.data.dart";
part "../../../data/scripts/cham.data.dart";
part "../../../data/scripts/cher.data.dart";
part "../../../data/scripts/chrs.data.dart";
part "../../../data/scripts/cirt.data.dart";
part "../../../data/scripts/copt.data.dart";
part "../../../data/scripts/cpmn.data.dart";
part "../../../data/scripts/cprt.data.dart";
part "../../../data/scripts/custom.data.dart";
part "../../../data/scripts/cyrl.data.dart";
part "../../../data/scripts/cyrs.data.dart";
part "../../../data/scripts/deva.data.dart";
part "../../../data/scripts/diak.data.dart";
part "../../../data/scripts/dogr.data.dart";
part "../../../data/scripts/dsrt.data.dart";
part "../../../data/scripts/dupl.data.dart";
part "../../../data/scripts/egyd.data.dart";
part "../../../data/scripts/egyh.data.dart";
part "../../../data/scripts/egyp.data.dart";
part "../../../data/scripts/elba.data.dart";
part "../../../data/scripts/elym.data.dart";
part "../../../data/scripts/ethi.data.dart";
part "../../../data/scripts/geok.data.dart";
part "../../../data/scripts/geor.data.dart";
part "../../../data/scripts/glag.data.dart";
part "../../../data/scripts/gong.data.dart";
part "../../../data/scripts/gonm.data.dart";
part "../../../data/scripts/goth.data.dart";
part "../../../data/scripts/gran.data.dart";
part "../../../data/scripts/grek.data.dart";
part "../../../data/scripts/gujr.data.dart";
part "../../../data/scripts/guru.data.dart";
part "../../../data/scripts/hanb.data.dart";
part "../../../data/scripts/hang.data.dart";
part "../../../data/scripts/hani.data.dart";
part "../../../data/scripts/hano.data.dart";
part "../../../data/scripts/hans.data.dart";
part "../../../data/scripts/hant.data.dart";
part "../../../data/scripts/hatr.data.dart";
part "../../../data/scripts/hebr.data.dart";
part "../../../data/scripts/hira.data.dart";
part "../../../data/scripts/hluw.data.dart";
part "../../../data/scripts/hmng.data.dart";
part "../../../data/scripts/hmnp.data.dart";
part "../../../data/scripts/hrkt.data.dart";
part "../../../data/scripts/hung.data.dart";
part "../../../data/scripts/inds.data.dart";
part "../../../data/scripts/ital.data.dart";
part "../../../data/scripts/jamo.data.dart";
part "../../../data/scripts/java.data.dart";
part "../../../data/scripts/jpan.data.dart";
part "../../../data/scripts/jurc.data.dart";
part "../../../data/scripts/kali.data.dart";
part "../../../data/scripts/kana.data.dart";
part "../../../data/scripts/kawi.data.dart";
part "../../../data/scripts/khar.data.dart";
part "../../../data/scripts/khmr.data.dart";
part "../../../data/scripts/khoj.data.dart";
part "../../../data/scripts/kitl.data.dart";
part "../../../data/scripts/kits.data.dart";
part "../../../data/scripts/knda.data.dart";
part "../../../data/scripts/kore.data.dart";
part "../../../data/scripts/kpel.data.dart";
part "../../../data/scripts/kthi.data.dart";
part "../../../data/scripts/lana.data.dart";
part "../../../data/scripts/laoo.data.dart";
part "../../../data/scripts/latf.data.dart";
part "../../../data/scripts/latg.data.dart";
part "../../../data/scripts/latn.data.dart";
part "../../../data/scripts/leke.data.dart";
part "../../../data/scripts/lepc.data.dart";
part "../../../data/scripts/limb.data.dart";
part "../../../data/scripts/lina.data.dart";
part "../../../data/scripts/linb.data.dart";
part "../../../data/scripts/lisu.data.dart";
part "../../../data/scripts/loma.data.dart";
part "../../../data/scripts/lyci.data.dart";
part "../../../data/scripts/lydi.data.dart";
part "../../../data/scripts/mahj.data.dart";
part "../../../data/scripts/maka.data.dart";
part "../../../data/scripts/mand.data.dart";
part "../../../data/scripts/mani.data.dart";
part "../../../data/scripts/marc.data.dart";
part "../../../data/scripts/maya.data.dart";
part "../../../data/scripts/medf.data.dart";
part "../../../data/scripts/mend.data.dart";
part "../../../data/scripts/merc.data.dart";
part "../../../data/scripts/mero.data.dart";
part "../../../data/scripts/mlym.data.dart";
part "../../../data/scripts/modi.data.dart";
part "../../../data/scripts/mong.data.dart";
part "../../../data/scripts/moon.data.dart";
part "../../../data/scripts/mroo.data.dart";
part "../../../data/scripts/mtei.data.dart";
part "../../../data/scripts/mult.data.dart";
part "../../../data/scripts/mymr.data.dart";
part "../../../data/scripts/nagm.data.dart";
part "../../../data/scripts/nand.data.dart";
part "../../../data/scripts/narb.data.dart";
part "../../../data/scripts/nbat.data.dart";
part "../../../data/scripts/newa.data.dart";
part "../../../data/scripts/nkdb.data.dart";
part "../../../data/scripts/nkgb.data.dart";
part "../../../data/scripts/nkoo.data.dart";
part "../../../data/scripts/nshu.data.dart";
part "../../../data/scripts/ogam.data.dart";
part "../../../data/scripts/olck.data.dart";
part "../../../data/scripts/orkh.data.dart";
part "../../../data/scripts/orya.data.dart";
part "../../../data/scripts/osge.data.dart";
part "../../../data/scripts/osma.data.dart";
part "../../../data/scripts/ougr.data.dart";
part "../../../data/scripts/palm.data.dart";
part "../../../data/scripts/pauc.data.dart";
part "../../../data/scripts/pcun.data.dart";
part "../../../data/scripts/pelm.data.dart";
part "../../../data/scripts/perm.data.dart";
part "../../../data/scripts/phag.data.dart";
part "../../../data/scripts/phli.data.dart";
part "../../../data/scripts/phlp.data.dart";
part "../../../data/scripts/phlv.data.dart";
part "../../../data/scripts/phnx.data.dart";
part "../../../data/scripts/piqd.data.dart";
part "../../../data/scripts/plrd.data.dart";
part "../../../data/scripts/prti.data.dart";
part "../../../data/scripts/psin.data.dart";
part "../../../data/scripts/qaaa.data.dart";
part "../../../data/scripts/qabx.data.dart";
part "../../../data/scripts/ranj.data.dart";
part "../../../data/scripts/rjng.data.dart";
part "../../../data/scripts/rohg.data.dart";
part "../../../data/scripts/roro.data.dart";
part "../../../data/scripts/runr.data.dart";
part "../../../data/scripts/samr.data.dart";
part "../../../data/scripts/sara.data.dart";
part "../../../data/scripts/sarb.data.dart";
part "../../../data/scripts/saur.data.dart";
part "../../../data/scripts/sgnw.data.dart";
part "../../../data/scripts/shaw.data.dart";
part "../../../data/scripts/shrd.data.dart";
part "../../../data/scripts/shui.data.dart";
part "../../../data/scripts/sidd.data.dart";
part "../../../data/scripts/sind.data.dart";
part "../../../data/scripts/sinh.data.dart";
part "../../../data/scripts/sogd.data.dart";
part "../../../data/scripts/sogo.data.dart";
part "../../../data/scripts/sora.data.dart";
part "../../../data/scripts/soyo.data.dart";
part "../../../data/scripts/sund.data.dart";
part "../../../data/scripts/sunu.data.dart";
part "../../../data/scripts/sylo.data.dart";
part "../../../data/scripts/syrc.data.dart";
part "../../../data/scripts/syre.data.dart";
part "../../../data/scripts/syrj.data.dart";
part "../../../data/scripts/syrn.data.dart";
part "../../../data/scripts/tagb.data.dart";
part "../../../data/scripts/takr.data.dart";
part "../../../data/scripts/tale.data.dart";
part "../../../data/scripts/talu.data.dart";
part "../../../data/scripts/taml.data.dart";
part "../../../data/scripts/tang.data.dart";
part "../../../data/scripts/tavt.data.dart";
part "../../../data/scripts/telu.data.dart";
part "../../../data/scripts/teng.data.dart";
part "../../../data/scripts/tfng.data.dart";
part "../../../data/scripts/tglg.data.dart";
part "../../../data/scripts/thaa.data.dart";
part "../../../data/scripts/thai.data.dart";
part "../../../data/scripts/tibt.data.dart";
part "../../../data/scripts/tirh.data.dart";
part "../../../data/scripts/tnsa.data.dart";
part "../../../data/scripts/toto.data.dart";
part "../../../data/scripts/ugar.data.dart";
part "../../../data/scripts/vaii.data.dart";
part "../../../data/scripts/visp.data.dart";
part "../../../data/scripts/vith.data.dart";
part "../../../data/scripts/wara.data.dart";
part "../../../data/scripts/wcho.data.dart";
part "../../../data/scripts/wole.data.dart";
part "../../../data/scripts/xpeo.data.dart";
part "../../../data/scripts/xsux.data.dart";
part "../../../data/scripts/yezi.data.dart";
part "../../../data/scripts/yiii.data.dart";
part "../../../data/scripts/zanb.data.dart";
part "../../../data/scripts/zinh.data.dart";
part "../../../data/scripts/zmth.data.dart";
part "../../../data/scripts/zsye.data.dart";
part "../../../data/scripts/zsym.data.dart";
part "../../../data/scripts/zxxx.data.dart";
part "../../../data/scripts/zyyy.data.dart";
part "../../../data/scripts/zzzz.data.dart";

/// A sealed class that represents a script used in writing systems.
sealed class Script extends WritingSystem
    implements
        IsoStandardized<String>,
        JsonEncodable<Script>,
        Comparable<Script> {
  /// {@template script_constructor}
  /// Creates a new instance of the [Script] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the script. The [code] parameter is required and
  /// should be a four-character string representing the ISO 15924 code for the
  /// script. The [codeNumeric] parameter is required and should be a
  /// three-digit string representing the ISO 15924 numeric code for the script.
  /// The [date] parameter is required and should be a string representing the
  /// date of addition of the script. The optional [pva] parameter is a string
  /// representing the property value alias for the script.
  /// {@endtemplate}
  const Script._({
    required super.name,
    required this.code,
    required this.codeNumeric,
    required this.date,
    this.pva,
  }) : assert(
         code.length == codeLength,
         "`code` should be exactly $codeLength characters long!",
       ),
       assert(pva == null || pva.length > 0, "`pva` should not be empty!"),
       assert(
         codeNumeric.length == IsoStandardized.codeLength,
         """`codeNumeric` should be exactly ${IsoStandardized.codeLength} characters long!""",
       );

  /// {@macro permissive_constructor}
  /// {@macro script_constructor}
  const Script._permissive({
    this.code = "",
    super.name = " ",
    this.codeNumeric = "",
    this.date = "",
    this.pva,
  }) : assert(
         code.length > 0 || codeNumeric.length > 0,
         'The `code` (or at least `codeNumeric`) must be provided!',
       );

  /// {@macro sealed_world.script_adlm_constructor}
  const factory Script.adlm() = _AdlmFactory;

  /// {@macro sealed_world.script_afak_constructor}
  const factory Script.afak() = _AfakFactory;

  /// {@macro sealed_world.script_aghb_constructor}
  const factory Script.aghb() = _AghbFactory;

  /// {@macro sealed_world.script_ahom_constructor}
  const factory Script.ahom() = _AhomFactory;

  /// {@macro sealed_world.script_arab_constructor}
  const factory Script.arab() = _ArabFactory;

  /// {@macro sealed_world.script_aran_constructor}
  const factory Script.aran() = _AranFactory;

  /// {@macro sealed_world.script_armi_constructor}
  const factory Script.armi() = _ArmiFactory;

  /// {@macro sealed_world.script_armn_constructor}
  const factory Script.armn() = _ArmnFactory;

  /// {@macro sealed_world.script_avst_constructor}
  const factory Script.avst() = _AvstFactory;

  /// {@macro sealed_world.script_bali_constructor}
  const factory Script.bali() = _BaliFactory;

  /// {@macro sealed_world.script_bamu_constructor}
  const factory Script.bamu() = _BamuFactory;

  /// {@macro sealed_world.script_bass_constructor}
  const factory Script.bass() = _BassFactory;

  /// {@macro sealed_world.script_batk_constructor}
  const factory Script.batk() = _BatkFactory;

  /// {@macro sealed_world.script_beng_constructor}
  const factory Script.beng() = _BengFactory;

  /// {@macro sealed_world.script_bhks_constructor}
  const factory Script.bhks() = _BhksFactory;

  /// {@macro sealed_world.script_blis_constructor}
  const factory Script.blis() = _BlisFactory;

  /// {@macro sealed_world.script_bopo_constructor}
  const factory Script.bopo() = _BopoFactory;

  /// {@macro sealed_world.script_brah_constructor}
  const factory Script.brah() = _BrahFactory;

  /// {@macro sealed_world.script_brai_constructor}
  const factory Script.brai() = _BraiFactory;

  /// {@macro sealed_world.script_bugi_constructor}
  const factory Script.bugi() = _BugiFactory;

  /// {@macro sealed_world.script_buhd_constructor}
  const factory Script.buhd() = _BuhdFactory;

  /// {@macro sealed_world.script_cakm_constructor}
  const factory Script.cakm() = _CakmFactory;

  /// {@macro sealed_world.script_cans_constructor}
  const factory Script.cans() = _CansFactory;

  /// {@macro sealed_world.script_cari_constructor}
  const factory Script.cari() = _CariFactory;

  /// {@macro sealed_world.script_cham_constructor}
  const factory Script.cham() = _ChamFactory;

  /// {@macro sealed_world.script_cher_constructor}
  const factory Script.cher() = _CherFactory;

  /// {@macro sealed_world.script_chrs_constructor}
  const factory Script.chrs() = _ChrsFactory;

  /// {@macro sealed_world.script_cirt_constructor}
  const factory Script.cirt() = _CirtFactory;

  /// {@macro sealed_world.script_copt_constructor}
  const factory Script.copt() = _CoptFactory;

  /// {@macro sealed_world.script_cpmn_constructor}
  const factory Script.cpmn() = _CpmnFactory;

  /// {@macro sealed_world.script_cprt_constructor}
  const factory Script.cprt() = _CprtFactory;

  /// {@macro sealed_world.script_cyrl_constructor}
  const factory Script.cyrl() = _CyrlFactory;

  /// {@macro sealed_world.script_cyrs_constructor}
  const factory Script.cyrs() = _CyrsFactory;

  /// {@macro sealed_world.script_deva_constructor}
  const factory Script.deva() = _DevaFactory;

  /// {@macro sealed_world.script_diak_constructor}
  const factory Script.diak() = _DiakFactory;

  /// {@macro sealed_world.script_dogr_constructor}
  const factory Script.dogr() = _DogrFactory;

  /// {@macro sealed_world.script_dsrt_constructor}
  const factory Script.dsrt() = _DsrtFactory;

  /// {@macro sealed_world.script_dupl_constructor}
  const factory Script.dupl() = _DuplFactory;

  /// {@macro sealed_world.script_egyd_constructor}
  const factory Script.egyd() = _EgydFactory;

  /// {@macro sealed_world.script_egyh_constructor}
  const factory Script.egyh() = _EgyhFactory;

  /// {@macro sealed_world.script_egyp_constructor}
  const factory Script.egyp() = _EgypFactory;

  /// {@macro sealed_world.script_elba_constructor}
  const factory Script.elba() = _ElbaFactory;

  /// {@macro sealed_world.script_elym_constructor}
  const factory Script.elym() = _ElymFactory;

  /// {@macro sealed_world.script_ethi_constructor}
  const factory Script.ethi() = _EthiFactory;

  /// {@macro sealed_world.script_geok_constructor}
  const factory Script.geok() = _GeokFactory;

  /// {@macro sealed_world.script_geor_constructor}
  const factory Script.geor() = _GeorFactory;

  /// {@macro sealed_world.script_glag_constructor}
  const factory Script.glag() = _GlagFactory;

  /// {@macro sealed_world.script_gong_constructor}
  const factory Script.gong() = _GongFactory;

  /// {@macro sealed_world.script_gonm_constructor}
  const factory Script.gonm() = _GonmFactory;

  /// {@macro sealed_world.script_goth_constructor}
  const factory Script.goth() = _GothFactory;

  /// {@macro sealed_world.script_gran_constructor}
  const factory Script.gran() = _GranFactory;

  /// {@macro sealed_world.script_grek_constructor}
  const factory Script.grek() = _GrekFactory;

  /// {@macro sealed_world.script_gujr_constructor}
  const factory Script.gujr() = _GujrFactory;

  /// {@macro sealed_world.script_guru_constructor}
  const factory Script.guru() = _GuruFactory;

  /// {@macro sealed_world.script_hanb_constructor}
  const factory Script.hanb() = _HanbFactory;

  /// {@macro sealed_world.script_hang_constructor}
  const factory Script.hang() = _HangFactory;

  /// {@macro sealed_world.script_hani_constructor}
  const factory Script.hani() = _HaniFactory;

  /// {@macro sealed_world.script_hano_constructor}
  const factory Script.hano() = _HanoFactory;

  /// {@macro sealed_world.script_hans_constructor}
  const factory Script.hans() = _HansFactory;

  /// {@macro sealed_world.script_hant_constructor}
  const factory Script.hant() = _HantFactory;

  /// {@macro sealed_world.script_hatr_constructor}
  const factory Script.hatr() = _HatrFactory;

  /// {@macro sealed_world.script_hebr_constructor}
  const factory Script.hebr() = _HebrFactory;

  /// {@macro sealed_world.script_hira_constructor}
  const factory Script.hira() = _HiraFactory;

  /// {@macro sealed_world.script_hluw_constructor}
  const factory Script.hluw() = _HluwFactory;

  /// {@macro sealed_world.script_hmng_constructor}
  const factory Script.hmng() = _HmngFactory;

  /// {@macro sealed_world.script_hmnp_constructor}
  const factory Script.hmnp() = _HmnpFactory;

  /// {@macro sealed_world.script_hrkt_constructor}
  const factory Script.hrkt() = _HrktFactory;

  /// {@macro sealed_world.script_hung_constructor}
  const factory Script.hung() = _HungFactory;

  /// {@macro sealed_world.script_inds_constructor}
  const factory Script.inds() = _IndsFactory;

  /// {@macro sealed_world.script_ital_constructor}
  const factory Script.ital() = _ItalFactory;

  /// {@macro sealed_world.script_jamo_constructor}
  const factory Script.jamo() = _JamoFactory;

  /// {@macro sealed_world.script_java_constructor}
  const factory Script.java() = _JavaFactory;

  /// {@macro sealed_world.script_jpan_constructor}
  const factory Script.jpan() = _JpanFactory;

  /// {@macro sealed_world.script_jurc_constructor}
  const factory Script.jurc() = _JurcFactory;

  /// {@macro sealed_world.script_kali_constructor}
  const factory Script.kali() = _KaliFactory;

  /// {@macro sealed_world.script_kana_constructor}
  const factory Script.kana() = _KanaFactory;

  /// {@macro sealed_world.script_kawi_constructor}
  const factory Script.kawi() = _KawiFactory;

  /// {@macro sealed_world.script_khar_constructor}
  const factory Script.khar() = _KharFactory;

  /// {@macro sealed_world.script_khmr_constructor}
  const factory Script.khmr() = _KhmrFactory;

  /// {@macro sealed_world.script_khoj_constructor}
  const factory Script.khoj() = _KhojFactory;

  /// {@macro sealed_world.script_kitl_constructor}
  const factory Script.kitl() = _KitlFactory;

  /// {@macro sealed_world.script_kits_constructor}
  const factory Script.kits() = _KitsFactory;

  /// {@macro sealed_world.script_knda_constructor}
  const factory Script.knda() = _KndaFactory;

  /// {@macro sealed_world.script_kore_constructor}
  const factory Script.kore() = _KoreFactory;

  /// {@macro sealed_world.script_kpel_constructor}
  const factory Script.kpel() = _KpelFactory;

  /// {@macro sealed_world.script_kthi_constructor}
  const factory Script.kthi() = _KthiFactory;

  /// {@macro sealed_world.script_lana_constructor}
  const factory Script.lana() = _LanaFactory;

  /// {@macro sealed_world.script_laoo_constructor}
  const factory Script.laoo() = _LaooFactory;

  /// {@macro sealed_world.script_latf_constructor}
  const factory Script.latf() = _LatfFactory;

  /// {@macro sealed_world.script_latg_constructor}
  const factory Script.latg() = _LatgFactory;

  /// {@macro sealed_world.script_latn_constructor}
  const factory Script.latn() = _LatnFactory;

  /// {@macro sealed_world.script_leke_constructor}
  const factory Script.leke() = _LekeFactory;

  /// {@macro sealed_world.script_lepc_constructor}
  const factory Script.lepc() = _LepcFactory;

  /// {@macro sealed_world.script_limb_constructor}
  const factory Script.limb() = _LimbFactory;

  /// {@macro sealed_world.script_lina_constructor}
  const factory Script.lina() = _LinaFactory;

  /// {@macro sealed_world.script_linb_constructor}
  const factory Script.linb() = _LinbFactory;

  /// {@macro sealed_world.script_lisu_constructor}
  const factory Script.lisu() = _LisuFactory;

  /// {@macro sealed_world.script_loma_constructor}
  const factory Script.loma() = _LomaFactory;

  /// {@macro sealed_world.script_lyci_constructor}
  const factory Script.lyci() = _LyciFactory;

  /// {@macro sealed_world.script_lydi_constructor}
  const factory Script.lydi() = _LydiFactory;

  /// {@macro sealed_world.script_mahj_constructor}
  const factory Script.mahj() = _MahjFactory;

  /// {@macro sealed_world.script_maka_constructor}
  const factory Script.maka() = _MakaFactory;

  /// {@macro sealed_world.script_mand_constructor}
  const factory Script.mand() = _MandFactory;

  /// {@macro sealed_world.script_mani_constructor}
  const factory Script.mani() = _ManiFactory;

  /// {@macro sealed_world.script_marc_constructor}
  const factory Script.marc() = _MarcFactory;

  /// {@macro sealed_world.script_maya_constructor}
  const factory Script.maya() = _MayaFactory;

  /// {@macro sealed_world.script_medf_constructor}
  const factory Script.medf() = _MedfFactory;

  /// {@macro sealed_world.script_mend_constructor}
  const factory Script.mend() = _MendFactory;

  /// {@macro sealed_world.script_merc_constructor}
  const factory Script.merc() = _MercFactory;

  /// {@macro sealed_world.script_mero_constructor}
  const factory Script.mero() = _MeroFactory;

  /// {@macro sealed_world.script_mlym_constructor}
  const factory Script.mlym() = _MlymFactory;

  /// {@macro sealed_world.script_modi_constructor}
  const factory Script.modi() = _ModiFactory;

  /// {@macro sealed_world.script_mong_constructor}
  const factory Script.mong() = _MongFactory;

  /// {@macro sealed_world.script_moon_constructor}
  const factory Script.moon() = _MoonFactory;

  /// {@macro sealed_world.script_mroo_constructor}
  const factory Script.mroo() = _MrooFactory;

  /// {@macro sealed_world.script_mtei_constructor}
  const factory Script.mtei() = _MteiFactory;

  /// {@macro sealed_world.script_mult_constructor}
  const factory Script.mult() = _MultFactory;

  /// {@macro sealed_world.script_mymr_constructor}
  const factory Script.mymr() = _MymrFactory;

  /// {@macro sealed_world.script_nagm_constructor}
  const factory Script.nagm() = _NagmFactory;

  /// {@macro sealed_world.script_nand_constructor}
  const factory Script.nand() = _NandFactory;

  /// {@macro sealed_world.script_narb_constructor}
  const factory Script.narb() = _NarbFactory;

  /// {@macro sealed_world.script_nbat_constructor}
  const factory Script.nbat() = _NbatFactory;

  /// {@macro sealed_world.script_newa_constructor}
  const factory Script.newa() = _NewaFactory;

  /// {@macro sealed_world.script_nkdb_constructor}
  const factory Script.nkdb() = _NkdbFactory;

  /// {@macro sealed_world.script_nkgb_constructor}
  const factory Script.nkgb() = _NkgbFactory;

  /// {@macro sealed_world.script_nkoo_constructor}
  const factory Script.nkoo() = _NkooFactory;

  /// {@macro sealed_world.script_nshu_constructor}
  const factory Script.nshu() = _NshuFactory;

  /// {@macro sealed_world.script_ogam_constructor}
  const factory Script.ogam() = _OgamFactory;

  /// {@macro sealed_world.script_olck_constructor}
  const factory Script.olck() = _OlckFactory;

  /// {@macro sealed_world.script_orkh_constructor}
  const factory Script.orkh() = _OrkhFactory;

  /// {@macro sealed_world.script_orya_constructor}
  const factory Script.orya() = _OryaFactory;

  /// {@macro sealed_world.script_osge_constructor}
  const factory Script.osge() = _OsgeFactory;

  /// {@macro sealed_world.script_osma_constructor}
  const factory Script.osma() = _OsmaFactory;

  /// {@macro sealed_world.script_ougr_constructor}
  const factory Script.ougr() = _OugrFactory;

  /// {@macro sealed_world.script_palm_constructor}
  const factory Script.palm() = _PalmFactory;

  /// {@macro sealed_world.script_pauc_constructor}
  const factory Script.pauc() = _PaucFactory;

  /// {@macro sealed_world.script_pcun_constructor}
  const factory Script.pcun() = _PcunFactory;

  /// {@macro sealed_world.script_pelm_constructor}
  const factory Script.pelm() = _PelmFactory;

  /// {@macro sealed_world.script_perm_constructor}
  const factory Script.perm() = _PermFactory;

  /// {@macro sealed_world.script_phag_constructor}
  const factory Script.phag() = _PhagFactory;

  /// {@macro sealed_world.script_phli_constructor}
  const factory Script.phli() = _PhliFactory;

  /// {@macro sealed_world.script_phlp_constructor}
  const factory Script.phlp() = _PhlpFactory;

  /// {@macro sealed_world.script_phlv_constructor}
  const factory Script.phlv() = _PhlvFactory;

  /// {@macro sealed_world.script_phnx_constructor}
  const factory Script.phnx() = _PhnxFactory;

  /// {@macro sealed_world.script_piqd_constructor}
  const factory Script.piqd() = _PiqdFactory;

  /// {@macro sealed_world.script_plrd_constructor}
  const factory Script.plrd() = _PlrdFactory;

  /// {@macro sealed_world.script_prti_constructor}
  const factory Script.prti() = _PrtiFactory;

  /// {@macro sealed_world.script_psin_constructor}
  const factory Script.psin() = _PsinFactory;

  /// {@macro sealed_world.script_qaaa_constructor}
  const factory Script.qaaa() = _QaaaFactory;

  /// {@macro sealed_world.script_qabx_constructor}
  const factory Script.qabx() = _QabxFactory;

  /// {@macro sealed_world.script_ranj_constructor}
  const factory Script.ranj() = _RanjFactory;

  /// {@macro sealed_world.script_rjng_constructor}
  const factory Script.rjng() = _RjngFactory;

  /// {@macro sealed_world.script_rohg_constructor}
  const factory Script.rohg() = _RohgFactory;

  /// {@macro sealed_world.script_roro_constructor}
  const factory Script.roro() = _RoroFactory;

  /// {@macro sealed_world.script_runr_constructor}
  const factory Script.runr() = _RunrFactory;

  /// {@macro sealed_world.script_samr_constructor}
  const factory Script.samr() = _SamrFactory;

  /// {@macro sealed_world.script_sara_constructor}
  const factory Script.sara() = _SaraFactory;

  /// {@macro sealed_world.script_sarb_constructor}
  const factory Script.sarb() = _SarbFactory;

  /// {@macro sealed_world.script_saur_constructor}
  const factory Script.saur() = _SaurFactory;

  /// {@macro sealed_world.script_sgnw_constructor}
  const factory Script.sgnw() = _SgnwFactory;

  /// {@macro sealed_world.script_shaw_constructor}
  const factory Script.shaw() = _ShawFactory;

  /// {@macro sealed_world.script_shrd_constructor}
  const factory Script.shrd() = _ShrdFactory;

  /// {@macro sealed_world.script_shui_constructor}
  const factory Script.shui() = _ShuiFactory;

  /// {@macro sealed_world.script_sidd_constructor}
  const factory Script.sidd() = _SiddFactory;

  /// {@macro sealed_world.script_sind_constructor}
  const factory Script.sind() = _SindFactory;

  /// {@macro sealed_world.script_sinh_constructor}
  const factory Script.sinh() = _SinhFactory;

  /// {@macro sealed_world.script_sogd_constructor}
  const factory Script.sogd() = _SogdFactory;

  /// {@macro sealed_world.script_sogo_constructor}
  const factory Script.sogo() = _SogoFactory;

  /// {@macro sealed_world.script_sora_constructor}
  const factory Script.sora() = _SoraFactory;

  /// {@macro sealed_world.script_soyo_constructor}
  const factory Script.soyo() = _SoyoFactory;

  /// {@macro sealed_world.script_sund_constructor}
  const factory Script.sund() = _SundFactory;

  /// {@macro sealed_world.script_sunu_constructor}
  const factory Script.sunu() = _SunuFactory;

  /// {@macro sealed_world.script_sylo_constructor}
  const factory Script.sylo() = _SyloFactory;

  /// {@macro sealed_world.script_syrc_constructor}
  const factory Script.syrc() = _SyrcFactory;

  /// {@macro sealed_world.script_syre_constructor}
  const factory Script.syre() = _SyreFactory;

  /// {@macro sealed_world.script_syrj_constructor}
  const factory Script.syrj() = _SyrjFactory;

  /// {@macro sealed_world.script_syrn_constructor}
  const factory Script.syrn() = _SyrnFactory;

  /// {@macro sealed_world.script_tagb_constructor}
  const factory Script.tagb() = _TagbFactory;

  /// {@macro sealed_world.script_takr_constructor}
  const factory Script.takr() = _TakrFactory;

  /// {@macro sealed_world.script_tale_constructor}
  const factory Script.tale() = _TaleFactory;

  /// {@macro sealed_world.script_talu_constructor}
  const factory Script.talu() = _TaluFactory;

  /// {@macro sealed_world.script_taml_constructor}
  const factory Script.taml() = _TamlFactory;

  /// {@macro sealed_world.script_tang_constructor}
  const factory Script.tang() = _TangFactory;

  /// {@macro sealed_world.script_tavt_constructor}
  const factory Script.tavt() = _TavtFactory;

  /// {@macro sealed_world.script_telu_constructor}
  const factory Script.telu() = _TeluFactory;

  /// {@macro sealed_world.script_teng_constructor}
  const factory Script.teng() = _TengFactory;

  /// {@macro sealed_world.script_tfng_constructor}
  const factory Script.tfng() = _TfngFactory;

  /// {@macro sealed_world.script_tglg_constructor}
  const factory Script.tglg() = _TglgFactory;

  /// {@macro sealed_world.script_thaa_constructor}
  const factory Script.thaa() = _ThaaFactory;

  /// {@macro sealed_world.script_thai_constructor}
  const factory Script.thai() = _ThaiFactory;

  /// {@macro sealed_world.script_tibt_constructor}
  const factory Script.tibt() = _TibtFactory;

  /// {@macro sealed_world.script_tirh_constructor}
  const factory Script.tirh() = _TirhFactory;

  /// {@macro sealed_world.script_tnsa_constructor}
  const factory Script.tnsa() = _TnsaFactory;

  /// {@macro sealed_world.script_toto_constructor}
  const factory Script.toto() = _TotoFactory;

  /// {@macro sealed_world.script_ugar_constructor}
  const factory Script.ugar() = _UgarFactory;

  /// {@macro sealed_world.script_vaii_constructor}
  const factory Script.vaii() = _VaiiFactory;

  /// {@macro sealed_world.script_visp_constructor}
  const factory Script.visp() = _VispFactory;

  /// {@macro sealed_world.script_vith_constructor}
  const factory Script.vith() = _VithFactory;

  /// {@macro sealed_world.script_wara_constructor}
  const factory Script.wara() = _WaraFactory;

  /// {@macro sealed_world.script_wcho_constructor}
  const factory Script.wcho() = _WchoFactory;

  /// {@macro sealed_world.script_wole_constructor}
  const factory Script.wole() = _WoleFactory;

  /// {@macro sealed_world.script_xpeo_constructor}
  const factory Script.xpeo() = _XpeoFactory;

  /// {@macro sealed_world.script_xsux_constructor}
  const factory Script.xsux() = _XsuxFactory;

  /// {@macro sealed_world.script_yezi_constructor}
  const factory Script.yezi() = _YeziFactory;

  /// {@macro sealed_world.script_yiii_constructor}
  const factory Script.yiii() = _YiiiFactory;

  /// {@macro sealed_world.script_zanb_constructor}
  const factory Script.zanb() = _ZanbFactory;

  /// {@macro sealed_world.script_zinh_constructor}
  const factory Script.zinh() = _ZinhFactory;

  /// {@macro sealed_world.script_zmth_constructor}
  const factory Script.zmth() = _ZmthFactory;

  /// {@macro sealed_world.script_zsye_constructor}
  const factory Script.zsye() = _ZsyeFactory;

  /// {@macro sealed_world.script_zsym_constructor}
  const factory Script.zsym() = _ZsymFactory;

  /// {@macro sealed_world.script_zxxx_constructor}
  const factory Script.zxxx() = _ZxxxFactory;

  /// {@macro sealed_world.script_zyyy_constructor}
  const factory Script.zyyy() = _ZyyyFactory;

  /// {@macro sealed_world.script_zzzz_constructor}
  const factory Script.zzzz() = _ZzzzFactory;

  /// Returns an instance of the [Script] class from a four-character ISO
  /// 15924 code.
  ///
  /// The [code] parameter is required and should be am object representing
  /// the ISO 15924 four-character code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  factory Script.fromCode(Object code, [Iterable<Script>? scripts]) {
    if (scripts == null) return codeMap.findByCodeOrThrow(code);

    String? validCode = IsoObject(
      code, // Dart 3.7+ formatting.
    ).maybeToValidIsoCode(exactLength: codeLength);
    if (validCode == null) {
      throw StateError(
        "Provided $code isn't a valid $standardCodeName code. "
        "Consider using nullable runtime-safe `maybeFromCode()` instead.",
      );
    }
    validCode = formatToStandardCode(validCode);
    final result = scripts.firstIsoWhereOrNull((iso) => iso.code == validCode);
    if (result == null) {
      throw StateError(
        "No matching Script was found for the $code! "
        "Consider using nullable runtime-safe `maybeFromCode()` instead.",
      );
    }

    return result;
  }

  /// Returns an instance of the [Script] class from a three-digit ISO 15924
  /// code.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-digit ISO 15924 numeric code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that
  /// corresponds to the given numeric code, or throws a [StateError] if no such
  /// instance exists.
  factory Script.fromCodeNumeric(
    Object codeNumeric, [
    Iterable<Script>? scripts,
  ]) => scripts == null
      ? codeNumericMap.findByCodeOrThrow(codeNumeric)
      : scripts.firstIsoWhereCodeOther(codeNumeric);

  /// Creates a new instance of the [Script] class from the name of the script.
  ///
  /// The [name] parameter is required and should be am object representing
  /// the non-empty name of the script. The optional [scripts] parameter can
  /// be used to specify a list of [Script] objects to search through. This
  /// method returns the [Script] instance that corresponds to the given name,
  /// or throws a [StateError] if no such instance exists.
  // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  factory Script.fromName(Object name, [Iterable<Script> scripts = list]) {
    final upperCaseName = IsoObject(name).toUpperCaseCode();

    return scripts.firstIsoWhere(
      (script) => script.name.toUpperCase() == upperCaseName,
    );
  }

  /// Returns an instance of the [Script] class from any valid ISO 15924 code.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 15924 code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be
  /// used to specify a list of [Script] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that corresponds to the given
  /// code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final script = Script.fromAnyCode("Latn");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "Latn". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [Script] instance. Otherwise,
  /// it calls the `fromCode` factory method to create a [Script] instance. The
  /// resulting [Script] instance is assigned to the `script` variable.
  factory Script.fromAnyCode(Object code, [Iterable<Script>? scripts]) =>
      scripts == null
      ? map.findByCodeOrThrow(code)
      : IsoObject(code).maybeMapIsoCode(
          orElse: (regular) => Script.fromCode(regular, scripts),
          numeric: (numeric) => Script.fromCodeNumeric(numeric, scripts),
          maxLength: codeLength,
          minLength: IsoStandardized.codeLength,
        );

  /// The regular length of the ISO code (4). However, it's important to note
  /// that this length is not standardized for all ISO codes. Typically it is
  /// three characters. Please refer to [IsoStandardized.codeLength] for more
  /// information.
  static const codeLength = 4;

  /// A four-character string representing the ISO 15924 code for the script.
  @override
  final String code;

  /// A three-digit string representing the ISO 15924 numeric code for the
  /// script.
  final String codeNumeric;

  /// The date of addition of the script.
  final String date;

  /// The property value alias for the script.
  final String? pva;

  @override
  List<String>? get namesNative => null;

  /// A three-digit string representing the ISO 15924 numeric code for the
  /// script.
  @override
  String get codeOther => codeNumeric;

  @override
  String get internationalName => name;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'Script(name: "$name", code: "$code", codeNumeric: "$codeNumeric", '
            'date: "$date"${pva == null ? '' : ', pva: "$pva"'},)';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  int compareTo(Script other) => code.compareTo(other.code);

  /// Returns a [Script] instance that corresponds to the given value.
  ///
  /// The [value] parameter is required and represents the value to match
  /// against. The optional [where] parameter is a function that can be used to
  /// specify a custom comparison logic for finding the matching [Script]
  /// instance. The optional [scripts] parameter can be used to specify a list
  /// of [Script] objects to search through. This method returns the [Script]
  /// instance that corresponds to the given value, or `null` if no such
  /// instance exists.
  static Script? maybeFromValue<T extends Object>(
    T value, {
    T? Function(Script script)? where,
    Iterable<Script> scripts = list,
  }) {
    // ignore: avoid-collection-mutating-methods, not mutating anything.
    scripts.assertNotEmpty();

    for (final script in scripts) {
      final expectedValue = where?.call(script) ?? script.code;
      if (expectedValue == value) return script;
    }

    return null;
  }

  /// Returns a [Script] instance that corresponds to the given value, or `null`
  /// if no such instance exists.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 15924 code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of
  /// [Script] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that corresponds to the given
  /// value, or `null` if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// Script? script = Script.maybeFromAnyCode(ExampleScriptEnum.latn);
  /// print(script != null) // Prints: true.
  /// ```
  ///
  /// In the above example, the `maybeFromAnyCode` method is called with the
  /// value "Latn". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the value. If the value is numeric, it compares it
  /// with the `codeNumeric` property of each [Script] instance. Otherwise, it
  /// compares it with the uppercase version of the `code` property of each
  /// [Script] instance. The resulting [Script] instance is assigned to the
  /// `script` variable.
  static Script? maybeFromAnyCode(Object? code, [Iterable<Script>? scripts]) =>
      scripts == null
      ? map.maybeFindByCode(code)
      : IsoObject.maybe(code)?.maybeMapIsoCode(
          orElse: (regular) => maybeFromCode(regular, scripts),
          numeric: (numeric) => maybeFromCodeNumeric(numeric, scripts),
          maxLength: codeLength,
          minLength: IsoStandardized.codeLength,
        );

  /// Returns an instance of the [Script] class from a four-character ISO
  /// 15924 code if it exists. Returns `null` otherwise.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 15924 code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///
  /// Example:
  /// ```dart
  /// final script = Script.maybeFromCode("Latn");
  /// ```
  ///
  /// In the above example, the `maybeFromCode` static method is called with the
  /// code "Latn". The resulting [Script] instance (or null) is assigned to the
  /// `script` variable.
  static Script? maybeFromCode(Object? code, [Iterable<Script>? scripts]) {
    if (scripts == null) return codeMap.maybeFindByCode(code);

    String? string = IsoObject.maybe(
      code, // Dart 3.7+ formatting.
    )?.maybeToValidIsoCode(exactLength: codeLength);
    if (string == null) return null;
    string = formatToStandardCode(string);

    return scripts.firstIsoWhereOrNull((iso) => iso.code == string);
  }

  /// Returns an instance of the [Script] class from a three-digit ISO 15924
  /// code if it exists. Returns `null` otherwise.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-digit ISO 15924 numeric code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///
  /// Example:
  /// ```dart
  /// final script = Script.maybeFromCodeNumeric("215");
  /// ```
  /// In the above example, the `maybeFromCodeNumeric` static method is called
  /// with the code "215". The resulting [Script] instance (or null) is assigned
  /// to the `script` variable.
  static Script? maybeFromCodeNumeric(
    Object? codeNumeric, [
    Iterable<Script>? scripts,
  ]) {
    if (scripts == null) return codeNumericMap.maybeFindByCode(codeNumeric);

    final string = IsoObject.maybe(
      codeNumeric, // Dart 3.7+ formatting.
    )?.maybeToValidIsoCode(exactLength: IsoStandardized.codeLength);

    return scripts.firstIsoWhereCodeOtherOrNull(string, toUpperCase: false);
  }

  /// Formats the given [input] to a standard four-character ISO 15924 code.
  /// Example:
  /// ```dart
  /// final script = Script.formatToStandardCode("LATN");
  /// print(script) // Prints: "Latn"
  /// ```
  static String formatToStandardCode(String input) =>
      // ignore: avoid-substring, no emojis expected here.
      input[0].toUpperCase() + input.substring(1).toLowerCase();

  /// The general standard ISO code for scripts, defined as ISO 15924.
  static const standardGeneralName = "15924";

  /// The standard ISO code name for scripts, defined as ISO 15924 Alpha-4.
  static const standardCodeName = "$standardGeneralName Alpha-4";

  /// The standard numeric ISO code name for scripts, defined as
  /// ISO 15924 Numeric.
  static const standardCodeNumericName = "$standardGeneralName Numeric";

  /// A tree-shakable constant map containing script (ISO 15924 Alpha-4) codes
  /// and their associated [Script] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// Script.codeMap['Latn']; // ScriptLatn().
  /// ```
  static const codeMap = UpperCaseIsoMap(
    scriptCodeMap,
    exactLength: codeLength,
  );

  /// A tree-shakable constant map containing numeric script (ISO 15924 Numeric)
  /// codes and their associated [Script] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// Script.codeNumericMap[215.toString()]; // ScriptLatn().
  /// ```
  static const codeNumericMap = UpperCaseIsoMap(scriptCodeOtherMap);

  /// A tree-shakable combined map of [codeMap] and [codeNumericMap], providing
  /// a unified view of script codes and their [Script] objects, for a O(1)
  /// access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// Script.map['Latn']; // ScriptLatn().
  /// ```
  static const map = UpperCaseIsoMap(
    {...scriptCodeMap, ...scriptCodeOtherMap},
    exactLength: null,
    maxLength: codeLength,
    minLength: IsoStandardized.codeLength,
  );

  /// A tree-shakable list of all the scripts currently supported
  /// by the [Script] class.
  // ignore_for_file: avoid-referencing-subclasses, transition to sealed class.
  static const list = [
    ScriptAdlm(),
    ScriptAfak(),
    ScriptAghb(),
    ScriptAhom(),
    ScriptArab(),
    ScriptAran(),
    ScriptArmi(),
    ScriptArmn(),
    ScriptAvst(),
    ScriptBali(),
    ScriptBamu(),
    ScriptBass(),
    ScriptBatk(),
    ScriptBeng(),
    ScriptBhks(),
    ScriptBlis(),
    ScriptBopo(),
    ScriptBrah(),
    ScriptBrai(),
    ScriptBugi(),
    ScriptBuhd(),
    ScriptCakm(),
    ScriptCans(),
    ScriptCari(),
    ScriptCham(),
    ScriptCher(),
    ScriptChrs(),
    ScriptCirt(),
    ScriptCopt(),
    ScriptCpmn(),
    ScriptCprt(),
    ScriptCyrl(),
    ScriptCyrs(),
    ScriptDeva(),
    ScriptDiak(),
    ScriptDogr(),
    ScriptDsrt(),
    ScriptDupl(),
    ScriptEgyd(),
    ScriptEgyh(),
    ScriptEgyp(),
    ScriptElba(),
    ScriptElym(),
    ScriptEthi(),
    ScriptGeok(),
    ScriptGeor(),
    ScriptGlag(),
    ScriptGong(),
    ScriptGonm(),
    ScriptGoth(),
    ScriptGran(),
    ScriptGrek(),
    ScriptGujr(),
    ScriptGuru(),
    ScriptHanb(),
    ScriptHang(),
    ScriptHani(),
    ScriptHano(),
    ScriptHans(),
    ScriptHant(),
    ScriptHatr(),
    ScriptHebr(),
    ScriptHira(),
    ScriptHluw(),
    ScriptHmng(),
    ScriptHmnp(),
    ScriptHrkt(),
    ScriptHung(),
    ScriptInds(),
    ScriptItal(),
    ScriptJamo(),
    ScriptJava(),
    ScriptJpan(),
    ScriptJurc(),
    ScriptKali(),
    ScriptKana(),
    ScriptKawi(),
    ScriptKhar(),
    ScriptKhmr(),
    ScriptKhoj(),
    ScriptKitl(),
    ScriptKits(),
    ScriptKnda(),
    ScriptKore(),
    ScriptKpel(),
    ScriptKthi(),
    ScriptLana(),
    ScriptLaoo(),
    ScriptLatf(),
    ScriptLatg(),
    ScriptLatn(),
    ScriptLeke(),
    ScriptLepc(),
    ScriptLimb(),
    ScriptLina(),
    ScriptLinb(),
    ScriptLisu(),
    ScriptLoma(),
    ScriptLyci(),
    ScriptLydi(),
    ScriptMahj(),
    ScriptMaka(),
    ScriptMand(),
    ScriptMani(),
    ScriptMarc(),
    ScriptMaya(),
    ScriptMedf(),
    ScriptMend(),
    ScriptMerc(),
    ScriptMero(),
    ScriptMlym(),
    ScriptModi(),
    ScriptMong(),
    ScriptMoon(),
    ScriptMroo(),
    ScriptMtei(),
    ScriptMult(),
    ScriptMymr(),
    ScriptNagm(),
    ScriptNand(),
    ScriptNarb(),
    ScriptNbat(),
    ScriptNewa(),
    ScriptNkdb(),
    ScriptNkgb(),
    ScriptNkoo(),
    ScriptNshu(),
    ScriptOgam(),
    ScriptOlck(),
    ScriptOrkh(),
    ScriptOrya(),
    ScriptOsge(),
    ScriptOsma(),
    ScriptOugr(),
    ScriptPalm(),
    ScriptPauc(),
    ScriptPcun(),
    ScriptPelm(),
    ScriptPerm(),
    ScriptPhag(),
    ScriptPhli(),
    ScriptPhlp(),
    ScriptPhlv(),
    ScriptPhnx(),
    ScriptPiqd(),
    ScriptPlrd(),
    ScriptPrti(),
    ScriptPsin(),
    ScriptQaaa(),
    ScriptQabx(),
    ScriptRanj(),
    ScriptRjng(),
    ScriptRohg(),
    ScriptRoro(),
    ScriptRunr(),
    ScriptSamr(),
    ScriptSara(),
    ScriptSarb(),
    ScriptSaur(),
    ScriptSgnw(),
    ScriptShaw(),
    ScriptShrd(),
    ScriptShui(),
    ScriptSidd(),
    ScriptSind(),
    ScriptSinh(),
    ScriptSogd(),
    ScriptSogo(),
    ScriptSora(),
    ScriptSoyo(),
    ScriptSund(),
    ScriptSunu(),
    ScriptSylo(),
    ScriptSyrc(),
    ScriptSyre(),
    ScriptSyrj(),
    ScriptSyrn(),
    ScriptTagb(),
    ScriptTakr(),
    ScriptTale(),
    ScriptTalu(),
    ScriptTaml(),
    ScriptTang(),
    ScriptTavt(),
    ScriptTelu(),
    ScriptTeng(),
    ScriptTfng(),
    ScriptTglg(),
    ScriptThaa(),
    ScriptThai(),
    ScriptTibt(),
    ScriptTirh(),
    ScriptTnsa(),
    ScriptToto(),
    ScriptUgar(),
    ScriptVaii(),
    ScriptVisp(),
    ScriptVith(),
    ScriptWara(),
    ScriptWcho(),
    ScriptWole(),
    ScriptXpeo(),
    ScriptXsux(),
    ScriptYezi(),
    ScriptYiii(),
    ScriptZanb(),
    ScriptZinh(),
    ScriptZmth(),
    ScriptZsye(),
    ScriptZsym(),
    ScriptZxxx(),
    ScriptZyyy(),
    ScriptZzzz(),
  ];
}
