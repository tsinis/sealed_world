// ignore_for_file: deprecated_member_use, until deprecation is removed.
import "package:material_ui/material_ui.dart";
import "package:world_flags/world_flags.dart";

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      extensions: const [
        FlagThemeData(aspectRatio: 1, child: Text("Old child in theme")),
      ],
    ),
    home: Scaffold(
      body: MaybeWidget(const CountryAfg().flagProperties, BasicFlag.new),
    ),
  ),
);
