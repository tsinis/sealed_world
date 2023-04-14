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
          child: ValueListenableBuilder<WorldCountry>(
            valueListenable: selectedCountry,
            builder: (_, country, __) => Align(
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 100,
                    width: 300,
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80, bottom: 8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              (country.nameTranslated() ?? country.nameEnglish)
                                  .common,
                              style: context.theme.textTheme.headlineSmall,
                            ),
                            Text(
                              (country.nameTranslated() ?? country.nameEnglish)
                                  .official,
                              style: context.theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w200),
                            ),
                            const Divider(),
                            ...ListTile.divideTiles(
                              color: context.theme.dividerColor,
                              tiles: [
                                DescriptionTile(
                                  country.namesCommonNative(),
                                  icon: Icons.public_sharp,
                                  description: "Native name(s)",
                                ),
                                DescriptionTile(
                                  country.tld.join(),
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CountryFlag(country, size: 136),
                ],
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
