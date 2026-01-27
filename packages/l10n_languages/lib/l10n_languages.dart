// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// https://github.com/umpirsky/language-list project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

// ignore_for_file: do_not_use_environment, avoid-collection-mutating-methods
// ignore_for_file: avoid-complex-conditions, avoid-collapsible-if

/// Provides language translations for different locales.
library l10n_languages;

import "src/data/af_languages_l10n.data.dart";
import "src/data/ak_languages_l10n.data.dart";
import "src/data/am_languages_l10n.data.dart";
import "src/data/ar_eg_languages_l10n.data.dart";
import "src/data/ar_languages_l10n.data.dart";
import "src/data/as_languages_l10n.data.dart";
import "src/data/az_cyrl_languages_l10n.data.dart";
import "src/data/az_languages_l10n.data.dart";
import "src/data/be_languages_l10n.data.dart";
import "src/data/bg_languages_l10n.data.dart";
import "src/data/bm_languages_l10n.data.dart";
import "src/data/bn_languages_l10n.data.dart";
import "src/data/bo_languages_l10n.data.dart";
import "src/data/br_languages_l10n.data.dart";
import "src/data/bs_cyrl_languages_l10n.data.dart";
import "src/data/bs_languages_l10n.data.dart";
import "src/data/ca_languages_l10n.data.dart";
import "src/data/ce_languages_l10n.data.dart";
import "src/data/cs_languages_l10n.data.dart";
import "src/data/cv_languages_l10n.data.dart";
import "src/data/cy_languages_l10n.data.dart";
import "src/data/da_languages_l10n.data.dart";
import "src/data/de_ch_languages_l10n.data.dart";
import "src/data/de_languages_l10n.data.dart";
import "src/data/dz_languages_l10n.data.dart";
import "src/data/ee_languages_l10n.data.dart";
import "src/data/el_languages_l10n.data.dart";
import "src/data/en_languages_l10n.data.dart";
import "src/data/eo_languages_l10n.data.dart";
import "src/data/es_languages_l10n.data.dart";
import "src/data/es_mx_languages_l10n.data.dart";
import "src/data/et_languages_l10n.data.dart";
import "src/data/eu_languages_l10n.data.dart";
import "src/data/fa_af_languages_l10n.data.dart";
import "src/data/fa_languages_l10n.data.dart";
import "src/data/ff_adlm_languages_l10n.data.dart";
import "src/data/ff_languages_l10n.data.dart";
import "src/data/fi_languages_l10n.data.dart";
import "src/data/fo_languages_l10n.data.dart";
import "src/data/fr_languages_l10n.data.dart";
import "src/data/fy_languages_l10n.data.dart";
import "src/data/ga_languages_l10n.data.dart";
import "src/data/gd_languages_l10n.data.dart";
import "src/data/gl_languages_l10n.data.dart";
import "src/data/gu_languages_l10n.data.dart";
import "src/data/gv_languages_l10n.data.dart";
import "src/data/ha_languages_l10n.data.dart";
import "src/data/he_languages_l10n.data.dart";
import "src/data/hi_languages_l10n.data.dart";
import "src/data/hr_languages_l10n.data.dart";
import "src/data/hu_languages_l10n.data.dart";
import "src/data/hy_languages_l10n.data.dart";
import "src/data/ia_languages_l10n.data.dart";
import "src/data/id_languages_l10n.data.dart";
import "src/data/ie_languages_l10n.data.dart";
import "src/data/ig_languages_l10n.data.dart";
import "src/data/ii_languages_l10n.data.dart";
import "src/data/is_languages_l10n.data.dart";
import "src/data/it_languages_l10n.data.dart";
import "src/data/ja_languages_l10n.data.dart";
import "src/data/jv_languages_l10n.data.dart";
import "src/data/ka_languages_l10n.data.dart";
import "src/data/ki_languages_l10n.data.dart";
import "src/data/kk_languages_l10n.data.dart";
import "src/data/kl_languages_l10n.data.dart";
import "src/data/km_languages_l10n.data.dart";
import "src/data/kn_languages_l10n.data.dart";
import "src/data/ko_languages_l10n.data.dart";
import "src/data/ks_languages_l10n.data.dart";
import "src/data/ku_languages_l10n.data.dart";
import "src/data/kw_languages_l10n.data.dart";
import "src/data/ky_languages_l10n.data.dart";
import "src/data/lb_languages_l10n.data.dart";
import "src/data/lg_languages_l10n.data.dart";
import "src/data/ln_languages_l10n.data.dart";
import "src/data/lo_languages_l10n.data.dart";
import "src/data/lt_languages_l10n.data.dart";
import "src/data/lu_languages_l10n.data.dart";
import "src/data/lv_languages_l10n.data.dart";
import "src/data/mg_languages_l10n.data.dart";
import "src/data/mi_languages_l10n.data.dart";
import "src/data/mk_languages_l10n.data.dart";
import "src/data/ml_languages_l10n.data.dart";
import "src/data/mn_languages_l10n.data.dart";
import "src/data/mr_languages_l10n.data.dart";
import "src/data/ms_languages_l10n.data.dart";
import "src/data/mt_languages_l10n.data.dart";
import "src/data/my_languages_l10n.data.dart";
import "src/data/nb_languages_l10n.data.dart";
import "src/data/nd_languages_l10n.data.dart";
import "src/data/ne_languages_l10n.data.dart";
import "src/data/nl_languages_l10n.data.dart";
import "src/data/nn_languages_l10n.data.dart";
import "src/data/no_languages_l10n.data.dart";
import "src/data/oc_languages_l10n.data.dart";
import "src/data/om_languages_l10n.data.dart";
import "src/data/or_languages_l10n.data.dart";
import "src/data/os_languages_l10n.data.dart";
import "src/data/pa_arab_languages_l10n.data.dart";
import "src/data/pa_languages_l10n.data.dart";
import "src/data/pl_languages_l10n.data.dart";
import "src/data/ps_languages_l10n.data.dart";
import "src/data/pt_languages_l10n.data.dart";
import "src/data/pt_pt_languages_l10n.data.dart";
import "src/data/qu_languages_l10n.data.dart";
import "src/data/rm_languages_l10n.data.dart";
import "src/data/rn_languages_l10n.data.dart";
import "src/data/ro_languages_l10n.data.dart";
import "src/data/ru_languages_l10n.data.dart";
import "src/data/rw_languages_l10n.data.dart";
import "src/data/sa_languages_l10n.data.dart";
import "src/data/sc_languages_l10n.data.dart";
import "src/data/sd_languages_l10n.data.dart";
import "src/data/se_fi_languages_l10n.data.dart";
import "src/data/se_languages_l10n.data.dart";
import "src/data/sg_languages_l10n.data.dart";
import "src/data/si_languages_l10n.data.dart";
import "src/data/sk_languages_l10n.data.dart";
import "src/data/sl_languages_l10n.data.dart";
import "src/data/sn_languages_l10n.data.dart";
import "src/data/so_languages_l10n.data.dart";
import "src/data/sq_languages_l10n.data.dart";
import "src/data/sr_languages_l10n.data.dart";
import "src/data/sr_latn_languages_l10n.data.dart";
import "src/data/su_languages_l10n.data.dart";
import "src/data/sv_fi_languages_l10n.data.dart";
import "src/data/sv_languages_l10n.data.dart";
import "src/data/sw_cd_languages_l10n.data.dart";
import "src/data/sw_ke_languages_l10n.data.dart";
import "src/data/sw_languages_l10n.data.dart";
import "src/data/ta_languages_l10n.data.dart";
import "src/data/te_languages_l10n.data.dart";
import "src/data/tg_languages_l10n.data.dart";
import "src/data/th_languages_l10n.data.dart";
import "src/data/ti_languages_l10n.data.dart";
import "src/data/tk_languages_l10n.data.dart";
import "src/data/tl_languages_l10n.data.dart";
import "src/data/to_languages_l10n.data.dart";
import "src/data/tr_languages_l10n.data.dart";
import "src/data/tt_languages_l10n.data.dart";
import "src/data/ug_languages_l10n.data.dart";
import "src/data/uk_languages_l10n.data.dart";
import "src/data/ur_in_languages_l10n.data.dart";
import "src/data/ur_languages_l10n.data.dart";
import "src/data/uz_arab_languages_l10n.data.dart";
import "src/data/uz_cyrl_languages_l10n.data.dart";
import "src/data/uz_languages_l10n.data.dart";
import "src/data/vi_languages_l10n.data.dart";
import "src/data/wo_languages_l10n.data.dart";
import "src/data/xh_languages_l10n.data.dart";
import "src/data/yi_languages_l10n.data.dart";
import "src/data/yo_bj_languages_l10n.data.dart";
import "src/data/yo_languages_l10n.data.dart";
import "src/data/za_languages_l10n.data.dart";
import "src/data/zh_hant_languages_l10n.data.dart";
import "src/data/zh_languages_l10n.data.dart";
import "src/data/zu_languages_l10n.data.dart";
import "src/iso_locale_mapper.dart";

