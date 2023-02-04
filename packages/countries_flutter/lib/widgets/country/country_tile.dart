import "package:flutter/material.dart";

import "../../countries_flutter.dart";
import "../../helpers/ui_constants.dart";

class CountryTile extends StatelessWidget {
  const CountryTile(this.country, {this.onPressed, super.key});

  static const fontSize = UiConstants.point * 3;

  final WorldCountry country;
  final ValueSetter<WorldCountry>? onPressed;

  @override
  Widget build(BuildContext context) => Material(
        // Reference: https://github.com/flutter/flutter/issues/86584.
        type: MaterialType.transparency,
        child: ListTile(
          leading: Text(country.emoji),
          title: Text(country.nativeNames.first.common),
          subtitle: Text(country.name.common), // TODO: Change.
          leadingAndTrailingTextStyle: const TextStyle(fontSize: fontSize),
          onTap: () => onPressed?.call(country),
          minLeadingWidth: fontSize + UiConstants.point,
        ),
      );
}
