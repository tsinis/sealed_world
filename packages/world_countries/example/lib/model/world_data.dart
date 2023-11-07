import "package:flutter/material.dart" show IconData, Icons;

import "../helpers/extensions/string_extension.dart";
import "constants.dart";

enum WorldData {
  country(icon: Icons.language_outlined),
  currency(icon: Icons.payments_outlined),
  language(icon: Icons.translate_outlined);

  const WorldData({required this.icon});

  final IconData icon;

  R map<R>({required R country, required R currency, required R language}) =>
      switch (this) {
        WorldData.country => country,
        WorldData.currency => currency,
        WorldData.language => language,
      };

  String get path => Constants.slash + name;
  String get pathTemplate => "$path${Constants.slash}:${Constants.code}";
  String? get label => name.toBeginningOfSentenceCase;

  static List<String> get paths => List.unmodifiable(
        WorldData.values.expand((tab) => [tab.path, tab.pathTemplate]),
      );
}
