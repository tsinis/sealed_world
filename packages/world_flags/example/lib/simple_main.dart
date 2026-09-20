// ignore_for_file: deprecated_member_use, until deprecation is removed.
import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      extensions: const [
        FlagThemeData(
          decoration: BoxDecoration(color: Colors.red),
          child: Text("Old child in theme"),
        ),
      ],
    ),
    home: Scaffold(
      body: MaybeWidget(
        const CountryAfg().flagProperties,
        (properties) => Center(
          child: BasicFlag(properties, child: const Text("Old child in flag")),
        ),
      ),
    ),
  ),
);
