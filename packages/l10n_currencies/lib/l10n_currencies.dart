// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// https://github.com/umpirsky/currency-list project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

// ignore_for_file: do_not_use_environment, avoid-collection-mutating-methods
// ignore_for_file: avoid-complex-conditions, avoid-collapsible-if

/// Provides currency translations for different locales.
library l10n_currencies;

import "src/data/af_currencies_l10n.data.dart";
import "src/data/ak_currencies_l10n.data.dart";
import "src/data/am_currencies_l10n.data.dart";
import "src/data/ar_currencies_l10n.data.dart";
import "src/data/as_currencies_l10n.data.dart";
import "src/data/az_currencies_l10n.data.dart";
import "src/data/be_currencies_l10n.data.dart";
import "src/data/bg_currencies_l10n.data.dart";
import "src/data/bm_currencies_l10n.data.dart";
import "src/data/bn_currencies_l10n.data.dart";
import "src/data/bo_currencies_l10n.data.dart";
import "src/data/br_currencies_l10n.data.dart";
import "src/data/bs_currencies_l10n.data.dart";
import "src/data/bs_cyrl_currencies_l10n.data.dart";
import "src/data/ca_currencies_l10n.data.dart";
import "src/data/ce_currencies_l10n.data.dart";
import "src/data/cs_currencies_l10n.data.dart";
import "src/data/cv_currencies_l10n.data.dart";
import "src/data/cy_currencies_l10n.data.dart";
import "src/data/da_currencies_l10n.data.dart";
import "src/data/de_ch_currencies_l10n.data.dart";
import "src/data/de_currencies_l10n.data.dart";
import "src/data/dz_currencies_l10n.data.dart";
import "src/data/ee_currencies_l10n.data.dart";
import "src/data/el_currencies_l10n.data.dart";
import "src/data/en_au_currencies_l10n.data.dart";
import "src/data/en_currencies_l10n.data.dart";
import "src/data/en_gg_currencies_l10n.data.dart";
import "src/data/es_cl_currencies_l10n.data.dart";
import "src/data/es_currencies_l10n.data.dart";
import "src/data/es_gt_currencies_l10n.data.dart";
import "src/data/es_mx_currencies_l10n.data.dart";
import "src/data/et_currencies_l10n.data.dart";
import "src/data/eu_currencies_l10n.data.dart";
import "src/data/fa_af_currencies_l10n.data.dart";
import "src/data/fa_currencies_l10n.data.dart";
import "src/data/ff_currencies_l10n.data.dart";
import "src/data/fi_currencies_l10n.data.dart";
import "src/data/fo_currencies_l10n.data.dart";
import "src/data/fr_ca_currencies_l10n.data.dart";
import "src/data/fr_currencies_l10n.data.dart";
import "src/data/fy_currencies_l10n.data.dart";
import "src/data/ga_currencies_l10n.data.dart";
import "src/data/gd_currencies_l10n.data.dart";
import "src/data/gl_currencies_l10n.data.dart";
import "src/data/gu_currencies_l10n.data.dart";
import "src/data/ha_currencies_l10n.data.dart";
import "src/data/he_currencies_l10n.data.dart";
import "src/data/hi_currencies_l10n.data.dart";
import "src/data/hr_currencies_l10n.data.dart";
import "src/data/hu_currencies_l10n.data.dart";
import "src/data/hy_currencies_l10n.data.dart";
import "src/data/ia_currencies_l10n.data.dart";
import "src/data/id_currencies_l10n.data.dart";
import "src/data/ig_currencies_l10n.data.dart";
import "src/data/is_currencies_l10n.data.dart";
import "src/data/it_currencies_l10n.data.dart";
import "src/data/ja_currencies_l10n.data.dart";
import "src/data/jv_currencies_l10n.data.dart";
import "src/data/ka_currencies_l10n.data.dart";
import "src/data/ki_currencies_l10n.data.dart";
import "src/data/kk_currencies_l10n.data.dart";
import "src/data/km_currencies_l10n.data.dart";
import "src/data/kn_currencies_l10n.data.dart";
import "src/data/ko_currencies_l10n.data.dart";
import "src/data/ks_currencies_l10n.data.dart";
import "src/data/ku_currencies_l10n.data.dart";
import "src/data/ky_currencies_l10n.data.dart";
import "src/data/lb_currencies_l10n.data.dart";
import "src/data/lg_currencies_l10n.data.dart";
import "src/data/ln_currencies_l10n.data.dart";
import "src/data/lo_currencies_l10n.data.dart";
import "src/data/lt_currencies_l10n.data.dart";
import "src/data/lu_currencies_l10n.data.dart";
import "src/data/lv_currencies_l10n.data.dart";
import "src/data/mg_currencies_l10n.data.dart";
import "src/data/mi_currencies_l10n.data.dart";
import "src/data/mk_currencies_l10n.data.dart";
import "src/data/ml_currencies_l10n.data.dart";
import "src/data/mn_currencies_l10n.data.dart";
import "src/data/mr_currencies_l10n.data.dart";
import "src/data/ms_currencies_l10n.data.dart";
import "src/data/my_currencies_l10n.data.dart";
import "src/data/nb_currencies_l10n.data.dart";
import "src/data/nd_currencies_l10n.data.dart";
import "src/data/ne_currencies_l10n.data.dart";
import "src/data/nl_currencies_l10n.data.dart";
import "src/data/nn_currencies_l10n.data.dart";
import "src/data/no_currencies_l10n.data.dart";
import "src/data/om_currencies_l10n.data.dart";
import "src/data/or_currencies_l10n.data.dart";
import "src/data/os_currencies_l10n.data.dart";
import "src/data/pa_arab_currencies_l10n.data.dart";
import "src/data/pa_currencies_l10n.data.dart";
import "src/data/pl_currencies_l10n.data.dart";
import "src/data/ps_currencies_l10n.data.dart";
import "src/data/pt_currencies_l10n.data.dart";
import "src/data/pt_mo_currencies_l10n.data.dart";
import "src/data/pt_mz_currencies_l10n.data.dart";
import "src/data/pt_pt_currencies_l10n.data.dart";
import "src/data/qu_currencies_l10n.data.dart";
import "src/data/rm_currencies_l10n.data.dart";
import "src/data/rn_currencies_l10n.data.dart";
import "src/data/ro_currencies_l10n.data.dart";
import "src/data/ru_currencies_l10n.data.dart";
import "src/data/sa_currencies_l10n.data.dart";
import "src/data/sc_currencies_l10n.data.dart";
import "src/data/sd_currencies_l10n.data.dart";
import "src/data/se_currencies_l10n.data.dart";
import "src/data/sg_currencies_l10n.data.dart";
import "src/data/si_currencies_l10n.data.dart";
import "src/data/sk_currencies_l10n.data.dart";
import "src/data/sl_currencies_l10n.data.dart";
import "src/data/sn_currencies_l10n.data.dart";
import "src/data/so_currencies_l10n.data.dart";
import "src/data/sq_currencies_l10n.data.dart";
import "src/data/sr_currencies_l10n.data.dart";
import "src/data/sr_latn_currencies_l10n.data.dart";
import "src/data/su_currencies_l10n.data.dart";
import "src/data/sv_currencies_l10n.data.dart";
import "src/data/sw_cd_currencies_l10n.data.dart";
import "src/data/sw_currencies_l10n.data.dart";
import "src/data/ta_currencies_l10n.data.dart";
import "src/data/te_currencies_l10n.data.dart";
import "src/data/tg_currencies_l10n.data.dart";
import "src/data/th_currencies_l10n.data.dart";
import "src/data/ti_currencies_l10n.data.dart";
import "src/data/tk_currencies_l10n.data.dart";
import "src/data/tl_currencies_l10n.data.dart";
import "src/data/to_currencies_l10n.data.dart";
import "src/data/tr_currencies_l10n.data.dart";
import "src/data/ug_currencies_l10n.data.dart";
import "src/data/uk_currencies_l10n.data.dart";
import "src/data/ur_currencies_l10n.data.dart";
import "src/data/ur_in_currencies_l10n.data.dart";
import "src/data/uz_arab_currencies_l10n.data.dart";
import "src/data/uz_currencies_l10n.data.dart";
import "src/data/uz_cyrl_currencies_l10n.data.dart";
import "src/data/vi_currencies_l10n.data.dart";
import "src/data/wo_currencies_l10n.data.dart";
import "src/data/xh_currencies_l10n.data.dart";
import "src/data/yi_currencies_l10n.data.dart";
import "src/data/yo_bj_currencies_l10n.data.dart";
import "src/data/yo_currencies_l10n.data.dart";
import "src/data/zh_currencies_l10n.data.dart";
import "src/data/zh_hans_hk_currencies_l10n.data.dart";
import "src/data/zh_hant_currencies_l10n.data.dart";
import "src/data/zh_hk_currencies_l10n.data.dart";
import "src/data/zu_currencies_l10n.data.dart";
import "src/iso_locale_mapper.dart";

