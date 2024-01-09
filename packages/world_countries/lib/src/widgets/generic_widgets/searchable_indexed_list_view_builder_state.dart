part of "searchable_indexed_list_view_builder.dart";

class _SearchableIndexedListViewBuilderState<T extends Object>
    extends State<SearchableIndexedListViewBuilder<T>> {
  bool get isSearchable =>
      widget.searchIn != null && widget.textController != null;

  @override
  Widget build(BuildContext context) {
    final theme = context.pickersTheme;

    return isSearchable &&
            (widget.showHeader ?? context.pickersTheme?.showHeader ?? true)
        ? SearchListListenableBuilder<T>(
            builder: (_, filteredItems) => IndexedListViewBuilder<T>(
              filteredItems,
              addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
              addRepaintBoundaries: widget.addRepaintBoundaries ??
                  theme?.addRepaintBoundaries ??
                  true,
              addSemanticIndexes: widget.addSemanticIndexes ??
                  theme?.addSemanticIndexes ??
                  true,
              cacheExtent: widget.cacheExtent ?? theme?.cacheExtent,
              chosen: widget.chosen,
              clipBehavior:
                  widget.clipBehavior ?? theme?.clipBehavior ?? Clip.hardEdge,
              crossAxisAlignment: widget.crossAxisAlignment ??
                  theme?.crossAxisAlignment ??
                  CrossAxisAlignment.center,
              direction: widget.direction ?? theme?.direction ?? Axis.vertical,
              disabled: widget.disabled,
              dragStartBehavior: widget.dragStartBehavior ??
                  theme?.dragStartBehavior ??
                  DragStartBehavior.start,
              emptyStatePlaceholder: widget.emptyStatePlaceholder,
              header: widget.header ?? theme?.header,
              itemBuilder: widget.itemBuilder,
              keyboardDismissBehavior: widget.keyboardDismissBehavior ??
                  theme?.keyboardDismissBehavior ??
                  ScrollViewKeyboardDismissBehavior.manual,
              mainAxisAlignment: widget.mainAxisAlignment ??
                  theme?.mainAxisAlignment ??
                  MainAxisAlignment.start,
              mainAxisSize: widget.mainAxisSize ??
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
              verticalDirection: widget.verticalDirection ??
                  theme?.verticalDirection ??
                  VerticalDirection.down,
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
            widget.items,
            addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
            addRepaintBoundaries: widget.addRepaintBoundaries ??
                theme?.addRepaintBoundaries ??
                true,
            addSemanticIndexes:
                widget.addSemanticIndexes ?? theme?.addSemanticIndexes ?? true,
            cacheExtent: widget.cacheExtent ?? theme?.cacheExtent,
            chosen: widget.chosen,
            clipBehavior:
                widget.clipBehavior ?? theme?.clipBehavior ?? Clip.hardEdge,
            crossAxisAlignment: widget.crossAxisAlignment ??
                theme?.crossAxisAlignment ??
                CrossAxisAlignment.center,
            direction: widget.direction ?? theme?.direction ?? Axis.vertical,
            disabled: widget.disabled,
            dragStartBehavior: widget.dragStartBehavior ??
                theme?.dragStartBehavior ??
                DragStartBehavior.start,
            emptyStatePlaceholder: widget.emptyStatePlaceholder,
            header: widget.header ?? theme?.header,
            itemBuilder: widget.itemBuilder,
            keyboardDismissBehavior: widget.keyboardDismissBehavior ??
                theme?.keyboardDismissBehavior ??
                ScrollViewKeyboardDismissBehavior.manual,
            mainAxisAlignment: widget.mainAxisAlignment ??
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
            verticalDirection: widget.verticalDirection ??
                theme?.verticalDirection ??
                VerticalDirection.down,
          );
  }
}
