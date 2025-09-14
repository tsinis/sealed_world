import "package:flutter/material.dart";

class SettingsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SettingsAppBar({this.onReset, super.key});

  final VoidCallback? onReset;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    animateColor: true,
    forceMaterialTransparency: true,
    title: const Text("Flag Settings"),
    leading: const BackButton(),
    actions: [
      IconButton(
        icon: const Icon(Icons.restore_rounded),
        tooltip: "Reset to default settings",
        onPressed: onReset,
      ),
    ],
  );
}
