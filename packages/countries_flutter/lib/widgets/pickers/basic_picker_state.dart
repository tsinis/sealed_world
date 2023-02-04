part of "basic_picker.dart";

class _BasicPickerState<T extends Object> extends State<BasicPicker<T>> {
  late final controller = widget.textController ??
      widget.searchBar?.controller ??
      TextEditingController();

  late final hasMaterialL10n =
      Localizations.of<MaterialLocalizations>(context, MaterialLocalizations) !=
          null;

  @override
  void dispose() {
    if (widget.textController == null && widget.searchBar?.controller == null) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SearchableIndexedListViewBuilder<T>(
        items: widget.items,
        addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
        addRepaintBoundaries: widget.addRepaintBoundaries,
        addSemanticIndexes: widget.addSemanticIndexes,
        cacheExtent: widget.cacheExtent,
        clipBehavior: widget.clipBehavior,
        crossAxisAlignment: widget.crossAxisAlignment,
        direction: widget.direction,
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
