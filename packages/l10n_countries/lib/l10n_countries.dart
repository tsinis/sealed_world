// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// https://github.com/umpirsky/country-list project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

// ignore_for_file: do_not_use_environment, avoid-collection-mutating-methods
// ignore_for_file: avoid-complex-conditions, avoid-collapsible-if

/// Provides country translations for different locales.
library l10n_countries;

import "src/data/aa_countries_l10n.data.dart";
import "src/data/ab_countries_l10n.data.dart";
import "src/data/af_countries_l10n.data.dart";
import "src/data/ak_countries_l10n.data.dart";
import "src/data/am_countries_l10n.data.dart";
import "src/data/an_countries_l10n.data.dart";
import "src/data/ar_countries_l10n.data.dart";
import "src/data/as_countries_l10n.data.dart";
import "src/data/av_countries_l10n.data.dart";
import "src/data/ay_countries_l10n.data.dart";
import "src/data/az_countries_l10n.data.dart";
import "src/data/az_cyrl_countries_l10n.data.dart";
import "src/data/ba_countries_l10n.data.dart";
import "src/data/be_countries_l10n.data.dart";
import "src/data/bg_countries_l10n.data.dart";
import "src/data/bh_countries_l10n.data.dart";
import "src/data/bi_countries_l10n.data.dart";
import "src/data/bm_countries_l10n.data.dart";
import "src/data/bm_latn_countries_l10n.data.dart";
import "src/data/bn_countries_l10n.data.dart";
import "src/data/bn_in_countries_l10n.data.dart";
import "src/data/bo_countries_l10n.data.dart";
import "src/data/br_countries_l10n.data.dart";
import "src/data/bs_countries_l10n.data.dart";
import "src/data/bs_cyrl_countries_l10n.data.dart";
import "src/data/ca_countries_l10n.data.dart";
import "src/data/ce_countries_l10n.data.dart";
import "src/data/ch_countries_l10n.data.dart";
import "src/data/co_countries_l10n.data.dart";
import "src/data/cs_countries_l10n.data.dart";
import "src/data/cu_countries_l10n.data.dart";
import "src/data/cv_countries_l10n.data.dart";
import "src/data/cy_countries_l10n.data.dart";
import "src/data/da_countries_l10n.data.dart";
import "src/data/de_countries_l10n.data.dart";
import "src/data/dv_countries_l10n.data.dart";
import "src/data/dz_countries_l10n.data.dart";
import "src/data/ee_countries_l10n.data.dart";
import "src/data/el_countries_l10n.data.dart";
import "src/data/en_countries_l10n.data.dart";
import "src/data/eo_countries_l10n.data.dart";
import "src/data/es_countries_l10n.data.dart";
import "src/data/et_countries_l10n.data.dart";
import "src/data/eu_countries_l10n.data.dart";
import "src/data/fa_countries_l10n.data.dart";
import "src/data/ff_countries_l10n.data.dart";
import "src/data/fi_countries_l10n.data.dart";
import "src/data/fj_countries_l10n.data.dart";
import "src/data/fo_countries_l10n.data.dart";
import "src/data/fr_countries_l10n.data.dart";
import "src/data/fy_countries_l10n.data.dart";
import "src/data/ga_countries_l10n.data.dart";
import "src/data/gd_countries_l10n.data.dart";
import "src/data/gl_countries_l10n.data.dart";
import "src/data/gn_countries_l10n.data.dart";
import "src/data/gu_countries_l10n.data.dart";
import "src/data/gv_countries_l10n.data.dart";
import "src/data/ha_countries_l10n.data.dart";
import "src/data/ha_latn_countries_l10n.data.dart";
import "src/data/he_countries_l10n.data.dart";
import "src/data/hi_countries_l10n.data.dart";
import "src/data/hr_countries_l10n.data.dart";
import "src/data/ht_countries_l10n.data.dart";
import "src/data/hu_countries_l10n.data.dart";
import "src/data/hy_countries_l10n.data.dart";
import "src/data/ia_countries_l10n.data.dart";
import "src/data/id_countries_l10n.data.dart";
import "src/data/ie_countries_l10n.data.dart";
import "src/data/ig_countries_l10n.data.dart";
import "src/data/ii_countries_l10n.data.dart";
import "src/data/ik_countries_l10n.data.dart";
import "src/data/io_countries_l10n.data.dart";
import "src/data/is_countries_l10n.data.dart";
import "src/data/it_countries_l10n.data.dart";
import "src/data/iu_countries_l10n.data.dart";
import "src/data/ja_countries_l10n.data.dart";
import "src/data/jv_countries_l10n.data.dart";
import "src/data/ka_countries_l10n.data.dart";
import "src/data/kg_countries_l10n.data.dart";
import "src/data/ki_countries_l10n.data.dart";
import "src/data/kk_countries_l10n.data.dart";
import "src/data/kk_cyrl_countries_l10n.data.dart";
import "src/data/kl_countries_l10n.data.dart";
import "src/data/km_countries_l10n.data.dart";
import "src/data/kn_countries_l10n.data.dart";
import "src/data/ko_countries_l10n.data.dart";
import "src/data/ks_arab_countries_l10n.data.dart";
import "src/data/ks_countries_l10n.data.dart";
import "src/data/ku_countries_l10n.data.dart";
import "src/data/kv_countries_l10n.data.dart";
import "src/data/kw_countries_l10n.data.dart";
import "src/data/ky_countries_l10n.data.dart";
import "src/data/ky_cyrl_countries_l10n.data.dart";
import "src/data/la_countries_l10n.data.dart";
import "src/data/lb_countries_l10n.data.dart";
import "src/data/lg_countries_l10n.data.dart";
import "src/data/li_countries_l10n.data.dart";
import "src/data/ln_countries_l10n.data.dart";
import "src/data/lo_countries_l10n.data.dart";
import "src/data/lt_countries_l10n.data.dart";
import "src/data/lu_countries_l10n.data.dart";
import "src/data/lv_countries_l10n.data.dart";
import "src/data/mg_countries_l10n.data.dart";
import "src/data/mi_countries_l10n.data.dart";
import "src/data/mk_countries_l10n.data.dart";
import "src/data/ml_countries_l10n.data.dart";
import "src/data/mn_countries_l10n.data.dart";
import "src/data/mn_cyrl_countries_l10n.data.dart";
import "src/data/mr_countries_l10n.data.dart";
import "src/data/ms_countries_l10n.data.dart";
import "src/data/ms_latn_countries_l10n.data.dart";
import "src/data/mt_countries_l10n.data.dart";
import "src/data/my_countries_l10n.data.dart";
import "src/data/na_countries_l10n.data.dart";
import "src/data/nb_countries_l10n.data.dart";
import "src/data/nd_countries_l10n.data.dart";
import "src/data/ne_countries_l10n.data.dart";
import "src/data/nl_countries_l10n.data.dart";
import "src/data/nn_countries_l10n.data.dart";
import "src/data/no_countries_l10n.data.dart";
import "src/data/nv_countries_l10n.data.dart";
import "src/data/ny_countries_l10n.data.dart";
import "src/data/oc_countries_l10n.data.dart";
import "src/data/om_countries_l10n.data.dart";
import "src/data/or_countries_l10n.data.dart";
import "src/data/os_countries_l10n.data.dart";
import "src/data/pa_arab_countries_l10n.data.dart";
import "src/data/pa_countries_l10n.data.dart";
import "src/data/pi_countries_l10n.data.dart";
import "src/data/pl_countries_l10n.data.dart";
import "src/data/ps_countries_l10n.data.dart";
import "src/data/ps_pk_countries_l10n.data.dart";
import "src/data/pt_countries_l10n.data.dart";
import "src/data/qu_countries_l10n.data.dart";
import "src/data/rm_countries_l10n.data.dart";
import "src/data/rn_countries_l10n.data.dart";
import "src/data/ro_countries_l10n.data.dart";
import "src/data/ro_md_countries_l10n.data.dart";
import "src/data/ru_countries_l10n.data.dart";
import "src/data/rw_countries_l10n.data.dart";
import "src/data/sa_countries_l10n.data.dart";
import "src/data/sc_countries_l10n.data.dart";
import "src/data/sd_countries_l10n.data.dart";
import "src/data/se_countries_l10n.data.dart";
import "src/data/se_fi_countries_l10n.data.dart";
import "src/data/sg_countries_l10n.data.dart";
import "src/data/si_countries_l10n.data.dart";
import "src/data/sk_countries_l10n.data.dart";
import "src/data/sl_countries_l10n.data.dart";
import "src/data/sm_countries_l10n.data.dart";
import "src/data/sn_countries_l10n.data.dart";
import "src/data/so_countries_l10n.data.dart";
import "src/data/sq_countries_l10n.data.dart";
import "src/data/sr_countries_l10n.data.dart";
import "src/data/ss_countries_l10n.data.dart";
import "src/data/st_countries_l10n.data.dart";
import "src/data/su_countries_l10n.data.dart";
import "src/data/sv_countries_l10n.data.dart";
import "src/data/sw_cd_countries_l10n.data.dart";
import "src/data/sw_countries_l10n.data.dart";
import "src/data/sw_ke_countries_l10n.data.dart";
import "src/data/ta_countries_l10n.data.dart";
import "src/data/te_countries_l10n.data.dart";
import "src/data/tg_countries_l10n.data.dart";
import "src/data/th_countries_l10n.data.dart";
import "src/data/ti_countries_l10n.data.dart";
import "src/data/tk_countries_l10n.data.dart";
import "src/data/tl_countries_l10n.data.dart";
import "src/data/tn_countries_l10n.data.dart";
import "src/data/to_countries_l10n.data.dart";
import "src/data/tr_countries_l10n.data.dart";
import "src/data/ts_countries_l10n.data.dart";
import "src/data/tt_countries_l10n.data.dart";
import "src/data/tw_countries_l10n.data.dart";
import "src/data/ty_countries_l10n.data.dart";
import "src/data/ug_arab_countries_l10n.data.dart";
import "src/data/ug_countries_l10n.data.dart";
import "src/data/uk_countries_l10n.data.dart";
import "src/data/ur_countries_l10n.data.dart";
import "src/data/uz_countries_l10n.data.dart";
import "src/data/uz_cyrl_countries_l10n.data.dart";
import "src/data/ve_countries_l10n.data.dart";
import "src/data/vi_countries_l10n.data.dart";
import "src/data/vo_countries_l10n.data.dart";
import "src/data/wa_countries_l10n.data.dart";
import "src/data/wo_countries_l10n.data.dart";
import "src/data/xh_countries_l10n.data.dart";
import "src/data/yi_countries_l10n.data.dart";
import "src/data/yo_bj_countries_l10n.data.dart";
import "src/data/yo_countries_l10n.data.dart";
import "src/data/za_countries_l10n.data.dart";
import "src/data/zh_countries_l10n.data.dart";
import "src/data/zu_countries_l10n.data.dart";
import "src/iso_locale_mapper.dart";

