// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../widgets/description_tile.dart";
import "../widgets/tab_body.dart";

class CurrencyTab extends StatelessWidget {
  const CurrencyTab(this.currency, {super.key});

  final FiatCurrency currency;

  @override
  Widget build(BuildContext context) => TabBody(
        title: Text(
          currency.name,
          style: context.theme.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        children: <DescriptionTile>[
          DescriptionTile.fromIterable(
            currency.namesNative,
            icon: Icons.badge_outlined,
            description: "Native Name(s)",
          ),
          DescriptionTile(
            currency.code,
            icon: Icons.looks_3_outlined,
            description: "Code: ISO 4217 (Alpha)",
          ),
          DescriptionTile(
            currency.codeNumeric,
            icon: Icons.pin_outlined,
            description: "Code: ISO 4217 (Numeric)",
          ),
          DescriptionTile(
            currency.symbol,
            icon: Icons.euro_symbol_outlined,
            description: "Symbol",
          ),
          DescriptionTile(
            currency.subunit,
            icon: Icons.payments_outlined,
            description: "Subunit",
          ),
          DescriptionTile(
            currency.subunitToUnit.toString(),
            icon: Icons.savings_outlined,
            description: "Subunits in Unit",
          ),
          DescriptionTile(
            currency.disambiguateSymbol,
            icon: Icons.key_outlined,
            description: "Disambiguate Symbol",
          ),
          DescriptionTile(
            currency.htmlEntity,
            icon: Icons.html_outlined,
            description: "HTML Entity",
          ),
          DescriptionTile(
            currency.priority.toString(),
            icon: Icons.scale_outlined,
            description: "Priority",
          ),
          DescriptionTile.fromBool(
            isTrue: currency.unitFirst,
            icon: Icons.first_page_outlined,
            description: "Unit First",
          ),
          DescriptionTile.fromIterable(
            currency.alternateSymbols,
            icon: Icons.monetization_on_outlined,
            description: "Alt. Symbols",
          ),
          DescriptionTile(
            currency.decimalMark,
            icon: Icons.money_outlined,
            description: "Decimal Mark",
          ),
          DescriptionTile(
            currency.thousandsSeparator,
            icon: Icons.space_bar_outlined,
            description: "Thousands Separator",
          ),
          DescriptionTile(
            currency.smallestDenomination.toString(),
            icon: Icons.eject_outlined,
            description: "Smallest Denomination",
          ),
        ],
      );
}
