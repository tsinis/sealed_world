import "dart:math" show max;

import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";

import "../theme/app_metrics.dart";
import "list_row_slot.dart";

/// Places a title and a subtitle on the baselines of a Material 3 list tile:
/// 32 and 52 points from the top (28 and 48 when dense), or stacks them with
/// 8 points around when they don't fit, e.g. multiline text.
///
/// The text gets the full width, like in a list tile, so it's aligned by its
/// own text direction.
class ListRowText
    extends SlottedMultiChildRenderObjectWidget<ListRowSlot, RenderBox> {
  const new({
    required this.title,
    required this.subtitle,
    required this.isDense,
    super.key,
  });

  final Widget title;
  final Widget? subtitle;
  final bool isDense;

  @override
  Iterable<ListRowSlot> get slots => ListRowSlot.values;

  @override
  Widget? childForSlot(ListRowSlot slot) => switch (slot) {
    ListRowSlot.title => title,
    ListRowSlot.subtitle => subtitle,
  };

  @override
  SlottedContainerRenderObjectMixin<ListRowSlot, RenderBox> createRenderObject(
    BuildContext context,
  ) => _RenderListRowText(isDense: isDense);

  @override
  void updateRenderObject(
    BuildContext context,
    SlottedContainerRenderObjectMixin<ListRowSlot, RenderBox> renderObject,
  ) {
    if (renderObject is _RenderListRowText) renderObject.isDense = isDense;
  }
}

/// The height and the alphabetic baseline of a laid out text.
typedef _Metrics = ({double baseline, double height});

/// The size of the text block and the vertical offsets of its lines.
typedef _Layout = ({Size size, double subtitleTop, double titleTop});

