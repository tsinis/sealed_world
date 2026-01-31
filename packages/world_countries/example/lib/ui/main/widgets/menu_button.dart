import "dart:async" show unawaited;

import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";

import "../../../../../routing/route_state.dart";
import "../../../../helpers/extensions/parsed_route_settings_extension.dart";
import "../../../helpers/extensions/string_extension.dart";
import "../../../model/constants.dart";
import "../../../notifications/notifications_center.dart";
import "../dialogs/about_app_dialog.dart";

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context);

    return Badge(
      padding: EdgeInsets.zero,
      isLabelVisible: !NotificationsCenter.instance.settingsMenuAccessed,
      alignment: const Alignment(0, -0.13),
      child: PopupMenuButton<String>(
        itemBuilder: (bc) => [
          PopupMenuItem(
            onTap: () =>
                unawaited(routeState.go(routeState.route.pathWithSettings)),
            child: Align(
              alignment: Alignment.centerRight,
              child: MaybeWidget.orNull(
                Constants.settings.toBeginningOfSentenceCase,
                Text.new,
              ),
            ),
          ),
          PopupMenuItem(
            onTap: () => AboutAppDialog.show(bc),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text("About"),
            ),
          ),
        ],
      ),
    );
  }
}