export "src/data/af_languages_l10n.data.dart";
export "src/data/ak_languages_l10n.data.dart";
export "src/data/am_languages_l10n.data.dart";
export "src/data/ar_eg_languages_l10n.data.dart";
export "src/data/ar_languages_l10n.data.dart";
export "src/data/as_languages_l10n.data.dart";
export "src/data/az_cyrl_languages_l10n.data.dart";
export "src/data/az_languages_l10n.data.dart";
export "src/data/be_languages_l10n.data.dart";
export "src/data/bg_languages_l10n.data.dart";
export "src/data/bm_languages_l10n.data.dart";
export "src/data/bn_languages_l10n.data.dart";
export "src/data/bo_languages_l10n.data.dart";
export "src/data/br_languages_l10n.data.dart";
export "src/data/bs_cyrl_languages_l10n.data.dart";
export "src/data/bs_languages_l10n.data.dart";
export "src/data/ca_languages_l10n.data.dart";
export "src/data/ce_languages_l10n.data.dart";
export "src/data/cs_languages_l10n.data.dart";
export "src/data/cv_languages_l10n.data.dart";
export "src/data/cy_languages_l10n.data.dart";
export "src/data/da_languages_l10n.data.dart";
export "src/data/de_ch_languages_l10n.data.dart";
export "src/data/de_languages_l10n.data.dart";
export "src/data/dz_languages_l10n.data.dart";
export "src/data/ee_languages_l10n.data.dart";
export "src/data/el_languages_l10n.data.dart";
export "src/data/en_languages_l10n.data.dart";
export "src/data/eo_languages_l10n.data.dart";
export "src/data/es_languages_l10n.data.dart";
export "src/data/es_mx_languages_l10n.data.dart";
export "src/data/et_languages_l10n.data.dart";
export "src/data/eu_languages_l10n.data.dart";
export "src/data/fa_af_languages_l10n.data.dart";
export "src/data/fa_languages_l10n.data.dart";
export "src/data/ff_adlm_languages_l10n.data.dart";
export "src/data/ff_languages_l10n.data.dart";
export "src/data/fi_languages_l10n.data.dart";
export "src/data/fo_languages_l10n.data.dart";
export "src/data/fr_languages_l10n.data.dart";
export "src/data/fy_languages_l10n.data.dart";
export "src/data/ga_languages_l10n.data.dart";
export "src/data/gd_languages_l10n.data.dart";
export "src/data/gl_languages_l10n.data.dart";
export "src/data/gu_languages_l10n.data.dart";
export "src/data/gv_languages_l10n.data.dart";
export "src/data/ha_languages_l10n.data.dart";
export "src/data/he_languages_l10n.data.dart";
export "src/data/hi_languages_l10n.data.dart";
export "src/data/hr_languages_l10n.data.dart";
export "src/data/hu_languages_l10n.data.dart";
export "src/data/hy_languages_l10n.data.dart";
export "src/data/ia_languages_l10n.data.dart";
export "src/data/id_languages_l10n.data.dart";
export "src/data/ie_languages_l10n.data.dart";
export "src/data/ig_languages_l10n.data.dart";
export "src/data/ii_languages_l10n.data.dart";
export "src/data/is_languages_l10n.data.dart";
export "src/data/it_languages_l10n.data.dart";
export "src/data/ja_languages_l10n.data.dart";
export "src/data/jv_languages_l10n.data.dart";
export "src/data/ka_languages_l10n.data.dart";
export "src/data/ki_languages_l10n.data.dart";
export "src/data/kk_languages_l10n.data.dart";
export "src/data/kl_languages_l10n.data.dart";
export "src/data/km_languages_l10n.data.dart";
export "src/data/kn_languages_l10n.data.dart";
export "src/data/ko_languages_l10n.data.dart";
export "src/data/ks_languages_l10n.data.dart";
export "src/data/ku_languages_l10n.data.dart";
export "src/data/kw_languages_l10n.data.dart";
export "src/data/ky_languages_l10n.data.dart";
export "src/data/lb_languages_l10n.data.dart";
export "src/data/lg_languages_l10n.data.dart";
export "src/data/ln_languages_l10n.data.dart";
export "src/data/lo_languages_l10n.data.dart";
export "src/data/lt_languages_l10n.data.dart";
export "src/data/lu_languages_l10n.data.dart";
export "src/data/lv_languages_l10n.data.dart";
export "src/data/mg_languages_l10n.data.dart";
export "src/data/mi_languages_l10n.data.dart";
export "src/data/mk_languages_l10n.data.dart";
export "src/data/ml_languages_l10n.data.dart";
export "src/data/mn_languages_l10n.data.dart";
export "src/data/mr_languages_l10n.data.dart";
export "src/data/ms_languages_l10n.data.dart";
export "src/data/mt_languages_l10n.data.dart";
export "src/data/my_languages_l10n.data.dart";
export "src/data/nb_languages_l10n.data.dart";
export "src/data/nd_languages_l10n.data.dart";
export "src/data/ne_languages_l10n.data.dart";
export "src/data/nl_languages_l10n.data.dart";
export "src/data/nn_languages_l10n.data.dart";
export "src/data/no_languages_l10n.data.dart";
export "src/data/oc_languages_l10n.data.dart";
export "src/data/om_languages_l10n.data.dart";
export "src/data/or_languages_l10n.data.dart";
export "src/data/os_languages_l10n.data.dart";
export "src/data/pa_arab_languages_l10n.data.dart";
export "src/data/pa_languages_l10n.data.dart";
export "src/data/pl_languages_l10n.data.dart";
export "src/data/ps_languages_l10n.data.dart";
export "src/data/pt_languages_l10n.data.dart";
export "src/data/pt_pt_languages_l10n.data.dart";
export "src/data/qu_languages_l10n.data.dart";
export "src/data/rm_languages_l10n.data.dart";
export "src/data/rn_languages_l10n.data.dart";
export "src/data/ro_languages_l10n.data.dart";
export "src/data/ru_languages_l10n.data.dart";
export "src/data/rw_languages_l10n.data.dart";
export "src/data/sa_languages_l10n.data.dart";
export "src/data/sc_languages_l10n.data.dart";
export "src/data/sd_languages_l10n.data.dart";
export "src/data/se_fi_languages_l10n.data.dart";
export "src/data/se_languages_l10n.data.dart";
export "src/data/sg_languages_l10n.data.dart";
export "src/data/si_languages_l10n.data.dart";
export "src/data/sk_languages_l10n.data.dart";
export "src/data/sl_languages_l10n.data.dart";
export "src/data/sn_languages_l10n.data.dart";
export "src/data/so_languages_l10n.data.dart";
export "src/data/sq_languages_l10n.data.dart";
export "src/data/sr_languages_l10n.data.dart";
export "src/data/sr_latn_languages_l10n.data.dart";
export "src/data/su_languages_l10n.data.dart";
export "src/data/sv_fi_languages_l10n.data.dart";
export "src/data/sv_languages_l10n.data.dart";
export "src/data/sw_cd_languages_l10n.data.dart";
export "src/data/sw_ke_languages_l10n.data.dart";
export "src/data/sw_languages_l10n.data.dart";
export "src/data/ta_languages_l10n.data.dart";
export "src/data/te_languages_l10n.data.dart";
export "src/data/tg_languages_l10n.data.dart";
export "src/data/th_languages_l10n.data.dart";
export "src/data/ti_languages_l10n.data.dart";
export "src/data/tk_languages_l10n.data.dart";
export "src/data/tl_languages_l10n.data.dart";
export "src/data/to_languages_l10n.data.dart";
export "src/data/tr_languages_l10n.data.dart";
export "src/data/tt_languages_l10n.data.dart";
export "src/data/ug_languages_l10n.data.dart";
export "src/data/uk_languages_l10n.data.dart";
export "src/data/ur_in_languages_l10n.data.dart";
export "src/data/ur_languages_l10n.data.dart";
export "src/data/uz_arab_languages_l10n.data.dart";
export "src/data/uz_cyrl_languages_l10n.data.dart";
export "src/data/uz_languages_l10n.data.dart";
export "src/data/vi_languages_l10n.data.dart";
export "src/data/wo_languages_l10n.data.dart";
export "src/data/xh_languages_l10n.data.dart";
export "src/data/yi_languages_l10n.data.dart";
export "src/data/yo_bj_languages_l10n.data.dart";
export "src/data/yo_languages_l10n.data.dart";
export "src/data/za_languages_l10n.data.dart";
export "src/data/zh_hant_languages_l10n.data.dart";
export "src/data/zh_languages_l10n.data.dart";
export "src/data/zu_languages_l10n.data.dart";
export "src/iso_locale_mapper.dart";