class _RenderListRowText extends RenderBox
    with SlottedContainerRenderObjectMixin<ListRowSlot, RenderBox> {
  new({required this._isDense});

  bool get isDense => _isDense;
  bool _isDense;
  set isDense(bool value) {
    if (_isDense == value) return;
    _isDense = value;
    markNeedsLayout();
  }

  static const _minVerticalPadding = 8.0;

  RenderBox? get _title => childForSlot(ListRowSlot.title);
  RenderBox? get _subtitle => childForSlot(ListRowSlot.subtitle);

  double get _targetHeight =>
      AppMetrics.densityAdjustment +
      switch ((_subtitle != null, isDense)) {
        (true, true) => 64,
        (true, false) => 72,
        (false, true) => 48,
        (false, false) => 56,
      };

  static Offset _offsetOf(RenderBox child) => switch (child.parentData) {
    final BoxParentData data => data.offset,
    _ => Offset.zero,
  };

  static void _place(RenderBox? child, double y) {
    final data = child?.parentData;
    if (data is BoxParentData) data.offset = Offset(0, y);
  }

  static _Metrics _measure(
    RenderBox child,
    BoxConstraints constraints,
    ChildLayouter layoutChild,
    ChildBaselineGetter getBaseline,
  ) {
    final height = layoutChild(child, constraints).height;
    final baseline = getBaseline(child, constraints, TextBaseline.alphabetic);

    return (baseline: baseline ?? height, height: height);
  }

  /// Lays out (or dry lays out) the text like a Material 3 list tile: the
  /// upper line is the title and the lower one is the subtitle.
  _Layout _computeLayout(
    BoxConstraints constraints,
    ChildLayouter layoutChild,
    ChildBaselineGetter getBaseline,
  ) {
    final width = constraints.maxWidth;
    final textConstraints = BoxConstraints.tightFor(width: width);
    final upperChild = _title;
    final lowerChild = _subtitle;
    if (upperChild == null) {
      final size = constraints.constrain(Size(width, _targetHeight));

      return (size: size, subtitleTop: 0, titleTop: 0);
    }

    return lowerChild == null
        ? _layoutOneLine(
            constraints,
            _measure(upperChild, textConstraints, layoutChild, getBaseline),
          )
        : _layoutTwoLines(
            constraints,
            _measure(upperChild, textConstraints, layoutChild, getBaseline),
            _measure(lowerChild, textConstraints, layoutChild, getBaseline),
          );
  }

  /// A title alone is centered.
  _Layout _layoutOneLine(BoxConstraints constraints, _Metrics head) {
    final height = max(_targetHeight, head.height + _minVerticalPadding * 2);
    final size = constraints.constrain(Size(constraints.maxWidth, height));

    return (size: size, subtitleTop: 0, titleTop: (height - head.height) / 2);
  }

  /// A title and a subtitle are placed on the baselines of a list tile, or
  /// stacked (compact) when they don't fit there.
  _Layout _layoutTwoLines(
    BoxConstraints constraints,
    _Metrics head,
    _Metrics tail,
  ) {
    final idealRaised = (isDense ? 28 : 32) - head.baseline;
    final idealLowered =
        (isDense ? 48 : 52) + AppMetrics.densityAdjustment / 2 - tail.baseline;
    final halfOverlap = max(idealRaised + head.height - idealLowered, 0) / 2;
    final raised = idealRaised - halfOverlap;
    final lowered = idealLowered + halfOverlap;
    final isCompact =
        raised < _minVerticalPadding ||
        lowered + tail.height + _minVerticalPadding > _targetHeight;
    final height = isCompact
        ? head.height + tail.height + _minVerticalPadding * 2
        : _targetHeight;

    return (
      size: constraints.constrain(Size(constraints.maxWidth, height)),
      subtitleTop: isCompact ? head.height + _minVerticalPadding : lowered,
      titleTop: isCompact ? _minVerticalPadding : raised,
    );
  }

  @override
  void performLayout() {
    final layout = _computeLayout(
      constraints,
      ChildLayoutHelper.layoutChild,
      ChildLayoutHelper.getBaseline,
    );
    _place(_title, layout.titleTop);
    _place(_subtitle, layout.subtitleTop);
    size = layout.size;
  }

  @override
  Size computeDryLayout(covariant BoxConstraints constraints) => _computeLayout(
    constraints,
    ChildLayoutHelper.dryLayoutChild,
    ChildLayoutHelper.getDryBaseline,
  ).size;

  @override
  double? computeDistanceToActualBaseline(TextBaseline baseline) {
    final titleBox = _title;
    if (titleBox == null) return null;
    final distance = titleBox.getDistanceToActualBaseline(baseline);

    return distance == null ? null : distance + _offsetOf(titleBox).dy;
  }

  @override
  double computeMinIntrinsicWidth(double height) => max(
    _title?.getMinIntrinsicWidth(double.infinity) ?? 0,
    _subtitle?.getMinIntrinsicWidth(double.infinity) ?? 0,
  );

  @override
  double computeMaxIntrinsicWidth(double height) => max(
    _title?.getMaxIntrinsicWidth(double.infinity) ?? 0,
    _subtitle?.getMaxIntrinsicWidth(double.infinity) ?? 0,
  );

  @override
  double computeMinIntrinsicHeight(double width) => max(
    _targetHeight,
    (_title?.getMinIntrinsicHeight(width) ?? 0) +
        (_subtitle?.getMinIntrinsicHeight(width) ?? 0) +
        _minVerticalPadding * 2,
  );

  @override
  double computeMaxIntrinsicHeight(double width) =>
      computeMinIntrinsicHeight(width);

  @override
  void paint(PaintingContext context, Offset offset) {
    for (final child in children) {
      context.paintChild(child, offset + _offsetOf(child));
    }
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    for (final child in children) {
      final isHit = result.addWithPaintOffset(
        offset: _offsetOf(child),
        position: position,
        hitTest: (boxResult, transformed) =>
            child.hitTest(boxResult, position: transformed),
      );
      if (isHit) return true;
    }

    return false;
  }
}
