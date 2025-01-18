// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// https://github.com/umpirsky/currency-list project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

/// Provides currency translations for different locales.
library l10n_currencies;

import "src/data/af_currencies_l10n.data.dart";
import "src/data/ak_currencies_l10n.data.dart";
import "src/data/am_currencies_l10n.data.dart";
import "src/data/ar_currencies_l10n.data.dart";
import "src/data/as_currencies_l10n.data.dart";
import "src/data/az_currencies_l10n.data.dart";
import "src/data/az_cyrl_currencies_l10n.data.dart";
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
import "src/data/ff_gn_currencies_l10n.data.dart";
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
import "src/data/ha_gh_currencies_l10n.data.dart";
import "src/data/he_currencies_l10n.data.dart";
import "src/data/hi_currencies_l10n.data.dart";
import "src/data/hr_currencies_l10n.data.dart";
import "src/data/hu_currencies_l10n.data.dart";
import "src/data/hy_currencies_l10n.data.dart";
import "src/data/ia_currencies_l10n.data.dart";
import "src/data/id_currencies_l10n.data.dart";
import "src/data/ig_currencies_l10n.data.dart";
import "src/data/ii_currencies_l10n.data.dart";
import "src/data/is_currencies_l10n.data.dart";
import "src/data/it_currencies_l10n.data.dart";
import "src/data/ja_currencies_l10n.data.dart";
import "src/data/jv_currencies_l10n.data.dart";
import "src/data/ka_currencies_l10n.data.dart";
import "src/data/ki_currencies_l10n.data.dart";
import "src/data/kk_currencies_l10n.data.dart";
import "src/data/kl_currencies_l10n.data.dart";
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
import "src/data/mt_currencies_l10n.data.dart";
import "src/data/my_currencies_l10n.data.dart";
import "src/data/nb_currencies_l10n.data.dart";
import "src/data/nd_currencies_l10n.data.dart";
import "src/data/ne_currencies_l10n.data.dart";
import "src/data/nl_currencies_l10n.data.dart";
import "src/data/nn_currencies_l10n.data.dart";
import "src/data/no_currencies_l10n.data.dart";
import "src/data/om_currencies_l10n.data.dart";
import "src/data/om_ke_currencies_l10n.data.dart";
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
import "src/data/qu_bo_currencies_l10n.data.dart";
import "src/data/qu_currencies_l10n.data.dart";
import "src/data/qu_ec_currencies_l10n.data.dart";
import "src/data/rm_currencies_l10n.data.dart";
import "src/data/rn_currencies_l10n.data.dart";
import "src/data/ro_currencies_l10n.data.dart";
import "src/data/ru_currencies_l10n.data.dart";
import "src/data/rw_currencies_l10n.data.dart";
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
import "src/data/so_ke_currencies_l10n.data.dart";
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
import "src/data/ti_er_currencies_l10n.data.dart";
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
export "src/data/az_cyrl_currencies_l10n.data.dart";
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
export "src/data/ff_gn_currencies_l10n.data.dart";
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
export "src/data/ha_gh_currencies_l10n.data.dart";
export "src/data/he_currencies_l10n.data.dart";
export "src/data/hi_currencies_l10n.data.dart";
export "src/data/hr_currencies_l10n.data.dart";
export "src/data/hu_currencies_l10n.data.dart";
export "src/data/hy_currencies_l10n.data.dart";
export "src/data/ia_currencies_l10n.data.dart";
export "src/data/id_currencies_l10n.data.dart";
export "src/data/ig_currencies_l10n.data.dart";
export "src/data/ii_currencies_l10n.data.dart";
export "src/data/is_currencies_l10n.data.dart";
export "src/data/it_currencies_l10n.data.dart";
export "src/data/ja_currencies_l10n.data.dart";
export "src/data/jv_currencies_l10n.data.dart";
export "src/data/ka_currencies_l10n.data.dart";
export "src/data/ki_currencies_l10n.data.dart";
export "src/data/kk_currencies_l10n.data.dart";
export "src/data/kl_currencies_l10n.data.dart";
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
export "src/data/mt_currencies_l10n.data.dart";
export "src/data/my_currencies_l10n.data.dart";
export "src/data/nb_currencies_l10n.data.dart";
export "src/data/nd_currencies_l10n.data.dart";
export "src/data/ne_currencies_l10n.data.dart";
export "src/data/nl_currencies_l10n.data.dart";
export "src/data/nn_currencies_l10n.data.dart";
export "src/data/no_currencies_l10n.data.dart";
export "src/data/om_currencies_l10n.data.dart";
export "src/data/om_ke_currencies_l10n.data.dart";
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
export "src/data/qu_bo_currencies_l10n.data.dart";
export "src/data/qu_currencies_l10n.data.dart";
export "src/data/qu_ec_currencies_l10n.data.dart";
export "src/data/rm_currencies_l10n.data.dart";
export "src/data/rn_currencies_l10n.data.dart";
export "src/data/ro_currencies_l10n.data.dart";
export "src/data/ru_currencies_l10n.data.dart";
export "src/data/rw_currencies_l10n.data.dart";
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
export "src/data/so_ke_currencies_l10n.data.dart";
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
export "src/data/ti_er_currencies_l10n.data.dart";
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
// ignore: prefer-match-file-name, it's main library file.
class CurrenciesLocaleMapper extends IsoLocaleMapper<IsoLocaleMapper<String>> {
  /// Provides names translations for 161 locales, with the option to
  /// add more translations via the [other] parameter.
  // ignore: avoid-non-empty-constructor-bodies,on purpose.
  CurrenciesLocaleMapper({Map<String, IsoLocaleMapper<String>>? other}) {
    map.addAll({
      "af": AfCurrenciesL10N(),
      "ak": AkCurrenciesL10N(),
      "am": AmCurrenciesL10N(),
      "ar": ArCurrenciesL10N(),
      "as": AsCurrenciesL10N(),
      "az": AzCurrenciesL10N(),
      "az_Cyrl": AzCyrlCurrenciesL10N(),
      "be": BeCurrenciesL10N(),
      "bg": BgCurrenciesL10N(),
      "bm": BmCurrenciesL10N(),
      "bn": BnCurrenciesL10N(),
      "bo": BoCurrenciesL10N(),
      "br": BrCurrenciesL10N(),
      "bs": BsCurrenciesL10N(),
      "bs_Cyrl": BsCyrlCurrenciesL10N(),
      "ca": CaCurrenciesL10N(),
      "ce": CeCurrenciesL10N(),
      "cs": CsCurrenciesL10N(),
      "cv": CvCurrenciesL10N(),
      "cy": CyCurrenciesL10N(),
      "da": DaCurrenciesL10N(),
      "de": DeCurrenciesL10N(),
      "de_CH": DeChCurrenciesL10N(),
      "dz": DzCurrenciesL10N(),
      "ee": EeCurrenciesL10N(),
      "el": ElCurrenciesL10N(),
      "en": EnCurrenciesL10N(),
      "en_AU": EnAuCurrenciesL10N(),
      "en_GG": EnGgCurrenciesL10N(),
      "es": EsCurrenciesL10N(),
      "es_CL": EsClCurrenciesL10N(),
      "es_GT": EsGtCurrenciesL10N(),
      "es_MX": EsMxCurrenciesL10N(),
      "et": EtCurrenciesL10N(),
      "eu": EuCurrenciesL10N(),
      "fa": FaCurrenciesL10N(),
      "fa_AF": FaAfCurrenciesL10N(),
      "ff": FfCurrenciesL10N(),
      "ff_GN": FfGnCurrenciesL10N(),
      "fi": FiCurrenciesL10N(),
      "fo": FoCurrenciesL10N(),
      "fr": FrCurrenciesL10N(),
      "fr_CA": FrCaCurrenciesL10N(),
      "fy": FyCurrenciesL10N(),
      "ga": GaCurrenciesL10N(),
      "gd": GdCurrenciesL10N(),
      "gl": GlCurrenciesL10N(),
      "gu": GuCurrenciesL10N(),
      "ha": HaCurrenciesL10N(),
      "ha_GH": HaGhCurrenciesL10N(),
      "he": HeCurrenciesL10N(),
      "hi": HiCurrenciesL10N(),
      "hr": HrCurrenciesL10N(),
      "hu": HuCurrenciesL10N(),
      "hy": HyCurrenciesL10N(),
      "ia": IaCurrenciesL10N(),
      "id": IdCurrenciesL10N(),
      "ig": IgCurrenciesL10N(),
      "ii": IiCurrenciesL10N(),
      "is": IsCurrenciesL10N(),
      "it": ItCurrenciesL10N(),
      "ja": JaCurrenciesL10N(),
      "jv": JvCurrenciesL10N(),
      "ka": KaCurrenciesL10N(),
      "ki": KiCurrenciesL10N(),
      "kk": KkCurrenciesL10N(),
      "kl": KlCurrenciesL10N(),
      "km": KmCurrenciesL10N(),
      "kn": KnCurrenciesL10N(),
      "ko": KoCurrenciesL10N(),
      "ks": KsCurrenciesL10N(),
      "ku": KuCurrenciesL10N(),
      "ky": KyCurrenciesL10N(),
      "lb": LbCurrenciesL10N(),
      "lg": LgCurrenciesL10N(),
      "ln": LnCurrenciesL10N(),
      "lo": LoCurrenciesL10N(),
      "lt": LtCurrenciesL10N(),
      "lu": LuCurrenciesL10N(),
      "lv": LvCurrenciesL10N(),
      "mg": MgCurrenciesL10N(),
      "mi": MiCurrenciesL10N(),
      "mk": MkCurrenciesL10N(),
      "ml": MlCurrenciesL10N(),
      "mn": MnCurrenciesL10N(),
      "mr": MrCurrenciesL10N(),
      "ms": MsCurrenciesL10N(),
      "mt": MtCurrenciesL10N(),
      "my": MyCurrenciesL10N(),
      "nb": NbCurrenciesL10N(),
      "nd": NdCurrenciesL10N(),
      "ne": NeCurrenciesL10N(),
      "nl": NlCurrenciesL10N(),
      "nn": NnCurrenciesL10N(),
      "no": NoCurrenciesL10N(),
      "om": OmCurrenciesL10N(),
      "om_KE": OmKeCurrenciesL10N(),
      "or": OrCurrenciesL10N(),
      "os": OsCurrenciesL10N(),
      "pa": PaCurrenciesL10N(),
      "pa_Arab": PaArabCurrenciesL10N(),
      "pl": PlCurrenciesL10N(),
      "ps": PsCurrenciesL10N(),
      "pt": PtCurrenciesL10N(),
      "pt_MO": PtMoCurrenciesL10N(),
      "pt_MZ": PtMzCurrenciesL10N(),
      "pt_PT": PtPtCurrenciesL10N(),
      "qu": QuCurrenciesL10N(),
      "qu_BO": QuBoCurrenciesL10N(),
      "qu_EC": QuEcCurrenciesL10N(),
      "rm": RmCurrenciesL10N(),
      "rn": RnCurrenciesL10N(),
      "ro": RoCurrenciesL10N(),
      "ru": RuCurrenciesL10N(),
      "rw": RwCurrenciesL10N(),
      "sa": SaCurrenciesL10N(),
      "sc": ScCurrenciesL10N(),
      "sd": SdCurrenciesL10N(),
      "se": SeCurrenciesL10N(),
      "sg": SgCurrenciesL10N(),
      "si": SiCurrenciesL10N(),
      "sk": SkCurrenciesL10N(),
      "sl": SlCurrenciesL10N(),
      "sn": SnCurrenciesL10N(),
      "so": SoCurrenciesL10N(),
      "so_KE": SoKeCurrenciesL10N(),
      "sq": SqCurrenciesL10N(),
      "sr": SrCurrenciesL10N(),
      "sr_Latn": SrLatnCurrenciesL10N(),
      "su": SuCurrenciesL10N(),
      "sv": SvCurrenciesL10N(),
      "sw": SwCurrenciesL10N(),
      "sw_CD": SwCdCurrenciesL10N(),
      "ta": TaCurrenciesL10N(),
      "te": TeCurrenciesL10N(),
      "tg": TgCurrenciesL10N(),
      "th": ThCurrenciesL10N(),
      "ti": TiCurrenciesL10N(),
      "ti_ER": TiErCurrenciesL10N(),
      "tk": TkCurrenciesL10N(),
      "tl": TlCurrenciesL10N(),
      "to": ToCurrenciesL10N(),
      "tr": TrCurrenciesL10N(),
      "ug": UgCurrenciesL10N(),
      "uk": UkCurrenciesL10N(),
      "ur": UrCurrenciesL10N(),
      "ur_IN": UrInCurrenciesL10N(),
      "uz": UzCurrenciesL10N(),
      "uz_Arab": UzArabCurrenciesL10N(),
      "uz_Cyrl": UzCyrlCurrenciesL10N(),
      "vi": ViCurrenciesL10N(),
      "wo": WoCurrenciesL10N(),
      "xh": XhCurrenciesL10N(),
      "yi": YiCurrenciesL10N(),
      "yo": YoCurrenciesL10N(),
      "yo_BJ": YoBjCurrenciesL10N(),
      "zh": ZhCurrenciesL10N(),
      "zh_HK": ZhHkCurrenciesL10N(),
      "zh_Hans_HK": ZhHansHkCurrenciesL10N(),
      "zh_Hant": ZhHantCurrenciesL10N(),
      "zu": ZuCurrenciesL10N(),
      ...?other,
    });
  }

