import "package:countries_dart/countries_dart.dart";
import "package:flutter/material.dart";

import "../../helpers/ui_constants.dart";

class CountryTile extends ListTile {
  const CountryTile(
    this.country, {
    super.subtitle,
    super.title,
    super.leading,
    this.onPressed,
    this.isChosen = false,
    this.chosenIcon = const Icon(Icons.beenhere_outlined),
    super.minLeadingWidth,
    super.leadingAndTrailingTextStyle,
    super.key,
  }) : super(selected: isChosen);

  static const fontSize = UiConstants.point * 3;

  final Widget? chosenIcon;
  final WorldCountry country;
  final bool isChosen;
  final ValueSetter<WorldCountry>? onPressed;

  @override
  Widget build(BuildContext context) => Material(
        // Reference: https://github.com/flutter/flutter/issues/86584.
        type: MaterialType.transparency,
        child: ListTile(
          leading: leading ?? Text(country.emoji),
          title: title ?? Text(country.namesNative.first.common),
          subtitle: subtitle ??
              Text(
                country.namesCommonNative(skipFirst: true) ??
                    country.name.common,
                overflow: TextOverflow.ellipsis,
              ),
          trailing: isChosen ? chosenIcon : null,
          leadingAndTrailingTextStyle: leadingAndTrailingTextStyle ??
              const TextStyle(fontSize: fontSize),
          onTap: () => onPressed?.call(country),
          selected: isChosen,
          minLeadingWidth: minLeadingWidth ?? fontSize + UiConstants.point,
        ),
      );
}
