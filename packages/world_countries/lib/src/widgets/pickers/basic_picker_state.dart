part of "basic_picker.dart";

// ignore: keep-state-below-its-widget, old codebase.
class _BasicPickerState<T extends IsoTranslated, W extends IsoTile<T>>
    extends State<BasicPicker<T, W>> {
  /// The controller of the picker itself, only there while none is given.
  TextEditingController? _localController;

  /// The default search of the picker. A new one is only created for new
  /// maps of the picker, so the search data of the items is kept until then.
  // ignore: prefer-correct-callback-field-name, it's a search, not a callback.
  SearchData Function(T item, BuildContext context)? _defaultSearch;

  TextEditingController get _controller =>
      widget._givenController ??
      // ignore: avoid-non-null-assertion, created whenever none is given.
      _localController!;

  @override
  void initState() {
    super.initState();
    _defaultSearch = _newDefaultSearch;
    if (widget._givenController == null) {
      _localController = TextEditingController();
    }
  }

  // Not a tear-off: it calls the current `widget`, not the one it's made with.
  // ignore: prefer-typedefs-for-callbacks, the same type as `searchIn` has.
  SearchData Function(T, BuildContext) get _newDefaultSearch =>
      (item, context) => widget.defaultSearch(item, context);

  @override
  void didUpdateWidget(BasicPicker<T, W> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.maps != widget.maps) _defaultSearch = _newDefaultSearch;
    final oldController = oldWidget._givenController;
    final hasController = widget._givenController != null;
    if (oldController != null && !hasController) {
      // The text typed so far stays, as it does in a `TextField`.
      _localController = TextEditingController.fromValue(oldController.value);
    } else if (oldController == null && hasController) {
      _localController?.dispose();
      _localController = null;
    }
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.pickersTheme;
    final maybeSearchBar = widget.searchBar ?? theme?.searchBar;
    // A picker shows its search bar by default, even for a short list (unlike
    // a `SearchableIndexedListViewBuilder`), so the decision is passed down.
    final showSearchBar = widget.showHeader ?? theme?.showHeader ?? true;
    final adaptiveTextField = showSearchBar
        ? AdaptiveSearchTextField(
            _controller,
            copyFrom: maybeSearchBar,
            padding:
                widget.searchBarPadding ??
                theme?.searchBarPadding ??
                UiConstants.padding,
            showClearButton:
                widget.showClearButton ?? theme?.showClearButton ?? true,
            inputFormatters: widget.searchInputFormatters,
          )
        : null;

    // The list resolves the theme and the defaults of the rest on its own.
    return SearchableIndexedListViewBuilder<T, W>(
      widget.resolvedItems(context),
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
      hitTestBehavior: widget.hitTestBehavior,
      itemExtentBuilder: widget.itemExtentBuilder,
      emptyStatePlaceholder: widget.emptyStatePlaceholder,
      header: adaptiveTextField == null
          ? null
          : maybeSearchBar == null
          ? (widget.header ?? theme?.header ?? adaptiveTextField)
          : adaptiveTextField,
      // ignore: prefer-extracting-callbacks, for better readability.
      itemBuilder: (props, _) {
        final defaultTile = widget.defaultBuilder(props);

        return widget.itemBuilder?.call(props, defaultTile) ??
            context.tileTheme<T>()?.itemBuilder?.call(props, defaultTile) ??
            defaultTile;
      },
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
      showSearchBar: showSearchBar,
      shrinkWrap: widget.shrinkWrap,
      sort: widget.sort,
      textBaseline: widget.textBaseline,
      textDirection: widget.textDirection,
      verticalDirection: widget.verticalDirection,
      caseSensitiveSearch: widget.caseSensitiveSearch,
      searchIn: widget.searchIn ?? _defaultSearch,
      onSearchResultsBuilder: widget.onSearchResultsBuilder,
      startWithSearch: widget.startWithSearch,
      textController: _controller,
      spacing: widget.spacing,
    );
  }
}