  /// The symbol used to identify the alternative/full name of the ISO object.
  static const symbol = "+";

  /// Localizes a set of ISO codes into names (to specified locale if needed).
  ///
  /// Parameters:
  /// - [isoCodes]: Set of ISO codes to be localized.
  /// - [altSymbol]: Optional symbol for alternative (full) name translations.
  /// - [fallbackLocale]: Optional secondary locale for translations.
  /// - [mainLocale]: Optional primary locale for translations.
  /// - [useLanguageFallback]: Whether to try language-only codes if specified
  /// locale not found (i.e. 'en_US' -> 'en').
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
  }) {
    if (isoCodes.isEmpty) return const {};
    final locale = mainLocale?.toString();
    final altLocale = fallbackLocale?.toString();

    final localeData = extract(
      locale == null
          ? null
          : {
              ..._localesSet(locale, useLanguageFallback: useLanguageFallback),
              if (altLocale != null)
                ..._localesSet(
                  altLocale,
                  useLanguageFallback: useLanguageFallback,
                ),
            },
    );

    return switch (localeData.length) {
      0 => const {},
      1 => _fromSingle(isoCodes, localeData.entries.first, altSymbol ?? symbol),
      _ => _fromMultiple(isoCodes, localeData, altSymbol ?? symbol),
    };
  }

  Set<String> _localesSet(String locale, {required bool useLanguageFallback}) =>
      // ignore: avoid-substring, locale should has no emoji.
      {locale, if (useLanguageFallback) locale.substring(0, 2)};

  LocaleMap _fromSingle(
    Set<String> codes,
    MapEntry<String, IsoLocaleMapper<String>> localeEntry,
    String altSymbol,
  ) {
    final locale = localeEntry.key;
    final results = localeEntry.value
        .extract(codes, altSymbol: altSymbol)
        .map((code, l10n) => MapEntry((isoCode: code, locale: locale), l10n));
    localeEntry.value.map.clear();
    map.clear();

    return Map.unmodifiable(results);
  }

  LocaleMap _fromMultiple(
    Set<String> codes,
    Map<String, IsoLocaleMapper<String>> localesData,
    String altSymbol,
  ) {
    final results = <LocaleKey, String>{};

    for (final localeEntry in localesData.entries) {
      final translations =
          localeEntry.value.extract(codes, altSymbol: altSymbol);

      for (final code in codes) {
        final key = (isoCode: code, locale: localeEntry.key);
        if (results[key] == null) {
          final l10n = translations[code];
          if (l10n != null) results[key] = l10n;
        }

        final secondary = altKey(code, altSymbol);
        if (secondary == null) continue; // ignore: avoid-continue, early exit.

        final alternative = (isoCode: secondary, locale: localeEntry.key);
        // ignore: avoid-continue, also early exit.
        if (results[alternative] != null) continue;

        final altL10n = translations[secondary];
        if (altL10n != null) results[alternative] = altL10n;
      }

      localeEntry.value.map.clear();
    }
    map.clear();

    return Map.unmodifiable(results);
  }
}
