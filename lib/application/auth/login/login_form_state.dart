part of 'login_form_bloc.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  const LoginFormState._();

  const factory LoginFormState({
    required EmailAddress email,
    required Password password,
    required bool passwordVisible,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ApiFailure, dynamic>> loginFailureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
    email: EmailAddress(''),
    password: Password.enterLogin(''),
    passwordVisible: false,
    showErrorMessages: false,
    isSubmitting: false,
    loginFailureOrSuccessOption: none(),
  );

  bool get isValid => email.isValid() && password.isValid();
}
