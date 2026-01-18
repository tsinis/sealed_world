part of "searchable_indexed_list_view_builder.dart";

class _SearchableIndexedListViewBuilderState<T extends Object, W extends Widget>
    extends State<SearchableIndexedListViewBuilder<T, W>> {
  bool get _isSearchable =>
      widget.searchIn != null && widget.textController != null;

  @override
  // ignore: avoid-high-cyclomatic-complexity, build methods are typically long.
  Widget build(BuildContext context) {
    final theme = context.pickersTheme;
    final itemsList = widget.resolvedItems(context);
    final shouldShowHeader =
        widget.showHeader ??
        theme?.showHeader ??
        (itemsList.length > 5); // Hick's law optimal range.

    return _isSearchable && shouldShowHeader
        ? SearchListListenableBuilder<T>(
            builder: (_, filteredItems) => IndexedListViewBuilder<T, W>(
              filteredItems,
              addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
              addRepaintBoundaries:
                  widget.addRepaintBoundaries ??
                  theme?.addRepaintBoundaries ??
                  true,
              addSemanticIndexes:
                  widget.addSemanticIndexes ??
                  theme?.addSemanticIndexes ??
                  true,
              cacheExtent: widget.cacheExtent ?? theme?.cacheExtent,
              chosen: widget.chosen,
              clipBehavior:
                  widget.clipBehavior ?? theme?.clipBehavior ?? Clip.hardEdge,
              crossAxisAlignment:
                  widget.crossAxisAlignment ??
                  theme?.crossAxisAlignment ??
                  CrossAxisAlignment.center,
              direction: widget.direction ?? theme?.direction ?? Axis.vertical,
              disabled: widget.disabled,
              dragStartBehavior:
                  widget.dragStartBehavior ??
                  theme?.dragStartBehavior ??
                  DragStartBehavior.start,
              emptyStatePlaceholder: widget.emptyStatePlaceholder,
              header: widget.header ?? theme?.header,
              itemBuilder: widget.itemBuilder,
              keyboardDismissBehavior:
                  widget.keyboardDismissBehavior ??
                  theme?.keyboardDismissBehavior ??
                  ScrollViewKeyboardDismissBehavior.manual,
              mainAxisAlignment:
                  widget.mainAxisAlignment ??
                  theme?.mainAxisAlignment ??
                  MainAxisAlignment.start,
              mainAxisSize:
                  widget.mainAxisSize ??
                  theme?.mainAxisSize ??
                  MainAxisSize.min,
              onSelect: widget.onSelect,
              padding: widget.padding ?? theme?.padding,
              physics: widget.physics ?? theme?.physics,
              primary: widget.primary ?? theme?.primary,
              restorationId: widget.restorationId,
              reverse: widget.reverse ?? theme?.reverse ?? false,
              scrollController: widget.scrollController,
              separator:
                  widget.separator ?? theme?.separator ?? UiConstants.separator,
              shrinkWrap: widget.shrinkWrap ?? theme?.shrinkWrap ?? false,
              sort: widget.sort,
              textBaseline: widget.textBaseline ?? theme?.textBaseline,
              textDirection: widget.textDirection ?? theme?.textDirection,
              verticalDirection:
                  widget.verticalDirection ??
                  theme?.verticalDirection ??
                  VerticalDirection.down,
            ),
            items: itemsList,
            // ignore: avoid-non-null-assertion, null-checked on build first line.
            searchIn: widget.searchIn!,
            onSearchResultsBuilder: widget.onSearchResultsBuilder,
            // ignore: avoid-non-null-assertion, null-checked on build first line.
            textController: widget.textController!,
            caseSensitiveSearch: widget.caseSensitiveSearch,
            startWithSearch: widget.startWithSearch,
          )
        : IndexedListViewBuilder<T, W>(
            itemsList,
            addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
            addRepaintBoundaries:
                widget.addRepaintBoundaries ??
                theme?.addRepaintBoundaries ??
                true,
            addSemanticIndexes:
                widget.addSemanticIndexes ?? theme?.addSemanticIndexes ?? true,
            cacheExtent: widget.cacheExtent ?? theme?.cacheExtent,
            chosen: widget.chosen,
            clipBehavior:
                widget.clipBehavior ?? theme?.clipBehavior ?? Clip.hardEdge,
            crossAxisAlignment:
                widget.crossAxisAlignment ??
                theme?.crossAxisAlignment ??
                CrossAxisAlignment.center,
            direction: widget.direction ?? theme?.direction ?? Axis.vertical,
            disabled: widget.disabled,
            dragStartBehavior:
                widget.dragStartBehavior ??
                theme?.dragStartBehavior ??
                DragStartBehavior.start,
            emptyStatePlaceholder: widget.emptyStatePlaceholder,
            header: widget.header ?? theme?.header,
            itemBuilder: widget.itemBuilder,
            keyboardDismissBehavior:
                widget.keyboardDismissBehavior ??
                theme?.keyboardDismissBehavior ??
                ScrollViewKeyboardDismissBehavior.manual,
            mainAxisAlignment:
                widget.mainAxisAlignment ??
                theme?.mainAxisAlignment ??
                MainAxisAlignment.start,
            mainAxisSize:
                widget.mainAxisSize ?? theme?.mainAxisSize ?? MainAxisSize.min,
            onSelect: widget.onSelect,
            padding: widget.padding ?? theme?.padding,
            physics: widget.physics ?? theme?.physics,
            primary: widget.primary ?? theme?.primary,
            restorationId: widget.restorationId,
            reverse: widget.reverse ?? theme?.reverse ?? false,
            scrollController: widget.scrollController,
            separator:
                widget.separator ?? theme?.separator ?? UiConstants.separator,
            shrinkWrap: widget.shrinkWrap ?? theme?.shrinkWrap ?? false,
            sort: widget.sort,
            textBaseline: widget.textBaseline ?? theme?.textBaseline,
            textDirection: widget.textDirection ?? theme?.textDirection,
            spacing: widget.spacing ?? theme?.spacing ?? 0,
            verticalDirection:
                widget.verticalDirection ??
                theme?.verticalDirection ??
                VerticalDirection.down,
          );
  }
}
