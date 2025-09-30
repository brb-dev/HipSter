import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hipstermeet/infrastructure/core/notification/notification_service.dart';
import 'package:hipstermeet/locator.dart';
import 'package:hipstermeet/presentation/core/routing/app_router.gr.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';
import 'package:hipstermeet/presentation/core/widgets/button/custom_elevated_button.dart';
import 'package:hipstermeet/presentation/core/widgets/dialog_util.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class MeetingScreen extends StatelessWidget {
  const MeetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Center(
        child: CustomElevatedButton(
          buttonText: 'Join Meeting',
          labelStyle: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColor.white),
          bacgroundColor: AppColor.black,
          onPressed: () async {
            final cam = await Permission.camera.request();
            if (cam != PermissionStatus.granted && context.mounted) {
              _showPermissionDialog(
                context,
                'Camera access is required for video calls.',
              );
              return;
            }
            final mic = await Permission.microphone.request();
            if (mic != PermissionStatus.granted && context.mounted) {
              _showPermissionDialog(
                context,
                'Microphone access is required for audio calls.',
              );
              return;
            }
            if (context.mounted) {
              DialogUtil.showLoadingDialog(context);
            }

            await Future.delayed(Duration(milliseconds: 200));

            if (context.mounted) {
              context.router.popForced();
              context.router.push(CallRoute(meetingId: 'meeting123'));
            }
          },
        ),
      ),
    );
  }

  void _showPermissionDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text("Permissions required"),
        content: Text(title),
        actions: [
          TextButton(
            onPressed: () {
              context.router.popForced();
              openAppSettings();
            },
            child: const Text("Open Settings"),
          ),
        ],
      ),
    );
  }
}
