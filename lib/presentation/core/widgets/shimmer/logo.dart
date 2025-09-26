part of 'loading_shimmer.dart';

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return _WithChild(
      enabled: true,
      child: CustomImageView(
        imagePath: AppAssets.appIcon,
        width: 50,
        height: 50,
      ),
    );
  }
}
