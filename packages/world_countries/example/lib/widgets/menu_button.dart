import "package:flutter/material.dart";

import "dialogs/about_app_dialog.dart";

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) => PopupMenuButton<String>(
    itemBuilder: (bc) => [
      PopupMenuItem(
        onTap: () => const AboutAppDialog().show(bc),
        child: const Align(
          alignment: Alignment.centerRight,
          child: Text("About"),
        ),
      ),
    ],
  );
}
