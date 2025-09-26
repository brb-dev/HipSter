import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';
import 'package:hipstermeet/presentation/core/utils/asset/app_asset.dart';

class NoRecordFound extends StatelessWidget {
  const NoRecordFound({
    super.key,
    this.title = '',
    this.subTitle = 'The API does not return any user',
    this.svgImage = AppAssets.searchIcon,
    this.actionButton = const SizedBox.shrink(),
  });
  final String title;
  final String subTitle;
  final String svgImage;
  final Widget actionButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: SvgPicture.asset(svgImage, height: 150),
          ),
          if (title.isNotEmpty)
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(color: AppColor.black),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: AppColor.black),
            ),
          ),
          actionButton,
        ],
      ),
    );
  }
}
