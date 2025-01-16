// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// https://github.com/umpirsky/language-list project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

/// Provides language translations for different locales.
library l10n_languages;

import "src/_iso_locale_mapper.dart";
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

/// Provides language names translations for different locales.
// ignore: prefer-match-file-name, it's main library file.
class LanguagesLocaleMapper extends IsoLocaleMapper<IsoLocaleMapper<String>> {
  /// Provides names translations for 157 locales, with the option to
  /// add more translations via the [other] parameter.
  // ignore: avoid-non-empty-constructor-bodies,on purpose.
  LanguagesLocaleMapper({Map<String, IsoLocaleMapper<String>>? other}) {
    map.addAll({
      "af": AfLanguagesL10N(),
      "ak": AkLanguagesL10N(),
      "am": AmLanguagesL10N(),
      "ar": ArLanguagesL10N(),
      "ar_EG": ArEgLanguagesL10N(),
      "as": AsLanguagesL10N(),
      "az": AzLanguagesL10N(),
      "az_Cyrl": AzCyrlLanguagesL10N(),
      "be": BeLanguagesL10N(),
      "bg": BgLanguagesL10N(),
      "bm": BmLanguagesL10N(),
      "bn": BnLanguagesL10N(),
      "bo": BoLanguagesL10N(),
      "br": BrLanguagesL10N(),
      "bs": BsLanguagesL10N(),
      "bs_Cyrl": BsCyrlLanguagesL10N(),
      "ca": CaLanguagesL10N(),
      "ce": CeLanguagesL10N(),
      "cs": CsLanguagesL10N(),
      "cv": CvLanguagesL10N(),
      "cy": CyLanguagesL10N(),
      "da": DaLanguagesL10N(),
      "de": DeLanguagesL10N(),
      "de_CH": DeChLanguagesL10N(),
      "dz": DzLanguagesL10N(),
      "ee": EeLanguagesL10N(),
      "el": ElLanguagesL10N(),
      "en": EnLanguagesL10N(),
      "eo": EoLanguagesL10N(),
      "es": EsLanguagesL10N(),
      "es_MX": EsMxLanguagesL10N(),
      "et": EtLanguagesL10N(),
      "eu": EuLanguagesL10N(),
      "fa": FaLanguagesL10N(),
      "fa_AF": FaAfLanguagesL10N(),
      "ff": FfLanguagesL10N(),
      "ff_Adlm": FfAdlmLanguagesL10N(),
      "fi": FiLanguagesL10N(),
      "fo": FoLanguagesL10N(),
      "fr": FrLanguagesL10N(),
      "fy": FyLanguagesL10N(),
      "ga": GaLanguagesL10N(),
      "gd": GdLanguagesL10N(),
      "gl": GlLanguagesL10N(),
      "gu": GuLanguagesL10N(),
      "gv": GvLanguagesL10N(),
      "ha": HaLanguagesL10N(),
      "he": HeLanguagesL10N(),
      "hi": HiLanguagesL10N(),
      "hr": HrLanguagesL10N(),
      "hu": HuLanguagesL10N(),
      "hy": HyLanguagesL10N(),
      "ia": IaLanguagesL10N(),
      "id": IdLanguagesL10N(),
      "ie": IeLanguagesL10N(),
      "ig": IgLanguagesL10N(),
      "ii": IiLanguagesL10N(),
      "is": IsLanguagesL10N(),
      "it": ItLanguagesL10N(),
      "ja": JaLanguagesL10N(),
      "jv": JvLanguagesL10N(),
      "ka": KaLanguagesL10N(),
      "ki": KiLanguagesL10N(),
      "kk": KkLanguagesL10N(),
      "kl": KlLanguagesL10N(),
      "km": KmLanguagesL10N(),
      "kn": KnLanguagesL10N(),
      "ko": KoLanguagesL10N(),
      "ks": KsLanguagesL10N(),
      "ku": KuLanguagesL10N(),
      "kw": KwLanguagesL10N(),
      "ky": KyLanguagesL10N(),
      "lb": LbLanguagesL10N(),
      "lg": LgLanguagesL10N(),
      "ln": LnLanguagesL10N(),
      "lo": LoLanguagesL10N(),
      "lt": LtLanguagesL10N(),
      "lu": LuLanguagesL10N(),
      "lv": LvLanguagesL10N(),
      "mg": MgLanguagesL10N(),
      "mi": MiLanguagesL10N(),
      "mk": MkLanguagesL10N(),
      "ml": MlLanguagesL10N(),
      "mn": MnLanguagesL10N(),
      "mr": MrLanguagesL10N(),
      "ms": MsLanguagesL10N(),
      "mt": MtLanguagesL10N(),
      "my": MyLanguagesL10N(),
      "nb": NbLanguagesL10N(),
      "nd": NdLanguagesL10N(),
      "ne": NeLanguagesL10N(),
      "nl": NlLanguagesL10N(),
      "nn": NnLanguagesL10N(),
      "no": NoLanguagesL10N(),
      "oc": OcLanguagesL10N(),
      "om": OmLanguagesL10N(),
      "or": OrLanguagesL10N(),
      "os": OsLanguagesL10N(),
      "pa": PaLanguagesL10N(),
      "pa_Arab": PaArabLanguagesL10N(),
      "pl": PlLanguagesL10N(),
      "ps": PsLanguagesL10N(),
      "pt": PtLanguagesL10N(),
      "pt_PT": PtPtLanguagesL10N(),
      "qu": QuLanguagesL10N(),
      "rm": RmLanguagesL10N(),
      "rn": RnLanguagesL10N(),
      "ro": RoLanguagesL10N(),
      "ru": RuLanguagesL10N(),
      "rw": RwLanguagesL10N(),
      "sa": SaLanguagesL10N(),
      "sc": ScLanguagesL10N(),
      "sd": SdLanguagesL10N(),
      "se": SeLanguagesL10N(),
      "se_FI": SeFiLanguagesL10N(),
      "sg": SgLanguagesL10N(),
      "si": SiLanguagesL10N(),
      "sk": SkLanguagesL10N(),
      "sl": SlLanguagesL10N(),
      "sn": SnLanguagesL10N(),
      "so": SoLanguagesL10N(),
      "sq": SqLanguagesL10N(),
      "sr": SrLanguagesL10N(),
      "sr_Latn": SrLatnLanguagesL10N(),
      "su": SuLanguagesL10N(),
      "sv": SvLanguagesL10N(),
      "sv_FI": SvFiLanguagesL10N(),
      "sw": SwLanguagesL10N(),
      "sw_CD": SwCdLanguagesL10N(),
      "sw_KE": SwKeLanguagesL10N(),
      "ta": TaLanguagesL10N(),
      "te": TeLanguagesL10N(),
      "tg": TgLanguagesL10N(),
      "th": ThLanguagesL10N(),
      "ti": TiLanguagesL10N(),
      "tk": TkLanguagesL10N(),
      "tl": TlLanguagesL10N(),
      "to": ToLanguagesL10N(),
      "tr": TrLanguagesL10N(),
      "tt": TtLanguagesL10N(),
      "ug": UgLanguagesL10N(),
      "uk": UkLanguagesL10N(),
      "ur": UrLanguagesL10N(),
      "ur_IN": UrInLanguagesL10N(),
      "uz": UzLanguagesL10N(),
      "uz_Arab": UzArabLanguagesL10N(),
      "uz_Cyrl": UzCyrlLanguagesL10N(),
      "vi": ViLanguagesL10N(),
      "wo": WoLanguagesL10N(),
      "xh": XhLanguagesL10N(),
      "yi": YiLanguagesL10N(),
      "yo": YoLanguagesL10N(),
      "yo_BJ": YoBjLanguagesL10N(),
      "za": ZaLanguagesL10N(),
      "zh": ZhLanguagesL10N(),
      "zh_Hant": ZhHantLanguagesL10N(),
      "zu": ZuLanguagesL10N(),
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
  /// final map = mapper.localize({'FRA', 'RUS'}, mainLocale: 'en');
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
