// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../widgets/description_tile.dart";
import "../widgets/tab_body.dart";

class LanguageTab extends StatelessWidget {
  const LanguageTab(this.language, {super.key});

  final NaturalLanguage language;

  @override
  Widget build(BuildContext context) => TabBody(
        title: SelectableText(
          language.name,
          style: context.theme.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        children: <DescriptionTile>[
          DescriptionTile.fromIterable(
            language.namesNative,
            icon: Icons.badge_outlined,
            description: "Native Name(s)",
          ),
          DescriptionTile(
            language.bibliographicCode,
            icon: Icons.filter_3_outlined,
            description: "Code: ISO 639-2 (Bibliographic)",
          ),
          DescriptionTile(
            language.code,
            icon: Icons.looks_3_outlined,
            description: "Code: ISO 639-2 (Terminological)",
          ),
          DescriptionTile(
            language.codeShort,
            icon: Icons.looks_two_outlined,
            description: "Code: ISO 639-1",
          ),
          DescriptionTile(
            language.family.name,
            icon: Icons.diversity_2_outlined,
            description: "Family Name",
          ),
          DescriptionTile.fromBool(
            isTrue: language.isRightToLeft,
            icon: Icons.first_page_outlined,
            description: "Right to Left",
          ),
        ],
      );
}
