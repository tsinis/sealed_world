// ignore_for_file: avoid-non-ascii-symbols
import "dart:async" show unawaited;
import "dart:ui";

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../../widgets/country_flag.dart";
import "../widgets/description_tile.dart";

class CountryPage extends StatefulWidget {
  const CountryPage({required this.country, super.key});

  final WorldCountry country;

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  late final selectedCountry = ValueNotifier(widget.country);
  late final picker = CountryPicker(
    disabled: const [CountryAfg(), CountryAlb()],
    onSelect: onCountrySelect,
  );

  void onCountrySelect(WorldCountry? newCountry) {
    if (newCountry == null || newCountry == selectedCountry.value) return;
    selectedCountry.value = newCountry;
  }

  Future<void> onFabPressed() async {
    final phonePicker = PhoneCodePicker.fromCountryPicker(picker);
    await phonePicker.showInModalBottomSheet(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () => unawaited(picker.showInSearch(context)),
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () => unawaited(picker.showInSearch(context)),
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              const FittedBox(fit: BoxFit.cover, child: FlutterLogo()),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 300,
                  child: ValueListenableBuilder<WorldCountry>(
                    valueListenable: selectedCountry,
                    builder: (_, country, __) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ColoredBox(
                          color: Colors.white54,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              ClipRect(
                                child: Container(
                                  width: double.infinity,
                                  padding:
                                      const EdgeInsets.only(top: 80, bottom: 8),
                                  margin: const EdgeInsets.only(top: 100),
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SelectableText(
                                          (country.nameTranslated() ??
                                                  country.name)
                                              .common,
                                          textAlign: TextAlign.center,
                                          style: context
                                              .theme.textTheme.headlineSmall,
                                        ),
                                        SelectableText(
                                          (country.nameTranslated() ??
                                                  country.name)
                                              .official,
                                          textAlign: TextAlign.center,
                                          style: context
                                              .theme.textTheme.titleMedium
                                              ?.copyWith(
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              AbsorbPointer(
                                child: CountryFlag(country, size: 136),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: ColoredBox(
                                color: Colors.white54,
                                child: ListView(
                                  physics: const ClampingScrollPhysics(),
                                  children: <DescriptionTile>[
                                    DescriptionTile(
                                      country.namesOfficialNative(
                                        separator: ",\n",
                                      ),
                                      icon: Icons.flag_circle_outlined,
                                      description: "Native Official Name(s)",
                                    ),
                                    DescriptionTile(
                                      country.namesCommonNative(
                                        separator: ",\n",
                                      ),
                                      icon: Icons.flag_outlined,
                                      description: "Native Common Name(s)",
                                    ),
                                    DescriptionTile.fromIterable(
                                      country.tld,
                                      icon: Icons.dns_outlined,
                                      description: "Top level domain(s)",
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
                                    DescriptionTile(
                                      country.cioc,
                                      icon: Icons.sports_basketball_outlined,
                                      description:
                                          "International Olympic Committee",
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
                                      country.currencies
                                          ?.map((cur) => cur.code),
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
                                      country.languages.map((lng) => lng.name),
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
                                      country.bordersCodes
                                          ?.map((bc) => bc.toUpperCase()),
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
                                      description: "Timezones",
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
                                    for (final emoji in [
                                      null,
                                      ...EmojiFamily.values,
                                    ])
                                      DescriptionTile.raw(
                                        emoji?.projectName ??
                                            "Device Default Emoji",
                                        leading: SizedBox(
                                          width: 24,
                                          child: FittedBox(
                                            child: EmojiFlag.fromEmojiFamily(
                                              country,
                                              emojiFamily: emoji,
                                            ),
                                          ),
                                        ),
                                        description: "Emoji Flag (Vector)",
                                      ),
                                    DescriptionTile.fromIterable(
                                      country.altSpellings,
                                      icon: Icons.spellcheck,
                                      description: "Alternate Spellings",
                                    ),
                                    for (final translation
                                        in country.translations) ...[
                                      DescriptionTile.raw(
                                        translation.official,
                                        leading: Text(
                                          translation.language.codeShort,
                                        ),
                                        description:
                                            """Official ${translation.language.name} Name""",
                                      ),
                                      DescriptionTile.raw(
                                        translation.common,
                                        leading: Text(
                                          translation.language.codeShort,
                                        ),
                                        description:
                                            """Common ${translation.language.name} Name""",
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // ignore_for_file: arguments-ordering, vs sort_child_properties_last.
          onPressed: () => unawaited(onFabPressed()),
          child: const Icon(Icons.call_outlined),
        ),
      );
}
