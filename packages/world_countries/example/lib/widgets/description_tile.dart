import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

class DescriptionTile extends StatelessWidget {
  const DescriptionTile(
    this._title, {
    required this.icon,
    required this.description,
    super.key,
  });

  final String? _title;
  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) => MaybeWidget(
        _title,
        (title) => Column(
          children: [
            const Divider(height: 1, thickness: 1),
            ListTile(
              leading:
                  Icon(icon, color: const Color.fromARGB(70, 158, 158, 158)),
              title: SelectableText(title),
              subtitle: SelectableText(
                description,
                style: context.theme.textTheme.labelSmall
                    ?.copyWith(fontWeight: FontWeight.w200),
              ),
              dense: true,
            ),
          ],
        ),
      );
}
