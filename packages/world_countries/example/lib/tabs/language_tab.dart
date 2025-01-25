import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../model/world_data.dart";
import "../widgets/abstractions/world_data_tab.dart";
import "../widgets/description_tile.dart";
import "../widgets/tab_body.dart";

final class LanguageTab extends WorldDataTab<BasicLocale, NaturalLanguage> {
  LanguageTab(
    super.data,
    super.nav, {
    super.dataPicker = const LanguagePicker(),
    super.items = NaturalLanguage.list,
    super.type = WorldData.language,
    super.key,
  });

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
            data.bibliographicCode,
            icon: Icons.filter_3_outlined,
            description:
                """Code: ${IsoStandardized.standardAcronym} ${NaturalLanguage.standardBibliographicCodeName}""",
          ),
          DescriptionTile(
            data.code,
            icon: Icons.looks_3_outlined,
            description:
                """Code: ${IsoStandardized.standardAcronym} ${NaturalLanguage.standardCodeName}""",
          ),
          DescriptionTile(
            data.codeShort,
            icon: Icons.looks_two_outlined,
            description:
                """Code: ${IsoStandardized.standardAcronym} ${NaturalLanguage.standardCodeShortName}""",
          ),
          DescriptionTile(
            data.family.name,
            icon: Icons.diversity_2_outlined,
            description: "Family Name",
          ),
          DescriptionTile.fromBool(
            isTrue: data.isRightToLeft,
            icon: Icons.first_page_outlined,
            description: "Right to Left",
          ),
          for (final script in data.scripts)
            DescriptionTile(
              script.name,
              icon: Icons.history_edu_outlined,
              description: "Script code: ${script.code}",
            ),
        ],
      );
}
