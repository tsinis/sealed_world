import "dart:async" show unawaited;

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
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 300,
              child: ValueListenableBuilder<WorldCountry>(
                valueListenable: selectedCountry,
                builder: (_, country, __) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          color: Colors.grey,
                          padding: const EdgeInsets.only(top: 80, bottom: 8),
                          margin: const EdgeInsets.only(top: 100),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SelectableText(
                                (country.nameTranslated() ?? country.name)
                                    .common,
                                textAlign: TextAlign.center,
                                style: context.theme.textTheme.headlineSmall,
                              ),
                              SelectableText(
                                (country.nameTranslated() ?? country.name)
                                    .official,
                                textAlign: TextAlign.center,
                                style: context.theme.textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                        AbsorbPointer(child: CountryFlag(country, size: 136)),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        children: <DescriptionTile>[
                          DescriptionTile(
                            country.namesCommonNative(),
                            icon: Icons.flag_outlined,
                            description: "Native name(s)",
                          ),
                          DescriptionTile(
                            country.tld.join("/"),
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
                            description: "International Olympic Committee",
                          ),
                          DescriptionTile(
                            country.fifa,
                            icon: Icons.sports_soccer_outlined,
                            description: "FIFA Country Code",
                          ),
                          DescriptionTile(
                            country.independent ? "Yes" : "No",
                            icon: Icons.groups_2_outlined,
                            description: "Independent",
                          ),
                          DescriptionTile(
                            country.unMember ? "Yes" : "No",
                            icon: Icons.language_outlined,
                            description: "United Nations Member",
                          ),
                          DescriptionTile(
                            country.currencies?.map((c) => c.code).join(", "),
                            icon: Icons.payment_outlined,
                            description: "Currencies",
                          ),
                          DescriptionTile(
                            country.idd.phoneCode(),
                            icon: Icons.call_end_outlined,
                            description: "Phone Code",
                          ),
                          DescriptionTile(
                            country.altSpellings.join(", "),
                            icon: Icons.spellcheck,
                            description: "Alternate Spellings",
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
                          DescriptionTile(
                            country.languages.map((lng) => lng.name).join(", "),
                            icon: Icons.translate_outlined,
                            description: "Official Language(s)",
                          ),
                          DescriptionTile(
                            country.latLng.join(", "),
                            icon: Icons.translate_outlined,
                            description: "latLng",
                          ),
                          DescriptionTile(
                            country.capitalInfo.toString(),
                            icon: Icons.translate_outlined,
                            description: "capitalInfo",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // ignore_for_file: arguments-ordering, vs sort_child_properties_last.
          onPressed: () => unawaited(onFabPressed()),
          child: const Icon(Icons.call_outlined),
        ),
      );
}
