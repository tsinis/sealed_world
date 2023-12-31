import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";

class DescriptionTile extends StatelessWidget {
  DescriptionTile(
    this._title, {
    required IconData icon,
    required this.description,
    super.key,
  }) : _leading = Icon(icon, color: leadingColor);

  DescriptionTile.fromBool({
    required bool isTrue,
    required IconData icon,
    required this.description,
    super.key,
  })  : _title = isTrue ? "Yes" : "No",
        _leading = Icon(icon, color: leadingColor);

  DescriptionTile.fromIterable(
    Iterable<Object>? iterable, {
    required IconData icon,
    required this.description,
    super.key,
  })  : _title = iterable?.join(", "),
        _leading = Icon(icon, color: leadingColor);

  const DescriptionTile.raw(
    this._title, {
    required this.description,
    Widget? leading,
    super.key,
  }) : _leading = leading;

  static const leadingColor = Color.fromARGB(125, 100, 100, 100);

  final String? _title;
  final Widget? _leading;
  final String description;

  @override
  Widget build(BuildContext context) => MaybeWidget(
        _title,
        (title) => Column(
          children: [
            Divider(
              height: 1,
              thickness: 1,
              color: leadingColor.withOpacity(0.1),
            ),
            ListTile(
              leading: _leading,
              title: Text(title),
              subtitle: Text(
                description,
                style: context.theme.textTheme.labelSmall
                    ?.copyWith(fontWeight: FontWeight.w300),
              ),
              dense: true,
              leadingAndTrailingTextStyle: const TextStyle(
                color: leadingColor,
                fontSize: UiConstants.point * 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
