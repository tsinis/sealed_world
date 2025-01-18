// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the Chinese language
/// and Han (Simplified variant) script locale.
/// and `HK` country/region code locale.
class ZhHansHkCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `zh_Hans_HK` locale.
  ZhHansHkCurrenciesL10N() {
    map.addAll({"KYD": "开曼群岛元"});
  }
}
