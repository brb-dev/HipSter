import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/application/auth/auth_bloc.dart';
import 'package:hipstermeet/application/auth/login/login_form_bloc.dart';
import 'package:hipstermeet/infrastructure/auth/repositories/auth_repository.dart';
import 'package:hipstermeet/locator.dart';
import 'package:hipstermeet/presentation/core/theme/app_color.dart';
import 'package:hipstermeet/presentation/core/utils/error_util.dart';
import 'package:hipstermeet/presentation/core/utils/extension_util.dart';
import 'package:hipstermeet/presentation/core/utils/form/form_data.dart';
import 'package:hipstermeet/presentation/core/utils/responsive.dart';
import 'package:hipstermeet/presentation/core/utils/widget_keys.dart';
import 'package:hipstermeet/presentation/core/widgets/button/custom_elevated_button.dart';
import 'package:hipstermeet/presentation/core/widgets/common_widget.dart';
import 'package:hipstermeet/presentation/core/widgets/forms/generic_form_field.dart';
import 'package:hipstermeet/presentation/core/widgets/image/custom_image_view.dart';
import 'package:hipstermeet/presentation/core/widgets/shimmer/loading_shimmer.dart';

part 'widgets/login_mobile.dart';
part 'widgets/login_web.dart';
part 'widgets/login_button.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginFormBloc>(
      create: (_) =>
          LoginFormBloc(authRepository: locator<AuthRepository>())
            ..add(const LoginFormEvent.init()),
      child: _LoginPrivateScreen(),
    );
  }
}

class _LoginPrivateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tablet: _LoginMobile(),
      mobile: _LoginMobile(),
      web: _LoginWeb(),
    );
  }
}