export "src/data/af_currencies_l10n.data.dart";
export "src/data/ak_currencies_l10n.data.dart";
export "src/data/am_currencies_l10n.data.dart";
export "src/data/ar_currencies_l10n.data.dart";
export "src/data/as_currencies_l10n.data.dart";
export "src/data/az_currencies_l10n.data.dart";
export "src/data/be_currencies_l10n.data.dart";
export "src/data/bg_currencies_l10n.data.dart";
export "src/data/bm_currencies_l10n.data.dart";
export "src/data/bn_currencies_l10n.data.dart";
export "src/data/bo_currencies_l10n.data.dart";
export "src/data/br_currencies_l10n.data.dart";
export "src/data/bs_currencies_l10n.data.dart";
export "src/data/bs_cyrl_currencies_l10n.data.dart";
export "src/data/ca_currencies_l10n.data.dart";
export "src/data/ce_currencies_l10n.data.dart";
export "src/data/cs_currencies_l10n.data.dart";
export "src/data/cv_currencies_l10n.data.dart";
export "src/data/cy_currencies_l10n.data.dart";
export "src/data/da_currencies_l10n.data.dart";
export "src/data/de_ch_currencies_l10n.data.dart";
export "src/data/de_currencies_l10n.data.dart";
export "src/data/dz_currencies_l10n.data.dart";
export "src/data/ee_currencies_l10n.data.dart";
export "src/data/el_currencies_l10n.data.dart";
export "src/data/en_au_currencies_l10n.data.dart";
export "src/data/en_currencies_l10n.data.dart";
export "src/data/en_gg_currencies_l10n.data.dart";
export "src/data/es_cl_currencies_l10n.data.dart";
export "src/data/es_currencies_l10n.data.dart";
export "src/data/es_gt_currencies_l10n.data.dart";
export "src/data/es_mx_currencies_l10n.data.dart";
export "src/data/et_currencies_l10n.data.dart";
export "src/data/eu_currencies_l10n.data.dart";
export "src/data/fa_af_currencies_l10n.data.dart";
export "src/data/fa_currencies_l10n.data.dart";
export "src/data/ff_currencies_l10n.data.dart";
export "src/data/fi_currencies_l10n.data.dart";
export "src/data/fo_currencies_l10n.data.dart";
export "src/data/fr_ca_currencies_l10n.data.dart";
export "src/data/fr_currencies_l10n.data.dart";
export "src/data/fy_currencies_l10n.data.dart";
export "src/data/ga_currencies_l10n.data.dart";
export "src/data/gd_currencies_l10n.data.dart";
export "src/data/gl_currencies_l10n.data.dart";
export "src/data/gu_currencies_l10n.data.dart";
export "src/data/ha_currencies_l10n.data.dart";
export "src/data/he_currencies_l10n.data.dart";
export "src/data/hi_currencies_l10n.data.dart";
export "src/data/hr_currencies_l10n.data.dart";
export "src/data/hu_currencies_l10n.data.dart";
export "src/data/hy_currencies_l10n.data.dart";
export "src/data/ia_currencies_l10n.data.dart";
export "src/data/id_currencies_l10n.data.dart";
export "src/data/ig_currencies_l10n.data.dart";
export "src/data/is_currencies_l10n.data.dart";
export "src/data/it_currencies_l10n.data.dart";
export "src/data/ja_currencies_l10n.data.dart";
export "src/data/jv_currencies_l10n.data.dart";
export "src/data/ka_currencies_l10n.data.dart";
export "src/data/ki_currencies_l10n.data.dart";
export "src/data/kk_currencies_l10n.data.dart";
export "src/data/km_currencies_l10n.data.dart";
export "src/data/kn_currencies_l10n.data.dart";
export "src/data/ko_currencies_l10n.data.dart";
export "src/data/ks_currencies_l10n.data.dart";
export "src/data/ku_currencies_l10n.data.dart";
export "src/data/ky_currencies_l10n.data.dart";
export "src/data/lb_currencies_l10n.data.dart";
export "src/data/lg_currencies_l10n.data.dart";
export "src/data/ln_currencies_l10n.data.dart";
export "src/data/lo_currencies_l10n.data.dart";
export "src/data/lt_currencies_l10n.data.dart";
export "src/data/lu_currencies_l10n.data.dart";
export "src/data/lv_currencies_l10n.data.dart";
export "src/data/mg_currencies_l10n.data.dart";
export "src/data/mi_currencies_l10n.data.dart";
export "src/data/mk_currencies_l10n.data.dart";
export "src/data/ml_currencies_l10n.data.dart";
export "src/data/mn_currencies_l10n.data.dart";
export "src/data/mr_currencies_l10n.data.dart";
export "src/data/ms_currencies_l10n.data.dart";
export "src/data/my_currencies_l10n.data.dart";
export "src/data/nb_currencies_l10n.data.dart";
export "src/data/nd_currencies_l10n.data.dart";
export "src/data/ne_currencies_l10n.data.dart";
export "src/data/nl_currencies_l10n.data.dart";
export "src/data/nn_currencies_l10n.data.dart";
export "src/data/no_currencies_l10n.data.dart";
export "src/data/om_currencies_l10n.data.dart";
export "src/data/or_currencies_l10n.data.dart";
export "src/data/os_currencies_l10n.data.dart";
export "src/data/pa_arab_currencies_l10n.data.dart";
export "src/data/pa_currencies_l10n.data.dart";
export "src/data/pl_currencies_l10n.data.dart";
export "src/data/ps_currencies_l10n.data.dart";
export "src/data/pt_currencies_l10n.data.dart";
export "src/data/pt_mo_currencies_l10n.data.dart";
export "src/data/pt_mz_currencies_l10n.data.dart";
export "src/data/pt_pt_currencies_l10n.data.dart";
export "src/data/qu_currencies_l10n.data.dart";
export "src/data/rm_currencies_l10n.data.dart";
export "src/data/rn_currencies_l10n.data.dart";
export "src/data/ro_currencies_l10n.data.dart";
export "src/data/ru_currencies_l10n.data.dart";
export "src/data/sa_currencies_l10n.data.dart";
export "src/data/sc_currencies_l10n.data.dart";
export "src/data/sd_currencies_l10n.data.dart";
export "src/data/se_currencies_l10n.data.dart";
export "src/data/sg_currencies_l10n.data.dart";
export "src/data/si_currencies_l10n.data.dart";
export "src/data/sk_currencies_l10n.data.dart";
export "src/data/sl_currencies_l10n.data.dart";
export "src/data/sn_currencies_l10n.data.dart";
export "src/data/so_currencies_l10n.data.dart";
export "src/data/sq_currencies_l10n.data.dart";
export "src/data/sr_currencies_l10n.data.dart";
export "src/data/sr_latn_currencies_l10n.data.dart";
export "src/data/su_currencies_l10n.data.dart";
export "src/data/sv_currencies_l10n.data.dart";
export "src/data/sw_cd_currencies_l10n.data.dart";
export "src/data/sw_currencies_l10n.data.dart";
export "src/data/ta_currencies_l10n.data.dart";
export "src/data/te_currencies_l10n.data.dart";
export "src/data/tg_currencies_l10n.data.dart";
export "src/data/th_currencies_l10n.data.dart";
export "src/data/ti_currencies_l10n.data.dart";
export "src/data/tk_currencies_l10n.data.dart";
export "src/data/tl_currencies_l10n.data.dart";
export "src/data/to_currencies_l10n.data.dart";
export "src/data/tr_currencies_l10n.data.dart";
export "src/data/ug_currencies_l10n.data.dart";
export "src/data/uk_currencies_l10n.data.dart";
export "src/data/ur_currencies_l10n.data.dart";
export "src/data/ur_in_currencies_l10n.data.dart";
export "src/data/uz_arab_currencies_l10n.data.dart";
export "src/data/uz_currencies_l10n.data.dart";
export "src/data/uz_cyrl_currencies_l10n.data.dart";
export "src/data/vi_currencies_l10n.data.dart";
export "src/data/wo_currencies_l10n.data.dart";
export "src/data/xh_currencies_l10n.data.dart";
export "src/data/yi_currencies_l10n.data.dart";
export "src/data/yo_bj_currencies_l10n.data.dart";
export "src/data/yo_currencies_l10n.data.dart";
export "src/data/zh_currencies_l10n.data.dart";
export "src/data/zh_hans_hk_currencies_l10n.data.dart";
export "src/data/zh_hant_currencies_l10n.data.dart";
export "src/data/zh_hk_currencies_l10n.data.dart";
export "src/data/zu_currencies_l10n.data.dart";
export "src/iso_locale_mapper.dart";

