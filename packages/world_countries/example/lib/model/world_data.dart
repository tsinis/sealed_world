import "package:flutter/material.dart" show IconData, Icons;

import "../helpers/extensions/string_extension.dart";
import "constants.dart";

enum WorldData {
  country(icon: Icons.language_outlined),
  currency(icon: Icons.payments_outlined),
  language(icon: Icons.translate_outlined);

  const WorldData({required this.icon});

  final IconData icon;

  R map<R>({required R country, required R currency, required R language}) {
    switch (this) {
      case WorldData.country:
        return country;
      case WorldData.currency:
        return currency;
      case WorldData.language:
        return language;
    }
  }

  String get path => Constants.slash + name;
  String get pathTemplate => "$path${Constants.slash}:${Constants.code}";
  String? get label => name.toBeginningOfSentenceCase;

  static List<String> get paths {
    final pathList = List<String>.empty(growable: true);

    for (final tab in WorldData.values) {
      pathList.addAll([tab.path, tab.pathTemplate]);
    }

    return List<String>.unmodifiable(pathList);
  }
}
