// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// https://github.com/umpirsky/country-list project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

// ignore_for_file: avoid-collection-mutating-methods

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
  static final _factories = <String, IsoLocaleMapper<String> Function()>{
    "aa": AaCountriesL10N.new,
    "ab": AbCountriesL10N.new,
    "af": AfCountriesL10N.new,
    "ak": AkCountriesL10N.new,
    "am": AmCountriesL10N.new,
    "an": AnCountriesL10N.new,
    "ar": ArCountriesL10N.new,
    "as": AsCountriesL10N.new,
    "av": AvCountriesL10N.new,
    "ay": AyCountriesL10N.new,
    "az": AzCountriesL10N.new,
    "az_Cyrl": AzCyrlCountriesL10N.new,
    "ba": BaCountriesL10N.new,
    "be": BeCountriesL10N.new,
    "bg": BgCountriesL10N.new,
    "bh": BhCountriesL10N.new,
    "bi": BiCountriesL10N.new,
    "bm": BmCountriesL10N.new,
    "bm_Latn": BmLatnCountriesL10N.new,
    "bn": BnCountriesL10N.new,
    "bn_IN": BnInCountriesL10N.new,
    "bo": BoCountriesL10N.new,
    "br": BrCountriesL10N.new,
    "bs": BsCountriesL10N.new,
    "bs_Cyrl": BsCyrlCountriesL10N.new,
    "ca": CaCountriesL10N.new,
    "ce": CeCountriesL10N.new,
    "ch": ChCountriesL10N.new,
    "co": CoCountriesL10N.new,
    "cs": CsCountriesL10N.new,
    "cu": CuCountriesL10N.new,
    "cv": CvCountriesL10N.new,
    "cy": CyCountriesL10N.new,
    "da": DaCountriesL10N.new,
    "de": DeCountriesL10N.new,
    "dv": DvCountriesL10N.new,
    "dz": DzCountriesL10N.new,
    "ee": EeCountriesL10N.new,
    "el": ElCountriesL10N.new,
    "en": EnCountriesL10N.new,
    "eo": EoCountriesL10N.new,
    "es": EsCountriesL10N.new,
    "et": EtCountriesL10N.new,
    "eu": EuCountriesL10N.new,
    "fa": FaCountriesL10N.new,
    "ff": FfCountriesL10N.new,
    "fi": FiCountriesL10N.new,
    "fj": FjCountriesL10N.new,
    "fo": FoCountriesL10N.new,
    "fr": FrCountriesL10N.new,
    "fy": FyCountriesL10N.new,
    "ga": GaCountriesL10N.new,
    "gd": GdCountriesL10N.new,
    "gl": GlCountriesL10N.new,
    "gn": GnCountriesL10N.new,
    "gu": GuCountriesL10N.new,
    "gv": GvCountriesL10N.new,
    "ha": HaCountriesL10N.new,
    "ha_Latn": HaLatnCountriesL10N.new,
    "he": HeCountriesL10N.new,
    "hi": HiCountriesL10N.new,
    "hr": HrCountriesL10N.new,
    "ht": HtCountriesL10N.new,
    "hu": HuCountriesL10N.new,
    "hy": HyCountriesL10N.new,
    "ia": IaCountriesL10N.new,
    "id": IdCountriesL10N.new,
    "ie": IeCountriesL10N.new,
    "ig": IgCountriesL10N.new,
    "ii": IiCountriesL10N.new,
    "ik": IkCountriesL10N.new,
    "io": IoCountriesL10N.new,
    "is": IsCountriesL10N.new,
    "it": ItCountriesL10N.new,
    "iu": IuCountriesL10N.new,
    "ja": JaCountriesL10N.new,
    "jv": JvCountriesL10N.new,
    "ka": KaCountriesL10N.new,
    "kg": KgCountriesL10N.new,
    "ki": KiCountriesL10N.new,
    "kk": KkCountriesL10N.new,
    "kk_Cyrl": KkCyrlCountriesL10N.new,
    "kl": KlCountriesL10N.new,
    "km": KmCountriesL10N.new,
    "kn": KnCountriesL10N.new,
    "ko": KoCountriesL10N.new,
    "ks": KsCountriesL10N.new,
    "ks_Arab": KsArabCountriesL10N.new,
    "ku": KuCountriesL10N.new,
    "kv": KvCountriesL10N.new,
    "kw": KwCountriesL10N.new,
    "ky": KyCountriesL10N.new,
    "ky_Cyrl": KyCyrlCountriesL10N.new,
    "la": LaCountriesL10N.new,
    "lb": LbCountriesL10N.new,
    "lg": LgCountriesL10N.new,
    "li": LiCountriesL10N.new,
    "ln": LnCountriesL10N.new,
    "lo": LoCountriesL10N.new,
    "lt": LtCountriesL10N.new,
    "lu": LuCountriesL10N.new,
    "lv": LvCountriesL10N.new,
    "mg": MgCountriesL10N.new,
    "mi": MiCountriesL10N.new,
    "mk": MkCountriesL10N.new,
    "ml": MlCountriesL10N.new,
    "mn": MnCountriesL10N.new,
    "mn_Cyrl": MnCyrlCountriesL10N.new,
    "mr": MrCountriesL10N.new,
    "ms": MsCountriesL10N.new,
    "ms_Latn": MsLatnCountriesL10N.new,
    "mt": MtCountriesL10N.new,
    "my": MyCountriesL10N.new,
    "na": NaCountriesL10N.new,
    "nb": NbCountriesL10N.new,
    "nd": NdCountriesL10N.new,
    "ne": NeCountriesL10N.new,
    "nl": NlCountriesL10N.new,
    "nn": NnCountriesL10N.new,
    "no": NoCountriesL10N.new,
    "nv": NvCountriesL10N.new,
    "ny": NyCountriesL10N.new,
    "oc": OcCountriesL10N.new,
    "om": OmCountriesL10N.new,
    "or": OrCountriesL10N.new,
    "os": OsCountriesL10N.new,
    "pa": PaCountriesL10N.new,
    "pa_Arab": PaArabCountriesL10N.new,
    "pi": PiCountriesL10N.new,
    "pl": PlCountriesL10N.new,
    "ps": PsCountriesL10N.new,
    "ps_PK": PsPkCountriesL10N.new,
    "pt": PtCountriesL10N.new,
    "qu": QuCountriesL10N.new,
    "rm": RmCountriesL10N.new,
    "rn": RnCountriesL10N.new,
    "ro": RoCountriesL10N.new,
    "ro_MD": RoMdCountriesL10N.new,
    "ru": RuCountriesL10N.new,
    "rw": RwCountriesL10N.new,
    "sa": SaCountriesL10N.new,
    "sc": ScCountriesL10N.new,
    "sd": SdCountriesL10N.new,
    "se": SeCountriesL10N.new,
    "se_FI": SeFiCountriesL10N.new,
    "sg": SgCountriesL10N.new,
    "si": SiCountriesL10N.new,
    "sk": SkCountriesL10N.new,
    "sl": SlCountriesL10N.new,
    "sm": SmCountriesL10N.new,
    "sn": SnCountriesL10N.new,
    "so": SoCountriesL10N.new,
    "sq": SqCountriesL10N.new,
    "sr": SrCountriesL10N.new,
    "ss": SsCountriesL10N.new,
    "st": StCountriesL10N.new,
    "su": SuCountriesL10N.new,
    "sv": SvCountriesL10N.new,
    "sw": SwCountriesL10N.new,
    "sw_CD": SwCdCountriesL10N.new,
    "sw_KE": SwKeCountriesL10N.new,
    "ta": TaCountriesL10N.new,
    "te": TeCountriesL10N.new,
    "tg": TgCountriesL10N.new,
    "th": ThCountriesL10N.new,
    "ti": TiCountriesL10N.new,
    "tk": TkCountriesL10N.new,
    "tl": TlCountriesL10N.new,
    "tn": TnCountriesL10N.new,
    "to": ToCountriesL10N.new,
    "tr": TrCountriesL10N.new,
    "ts": TsCountriesL10N.new,
    "tt": TtCountriesL10N.new,
    "tw": TwCountriesL10N.new,
    "ty": TyCountriesL10N.new,
    "ug": UgCountriesL10N.new,
    "ug_Arab": UgArabCountriesL10N.new,
    "uk": UkCountriesL10N.new,
    "ur": UrCountriesL10N.new,
    "uz": UzCountriesL10N.new,
    "uz_Cyrl": UzCyrlCountriesL10N.new,
    "ve": VeCountriesL10N.new,
    "vi": ViCountriesL10N.new,
    "vo": VoCountriesL10N.new,
    "wa": WaCountriesL10N.new,
    "wo": WoCountriesL10N.new,
    "xh": XhCountriesL10N.new,
    "yi": YiCountriesL10N.new,
    "yo": YoCountriesL10N.new,
    "yo_BJ": YoBjCountriesL10N.new,
    "za": ZaCountriesL10N.new,
    "zh": ZhCountriesL10N.new,
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