export "src/data/aa_countries_l10n.data.dart";
export "src/data/ab_countries_l10n.data.dart";
export "src/data/af_countries_l10n.data.dart";
export "src/data/ak_countries_l10n.data.dart";
export "src/data/am_countries_l10n.data.dart";
export "src/data/an_countries_l10n.data.dart";
export "src/data/ar_countries_l10n.data.dart";
export "src/data/as_countries_l10n.data.dart";
export "src/data/av_countries_l10n.data.dart";
export "src/data/ay_countries_l10n.data.dart";
export "src/data/az_countries_l10n.data.dart";
export "src/data/az_cyrl_countries_l10n.data.dart";
export "src/data/ba_countries_l10n.data.dart";
export "src/data/be_countries_l10n.data.dart";
export "src/data/bg_countries_l10n.data.dart";
export "src/data/bh_countries_l10n.data.dart";
export "src/data/bi_countries_l10n.data.dart";
export "src/data/bm_countries_l10n.data.dart";
export "src/data/bm_latn_countries_l10n.data.dart";
export "src/data/bn_countries_l10n.data.dart";
export "src/data/bn_in_countries_l10n.data.dart";
export "src/data/bo_countries_l10n.data.dart";
export "src/data/br_countries_l10n.data.dart";
export "src/data/bs_countries_l10n.data.dart";
export "src/data/bs_cyrl_countries_l10n.data.dart";
export "src/data/ca_countries_l10n.data.dart";
export "src/data/ce_countries_l10n.data.dart";
export "src/data/ch_countries_l10n.data.dart";
export "src/data/co_countries_l10n.data.dart";
export "src/data/cs_countries_l10n.data.dart";
export "src/data/cu_countries_l10n.data.dart";
export "src/data/cv_countries_l10n.data.dart";
export "src/data/cy_countries_l10n.data.dart";
export "src/data/da_countries_l10n.data.dart";
export "src/data/de_countries_l10n.data.dart";
export "src/data/dv_countries_l10n.data.dart";
export "src/data/dz_countries_l10n.data.dart";
export "src/data/ee_countries_l10n.data.dart";
export "src/data/el_countries_l10n.data.dart";
export "src/data/en_countries_l10n.data.dart";
export "src/data/eo_countries_l10n.data.dart";
export "src/data/es_countries_l10n.data.dart";
export "src/data/et_countries_l10n.data.dart";
export "src/data/eu_countries_l10n.data.dart";
export "src/data/fa_countries_l10n.data.dart";
export "src/data/ff_countries_l10n.data.dart";
export "src/data/fi_countries_l10n.data.dart";
export "src/data/fj_countries_l10n.data.dart";
export "src/data/fo_countries_l10n.data.dart";
export "src/data/fr_countries_l10n.data.dart";
export "src/data/fy_countries_l10n.data.dart";
export "src/data/ga_countries_l10n.data.dart";
export "src/data/gd_countries_l10n.data.dart";
export "src/data/gl_countries_l10n.data.dart";
export "src/data/gn_countries_l10n.data.dart";
export "src/data/gu_countries_l10n.data.dart";
export "src/data/gv_countries_l10n.data.dart";
export "src/data/ha_countries_l10n.data.dart";
export "src/data/ha_latn_countries_l10n.data.dart";
export "src/data/he_countries_l10n.data.dart";
export "src/data/hi_countries_l10n.data.dart";
export "src/data/hr_countries_l10n.data.dart";
export "src/data/ht_countries_l10n.data.dart";
export "src/data/hu_countries_l10n.data.dart";
export "src/data/hy_countries_l10n.data.dart";
export "src/data/ia_countries_l10n.data.dart";
export "src/data/id_countries_l10n.data.dart";
export "src/data/ie_countries_l10n.data.dart";
export "src/data/ig_countries_l10n.data.dart";
export "src/data/ii_countries_l10n.data.dart";
export "src/data/ik_countries_l10n.data.dart";
export "src/data/io_countries_l10n.data.dart";
export "src/data/is_countries_l10n.data.dart";
export "src/data/it_countries_l10n.data.dart";
export "src/data/iu_countries_l10n.data.dart";
export "src/data/ja_countries_l10n.data.dart";
export "src/data/jv_countries_l10n.data.dart";
export "src/data/ka_countries_l10n.data.dart";
export "src/data/kg_countries_l10n.data.dart";
export "src/data/ki_countries_l10n.data.dart";
export "src/data/kk_countries_l10n.data.dart";
export "src/data/kk_cyrl_countries_l10n.data.dart";
export "src/data/kl_countries_l10n.data.dart";
export "src/data/km_countries_l10n.data.dart";
export "src/data/kn_countries_l10n.data.dart";
export "src/data/ko_countries_l10n.data.dart";
export "src/data/ks_arab_countries_l10n.data.dart";
export "src/data/ks_countries_l10n.data.dart";
export "src/data/ku_countries_l10n.data.dart";
export "src/data/kv_countries_l10n.data.dart";
export "src/data/kw_countries_l10n.data.dart";
export "src/data/ky_countries_l10n.data.dart";
export "src/data/ky_cyrl_countries_l10n.data.dart";
export "src/data/la_countries_l10n.data.dart";
export "src/data/lb_countries_l10n.data.dart";
export "src/data/lg_countries_l10n.data.dart";
export "src/data/li_countries_l10n.data.dart";
export "src/data/ln_countries_l10n.data.dart";
export "src/data/lo_countries_l10n.data.dart";
export "src/data/lt_countries_l10n.data.dart";
export "src/data/lu_countries_l10n.data.dart";
export "src/data/lv_countries_l10n.data.dart";
export "src/data/mg_countries_l10n.data.dart";
export "src/data/mi_countries_l10n.data.dart";
export "src/data/mk_countries_l10n.data.dart";
export "src/data/ml_countries_l10n.data.dart";
export "src/data/mn_countries_l10n.data.dart";
export "src/data/mn_cyrl_countries_l10n.data.dart";
export "src/data/mr_countries_l10n.data.dart";
export "src/data/ms_countries_l10n.data.dart";
export "src/data/ms_latn_countries_l10n.data.dart";
export "src/data/mt_countries_l10n.data.dart";
export "src/data/my_countries_l10n.data.dart";
export "src/data/na_countries_l10n.data.dart";
export "src/data/nb_countries_l10n.data.dart";
export "src/data/nd_countries_l10n.data.dart";
export "src/data/ne_countries_l10n.data.dart";
export "src/data/nl_countries_l10n.data.dart";
export "src/data/nn_countries_l10n.data.dart";
export "src/data/no_countries_l10n.data.dart";
export "src/data/nv_countries_l10n.data.dart";
export "src/data/ny_countries_l10n.data.dart";
export "src/data/oc_countries_l10n.data.dart";
export "src/data/om_countries_l10n.data.dart";
export "src/data/or_countries_l10n.data.dart";
export "src/data/os_countries_l10n.data.dart";
export "src/data/pa_arab_countries_l10n.data.dart";
export "src/data/pa_countries_l10n.data.dart";
export "src/data/pi_countries_l10n.data.dart";
export "src/data/pl_countries_l10n.data.dart";
export "src/data/ps_countries_l10n.data.dart";
export "src/data/ps_pk_countries_l10n.data.dart";
export "src/data/pt_countries_l10n.data.dart";
export "src/data/qu_countries_l10n.data.dart";
export "src/data/rm_countries_l10n.data.dart";
export "src/data/rn_countries_l10n.data.dart";
export "src/data/ro_countries_l10n.data.dart";
export "src/data/ro_md_countries_l10n.data.dart";
export "src/data/ru_countries_l10n.data.dart";
export "src/data/rw_countries_l10n.data.dart";
export "src/data/sa_countries_l10n.data.dart";
export "src/data/sc_countries_l10n.data.dart";
export "src/data/sd_countries_l10n.data.dart";
export "src/data/se_countries_l10n.data.dart";
export "src/data/se_fi_countries_l10n.data.dart";
export "src/data/sg_countries_l10n.data.dart";
export "src/data/si_countries_l10n.data.dart";
export "src/data/sk_countries_l10n.data.dart";
export "src/data/sl_countries_l10n.data.dart";
export "src/data/sm_countries_l10n.data.dart";
export "src/data/sn_countries_l10n.data.dart";
export "src/data/so_countries_l10n.data.dart";
export "src/data/sq_countries_l10n.data.dart";
export "src/data/sr_countries_l10n.data.dart";
export "src/data/ss_countries_l10n.data.dart";
export "src/data/st_countries_l10n.data.dart";
export "src/data/su_countries_l10n.data.dart";
export "src/data/sv_countries_l10n.data.dart";
export "src/data/sw_cd_countries_l10n.data.dart";
export "src/data/sw_countries_l10n.data.dart";
export "src/data/sw_ke_countries_l10n.data.dart";
export "src/data/ta_countries_l10n.data.dart";
export "src/data/te_countries_l10n.data.dart";
export "src/data/tg_countries_l10n.data.dart";
export "src/data/th_countries_l10n.data.dart";
export "src/data/ti_countries_l10n.data.dart";
export "src/data/tk_countries_l10n.data.dart";
export "src/data/tl_countries_l10n.data.dart";
export "src/data/tn_countries_l10n.data.dart";
export "src/data/to_countries_l10n.data.dart";
export "src/data/tr_countries_l10n.data.dart";
export "src/data/ts_countries_l10n.data.dart";
export "src/data/tt_countries_l10n.data.dart";
export "src/data/tw_countries_l10n.data.dart";
export "src/data/ty_countries_l10n.data.dart";
export "src/data/ug_arab_countries_l10n.data.dart";
export "src/data/ug_countries_l10n.data.dart";
export "src/data/uk_countries_l10n.data.dart";
export "src/data/ur_countries_l10n.data.dart";
export "src/data/uz_countries_l10n.data.dart";
export "src/data/uz_cyrl_countries_l10n.data.dart";
export "src/data/ve_countries_l10n.data.dart";
export "src/data/vi_countries_l10n.data.dart";
export "src/data/vo_countries_l10n.data.dart";
export "src/data/wa_countries_l10n.data.dart";
export "src/data/wo_countries_l10n.data.dart";
export "src/data/xh_countries_l10n.data.dart";
export "src/data/yi_countries_l10n.data.dart";
export "src/data/yo_bj_countries_l10n.data.dart";
export "src/data/yo_countries_l10n.data.dart";
export "src/data/za_countries_l10n.data.dart";
export "src/data/zh_countries_l10n.data.dart";
export "src/data/zu_countries_l10n.data.dart";
export "src/iso_locale_mapper.dart";

