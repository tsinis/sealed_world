import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      extensions: const [
        FlagThemeData(
          decoration: BoxDecoration(color: Colors.blue),
          // ignore: deprecated_member_use, on purpose during stage 1.
          child: Text("Old child in world_countries"),
        ),
      ],
    ),
    home: const Scaffold(body: Center(child: CountryPicker())),
  ),
);
