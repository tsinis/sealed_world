// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../model/world_data.dart";
import "../widgets/abstractions/world_data_tab.dart";
import "../widgets/description_tile.dart";
import "../widgets/tab_body.dart";

final class CurrencyTab extends WorldDataTab<FiatCurrency> {
  CurrencyTab(
    super.data,
    super.nav, {
    super.dataPicker = const CurrencyPicker(),
    super.items = FiatCurrency.list,
    super.type = WorldData.currency,
    super.key,
  }) : super(mapCode: (currency) => currency.code);

  @override
  Widget build(BuildContext context) => TabBody(
        title: Text(
          data.name,
          style: context.theme.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        children: <DescriptionTile>[
          DescriptionTile.fromIterable(
            data.namesNative,
            icon: Icons.badge_outlined,
            description: "Native Name(s)",
          ),
          DescriptionTile(
            data.code,
            icon: Icons.looks_3_outlined,
            description: "Code: ISO 4217 (Alpha)",
          ),
          DescriptionTile(
            data.codeNumeric,
            icon: Icons.pin_outlined,
            description: "Code: ISO 4217 (Numeric)",
          ),
          DescriptionTile(
            data.symbol,
            icon: Icons.euro_symbol_outlined,
            description: "Symbol",
          ),
          DescriptionTile(
            data.subunit,
            icon: Icons.payments_outlined,
            description: "Subunit",
          ),
          DescriptionTile(
            data.subunitToUnit.toString(),
            icon: Icons.savings_outlined,
            description: "Subunits in Unit",
          ),
          DescriptionTile(
            data.disambiguateSymbol,
            icon: Icons.key_outlined,
            description: "Disambiguate Symbol",
          ),
          DescriptionTile(
            data.htmlEntity,
            icon: Icons.html_outlined,
            description: "HTML Entity",
          ),
          DescriptionTile(
            data.priority.toString(),
            icon: Icons.scale_outlined,
            description: "Priority",
          ),
          DescriptionTile.fromBool(
            isTrue: data.unitFirst,
            icon: Icons.first_page_outlined,
            description: "Unit First",
          ),
          DescriptionTile.fromIterable(
            data.alternateSymbols,
            icon: Icons.monetization_on_outlined,
            description: "Alt. Symbols",
          ),
          DescriptionTile(
            data.decimalMark,
            icon: Icons.money_outlined,
            description: "Decimal Mark",
          ),
          DescriptionTile(
            data.thousandsSeparator,
            icon: Icons.space_bar_outlined,
            description: "Thousands Separator",
          ),
          DescriptionTile(
            data.smallestDenomination.toString(),
            icon: Icons.eject_outlined,
            description: "Smallest Denomination",
          ),
        ],
      );
}
