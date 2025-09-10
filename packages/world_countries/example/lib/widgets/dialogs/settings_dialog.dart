import "dart:async";

import "package:flutter/material.dart";

final class SettingsDialog extends StatelessWidget {
  const SettingsDialog._();

  static void show(BuildContext context) => unawaited(
    showDialog(context: context, builder: (_) => const SettingsDialog._()),
  );

  @override
  Widget build(BuildContext context) =>
      const AboutDialog(applicationName: "TODO!");
}
