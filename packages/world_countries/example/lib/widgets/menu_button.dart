import "package:flutter/material.dart";

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) => PopupMenuButton<String>(
        itemBuilder: (_) => const [
          PopupMenuItem(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("Feedback"),
            ),
          ),
          PopupMenuItem(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("Settings"),
            ),
          ),
          PopupMenuItem(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("About"),
            ),
          ),
        ],
      );
}
