part of "searchable_indexed_list_view_builder.dart";

// ignore: keep-state-below-its-widget, old codebase.
class _SearchableIndexedListViewBuilderState<T extends Object, W extends Widget>
    extends State<SearchableIndexedListViewBuilder<T, W>> {
  bool get _isSearchable =>
      widget.searchIn != null && widget.textController != null;

  @override
  Widget build(BuildContext context) {
    final itemsList = widget.resolvedItems(context);
    final shouldShowHeader =
        widget.showHeader ??
        context.pickersTheme?.showHeader ??
        (itemsList.length > 5); // Hick's law optimal range.

    // The list resolves the theme and the defaults on its own.
    // ignore: prefer_function_declarations_over_variables, vs DCM widget rules.
    final listOf = (Iterable<T> items) => IndexedListViewBuilder<T, W>(
      items,
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
      header: widget.header,
      hitTestBehavior: widget.hitTestBehavior,
      itemBuilder: widget.itemBuilder,
      itemExtentBuilder: widget.itemExtentBuilder,
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
      showHeader: shouldShowHeader,
      shrinkWrap: widget.shrinkWrap,
      sort: widget.sort,
      textBaseline: widget.textBaseline,
      textDirection: widget.textDirection,
      verticalDirection: widget.verticalDirection,
      spacing: widget.spacing,
    );

    return _isSearchable && shouldShowHeader
        ? SearchListListenableBuilder<T>(
            builder: (_, filteredItems) => listOf(filteredItems),
            items: itemsList,
            // ignore: avoid-non-null-assertion, null-checked by `_isSearchable`.
            searchIn: widget.searchIn!,
            onSearchResultsBuilder: widget.onSearchResultsBuilder,
            // ignore: avoid-non-null-assertion, null-checked by `_isSearchable`.
            textController: widget.textController!,
            caseSensitiveSearch: widget.caseSensitiveSearch,
            startWithSearch: widget.startWithSearch,
          )
        : listOf(itemsList);
  }
}
