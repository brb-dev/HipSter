part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.init() = _Init;
  const factory LoginFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory LoginFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory LoginFormEvent.passwordVisibilityChanged() =
      _PasswordVisibleChanged;
  const factory LoginFormEvent.loginWithEmailAndPasswordPressed() =
      _LoginWithEmailAndPasswordPressed;
}
