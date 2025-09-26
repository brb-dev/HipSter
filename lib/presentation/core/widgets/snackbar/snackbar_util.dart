import 'package:flutter/material.dart';
import 'package:hipstermeet/presentation/core/utils/asset/app_asset.dart';
import 'package:hipstermeet/presentation/core/utils/widget_keys.dart';
import 'package:hipstermeet/presentation/core/widgets/image/custom_image_view.dart';
import 'package:hipstermeet/presentation/core/widgets/snackbar/custom_snackbar.dart';
import 'package:toastification/toastification.dart';

class SnackbarUtil {
  static void showErrorSnackbar(BuildContext context, String failureMessage) =>
      toastification.showCustom(
        context: context,
        autoCloseDuration: const Duration(seconds: 5),
        builder: (context, holder) {
          return Material(
            key: WidgetKeys.errorSnackbarKey,
            child: CustomSnackbar(
              backgroundColor: const Color(0xFFFFD4FF),
              icon: CustomImageView(
                imagePath: AppAssets.failureIcon,
                width: 24,
                height: 24,
              ),
              messageText: failureMessage,
              textStyle: const TextStyle(
                color: Color(0xFF8E24AA),
                fontSize: 18,
                fontFamily: 'Noto Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
        alignment: Alignment.topCenter,
        direction: TextDirection.ltr,
        animationDuration: const Duration(milliseconds: 300),
      );

  static void showSuccessSnackbar(BuildContext context, String successMesage) =>
      toastification.showCustom(
        context: context,
        autoCloseDuration: const Duration(seconds: 5),
        builder: (context, holder) {
          return Material(
            child: CustomSnackbar(
              backgroundColor: const Color(0xFFE5F3F1),
              icon: CustomImageView(
                imagePath: AppAssets.successIcon,
                width: 24,
                height: 24,
              ),
              messageText: successMesage,
              textStyle: const TextStyle(
                color: Color(0xFF008471),
                fontSize: 18,
                fontFamily: 'Noto Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
        alignment: Alignment.topCenter,
        direction: TextDirection.ltr,
        animationDuration: const Duration(milliseconds: 300),
      );
}
