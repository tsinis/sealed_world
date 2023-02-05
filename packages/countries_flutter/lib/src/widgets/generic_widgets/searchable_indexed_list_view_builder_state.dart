part of "searchable_indexed_list_view_builder.dart";

class _SearchableIndexedListViewBuilderState<T extends Object>
    extends State<SearchableIndexedListViewBuilder<T>> {
  bool get isSearchable =>
      widget.searchIn != null && widget.textController != null;

  @override
  Widget build(BuildContext context) => isSearchable && widget.showHeader
      ? SearchListListenableBuilder<T>(
          builder: (_, filteredItems) => IndexedListViewBuilder<T>(
            items: filteredItems,
            addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
            addRepaintBoundaries: widget.addRepaintBoundaries,
            addSemanticIndexes: widget.addSemanticIndexes,
            cacheExtent: widget.cacheExtent,
            clipBehavior: widget.clipBehavior,
            crossAxisAlignment: widget.crossAxisAlignment,
            direction: widget.direction,
            dragStartBehavior: widget.dragStartBehavior,
            emptyStatePlaceholder: widget.emptyStatePlaceholder,
            header: widget.header,
            itemBuilder: widget.itemBuilder,
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
          ),
          items: widget.items,
          // ignore: avoid-non-null-assertion, null-checked on build first line.
          searchIn: widget.searchIn!,
          // ignore: avoid-non-null-assertion, null-checked on build first line.
          textController: widget.textController!,
          caseSensitiveSearch: widget.caseSensitiveSearch,
          startWithSearch: widget.startWithSearch,
        )
      : IndexedListViewBuilder<T>(
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
          header: widget.header,
          itemBuilder: widget.itemBuilder,
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
        );
}
