import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/presentation/core/utils/asset/app_asset.dart';
import 'package:hipstermeet/presentation/core/widgets/image/custom_image_view.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => context.read<AuthBloc>().add(AuthEvent.logout()),
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              leading: CustomImageView(imagePath: AppAssets.logoutIcon),
              title: Text(
                'Logout',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
