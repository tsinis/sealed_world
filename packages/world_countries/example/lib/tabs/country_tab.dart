// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../widgets/country_flag.dart";
import "../widgets/description_tile.dart";
import "../widgets/tab_body.dart";

class CountryTab extends StatelessWidget {
  const CountryTab(this.country, {super.key});

  final WorldCountry country;

  @override
  Widget build(BuildContext context) => TabBody(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              (country.nameTranslated() ?? country.name).common,
              style: context.theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            Text(
              (country.nameTranslated() ?? country.name).official,
              style: context.theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        titleOverlay: AbsorbPointer(child: CountryFlag(country, size: 136)),
        titlePadding: const EdgeInsets.only(top: 80, bottom: 8),
        titleMargin: const EdgeInsets.only(top: 100),
        children: <DescriptionTile>[
          DescriptionTile(
            country.namesOfficialNative(separator: ",\n"),
            icon: Icons.flag_circle_outlined,
            description: "Native Official Name(s)",
          ),
          DescriptionTile(
            country.namesCommonNative(separator: ",\n"),
            icon: Icons.flag_outlined,
            description: "Native Common Name(s)",
          ),
          for (final emoji in [...EmojiFamily.values, null])
            DescriptionTile.raw(
              emoji?.projectName ?? "Device Default Emoji",
              description: "Emoji Flag (Vector)",
              leading: SizedBox(
                width: 24,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: EmojiFlag.fromEmojiFamily(
                    country,
                    emojiFamily: emoji,
                  ),
                ),
              ),
            ),
          DescriptionTile(
            country.codeNumeric,
            icon: Icons.pin_outlined,
            description: "Code: ISO 3166-1 (CCN3)",
          ),
          DescriptionTile(
            country.code,
            icon: Icons.looks_3_outlined,
            description: "Code: ISO 3166-1 (CCA3)",
          ),
          DescriptionTile(
            country.codeShort,
            icon: Icons.looks_two_outlined,
            description: "Code: ISO 3166-1 (CCA2)",
          ),
          DescriptionTile.fromIterable(
            country.tld,
            icon: Icons.dns_outlined,
            description: "Top level domain(s)",
          ),
          DescriptionTile(
            country.cioc,
            icon: Icons.sports_basketball_outlined,
            description: "International Olympic Committee",
          ),
          DescriptionTile(
            country.fifa,
            icon: Icons.sports_soccer_outlined,
            description: "FIFA Country Code",
          ),
          DescriptionTile.fromBool(
            isTrue: country.independent,
            icon: Icons.handshake_outlined,
            description: "Independent",
          ),
          DescriptionTile.fromBool(
            isTrue: country.unMember,
            icon: Icons.language_outlined,
            description: "United Nations Member",
          ),
          DescriptionTile.fromIterable(
            country.currencies?.map((currency) => currency.code),
            icon: Icons.payment_outlined,
            description: "Currencies",
          ),
          DescriptionTile(
            country.idd.phoneCode(),
            icon: Icons.call_end_outlined,
            description: "Phone Code",
          ),
          DescriptionTile(
            country.capitalInfo?.capital.deFacto,
            icon: Icons.home_work_outlined,
            description: "Capital",
          ),
          DescriptionTile(
            country.continent.name,
            icon: Icons.public_outlined,
            description: "Continent",
          ),
          DescriptionTile(
            country.subregion?.name,
            icon: Icons.travel_explore_outlined,
            description: "Subregion",
          ),
          DescriptionTile.fromIterable(
            country.languages.map((language) => language.name),
            icon: Icons.translate_outlined,
            description: "Official Language(s)",
          ),
          DescriptionTile(
            """Latitude: ${country.latLng.latitude.toStringAsFixed(2)}, Longitude: ${country.latLng.longitude.toStringAsFixed(2)}""",
            icon: Icons.pin_drop_outlined,
            description: "Geographic Coordinates",
          ),
          DescriptionTile.fromBool(
            isTrue: country.landlocked,
            icon: Icons.vpn_lock_outlined,
            description: "Landlocked Country",
          ),
          DescriptionTile.fromIterable(
            country.bordersCodes?.map((bc) => bc.toUpperCase()),
            icon: Icons.border_style_outlined,
            description: "Borders",
          ),
          DescriptionTile(
            "${country.areaMetric} km²",
            icon: Icons.square_foot_outlined,
            description: "Area",
          ),
          DescriptionTile(
            country.population.toString(),
            icon: Icons.groups_2_outlined,
            description: "Population",
          ),
          DescriptionTile(
            country.demonyms.first.areSame
                ? country.demonyms.first.female
                : """👩: ${country.demonyms.first.female}\n👨: ${country.demonyms.first.male}""",
            icon: Icons.face_outlined,
            description: "Demonym(s)",
          ),
          DescriptionTile(
            country.gini != null
                ? """${country.gini?.coefficient} (${country.gini?.year})"""
                : null,
            icon: Icons.layers_outlined,
            description: "Gini Coefficient",
          ),
          DescriptionTile(
            country.car.sign,
            icon: Icons.directions_car_outlined,
            description: "Vehicle Signs",
          ),
          DescriptionTile.fromBool(
            isTrue: country.car.isRightSide,
            icon: Icons.remove_road_outlined,
            description: "Right-hand Traffic",
          ),
          DescriptionTile(
            "Count: ${country.timezones.length}",
            icon: Icons.schedule_outlined,
            description: "Timezone(s)",
          ),
          DescriptionTile(
            country.startOfWeek.label,
            icon: Icons.today_outlined,
            description: "Start of the Week",
          ),
          DescriptionTile.fromBool(
            isTrue: country.hasCoatOfArms,
            icon: Icons.security_outlined,
            description: "Has Coat Of Arms",
          ),
          DescriptionTile.fromIterable(
            country.altSpellings,
            icon: Icons.spellcheck,
            description: "Alternate Spellings",
          ),
          DescriptionTile.fromIterable(
            country.regionalBlocs?.map((bloc) => bloc.name),
            icon: Icons.grid_view_outlined,
            description: "Regional Bloc(s)",
          ),
          for (final translation in country.translations) ...[
            DescriptionTile.raw(
              translation.official,
              description: """Official ${translation.language.name} Name""",
              leading: Text(translation.language.codeShort),
            ),
            DescriptionTile.raw(
              translation.common,
              description: """Common ${translation.language.name} Name""",
              leading: Text(translation.language.codeShort),
            ),
          ],
        ],
      );
}
