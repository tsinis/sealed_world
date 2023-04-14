import "package:flutter/material.dart";

class DescriptionTile extends ListTile {
  DescriptionTile(
    String title, {
    required IconData icon,
    required String description,
    super.key,
  }) : super(
          leading: Icon(icon, color: const Color.fromARGB(70, 158, 158, 158)),
          title: SelectableText(title),
          subtitle: SelectableText(
            description,
            style: const TextStyle(fontWeight: FontWeight.w200),
          ),
          dense: true,
        );
}
