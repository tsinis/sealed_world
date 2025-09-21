import "package:flutter/material.dart";

import "../../../main/abstractions/world_data_tab.dart";
import "sliver_settings_app_bar.dart";

final class SettingsToolbar extends StatelessWidget {
  const SettingsToolbar(this.title, {required this.onReset, super.key});

  final String title;
  final VoidCallback? onReset;

  @override
  Widget build(BuildContext context) => Container(
    color: context.theme.appBarTheme.backgroundColor,
    height: SliverSettingsAppBar.toolbarHeight,
    child: Row(
      children: [
        const BackButton(),
        Expanded(
          child: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
        IconButton(
          icon: const Icon(Icons.restore_rounded),
          tooltip: "Reset to default settings",
          onPressed: onReset,
        ),
      ],
    ),
  );
}
