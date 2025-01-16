// ignore_for_file: public_member_api_docs, this is not public api.

typedef LocaleKey = ({String isoCode, String locale});
typedef LocaleMap = Map<LocaleKey, String>;

class IsoLocaleMapper<V extends Object> {
  // ignore: prefer-declaring-const-constructor, map is runtime mutable.
  IsoLocaleMapper({Map<String, V>? other}) : map = other ?? {};
  final Map<String, V> map;

  String? altKey(String key, String altSymbol) =>
      altSymbol.isEmpty ? null : key + altSymbol;

  Map<String, V> extract(Iterable<String>? keys, {String altSymbol = ""}) {
    final uniqueKeys = keys?.toSet();
    if (uniqueKeys == null && map.isNotEmpty) return map;

    final results = <String, V>{};
    for (final key in uniqueKeys ?? const <String>{}) {
      final value = map[key];
      if (value != null) results[key] = value;
      final secondary = altKey(key, altSymbol);
      if (secondary == null) continue; // ignore: avoid-continue, more readable.

      final altValue = map[secondary];
      if (altValue != null) results[secondary] = altValue;
    }

    return results;
  }
}
