part of '../login_screen.dart';

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting ||
          previous.isValid != current.isValid,
      builder: (context, state) {
        return LoadingShimmer.withChild(
          enabled: state.isSubmitting,
          child: CustomElevatedButton(
            key: WidgetKeys.loginButtonKey,
            buttonText: 'Log in',
            bacgroundColor: AppColor.tealSecondary,
            onPressed: state.isSubmitting | !state.isValid
                ? null
                : () {
                    FocusScope.of(context).unfocus();
                    context.read<LoginFormBloc>().add(
                      const LoginFormEvent.loginWithEmailAndPasswordPressed(),
                    );
                  },
          ),
        );
      },
    );
  }
}
