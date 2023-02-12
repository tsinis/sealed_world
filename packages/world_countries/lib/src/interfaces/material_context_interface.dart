// ignore_for_file: long-parameter-list, format-comment
import "package:flutter/material.dart";

import "../constants/ui_constants.dart";

abstract class MaterialContextInterface<T extends Object> {
  /// Shows a modal Material Design bottom sheet.
  ///
  /// {@macro flutter.material.ModalBottomSheetRoute}
  ///
  /// {@macro flutter.widgets.RawDialogRoute}
  ///
  /// [heightFactor]
  /// {@macro flutter.widgets.basic.fractionallySizedBox.heightFactor}
  ///
  /// The `context` argument is used to look up the [Navigator] and [Theme] for
  /// the bottom sheet. It is only used when the method is called. Its
  /// corresponding widget can be safely removed from the tree before the bottom
  /// sheet is closed.
  ///
  /// The `useRootNavigator` parameter ensures that the root navigator is used
  /// to display the [BottomSheet] when set to `true`. This is useful in the
  /// case that a modal [BottomSheet] needs to be displayed above all other
  /// content but the caller is inside another [Navigator].
  ///
  /// Returns a `Future` that resolves to the value (if any) that was passed to
  /// [Navigator.pop] when the modal bottom sheet was closed.
  ///
  /// {@tool dartpad}
  /// This example demonstrates how to use [showModalBottomSheet] to display a
  /// bottom sheet that obscures the content behind it when a user taps a button
  /// It also demonstrates how to close the bottom sheet using the [Navigator]
  /// when a user taps on a button inside the bottom sheet.
  ///
  /// ** See code in examples/api/lib/material/bottom_sheet/show_modal_bottom_sheet.0.dart **
  /// {@end-tool}
  ///
  /// {@tool dartpad}
  /// This sample shows the creation of [showModalBottomSheet], as described in:
  /// https://m3.material.io/components/bottom-sheets/overview
  ///
  /// ** See code in examples/api/lib/material/bottom_sheet/show_modal_bottom_sheet.1.dart **
  /// {@end-tool}
  ///
  /// See also:
  ///
  ///  * [BottomSheet], which becomes the parent of the widget returned by the
  ///    function passed as the `builder` argument to [showModalBottomSheet].
  ///  * [showBottomSheet] and [ScaffoldState.showBottomSheet], for showing
  ///    non-modal bottom sheets.
  ///  * [DraggableScrollableSheet], creates a bottom sheet that grows
  ///    and then becomes scrollable once it reaches its maximum size.
  ///  * [DisplayFeatureSubScreen], which documents the specifics of how
  ///    display features can split the screen into sub-screens.
  ///  * <https://material.io/design/components/sheets-bottom.html#modal-bottom-sheet>
  Future<T?> showInModalBottomSheet(
    BuildContext context, {
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape = UiConstants.shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = true,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    double? heightFactor = 0.6,
  });

  Future<T?> showInSearch();
}
