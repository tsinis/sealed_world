import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";

import "dialogs/about_app_dialog.dart";
import "dialogs/settings_dialog.dart";

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) => PopupMenuButton<String>(
    itemBuilder: (bc) => [
      PopupMenuItem(
        onTap: () => AboutAppDialog.show(bc),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(bc.materialL10n.aboutListTileTitle("")),
        ),
      ),
      PopupMenuItem(
        onTap: () => SettingsDialog.show(bc),
        child: const Align(
          alignment: Alignment.centerRight,
          child: Text("Settings"),
        ),
      ),
    ],
  );
}
