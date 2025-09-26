part of 'loading_shimmer.dart';

class _WithChild extends StatelessWidget {
  const _WithChild({required this.child, required this.enabled});
  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    if (!enabled) return Center(child: child);

    return Center(
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Theme.of(context).canvasColor,
        enabled: true,
        child: child,
      ),
    );
  }
}