/// Provides currency names translations for different locales.
///
/// **Important**: This mapper is designed for single-use only. Once [localize]
/// is called, the mapper clears its internal data to free memory and cannot be
/// reused. Attempting to call [localize] again on the same instance will throw
/// an assertion error. Create a new instance if you need to localize again.
// ignore: prefer-match-file-name, it's main library file.
class CurrenciesLocaleMapper extends IsoLocaleMapper<IsoLocaleMapper<String>> {
  /// Provides names translations for 149 locales, with the option to
  /// add more translations via the [other] parameter.
  CurrenciesLocaleMapper({Map<String, IsoLocaleMapper<String>>? other})
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
      bool.hasEnvironment("l10n-af") ||
      bool.hasEnvironment("l10n-ak") ||
      bool.hasEnvironment("l10n-am") ||
      bool.hasEnvironment("l10n-ar") ||
      bool.hasEnvironment("l10n-as") ||
      bool.hasEnvironment("l10n-az") ||
      bool.hasEnvironment("l10n-be") ||
      bool.hasEnvironment("l10n-bg") ||
      bool.hasEnvironment("l10n-bm") ||
      bool.hasEnvironment("l10n-bn") ||
      bool.hasEnvironment("l10n-bo") ||
      bool.hasEnvironment("l10n-br") ||
      bool.hasEnvironment("l10n-bs") ||
      bool.hasEnvironment("l10n-bs_cyrl") ||
      bool.hasEnvironment("l10n-ca") ||
      bool.hasEnvironment("l10n-ce") ||
      bool.hasEnvironment("l10n-cs") ||
      bool.hasEnvironment("l10n-cv") ||
      bool.hasEnvironment("l10n-cy") ||
      bool.hasEnvironment("l10n-da") ||
      bool.hasEnvironment("l10n-de") ||
      bool.hasEnvironment("l10n-de_ch") ||
      bool.hasEnvironment("l10n-dz") ||
      bool.hasEnvironment("l10n-ee") ||
      bool.hasEnvironment("l10n-el") ||
      bool.hasEnvironment("l10n-en") ||
      bool.hasEnvironment("l10n-en_au") ||
      bool.hasEnvironment("l10n-en_gg") ||
      bool.hasEnvironment("l10n-es") ||
      bool.hasEnvironment("l10n-es_cl") ||
      bool.hasEnvironment("l10n-es_gt") ||
      bool.hasEnvironment("l10n-es_mx") ||
      bool.hasEnvironment("l10n-et") ||
      bool.hasEnvironment("l10n-eu") ||
      bool.hasEnvironment("l10n-fa") ||
      bool.hasEnvironment("l10n-fa_af") ||
      bool.hasEnvironment("l10n-ff") ||
      bool.hasEnvironment("l10n-fi") ||
      bool.hasEnvironment("l10n-fo") ||
      bool.hasEnvironment("l10n-fr") ||
      bool.hasEnvironment("l10n-fr_ca") ||
      bool.hasEnvironment("l10n-fy") ||
      bool.hasEnvironment("l10n-ga") ||
      bool.hasEnvironment("l10n-gd") ||
      bool.hasEnvironment("l10n-gl") ||
      bool.hasEnvironment("l10n-gu") ||
      bool.hasEnvironment("l10n-ha") ||
      bool.hasEnvironment("l10n-he") ||
      bool.hasEnvironment("l10n-hi") ||
      bool.hasEnvironment("l10n-hr") ||
      bool.hasEnvironment("l10n-hu") ||
      bool.hasEnvironment("l10n-hy") ||
      bool.hasEnvironment("l10n-ia") ||
      bool.hasEnvironment("l10n-id") ||
      bool.hasEnvironment("l10n-ig") ||
      bool.hasEnvironment("l10n-is") ||
      bool.hasEnvironment("l10n-it") ||
      bool.hasEnvironment("l10n-ja") ||
      bool.hasEnvironment("l10n-jv") ||
      bool.hasEnvironment("l10n-ka") ||
      bool.hasEnvironment("l10n-ki") ||
      bool.hasEnvironment("l10n-kk") ||
      bool.hasEnvironment("l10n-km") ||
      bool.hasEnvironment("l10n-kn") ||
      bool.hasEnvironment("l10n-ko") ||
      bool.hasEnvironment("l10n-ks") ||
      bool.hasEnvironment("l10n-ku") ||
      bool.hasEnvironment("l10n-ky") ||
      bool.hasEnvironment("l10n-lb") ||
      bool.hasEnvironment("l10n-lg") ||
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
      bool.hasEnvironment("l10n-mr") ||
      bool.hasEnvironment("l10n-ms") ||
      bool.hasEnvironment("l10n-my") ||
      bool.hasEnvironment("l10n-nb") ||
      bool.hasEnvironment("l10n-nd") ||
      bool.hasEnvironment("l10n-ne") ||
      bool.hasEnvironment("l10n-nl") ||
      bool.hasEnvironment("l10n-nn") ||
      bool.hasEnvironment("l10n-no") ||
      bool.hasEnvironment("l10n-om") ||
      bool.hasEnvironment("l10n-or") ||
      bool.hasEnvironment("l10n-os") ||
      bool.hasEnvironment("l10n-pa") ||
      bool.hasEnvironment("l10n-pa_arab") ||
      bool.hasEnvironment("l10n-pl") ||
      bool.hasEnvironment("l10n-ps") ||
      bool.hasEnvironment("l10n-pt") ||
      bool.hasEnvironment("l10n-pt_mo") ||
      bool.hasEnvironment("l10n-pt_mz") ||
      bool.hasEnvironment("l10n-pt_pt") ||
      bool.hasEnvironment("l10n-qu") ||
      bool.hasEnvironment("l10n-rm") ||
      bool.hasEnvironment("l10n-rn") ||
      bool.hasEnvironment("l10n-ro") ||
      bool.hasEnvironment("l10n-ru") ||
      bool.hasEnvironment("l10n-sa") ||
      bool.hasEnvironment("l10n-sc") ||
      bool.hasEnvironment("l10n-sd") ||
      bool.hasEnvironment("l10n-se") ||
      bool.hasEnvironment("l10n-sg") ||
      bool.hasEnvironment("l10n-si") ||
      bool.hasEnvironment("l10n-sk") ||
      bool.hasEnvironment("l10n-sl") ||
      bool.hasEnvironment("l10n-sn") ||
      bool.hasEnvironment("l10n-so") ||
      bool.hasEnvironment("l10n-sq") ||
      bool.hasEnvironment("l10n-sr") ||
      bool.hasEnvironment("l10n-sr_latn") ||
      bool.hasEnvironment("l10n-su") ||
      bool.hasEnvironment("l10n-sv") ||
      bool.hasEnvironment("l10n-sw") ||
      bool.hasEnvironment("l10n-sw_cd") ||
      bool.hasEnvironment("l10n-ta") ||
      bool.hasEnvironment("l10n-te") ||
      bool.hasEnvironment("l10n-tg") ||
      bool.hasEnvironment("l10n-th") ||
      bool.hasEnvironment("l10n-ti") ||
      bool.hasEnvironment("l10n-tk") ||
      bool.hasEnvironment("l10n-tl") ||
      bool.hasEnvironment("l10n-to") ||
      bool.hasEnvironment("l10n-tr") ||
      bool.hasEnvironment("l10n-ug") ||
      bool.hasEnvironment("l10n-uk") ||
      bool.hasEnvironment("l10n-ur") ||
      bool.hasEnvironment("l10n-ur_in") ||
      bool.hasEnvironment("l10n-uz") ||
      bool.hasEnvironment("l10n-uz_arab") ||
      bool.hasEnvironment("l10n-uz_cyrl") ||
      bool.hasEnvironment("l10n-vi") ||
      bool.hasEnvironment("l10n-wo") ||
      bool.hasEnvironment("l10n-xh") ||
      bool.hasEnvironment("l10n-yi") ||
      bool.hasEnvironment("l10n-yo") ||
      bool.hasEnvironment("l10n-yo_bj") ||
      bool.hasEnvironment("l10n-zh") ||
      bool.hasEnvironment("l10n-zh_hans_hk") ||
      bool.hasEnvironment("l10n-zh_hant") ||
      bool.hasEnvironment("l10n-zh_hk") ||
      bool.hasEnvironment("l10n-zu");