/// Provides country names translations for different locales.
///
/// **Important**: This mapper is designed for single-use only. Once [localize]
/// is called, the mapper clears its internal data to free memory and cannot be
/// reused. Attempting to call [localize] again on the same instance will throw
/// an assertion error. Create a new instance if you need to localize again.
// ignore: prefer-match-file-name, it's main library file.
class CountriesLocaleMapper extends IsoLocaleMapper<IsoLocaleMapper<String>> {
  /// Provides names translations for 193 locales, with the option to
  /// add more translations via the [other] parameter.
  CountriesLocaleMapper({Map<String, IsoLocaleMapper<String>>? other})
    // ignore: avoid-non-empty-constructor-bodies,on purpose.
    : super(availableLocales: {..._factories.keys, ...?other?.keys}) {
    if (other != null) map.addAll(other);
  }

  /// The symbol used to identify the alternative/full name of the ISO object.
  static const symbol = "+";

  bool _isConsumed = false;

  /// Lazy factories — static final means this map is only created once,
  /// and the tear-offs (.new) don't invoke constructors until called.
  /// AUTO-GENERATED by env_flags_generator.dart - DO NOT EDIT MANUALLY
  /// Detects if user provided ANY l10n-* flag (unified across packages).
  /// If yes, we switch to "opt-in" mode. If no, include all.
  // Generated code - tree-shaking optimization for locale filtering.
  // ignore: avoid-explicit-type-declaration
  static const bool _hasAnyLocaleFilter =
      bool.hasEnvironment("l10n-aa") ||
      bool.hasEnvironment("l10n-ab") ||
      bool.hasEnvironment("l10n-af") ||
      bool.hasEnvironment("l10n-ak") ||
      bool.hasEnvironment("l10n-am") ||
      bool.hasEnvironment("l10n-an") ||
      bool.hasEnvironment("l10n-ar") ||
      bool.hasEnvironment("l10n-as") ||
      bool.hasEnvironment("l10n-av") ||
      bool.hasEnvironment("l10n-ay") ||
      bool.hasEnvironment("l10n-az") ||
      bool.hasEnvironment("l10n-az_cyrl") ||
      bool.hasEnvironment("l10n-ba") ||
      bool.hasEnvironment("l10n-be") ||
      bool.hasEnvironment("l10n-bg") ||
      bool.hasEnvironment("l10n-bh") ||
      bool.hasEnvironment("l10n-bi") ||
      bool.hasEnvironment("l10n-bm") ||
      bool.hasEnvironment("l10n-bm_latn") ||
      bool.hasEnvironment("l10n-bn") ||
      bool.hasEnvironment("l10n-bn_in") ||
      bool.hasEnvironment("l10n-bo") ||
      bool.hasEnvironment("l10n-br") ||
      bool.hasEnvironment("l10n-bs") ||
      bool.hasEnvironment("l10n-bs_cyrl") ||
      bool.hasEnvironment("l10n-ca") ||
      bool.hasEnvironment("l10n-ce") ||
      bool.hasEnvironment("l10n-ch") ||
      bool.hasEnvironment("l10n-co") ||
      bool.hasEnvironment("l10n-cs") ||
      bool.hasEnvironment("l10n-cu") ||
      bool.hasEnvironment("l10n-cv") ||
      bool.hasEnvironment("l10n-cy") ||
      bool.hasEnvironment("l10n-da") ||
      bool.hasEnvironment("l10n-de") ||
      bool.hasEnvironment("l10n-dv") ||
      bool.hasEnvironment("l10n-dz") ||
      bool.hasEnvironment("l10n-ee") ||
      bool.hasEnvironment("l10n-el") ||
      bool.hasEnvironment("l10n-en") ||
      bool.hasEnvironment("l10n-eo") ||
      bool.hasEnvironment("l10n-es") ||
      bool.hasEnvironment("l10n-et") ||
      bool.hasEnvironment("l10n-eu") ||
      bool.hasEnvironment("l10n-fa") ||
      bool.hasEnvironment("l10n-ff") ||
      bool.hasEnvironment("l10n-fi") ||
      bool.hasEnvironment("l10n-fj") ||
      bool.hasEnvironment("l10n-fo") ||
      bool.hasEnvironment("l10n-fr") ||
      bool.hasEnvironment("l10n-fy") ||
      bool.hasEnvironment("l10n-ga") ||
      bool.hasEnvironment("l10n-gd") ||
      bool.hasEnvironment("l10n-gl") ||
      bool.hasEnvironment("l10n-gn") ||
      bool.hasEnvironment("l10n-gu") ||
      bool.hasEnvironment("l10n-gv") ||
      bool.hasEnvironment("l10n-ha") ||
      bool.hasEnvironment("l10n-ha_latn") ||
      bool.hasEnvironment("l10n-he") ||
      bool.hasEnvironment("l10n-hi") ||
      bool.hasEnvironment("l10n-hr") ||
      bool.hasEnvironment("l10n-ht") ||
      bool.hasEnvironment("l10n-hu") ||
      bool.hasEnvironment("l10n-hy") ||
      bool.hasEnvironment("l10n-ia") ||
      bool.hasEnvironment("l10n-id") ||
      bool.hasEnvironment("l10n-ie") ||
      bool.hasEnvironment("l10n-ig") ||
      bool.hasEnvironment("l10n-ii") ||
      bool.hasEnvironment("l10n-ik") ||
      bool.hasEnvironment("l10n-io") ||
      bool.hasEnvironment("l10n-is") ||
      bool.hasEnvironment("l10n-it") ||
      bool.hasEnvironment("l10n-iu") ||
      bool.hasEnvironment("l10n-ja") ||
      bool.hasEnvironment("l10n-jv") ||
      bool.hasEnvironment("l10n-ka") ||
      bool.hasEnvironment("l10n-kg") ||
      bool.hasEnvironment("l10n-ki") ||
      bool.hasEnvironment("l10n-kk") ||
      bool.hasEnvironment("l10n-kk_cyrl") ||
      bool.hasEnvironment("l10n-kl") ||
      bool.hasEnvironment("l10n-km") ||
      bool.hasEnvironment("l10n-kn") ||
      bool.hasEnvironment("l10n-ko") ||
      bool.hasEnvironment("l10n-ks") ||
      bool.hasEnvironment("l10n-ks_arab") ||
      bool.hasEnvironment("l10n-ku") ||
      bool.hasEnvironment("l10n-kv") ||
      bool.hasEnvironment("l10n-kw") ||
      bool.hasEnvironment("l10n-ky") ||
      bool.hasEnvironment("l10n-ky_cyrl") ||
      bool.hasEnvironment("l10n-la") ||
      bool.hasEnvironment("l10n-lb") ||
      bool.hasEnvironment("l10n-lg") ||
      bool.hasEnvironment("l10n-li") ||
      bool.hasEnvironment("l10n-ln") ||
      bool.hasEnvironment("l10n-lo") ||
      bool.hasEnvironment("l10n-lt") ||
      bool.hasEnvironment("l10n-lu") ||
      bool.hasEnvironment("l10n-lv") ||
      bool.hasEnvironment("l10n-mg") ||
      bool.hasEnvironment("l10n-mi") ||
      bool.hasEnvironment("l10n-mk") ||
      bool.hasEnvironment("l10n-ml") ||
      bool.hasEnvironment("l10n-mn") ||
      bool.hasEnvironment("l10n-mn_cyrl") ||
      bool.hasEnvironment("l10n-mr") ||
      bool.hasEnvironment("l10n-ms") ||
      bool.hasEnvironment("l10n-ms_latn") ||
      bool.hasEnvironment("l10n-mt") ||
      bool.hasEnvironment("l10n-my") ||
      bool.hasEnvironment("l10n-na") ||
      bool.hasEnvironment("l10n-nb") ||
      bool.hasEnvironment("l10n-nd") ||
      bool.hasEnvironment("l10n-ne") ||
      bool.hasEnvironment("l10n-nl") ||
      bool.hasEnvironment("l10n-nn") ||
      bool.hasEnvironment("l10n-no") ||
      bool.hasEnvironment("l10n-nv") ||
      bool.hasEnvironment("l10n-ny") ||
      bool.hasEnvironment("l10n-oc") ||
      bool.hasEnvironment("l10n-om") ||
      bool.hasEnvironment("l10n-or") ||
      bool.hasEnvironment("l10n-os") ||
      bool.hasEnvironment("l10n-pa") ||
      bool.hasEnvironment("l10n-pa_arab") ||
      bool.hasEnvironment("l10n-pi") ||
      bool.hasEnvironment("l10n-pl") ||
      bool.hasEnvironment("l10n-ps") ||
      bool.hasEnvironment("l10n-ps_pk") ||
      bool.hasEnvironment("l10n-pt") ||
      bool.hasEnvironment("l10n-qu") ||
      bool.hasEnvironment("l10n-rm") ||
      bool.hasEnvironment("l10n-rn") ||
      bool.hasEnvironment("l10n-ro") ||
      bool.hasEnvironment("l10n-ro_md") ||
      bool.hasEnvironment("l10n-ru") ||
      bool.hasEnvironment("l10n-rw") ||
      bool.hasEnvironment("l10n-sa") ||
      bool.hasEnvironment("l10n-sc") ||
      bool.hasEnvironment("l10n-sd") ||
      bool.hasEnvironment("l10n-se") ||
      bool.hasEnvironment("l10n-se_fi") ||
      bool.hasEnvironment("l10n-sg") ||
      bool.hasEnvironment("l10n-si") ||
      bool.hasEnvironment("l10n-sk") ||
      bool.hasEnvironment("l10n-sl") ||
      bool.hasEnvironment("l10n-sm") ||
      bool.hasEnvironment("l10n-sn") ||
      bool.hasEnvironment("l10n-so") ||
      bool.hasEnvironment("l10n-sq") ||
      bool.hasEnvironment("l10n-sr") ||
      bool.hasEnvironment("l10n-ss") ||
      bool.hasEnvironment("l10n-st") ||
      bool.hasEnvironment("l10n-su") ||
      bool.hasEnvironment("l10n-sv") ||
      bool.hasEnvironment("l10n-sw") ||
      bool.hasEnvironment("l10n-sw_cd") ||
      bool.hasEnvironment("l10n-sw_ke") ||
      bool.hasEnvironment("l10n-ta") ||
      bool.hasEnvironment("l10n-te") ||
      bool.hasEnvironment("l10n-tg") ||
      bool.hasEnvironment("l10n-th") ||
      bool.hasEnvironment("l10n-ti") ||
      bool.hasEnvironment("l10n-tk") ||
      bool.hasEnvironment("l10n-tl") ||
      bool.hasEnvironment("l10n-tn") ||
      bool.hasEnvironment("l10n-to") ||
      bool.hasEnvironment("l10n-tr") ||
      bool.hasEnvironment("l10n-ts") ||
      bool.hasEnvironment("l10n-tt") ||
      bool.hasEnvironment("l10n-tw") ||
      bool.hasEnvironment("l10n-ty") ||
      bool.hasEnvironment("l10n-ug") ||
      bool.hasEnvironment("l10n-ug_arab") ||
      bool.hasEnvironment("l10n-uk") ||
      bool.hasEnvironment("l10n-ur") ||
      bool.hasEnvironment("l10n-uz") ||
      bool.hasEnvironment("l10n-uz_cyrl") ||
      bool.hasEnvironment("l10n-ve") ||
      bool.hasEnvironment("l10n-vi") ||
      bool.hasEnvironment("l10n-vo") ||
      bool.hasEnvironment("l10n-wa") ||
      bool.hasEnvironment("l10n-wo") ||
      bool.hasEnvironment("l10n-xh") ||
      bool.hasEnvironment("l10n-yi") ||
      bool.hasEnvironment("l10n-yo") ||
      bool.hasEnvironment("l10n-yo_bj") ||
      bool.hasEnvironment("l10n-za") ||
      bool.hasEnvironment("l10n-zh") ||
      bool.hasEnvironment("l10n-zu");

