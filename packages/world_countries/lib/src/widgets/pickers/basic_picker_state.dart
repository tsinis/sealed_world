part of "basic_picker.dart";

class _BasicPickerState<T extends IsoTranslated> extends State<BasicPicker<T>> {
  // ignore: omit_obvious_property_types, conflicts with DCM here.
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller =
        widget.textController ??
        widget.searchBar?.controller ??
        TextEditingController();
  }

  @override
  void dispose() {
    if (widget.textController == null && widget.searchBar?.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  // ignore: avoid-high-cyclomatic-complexity, build methods are typically long.
  Widget build(BuildContext context) {
    final theme = context.pickersTheme;

    return SearchableIndexedListViewBuilder<T>(
      widget.items,
      addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
      addRepaintBoundaries:
          widget.addRepaintBoundaries ?? theme?.addRepaintBoundaries ?? true,
      addSemanticIndexes:
          widget.addSemanticIndexes ?? theme?.addSemanticIndexes ?? true,
      cacheExtent: widget.cacheExtent ?? theme?.cacheExtent,
      chosen: widget.chosen,
      clipBehavior: widget.clipBehavior ?? theme?.clipBehavior ?? Clip.hardEdge,
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
      header:
          (widget.showHeader ?? theme?.showHeader ?? true)
              ? (widget.header ??
                  theme?.header ??
                  AdaptiveSearchTextField(
                    _controller,
                    copyFrom: widget.searchBar ?? theme?.searchBar,
                    padding:
                        widget.searchBarPadding ??
                        theme?.searchBarPadding ??
                        UiConstants.padding,
                    showClearButton:
                        widget.showClearButton ??
                        theme?.showClearButton ??
                        true,
                  ))
              : null,
      itemBuilder:
          (itemProperties, {isDense}) =>
              widget.itemBuilder?.call(itemProperties, isDense: isDense) ??
              widget.defaultBuilder(context, itemProperties, isDense: isDense),
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
      separator: widget.separator ?? theme?.separator ?? UiConstants.separator,
      shrinkWrap: widget.shrinkWrap ?? theme?.shrinkWrap ?? false,
      sort: widget.sort,
      textBaseline: widget.textBaseline ?? theme?.textBaseline,
      textDirection: widget.textDirection ?? theme?.textDirection,
      verticalDirection:
          widget.verticalDirection ??
          theme?.verticalDirection ??
          VerticalDirection.down,
      caseSensitiveSearch: widget.caseSensitiveSearch,
      searchIn: widget.searchIn ?? widget.defaultSearch,
      startWithSearch: widget.startWithSearch,
      textController: _controller,
    );
  }
}
