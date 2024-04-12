// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../widgets/country_flag.dart";
import "../model/world_data.dart";
import "../widgets/abstractions/world_data_tab.dart";
import "../widgets/description_tile.dart";
import "../widgets/tab_body.dart";

final class CountryTab extends WorldDataTab<WorldCountry> {
  CountryTab(
    super.data,
    super.nav, {
    super.dataPicker = const CountryPicker(),
    super.items = WorldCountry.list,
    super.type = WorldData.country,
    super.key,
  });

  @override
  Widget build(BuildContext context) => TabBody(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data.translation(const BasicLocale(LangEng())).name,
              style: context.theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            MaybeWidget(
              data.translation(const BasicLocale(LangEng())).fullName,
              (fullName) => Text(
                fullName,
                style: context.theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        titleOverlay: AbsorbPointer(child: CountryFlag(data, size: 136)),
        titlePadding: const EdgeInsets.only(top: 80, bottom: 8),
        titleMargin: const EdgeInsets.only(top: 100),
        children: <DescriptionTile>[
          DescriptionTile(
            data.namesOfficialNative(separator: ",\n"),
            icon: Icons.flag_circle_outlined,
            description: "Native Official Name(s)",
          ),
          DescriptionTile(
            data.namesCommonNative(separator: ",\n"),
            icon: Icons.flag_outlined,
            description: "Native Common Name(s)",
          ),
          if (kIsWeb)
            DescriptionTile(
              "Only default flags are available in this web example",
              icon: Icons.block_outlined,
              description:
                  "Build this app on a mobile/desktop device to see the all of them",
            )
          else
            for (final emoji in EmojiFamily.values)
              DescriptionTile.raw(
                emoji.projectName,
                description: "Emoji Flag (Vector)",
                leading: SizedBox(
                  width: 24,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: EmojiFlag.fromEmojiFamily(data, emojiFamily: emoji),
                  ),
                ),
              ),
          DescriptionTile.raw(
            "Device Default Emoji",
            description: "Emoji Flag",
            leading: SizedBox(
              width: 24,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: EmojiFlag.platformDefault(data),
              ),
            ),
          ),
          DescriptionTile(
            data.codeNumeric,
            icon: Icons.pin_outlined,
            description:
                """Code: ${IsoStandardized.standardAcronym} ${WorldCountry.standardCodeNumericName}""",
          ),
          DescriptionTile(
            data.code,
            icon: Icons.looks_3_outlined,
            description:
                """Code: ${IsoStandardized.standardAcronym} ${WorldCountry.standardCodeName}""",
          ),
          DescriptionTile(
            data.codeShort,
            icon: Icons.looks_two_outlined,
            description:
                """Code: ${IsoStandardized.standardAcronym} ${WorldCountry.standardCodeShortName}""",
          ),
          DescriptionTile.fromIterable(
            data.tld,
            icon: Icons.dns_outlined,
            description: "Top Level Domain(s)",
          ),
          DescriptionTile(
            data.cioc,
            icon: Icons.sports_basketball_outlined,
            description: "International Olympic Committee",
          ),
          DescriptionTile(
            data.fifa,
            icon: Icons.sports_soccer_outlined,
            description: "FIFA Country Code",
          ),
          DescriptionTile.fromBool(
            isTrue: data.independent,
            icon: Icons.handshake_outlined,
            description: "Independent",
          ),
          DescriptionTile.fromBool(
            isTrue: data.unMember,
            icon: Icons.language_outlined,
            description: "United Nations Member",
          ),
          DescriptionTile.fromIterable(
            data.currencies?.map((currency) => currency.code),
            icon: Icons.payment_outlined,
            description: "Currencies",
          ),
          DescriptionTile(
            data.idd.phoneCode(),
            icon: Icons.call_end_outlined,
            description: "Phone Code",
          ),
          DescriptionTile(
            data.capitalInfo?.capital.deFacto,
            icon: Icons.home_work_outlined,
            description: "Capital",
          ),
          DescriptionTile(
            data.continent.name,
            icon: Icons.public_outlined,
            description: "Continent",
          ),
          DescriptionTile(
            data.subregion?.name,
            icon: Icons.travel_explore_outlined,
            description: "Subregion",
          ),
          DescriptionTile.fromIterable(
            data.languages.map((language) => language.name),
            icon: Icons.translate_outlined,
            description: "Official Language(s)",
          ),
          DescriptionTile(
            """Latitude: ${data.latLng.latitude.toStringAsFixed(2)}, Longitude: ${data.latLng.longitude.toStringAsFixed(2)}""",
            icon: Icons.pin_drop_outlined,
            description: "Geographic Coordinates",
          ),
          DescriptionTile.fromBool(
            isTrue: data.landlocked,
            icon: Icons.vpn_lock_outlined,
            description: "Landlocked Country",
          ),
          DescriptionTile.fromIterable(
            data.bordersCodes?.map((bc) => bc.toUpperCase()),
            icon: Icons.border_style_outlined,
            description: "Borders",
          ),
          DescriptionTile(
            "${data.areaMetric} km²",
            icon: Icons.square_foot_outlined,
            description: "Area",
          ),
          DescriptionTile(
            data.population.toString(),
            icon: Icons.groups_2_outlined,
            description: "Population",
          ),
          DescriptionTile(
            data.demonyms.first.areSame
                ? data.demonyms.first.female
                : """👩: ${data.demonyms.first.female}\n👨: ${data.demonyms.first.male}""",
            icon: Icons.face_outlined,
            description: "Demonym(s)",
          ),
          DescriptionTile(
            data.gini != null
                ? """${data.gini?.coefficient} (${data.gini?.year})"""
                : null,
            icon: Icons.layers_outlined,
            description: "Gini Coefficient",
          ),
          DescriptionTile(
            data.car.sign,
            icon: Icons.directions_car_outlined,
            description: "Vehicle Signs",
          ),
          DescriptionTile.fromBool(
            isTrue: data.car.isRightSide,
            icon: Icons.remove_road_outlined,
            description: "Right-hand Traffic",
          ),
          DescriptionTile(
            "Count: ${data.timezones.length}",
            icon: Icons.schedule_outlined,
            description: "Timezone(s)",
          ),
          DescriptionTile(
            data.startOfWeek.label,
            icon: Icons.today_outlined,
            description: "Start of the Week",
          ),
          DescriptionTile.fromBool(
            isTrue: data.hasCoatOfArms,
            icon: Icons.security_outlined,
            description: "Has Coat Of Arms",
          ),
          DescriptionTile.fromIterable(
            data.altSpellings,
            icon: Icons.spellcheck,
            description: "Alternate Spellings",
          ),
          DescriptionTile.fromIterable(
            data.regionalBlocs?.map((bloc) => bloc.name),
            icon: Icons.grid_view_outlined,
            description: "Regional Bloc(s)",
          ),
          for (final translation in data.translations) ...[
            DescriptionTile.raw(
              translation.fullName,
              description: """Official ${translation.language.name} Name""",
              leading: Text(translation.language.codeShort),
            ),
            DescriptionTile.raw(
              translation.name,
              description: """Common ${translation.language.name} Name""",
              leading: Text(translation.language.codeShort),
            ),
          ],
        ],
      );
}
