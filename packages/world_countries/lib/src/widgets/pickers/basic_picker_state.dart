part of "basic_picker.dart";

class _BasicPickerState<T extends Translated> extends State<BasicPicker<T>> {
  late final TextEditingController controller = widget.textController ??
      widget.searchBar?.controller ??
      TextEditingController();

  @override
  void dispose() {
    if (widget.textController == null && widget.searchBar?.controller == null) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SearchableIndexedListViewBuilder<T>(
        widget.items,
        addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
        addRepaintBoundaries: widget.addRepaintBoundaries,
        addSemanticIndexes: widget.addSemanticIndexes,
        cacheExtent: widget.cacheExtent,
        chosen: widget.chosen,
        clipBehavior: widget.clipBehavior,
        crossAxisAlignment: widget.crossAxisAlignment,
        direction: widget.direction,
        disabled: widget.disabled,
        dragStartBehavior: widget.dragStartBehavior,
        emptyStatePlaceholder: widget.emptyStatePlaceholder,
        header: widget.showHeader
            ? AdaptiveSearchTextField(
                controller,
                copyFrom: widget.searchBar,
                padding: widget.searchBarPadding,
                showClearButton: widget.showClearButton,
              )
            : null,
        itemBuilder: widget.itemBuilder ?? widget.defaultBuilder,
        keyboardDismissBehavior: widget.keyboardDismissBehavior,
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        onSelect: widget.onSelect,
        padding: widget.padding,
        physics: widget.physics,
        primary: widget.primary,
        restorationId: widget.restorationId,
        reverse: widget.reverse,
        scrollController: widget.scrollController,
        separator: widget.separator,
        shrinkWrap: widget.shrinkWrap,
        sort: widget.sort,
        textBaseline: widget.textBaseline,
        textDirection: widget.textDirection,
        verticalDirection: widget.verticalDirection,
        caseSensitiveSearch: widget.caseSensitiveSearch,
        searchIn: widget.searchIn ?? widget.defaultSearch,
        startWithSearch: widget.startWithSearch,
        textController: controller,
      );
}