  static final _factories = <String, IsoLocaleMapper<String> Function()>{
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-aa"))
      "aa": AaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ab"))
      "ab": AbCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-af"))
      "af": AfCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ak"))
      "ak": AkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-am"))
      "am": AmCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-an"))
      "an": AnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ar"))
      "ar": ArCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-as"))
      "as": AsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-av"))
      "av": AvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ay"))
      "ay": AyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-az"))
      "az": AzCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-az_cyrl"))
      "az_Cyrl": AzCyrlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ba"))
      "ba": BaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-be"))
      "be": BeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bg"))
      "bg": BgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bh"))
      "bh": BhCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bi"))
      "bi": BiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bm"))
      "bm": BmCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bm_latn"))
      "bm_Latn": BmLatnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bn"))
      "bn": BnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bn_in"))
      "bn_IN": BnInCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bo"))
      "bo": BoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-br"))
      "br": BrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bs"))
      "bs": BsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bs_cyrl"))
      "bs_Cyrl": BsCyrlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ca"))
      "ca": CaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ce"))
      "ce": CeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ch"))
      "ch": ChCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-co"))
      "co": CoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cs"))
      "cs": CsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cu"))
      "cu": CuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cv"))
      "cv": CvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cy"))
      "cy": CyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-da"))
      "da": DaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-de"))
      "de": DeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-dv"))
      "dv": DvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-dz"))
      "dz": DzCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ee"))
      "ee": EeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-el"))
      "el": ElCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-en"))
      "en": EnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-eo"))
      "eo": EoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-es"))
      "es": EsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-et"))
      "et": EtCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-eu"))
      "eu": EuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fa"))
      "fa": FaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ff"))
      "ff": FfCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fi"))
      "fi": FiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fj"))
      "fj": FjCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fo"))
      "fo": FoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fr"))
      "fr": FrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fy"))
      "fy": FyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ga"))
      "ga": GaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gd"))
      "gd": GdCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gl"))
      "gl": GlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gn"))
      "gn": GnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gu"))
      "gu": GuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gv"))
      "gv": GvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ha"))
      "ha": HaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ha_latn"))
      "ha_Latn": HaLatnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-he"))
      "he": HeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hi"))
      "hi": HiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hr"))
      "hr": HrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ht"))
      "ht": HtCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hu"))
      "hu": HuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hy"))
      "hy": HyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ia"))
      "ia": IaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-id"))
      "id": IdCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ie"))
      "ie": IeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ig"))
      "ig": IgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ii"))
      "ii": IiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ik"))
      "ik": IkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-io"))
      "io": IoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-is"))
      "is": IsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-it"))
      "it": ItCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-iu"))
      "iu": IuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ja"))
      "ja": JaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-jv"))
      "jv": JvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ka"))
      "ka": KaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kg"))
      "kg": KgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ki"))
      "ki": KiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kk"))
      "kk": KkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kk_cyrl"))
      "kk_Cyrl": KkCyrlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kl"))
      "kl": KlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-km"))
      "km": KmCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kn"))
      "kn": KnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ko"))
      "ko": KoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ks"))
      "ks": KsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ks_arab"))
      "ks_Arab": KsArabCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ku"))
      "ku": KuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kv"))
      "kv": KvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kw"))
      "kw": KwCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ky"))
      "ky": KyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ky_cyrl"))
      "ky_Cyrl": KyCyrlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-la"))
      "la": LaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lb"))
      "lb": LbCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lg"))
      "lg": LgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-li"))
      "li": LiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ln"))
      "ln": LnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lo"))
      "lo": LoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lt"))
      "lt": LtCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lu"))
      "lu": LuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lv"))
      "lv": LvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mg"))
      "mg": MgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mi"))
      "mi": MiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mk"))
      "mk": MkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ml"))
      "ml": MlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mn"))
      "mn": MnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mn_cyrl"))
      "mn_Cyrl": MnCyrlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mr"))
      "mr": MrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ms"))
      "ms": MsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ms_latn"))
      "ms_Latn": MsLatnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mt"))
      "mt": MtCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-my"))
      "my": MyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-na"))
      "na": NaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nb"))
      "nb": NbCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nd"))
      "nd": NdCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ne"))
      "ne": NeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nl"))
      "nl": NlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nn"))
      "nn": NnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-no"))
      "no": NoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nv"))
      "nv": NvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ny"))
      "ny": NyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-oc"))
      "oc": OcCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-om"))
      "om": OmCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-or"))
      "or": OrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-os"))
      "os": OsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pa"))
      "pa": PaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pa_arab"))
      "pa_Arab": PaArabCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pi"))
      "pi": PiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pl"))
      "pl": PlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ps"))
      "ps": PsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ps_pk"))
      "ps_PK": PsPkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pt"))
      "pt": PtCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-qu"))
      "qu": QuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rm"))
      "rm": RmCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rn"))
      "rn": RnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ro"))
      "ro": RoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ro_md"))
      "ro_MD": RoMdCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ru"))
      "ru": RuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rw"))
      "rw": RwCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sa"))
      "sa": SaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sc"))
      "sc": ScCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sd"))
      "sd": SdCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-se"))
      "se": SeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-se_fi"))
      "se_FI": SeFiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sg"))
      "sg": SgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-si"))
      "si": SiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sk"))
      "sk": SkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sl"))
      "sl": SlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sm"))
      "sm": SmCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sn"))
      "sn": SnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-so"))
      "so": SoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sq"))
      "sq": SqCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sr"))
      "sr": SrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ss"))
      "ss": SsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-st"))
      "st": StCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-su"))
      "su": SuCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sv"))
      "sv": SvCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw"))
      "sw": SwCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw_cd"))
      "sw_CD": SwCdCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw_ke"))
      "sw_KE": SwKeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ta"))
      "ta": TaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-te"))
      "te": TeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tg"))
      "tg": TgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-th"))
      "th": ThCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ti"))
      "ti": TiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tk"))
      "tk": TkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tl"))
      "tl": TlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tn"))
      "tn": TnCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-to"))
      "to": ToCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tr"))
      "tr": TrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ts"))
      "ts": TsCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tt"))
      "tt": TtCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tw"))
      "tw": TwCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ty"))
      "ty": TyCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ug"))
      "ug": UgCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ug_arab"))
      "ug_Arab": UgArabCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uk"))
      "uk": UkCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ur"))
      "ur": UrCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz"))
      "uz": UzCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz_cyrl"))
      "uz_Cyrl": UzCyrlCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ve"))
      "ve": VeCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-vi"))
      "vi": ViCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-vo"))
      "vo": VoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-wa"))
      "wa": WaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-wo"))
      "wo": WoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-xh"))
      "xh": XhCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yi"))
      "yi": YiCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yo"))
      "yo": YoCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yo_bj"))
      "yo_BJ": YoBjCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-za"))
      "za": ZaCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zh"))
      "zh": ZhCountriesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zu"))
      "zu": ZuCountriesL10N.new,
  };