/// Provides language names translations for different locales.
///
/// **Important**: This mapper is designed for single-use only. Once [localize]
/// is called, the mapper clears its internal data to free memory and cannot be
/// reused. Attempting to call [localize] again on the same instance will throw
/// an assertion error. Create a new instance if you need to localize again.
// ignore: prefer-match-file-name, it's main library file.
class LanguagesLocaleMapper extends IsoLocaleMapper<IsoLocaleMapper<String>> {
  /// Provides names translations for 157 locales, with the option to
  /// add more translations via the [other] parameter.
  LanguagesLocaleMapper({Map<String, IsoLocaleMapper<String>>? other})
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
      bool.hasEnvironment("l10n-ar_eg") ||
      bool.hasEnvironment("l10n-as") ||
      bool.hasEnvironment("l10n-az") ||
      bool.hasEnvironment("l10n-az_cyrl") ||
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
      bool.hasEnvironment("l10n-eo") ||
      bool.hasEnvironment("l10n-es") ||
      bool.hasEnvironment("l10n-es_mx") ||
      bool.hasEnvironment("l10n-et") ||
      bool.hasEnvironment("l10n-eu") ||
      bool.hasEnvironment("l10n-fa") ||
      bool.hasEnvironment("l10n-fa_af") ||
      bool.hasEnvironment("l10n-ff") ||
      bool.hasEnvironment("l10n-ff_adlm") ||
      bool.hasEnvironment("l10n-fi") ||
      bool.hasEnvironment("l10n-fo") ||
      bool.hasEnvironment("l10n-fr") ||
      bool.hasEnvironment("l10n-fy") ||
      bool.hasEnvironment("l10n-ga") ||
      bool.hasEnvironment("l10n-gd") ||
      bool.hasEnvironment("l10n-gl") ||
      bool.hasEnvironment("l10n-gu") ||
      bool.hasEnvironment("l10n-gv") ||
      bool.hasEnvironment("l10n-ha") ||
      bool.hasEnvironment("l10n-he") ||
      bool.hasEnvironment("l10n-hi") ||
      bool.hasEnvironment("l10n-hr") ||
      bool.hasEnvironment("l10n-hu") ||
      bool.hasEnvironment("l10n-hy") ||
      bool.hasEnvironment("l10n-ia") ||
      bool.hasEnvironment("l10n-id") ||
      bool.hasEnvironment("l10n-ie") ||
      bool.hasEnvironment("l10n-ig") ||
      bool.hasEnvironment("l10n-ii") ||
      bool.hasEnvironment("l10n-is") ||
      bool.hasEnvironment("l10n-it") ||
      bool.hasEnvironment("l10n-ja") ||
      bool.hasEnvironment("l10n-jv") ||
      bool.hasEnvironment("l10n-ka") ||
      bool.hasEnvironment("l10n-ki") ||
      bool.hasEnvironment("l10n-kk") ||
      bool.hasEnvironment("l10n-kl") ||
      bool.hasEnvironment("l10n-km") ||
      bool.hasEnvironment("l10n-kn") ||
      bool.hasEnvironment("l10n-ko") ||
      bool.hasEnvironment("l10n-ks") ||
      bool.hasEnvironment("l10n-ku") ||
      bool.hasEnvironment("l10n-kw") ||
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
      bool.hasEnvironment("l10n-mt") ||
      bool.hasEnvironment("l10n-my") ||
      bool.hasEnvironment("l10n-nb") ||
      bool.hasEnvironment("l10n-nd") ||
      bool.hasEnvironment("l10n-ne") ||
      bool.hasEnvironment("l10n-nl") ||
      bool.hasEnvironment("l10n-nn") ||
      bool.hasEnvironment("l10n-no") ||
      bool.hasEnvironment("l10n-oc") ||
      bool.hasEnvironment("l10n-om") ||
      bool.hasEnvironment("l10n-or") ||
      bool.hasEnvironment("l10n-os") ||
      bool.hasEnvironment("l10n-pa") ||
      bool.hasEnvironment("l10n-pa_arab") ||
      bool.hasEnvironment("l10n-pl") ||
      bool.hasEnvironment("l10n-ps") ||
      bool.hasEnvironment("l10n-pt") ||
      bool.hasEnvironment("l10n-pt_pt") ||
      bool.hasEnvironment("l10n-qu") ||
      bool.hasEnvironment("l10n-rm") ||
      bool.hasEnvironment("l10n-rn") ||
      bool.hasEnvironment("l10n-ro") ||
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
      bool.hasEnvironment("l10n-sn") ||
      bool.hasEnvironment("l10n-so") ||
      bool.hasEnvironment("l10n-sq") ||
      bool.hasEnvironment("l10n-sr") ||
      bool.hasEnvironment("l10n-sr_latn") ||
      bool.hasEnvironment("l10n-su") ||
      bool.hasEnvironment("l10n-sv") ||
      bool.hasEnvironment("l10n-sv_fi") ||
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
      bool.hasEnvironment("l10n-to") ||
      bool.hasEnvironment("l10n-tr") ||
      bool.hasEnvironment("l10n-tt") ||
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
      bool.hasEnvironment("l10n-za") ||
      bool.hasEnvironment("l10n-zh") ||
      bool.hasEnvironment("l10n-zh_hant") ||
      bool.hasEnvironment("l10n-zu");

