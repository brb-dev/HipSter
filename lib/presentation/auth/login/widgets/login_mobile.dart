part of '../login_screen.dart';

class _LoginMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listenWhen: (previous, current) =>
          previous.loginFailureOrSuccessOption !=
          current.loginFailureOrSuccessOption,
      listener: (context, state) {
        state.loginFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ErrorUtils.handleApiFailure(context, failure);
            },
            (success) {
              context.read<AuthBloc>().add(const AuthEvent.authCheck());
            },
          ),
        );
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, snapshot) {
        return Scaffold(
          body: Form(
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ListView(
                children: [
                  (MediaQuery.sizeOf(context).height * 0.025).hs,
                  const Text('Log in', key: WidgetKeys.loginTextKey),
                  (MediaQuery.sizeOf(context).height * 0.05).hs,
                  ...loginField(context: context).map(
                    (e) => GenericFormField<LoginFormBloc, LoginFormState>(
                      clazz: e,
                    ),
                  ),
                  (MediaQuery.sizeOf(context).height * 0.06).hs,
                  _LoginButton(),
                  bottomSpace,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
