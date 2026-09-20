import "package:material_ui/material_ui.dart";
import "package:world_countries/world_countries.dart";

void main() => runApp(
  MaterialApp(
    localizationsDelegates: const [
      ...GlobalMaterialLocalizations.delegates,
      TypedLocaleDelegate(), // ! Add for pickers L10N & improved search.
    ],
    theme: ThemeData(
      extensions: const [
        FlagThemeData(
          decoration: BoxDecoration(color: Colors.black26),
          // ignore: deprecated_member_use, on purpose during stage 1.
          child: Text("Old child in world_countries"),
        ),
      ],
    ),
    home: const Scaffold(body: CountryPicker()),
  ),
);
