part of '../form_data.dart';

List<FieldClazz<LoginFormState>> loginField({
  required BuildContext context,
}) => <FieldClazz<LoginFormState>>[
  FieldClazz<LoginFormState>(
    buildWhen: (previous, current) =>
        previous.email != current.email ||
        previous.isSubmitting != current.isSubmitting ||
        previous.showErrorMessages != current.showErrorMessages,
    fieldKey: WidgetKeys.loginEmailFieldKey,
    labelText: 'Email',
    validator: (text, state) => EmailAddress(text ?? '').value.fold(
      (f) => f.maybeMap(
        empty: (_) => 'Email cannot be empty.',
        invalidEmail: (value) => 'Email is invalid.',
        orElse: () => null,
      ),
      (_) => null,
    ),
    onChange: (value) =>
        context.read<LoginFormBloc>().add(LoginFormEvent.emailChanged(value)),
    onDone: (p0, state) {},
    hintText: 'name@email.com',
    hintStyle: Theme.of(context).textTheme.labelMedium,
    isEnabled: (state) => !state.isSubmitting,
    inputFormatters: [
      TextInputFormatter.withFunction(
        (oldValue, newValue) => TextEditingValue(
          text: newValue.text.toLowerCase(),
          selection: newValue.selection,
        ),
      ),
    ],
    textInputType: TextInputType.emailAddress,
    getSuffix: (p0) => const SizedBox.shrink(),
    enabledBorderSide: (state) => BorderSide(
      color: (state as LoginFormState).email.getOrDefaultValue('').isEmpty
          ? AppColor.tealSecondary
          : AppColor.black,
      width: (state).email.getOrDefaultValue('').isEmpty ? 1 : 1,
    ),
    labelStyle: (state) => const TextStyle(
      color: Color(0xFF49454F),
      fontSize: 12,
      fontFamily: 'Noto Sans',
      fontWeight: FontWeight.w400,
    ),
  ),
  FieldClazz<LoginFormState>(
    buildWhen: (previous, current) =>
        previous.password != current.password ||
        previous.passwordVisible != current.passwordVisible ||
        previous.isSubmitting != current.isSubmitting ||
        previous.showErrorMessages != current.showErrorMessages,
    fieldKey: WidgetKeys.loginPasswordFieldKey,
    labelText: 'Password',
    validator: (text, state) {
      return Password.enterLogin(text ?? '').value.fold(
        (f) => f.maybeMap(
          empty: (_) => 'Password cannot be empty.',
          orElse: () => null,
        ),
        (_) => null,
      );
    },
    onChange: (value) => context.read<LoginFormBloc>().add(
      LoginFormEvent.passwordChanged(value),
    ),
    onDone: (value, state) {
      if (!state.isSubmitting) {
        FocusScope.of(context).unfocus();
        context.read<LoginFormBloc>().add(
          const LoginFormEvent.loginWithEmailAndPasswordPressed(),
        );
      }
    },
    suffixConstraint: const BoxConstraints(maxHeight: 24, minHeight: 24),
    getSuffix: (state) => IconButton(
      padding: EdgeInsets.zero,
      icon: Icon(
        (state as LoginFormState).passwordVisible
            ? Icons.visibility_outlined
            : Icons.visibility_off_outlined,
        size: 24,
      ),
      onPressed: () => context.read<LoginFormBloc>().add(
        const LoginFormEvent.passwordVisibilityChanged(),
      ),
    ),
    hintText: 'Your password',
    hintStyle: Theme.of(context).textTheme.labelMedium,
    isEnabled: (state) => !state.isSubmitting,
    shouldObscureText: (state) => !state.passwordVisible,
    textInputType: TextInputType.visiblePassword,
    enabledBorderSide: (state) => BorderSide(
      color: (state as LoginFormState).password.getOrDefaultValue('').isEmpty
          ? AppColor.tealSecondary
          : AppColor.black,
      width: (state).password.getOrDefaultValue('').isEmpty ? 1 : 1,
    ),
    labelStyle: (state) => const TextStyle(
      color: Color(0xFF49454F),
      fontSize: 12,
      fontFamily: 'Noto Sans',
      fontWeight: FontWeight.w400,
    ),
  ),
];
