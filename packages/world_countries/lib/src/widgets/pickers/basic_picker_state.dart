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
  // ignore: avoid-high-cyclomatic-complexity, build methods are typically long.
  Widget build(BuildContext context) {
    final theme = context.pickersTheme;
    final maybeSearchBar = widget.searchBar ?? theme?.searchBar;
    final adaptiveTextField = (widget.showHeader ?? theme?.showHeader ?? true)
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

    return SearchableIndexedListViewBuilder<T, W>(
      widget.resolvedItems(context),
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
      hitTestBehavior:
          widget.hitTestBehavior ??
          theme?.hitTestBehavior ??
          HitTestBehavior.opaque,
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
      searchIn: widget.searchIn ?? _defaultSearch,
      onSearchResultsBuilder: widget.onSearchResultsBuilder,
      startWithSearch: widget.startWithSearch,
      textController: _controller,
      spacing: widget.spacing ?? theme?.spacing ?? 0.0,
    );
  }
}