  static final _factories = <String, IsoLocaleMapper<String> Function()>{
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-af"))
      "af": AfLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ak"))
      "ak": AkLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-am"))
      "am": AmLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ar"))
      "ar": ArLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ar_eg"))
      "ar_EG": ArEgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-as"))
      "as": AsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-az"))
      "az": AzLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-az_cyrl"))
      "az_Cyrl": AzCyrlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-be"))
      "be": BeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bg"))
      "bg": BgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bm"))
      "bm": BmLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bn"))
      "bn": BnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bo"))
      "bo": BoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-br"))
      "br": BrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bs"))
      "bs": BsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-bs_cyrl"))
      "bs_Cyrl": BsCyrlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ca"))
      "ca": CaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ce"))
      "ce": CeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cs"))
      "cs": CsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cv"))
      "cv": CvLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-cy"))
      "cy": CyLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-da"))
      "da": DaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-de"))
      "de": DeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-de_ch"))
      "de_CH": DeChLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-dz"))
      "dz": DzLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ee"))
      "ee": EeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-el"))
      "el": ElLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-en"))
      "en": EnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-eo"))
      "eo": EoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-es"))
      "es": EsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-es_mx"))
      "es_MX": EsMxLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-et"))
      "et": EtLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-eu"))
      "eu": EuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fa"))
      "fa": FaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fa_af"))
      "fa_AF": FaAfLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ff"))
      "ff": FfLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ff_adlm"))
      "ff_Adlm": FfAdlmLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fi"))
      "fi": FiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fo"))
      "fo": FoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fr"))
      "fr": FrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-fy"))
      "fy": FyLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ga"))
      "ga": GaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gd"))
      "gd": GdLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gl"))
      "gl": GlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gu"))
      "gu": GuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-gv"))
      "gv": GvLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ha"))
      "ha": HaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-he"))
      "he": HeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hi"))
      "hi": HiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hr"))
      "hr": HrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hu"))
      "hu": HuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-hy"))
      "hy": HyLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ia"))
      "ia": IaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-id"))
      "id": IdLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ie"))
      "ie": IeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ig"))
      "ig": IgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ii"))
      "ii": IiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-is"))
      "is": IsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-it"))
      "it": ItLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ja"))
      "ja": JaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-jv"))
      "jv": JvLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ka"))
      "ka": KaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ki"))
      "ki": KiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kk"))
      "kk": KkLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kl"))
      "kl": KlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-km"))
      "km": KmLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kn"))
      "kn": KnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ko"))
      "ko": KoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ks"))
      "ks": KsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ku"))
      "ku": KuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-kw"))
      "kw": KwLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ky"))
      "ky": KyLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lb"))
      "lb": LbLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lg"))
      "lg": LgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ln"))
      "ln": LnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lo"))
      "lo": LoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lt"))
      "lt": LtLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lu"))
      "lu": LuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-lv"))
      "lv": LvLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mg"))
      "mg": MgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mi"))
      "mi": MiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mk"))
      "mk": MkLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ml"))
      "ml": MlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mn"))
      "mn": MnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mr"))
      "mr": MrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ms"))
      "ms": MsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-mt"))
      "mt": MtLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-my"))
      "my": MyLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nb"))
      "nb": NbLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nd"))
      "nd": NdLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ne"))
      "ne": NeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nl"))
      "nl": NlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-nn"))
      "nn": NnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-no"))
      "no": NoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-oc"))
      "oc": OcLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-om"))
      "om": OmLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-or"))
      "or": OrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-os"))
      "os": OsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pa"))
      "pa": PaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pa_arab"))
      "pa_Arab": PaArabLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pl"))
      "pl": PlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ps"))
      "ps": PsLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pt"))
      "pt": PtLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-pt_pt"))
      "pt_PT": PtPtLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-qu"))
      "qu": QuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rm"))
      "rm": RmLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rn"))
      "rn": RnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ro"))
      "ro": RoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ru"))
      "ru": RuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-rw"))
      "rw": RwLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sa"))
      "sa": SaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sc"))
      "sc": ScLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sd"))
      "sd": SdLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-se"))
      "se": SeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-se_fi"))
      "se_FI": SeFiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sg"))
      "sg": SgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-si"))
      "si": SiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sk"))
      "sk": SkLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sl"))
      "sl": SlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sn"))
      "sn": SnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-so"))
      "so": SoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sq"))
      "sq": SqLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sr"))
      "sr": SrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sr_latn"))
      "sr_Latn": SrLatnLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-su"))
      "su": SuLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sv"))
      "sv": SvLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sv_fi"))
      "sv_FI": SvFiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw"))
      "sw": SwLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw_cd"))
      "sw_CD": SwCdLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-sw_ke"))
      "sw_KE": SwKeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ta"))
      "ta": TaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-te"))
      "te": TeLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tg"))
      "tg": TgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-th"))
      "th": ThLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ti"))
      "ti": TiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tk"))
      "tk": TkLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tl"))
      "tl": TlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-to"))
      "to": ToLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tr"))
      "tr": TrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-tt"))
      "tt": TtLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ug"))
      "ug": UgLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uk"))
      "uk": UkLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ur"))
      "ur": UrLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-ur_in"))
      "ur_IN": UrInLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz"))
      "uz": UzLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz_arab"))
      "uz_Arab": UzArabLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-uz_cyrl"))
      "uz_Cyrl": UzCyrlLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-vi"))
      "vi": ViLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-wo"))
      "wo": WoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-xh"))
      "xh": XhLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yi"))
      "yi": YiLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yo"))
      "yo": YoLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-yo_bj"))
      "yo_BJ": YoBjLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-za"))
      "za": ZaLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zh"))
      "zh": ZhLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zh_hant"))
      "zh_Hant": ZhHantLanguagesL10N.new,
    if (!_hasAnyLocaleFilter || const bool.fromEnvironment("l10n-zu"))
      "zu": ZuLanguagesL10N.new,
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
      "A LanguagesLocaleMapper was used after being consumed. "
      "Once localize() is called, the mapper clears its internal data to free "
      "memory and must not be reused. If you need to call localize() again, "
      "create a new LanguagesLocaleMapper instance.",
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
