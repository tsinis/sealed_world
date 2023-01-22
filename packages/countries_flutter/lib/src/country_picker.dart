import "package:countries_dart/countries_dart.dart";
import "package:flutter/widgets.dart";

class CountryPicker extends StatelessWidget {
  const CountryPicker({this.countries = const [], super.key});

  /// The countries to display.
  final Iterable<Country> countries;

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}