  static final _factories = <String, IsoLocaleMapper<String> Function()>{
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-af"))
      "af": AfCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ak"))
      "ak": AkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-am"))
      "am": AmCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ar"))
      "ar": ArCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-as"))
      "as": AsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-az"))
      "az": AzCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-be"))
      "be": BeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bg"))
      "bg": BgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bm"))
      "bm": BmCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bn"))
      "bn": BnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bo"))
      "bo": BoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-br"))
      "br": BrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bs"))
      "bs": BsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bs_cyrl"))
      "bs_Cyrl": BsCyrlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ca"))
      "ca": CaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ce"))
      "ce": CeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cs"))
      "cs": CsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cv"))
      "cv": CvCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cy"))
      "cy": CyCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-da"))
      "da": DaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-de"))
      "de": DeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-de_ch"))
      "de_CH": DeChCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-dz"))
      "dz": DzCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ee"))
      "ee": EeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-el"))
      "el": ElCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-en"))
      "en": EnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-en_au"))
      "en_AU": EnAuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-en_gg"))
      "en_GG": EnGgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-es"))
      "es": EsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-es_cl"))
      "es_CL": EsClCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-es_gt"))
      "es_GT": EsGtCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-es_mx"))
      "es_MX": EsMxCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-et"))
      "et": EtCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-eu"))
      "eu": EuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fa"))
      "fa": FaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fa_af"))
      "fa_AF": FaAfCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ff"))
      "ff": FfCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fi"))
      "fi": FiCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fo"))
      "fo": FoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fr"))
      "fr": FrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fr_ca"))
      "fr_CA": FrCaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fy"))
      "fy": FyCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ga"))
      "ga": GaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gd"))
      "gd": GdCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gl"))
      "gl": GlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gu"))
      "gu": GuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ha"))
      "ha": HaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-he"))
      "he": HeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hi"))
      "hi": HiCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hr"))
      "hr": HrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hu"))
      "hu": HuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hy"))
      "hy": HyCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ia"))
      "ia": IaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-id"))
      "id": IdCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ig"))
      "ig": IgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-is"))
      "is": IsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-it"))
      "it": ItCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ja"))
      "ja": JaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-jv"))
      "jv": JvCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ka"))
      "ka": KaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ki"))
      "ki": KiCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kk"))
      "kk": KkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-km"))
      "km": KmCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kn"))
      "kn": KnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ko"))
      "ko": KoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ks"))
      "ks": KsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ku"))
      "ku": KuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ky"))
      "ky": KyCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lb"))
      "lb": LbCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lg"))
      "lg": LgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ln"))
      "ln": LnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lo"))
      "lo": LoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lt"))
      "lt": LtCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lu"))
      "lu": LuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lv"))
      "lv": LvCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mg"))
      "mg": MgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mi"))
      "mi": MiCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mk"))
      "mk": MkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ml"))
      "ml": MlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mn"))
      "mn": MnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mr"))
      "mr": MrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ms"))
      "ms": MsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-my"))
      "my": MyCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nb"))
      "nb": NbCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nd"))
      "nd": NdCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ne"))
      "ne": NeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nl"))
      "nl": NlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nn"))
      "nn": NnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-no"))
      "no": NoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-om"))
      "om": OmCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-or"))
      "or": OrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-os"))
      "os": OsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pa"))
      "pa": PaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pa_arab"))
      "pa_Arab": PaArabCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pl"))
      "pl": PlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ps"))
      "ps": PsCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pt"))
      "pt": PtCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pt_mo"))
      "pt_MO": PtMoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pt_mz"))
      "pt_MZ": PtMzCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pt_pt"))
      "pt_PT": PtPtCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-qu"))
      "qu": QuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rm"))
      "rm": RmCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rn"))
      "rn": RnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ro"))
      "ro": RoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ru"))
      "ru": RuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sa"))
      "sa": SaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sc"))
      "sc": ScCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sd"))
      "sd": SdCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-se"))
      "se": SeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sg"))
      "sg": SgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-si"))
      "si": SiCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sk"))
      "sk": SkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sl"))
      "sl": SlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sn"))
      "sn": SnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-so"))
      "so": SoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sq"))
      "sq": SqCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sr"))
      "sr": SrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sr_latn"))
      "sr_Latn": SrLatnCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-su"))
      "su": SuCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sv"))
      "sv": SvCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw"))
      "sw": SwCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw_cd"))
      "sw_CD": SwCdCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ta"))
      "ta": TaCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-te"))
      "te": TeCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tg"))
      "tg": TgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-th"))
      "th": ThCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ti"))
      "ti": TiCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tk"))
      "tk": TkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tl"))
      "tl": TlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-to"))
      "to": ToCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tr"))
      "tr": TrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ug"))
      "ug": UgCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uk"))
      "uk": UkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ur"))
      "ur": UrCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ur_in"))
      "ur_IN": UrInCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz"))
      "uz": UzCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz_arab"))
      "uz_Arab": UzArabCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz_cyrl"))
      "uz_Cyrl": UzCyrlCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-vi"))
      "vi": ViCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-wo"))
      "wo": WoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-xh"))
      "xh": XhCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yi"))
      "yi": YiCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yo"))
      "yo": YoCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yo_bj"))
      "yo_BJ": YoBjCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zh"))
      "zh": ZhCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zh_hk"))
      "zh_HK": ZhHkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zh_hans_hk"))
      "zh_Hans_HK": ZhHansHkCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zh_hant"))
      "zh_Hant": ZhHantCurrenciesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zu"))
      "zu": ZuCurrenciesL10N.new,
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
  /// final map = mapper.localize({'USD', 'RUB'}, mainLocale: 'en');
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
      "A CurrenciesLocaleMapper was used after being consumed. "
      "Once localize() is called, the mapper clears its internal data to free "
      "memory and must not be reused. If you need to call localize() again, "
      "create a new CurrenciesLocaleMapper instance.",
    );

    if (isoCodes.isEmpty) return const {};
    final locale = mainLocale?.toString();
    final altLocale = fallbackLocale?.toString();
    Set<String>? localeKeys;
    if (locale != null) {
      localeKeys = _localesSet(
        locale,
        useLanguageFallback: useLanguageFallback,
      );
    }
    if (altLocale != null) {
      final fallbackKeys = _localesSet(
        altLocale,
        useLanguageFallback: useLanguageFallback,
      );
      localeKeys = {...?localeKeys, ...fallbackKeys};
    }

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