  static final _localeSplitRegExp = RegExp("[-_]");
  static final _langSubtagRegExp = RegExp(r"^[a-z]{2,3}$|^[a-z]{5,8}$");

  /// Localizes a set of ISO codes into names (to specified locale if needed).
  ///
  /// Parameters:
  /// - [isoCodes]: Set of ISO codes to be localized.
  /// - [altSymbol]: Optional symbol for alternative (full) name translations.
  /// - [fallbackLocale]: Optional secondary locale for translations.
  /// - [mainLocale]: Optional primary locale for translations.
  /// - [useLanguageFallback]: Whether to try language-only codes if specified
  /// locale not found (i.e. 'en_US' -> 'en').
  /// - [formatter]: Optional callback to modify each translation.
  ///
  /// Returns a [Map] containing the localized names for the provided ISO
  /// codes.
  ///
  /// Example:
  /// ```dart
  /// final map = mapper.localize({'FRA', 'RUS'}, mainLocale: 'en');
  /// ```
  LocaleMap localize(
    Set<String> isoCodes, {
    String? altSymbol,
    Object? fallbackLocale,
    Object? mainLocale,
    bool useLanguageFallback = true,
    String Function(LocaleKey isoLocale, String l10n)? formatter,
  }) {
    assert(
      !_isConsumed,
      "A CountriesLocaleMapper was used after being consumed. "
      "Once localize() is called, the mapper clears its internal data to free "
      "memory and must not be reused. If you need to call localize() again, "
      "create a new CountriesLocaleMapper instance.",
    );

    if (isoCodes.isEmpty) return const {};
    final locale = mainLocale?.toString();
    final altLocale = fallbackLocale?.toString();
    final localeKeys = locale == null
        ? null
        : {
            ..._localesSet(locale, useLanguageFallback: useLanguageFallback),
            if (altLocale != null)
              ..._localesSet(
                altLocale,
                useLanguageFallback: useLanguageFallback,
              ),
          };

    if (localeKeys != null) {
      for (final key in localeKeys) {
        if (map.containsKey(key)) continue;
        final maybeFactory = _factories[key];
        if (maybeFactory != null) map[key] = maybeFactory();
      }
    }
    final localeData = extract(localeKeys);

    return switch (localeData.length) {
      0 => const {},
      1 => _fromSingle(
        isoCodes,
        localeData.entries.first,
        altSymbol ?? symbol,
        formatter,
      ),
      _ => _fromMultiple(isoCodes, localeData, altSymbol ?? symbol, formatter),
    };
  }

