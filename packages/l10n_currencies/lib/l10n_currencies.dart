// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// https://github.com/umpirsky/currency-list project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

// ignore_for_file: avoid-collection-mutating-methods

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

  /// Lazy factories — static final means this map is only created once,
  /// and the tear-offs (.new) don't invoke constructors until called.
  static final _factories = <String, IsoLocaleMapper<String> Function()>{
    "af": AfCurrenciesL10N.new,
    "ak": AkCurrenciesL10N.new,
    "am": AmCurrenciesL10N.new,
    "ar": ArCurrenciesL10N.new,
    "as": AsCurrenciesL10N.new,
    "az": AzCurrenciesL10N.new,
    "be": BeCurrenciesL10N.new,
    "bg": BgCurrenciesL10N.new,
    "bm": BmCurrenciesL10N.new,
    "bn": BnCurrenciesL10N.new,
    "bo": BoCurrenciesL10N.new,
    "br": BrCurrenciesL10N.new,
    "bs": BsCurrenciesL10N.new,
    "bs_Cyrl": BsCyrlCurrenciesL10N.new,
    "ca": CaCurrenciesL10N.new,
    "ce": CeCurrenciesL10N.new,
    "cs": CsCurrenciesL10N.new,
    "cv": CvCurrenciesL10N.new,
    "cy": CyCurrenciesL10N.new,
    "da": DaCurrenciesL10N.new,
    "de": DeCurrenciesL10N.new,
    "de_CH": DeChCurrenciesL10N.new,
    "dz": DzCurrenciesL10N.new,
    "ee": EeCurrenciesL10N.new,
    "el": ElCurrenciesL10N.new,
    "en": EnCurrenciesL10N.new,
    "en_AU": EnAuCurrenciesL10N.new,
    "en_GG": EnGgCurrenciesL10N.new,
    "es": EsCurrenciesL10N.new,
    "es_CL": EsClCurrenciesL10N.new,
    "es_GT": EsGtCurrenciesL10N.new,
    "es_MX": EsMxCurrenciesL10N.new,
    "et": EtCurrenciesL10N.new,
    "eu": EuCurrenciesL10N.new,
    "fa": FaCurrenciesL10N.new,
    "fa_AF": FaAfCurrenciesL10N.new,
    "ff": FfCurrenciesL10N.new,
    "fi": FiCurrenciesL10N.new,
    "fo": FoCurrenciesL10N.new,
    "fr": FrCurrenciesL10N.new,
    "fr_CA": FrCaCurrenciesL10N.new,
    "fy": FyCurrenciesL10N.new,
    "ga": GaCurrenciesL10N.new,
    "gd": GdCurrenciesL10N.new,
    "gl": GlCurrenciesL10N.new,
    "gu": GuCurrenciesL10N.new,
    "ha": HaCurrenciesL10N.new,
    "he": HeCurrenciesL10N.new,
    "hi": HiCurrenciesL10N.new,
    "hr": HrCurrenciesL10N.new,
    "hu": HuCurrenciesL10N.new,
    "hy": HyCurrenciesL10N.new,
    "ia": IaCurrenciesL10N.new,
    "id": IdCurrenciesL10N.new,
    "ig": IgCurrenciesL10N.new,
    "is": IsCurrenciesL10N.new,
    "it": ItCurrenciesL10N.new,
    "ja": JaCurrenciesL10N.new,
    "jv": JvCurrenciesL10N.new,
    "ka": KaCurrenciesL10N.new,
    "ki": KiCurrenciesL10N.new,
    "kk": KkCurrenciesL10N.new,
    "km": KmCurrenciesL10N.new,
    "kn": KnCurrenciesL10N.new,
    "ko": KoCurrenciesL10N.new,
    "ks": KsCurrenciesL10N.new,
    "ku": KuCurrenciesL10N.new,
    "ky": KyCurrenciesL10N.new,
    "lb": LbCurrenciesL10N.new,
    "lg": LgCurrenciesL10N.new,
    "ln": LnCurrenciesL10N.new,
    "lo": LoCurrenciesL10N.new,
    "lt": LtCurrenciesL10N.new,
    "lu": LuCurrenciesL10N.new,
    "lv": LvCurrenciesL10N.new,
    "mg": MgCurrenciesL10N.new,
    "mi": MiCurrenciesL10N.new,
    "mk": MkCurrenciesL10N.new,
    "ml": MlCurrenciesL10N.new,
    "mn": MnCurrenciesL10N.new,
    "mr": MrCurrenciesL10N.new,
    "ms": MsCurrenciesL10N.new,
    "my": MyCurrenciesL10N.new,
    "nb": NbCurrenciesL10N.new,
    "nd": NdCurrenciesL10N.new,
    "ne": NeCurrenciesL10N.new,
    "nl": NlCurrenciesL10N.new,
    "nn": NnCurrenciesL10N.new,
    "no": NoCurrenciesL10N.new,
    "om": OmCurrenciesL10N.new,
    "or": OrCurrenciesL10N.new,
    "os": OsCurrenciesL10N.new,
    "pa": PaCurrenciesL10N.new,
    "pa_Arab": PaArabCurrenciesL10N.new,
    "pl": PlCurrenciesL10N.new,
    "ps": PsCurrenciesL10N.new,
    "pt": PtCurrenciesL10N.new,
    "pt_MO": PtMoCurrenciesL10N.new,
    "pt_MZ": PtMzCurrenciesL10N.new,
    "pt_PT": PtPtCurrenciesL10N.new,
    "qu": QuCurrenciesL10N.new,
    "rm": RmCurrenciesL10N.new,
    "rn": RnCurrenciesL10N.new,
    "ro": RoCurrenciesL10N.new,
    "ru": RuCurrenciesL10N.new,
    "sa": SaCurrenciesL10N.new,
    "sc": ScCurrenciesL10N.new,
    "sd": SdCurrenciesL10N.new,
    "se": SeCurrenciesL10N.new,
    "sg": SgCurrenciesL10N.new,
    "si": SiCurrenciesL10N.new,
    "sk": SkCurrenciesL10N.new,
    "sl": SlCurrenciesL10N.new,
    "sn": SnCurrenciesL10N.new,
    "so": SoCurrenciesL10N.new,
    "sq": SqCurrenciesL10N.new,
    "sr": SrCurrenciesL10N.new,
    "sr_Latn": SrLatnCurrenciesL10N.new,
    "su": SuCurrenciesL10N.new,
    "sv": SvCurrenciesL10N.new,
    "sw": SwCurrenciesL10N.new,
    "sw_CD": SwCdCurrenciesL10N.new,
    "ta": TaCurrenciesL10N.new,
    "te": TeCurrenciesL10N.new,
    "tg": TgCurrenciesL10N.new,
    "th": ThCurrenciesL10N.new,
    "ti": TiCurrenciesL10N.new,
    "tk": TkCurrenciesL10N.new,
    "tl": TlCurrenciesL10N.new,
    "to": ToCurrenciesL10N.new,
    "tr": TrCurrenciesL10N.new,
    "ug": UgCurrenciesL10N.new,
    "uk": UkCurrenciesL10N.new,
    "ur": UrCurrenciesL10N.new,
    "ur_IN": UrInCurrenciesL10N.new,
    "uz": UzCurrenciesL10N.new,
    "uz_Arab": UzArabCurrenciesL10N.new,
    "uz_Cyrl": UzCyrlCurrenciesL10N.new,
    "vi": ViCurrenciesL10N.new,
    "wo": WoCurrenciesL10N.new,
    "xh": XhCurrenciesL10N.new,
    "yi": YiCurrenciesL10N.new,
    "yo": YoCurrenciesL10N.new,
    "yo_BJ": YoBjCurrenciesL10N.new,
    "zh": ZhCurrenciesL10N.new,
    "zh_HK": ZhHkCurrenciesL10N.new,
    "zh_Hans_HK": ZhHansHkCurrenciesL10N.new,
    "zh_Hant": ZhHantCurrenciesL10N.new,
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

    return LocaleMap.unmodifiable(results);
  }
}
