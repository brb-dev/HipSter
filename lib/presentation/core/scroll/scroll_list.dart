import 'package:flutter/material.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';
import 'package:hipstermeet/presentation/core/widgets/shimmer/loading_shimmer.dart';

class ScrollList<T> extends StatefulWidget {
  final VoidCallback? onRefresh;
  final VoidCallback? onLoadingMore;
  final bool isLoading;
  final List<T> items;
  final Widget noRecordFoundWidget;
  final Widget header;
  final ScrollController controller;
  final Widget Function(BuildContext context, int index, T item) itemBuilder;
  const ScrollList({
    super.key,
    required this.isLoading,
    required this.itemBuilder,
    required this.items,
    required this.noRecordFoundWidget,
    required this.controller,
    this.header = const SizedBox.shrink(),
    this.onRefresh,
    this.onLoadingMore,
  });

  @override
  State<ScrollList<T>> createState() => _ScrollListState<T>();
}

class _ScrollListState<T> extends State<ScrollList<T>> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = widget.controller;
    _controller.addListener(() {
      if ((_controller.position.pixels >=
              _controller.position.maxScrollExtent) &&
          widget.items.isNotEmpty) {
        widget.onLoadingMore?.call();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    if (_controller.hasClients) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isLoading && widget.items.isEmpty
        ? Center(child: LoadingShimmer.logo())
        : RefreshIndicator(
            color: AppColor.bgColor,
            onRefresh: () async => widget.onRefresh?.call(),
            child: CustomScrollView(
              controller: _controller,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: widget.header),
                widget.items.isEmpty && !widget.isLoading
                    ? SliverToBoxAdapter(child: widget.noRecordFoundWidget)
                    : SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final item = widget.items[index];

                          return widget.itemBuilder(context, index, item);
                        }, childCount: widget.items.length),
                      ),
              ],
            ),
          );
  }
}