  static Set<String> _localesSet(
    String locale, {
    required bool useLanguageFallback,
  }) => {locale, if (useLanguageFallback) _extractLanguageCode(locale)};

  static String _extractLanguageCode(String locale) {
    if (locale.isEmpty) return locale;
    final lang = locale.toLowerCase().split(_localeSplitRegExp).firstOrNull;

    return lang != null && _langSubtagRegExp.hasMatch(lang) ? lang : locale;
  }

  static MapEntry<LocaleKey, String> _mapSingle(
    String Function(LocaleKey isoLocale, String l10n)? formatter,
    String locale, {
    required String code,
    required String l10n,
  }) {
    final isoLocale = (isoCode: code, locale: locale);

    return MapEntry(isoLocale, formatter?.call(isoLocale, l10n) ?? l10n);
  }

  LocaleMap _fromSingle(
    Set<String> codes,
    MapEntry<String, IsoLocaleMapper<String>> localeEntry,
    String altSymbol,
    String Function(LocaleKey isoLocale, String l10n)? formatter,
  ) {
    final locale = localeEntry.key;
    final results = localeEntry.value
        .extract(codes, altSymbol: altSymbol)
        .map(
          (code, l10n) => _mapSingle(formatter, locale, code: code, l10n: l10n),
        );
    localeEntry.value.map.clear();
    map.clear();
    _isConsumed = true;

    return LocaleMap.unmodifiable(results);
  }

