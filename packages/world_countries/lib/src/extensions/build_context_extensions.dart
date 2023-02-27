import "package:flutter/material.dart";

extension BuildContextExtensions on BuildContext {
  // L10N related shortcuts.
  MaterialLocalizations get materialL10n => MaterialLocalizations.of(this);
  bool get hasMaterialL10n =>
      Localizations.of<MaterialLocalizations>(this, MaterialLocalizations) !=
      null;

  // [Navigator] related shortcuts.
  NavigatorState get navigator => Navigator.of(this);
  void pop<T extends Object>([T? result]) => navigator.pop<T>(result);
  Future<T?> push<T extends Object>(Route<T> route) => navigator.push(route);
  Future<bool> maybePop<T extends Object>([T? result]) =>
      navigator.maybePop<T>(result);

  // Other common shortcuts.
  FocusScopeNode get focus => FocusScope.of(this);
  MediaQueryData get media => MediaQuery.of(this);
  EdgeInsets get padding => media.padding;
  ThemeData get theme => Theme.of(this);

  // Scaffold related shortcuts.
  ScaffoldState get scaffold => Scaffold.of(this);
  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    SnackBar snackBar,
  ) =>
      messenger.showSnackBar(snackBar);
}
