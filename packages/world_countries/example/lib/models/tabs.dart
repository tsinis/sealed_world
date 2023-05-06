import "package:flutter/material.dart" show IconData, Icons;

enum Tabs {
  country(label: "Country", icon: Icons.call_outlined),
  currency(label: "Currency", icon: Icons.payments_outlined),
  language(label: "Language", icon: Icons.language_outlined);

  const Tabs({required this.label, required this.icon});

  final String label;
  final IconData icon;

  R map<R>({required R country, required R currency, required R language}) {
    switch (this) {
      case Tabs.country:
        return country;
      case Tabs.currency:
        return currency;
      case Tabs.language:
        return language;
    }
  }
}