  LocaleMap _fromMultiple(
    Set<String> codes,
    Map<String, IsoLocaleMapper<String>> localesData,
    String altSymbol,
    String Function(LocaleKey isoLocale, String l10n)? formatter,
  ) {
    final results = <LocaleKey, String>{};

    for (final localeEntry in localesData.entries) {
      final translations = localeEntry.value.extract(
        codes,
        altSymbol: altSymbol,
      );

      for (final code in codes) {
        final key = (isoCode: code, locale: localeEntry.key);
        if (results[key] == null) {
          final l10n = translations[code];
          if (l10n != null) {
            final mainLocale = (isoCode: code, locale: localeEntry.key);
            results[key] = formatter?.call(mainLocale, l10n) ?? l10n;
          }
        }

        final secondary = altKey(code, altSymbol);
        if (secondary == null) continue;

        final alternative = (isoCode: secondary, locale: localeEntry.key);
        if (results[alternative] != null) continue;

        final altL10n = translations[secondary];
        if (altL10n != null) {
          final altLocale = (isoCode: code, locale: localeEntry.key);
          results[alternative] = formatter?.call(altLocale, altL10n) ?? altL10n;
        }
      }

      localeEntry.value.map.clear();
    }
    map.clear();
    _isConsumed = true;

    return LocaleMap.unmodifiable(results);
  }
}
