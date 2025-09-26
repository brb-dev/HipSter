import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/core/error/api_failure.dart';
import '../../../domain/core/value/value_objects.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthRepository authRepository;

  LoginFormBloc({required this.authRepository})
    : super(LoginFormState.initial()) {
    on<LoginFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
    LoginFormEvent event,
    Emitter<LoginFormState> emit,
  ) async {
    await event.map(
      init: (e) async => emit(LoginFormState.initial()),
      emailChanged: (e) {
        emit(
          state.copyWith(
            email: EmailAddress(e.emailStr),
            loginFailureOrSuccessOption: none(),
          ),
        );
      },
      passwordChanged: (e) {
        emit(
          state.copyWith(
            password: Password.enterLogin(e.passwordStr),
            loginFailureOrSuccessOption: none(),
          ),
        );
      },
      passwordVisibilityChanged: (e) {
        emit(state.copyWith(passwordVisible: !state.passwordVisible));
      },
      loginWithEmailAndPasswordPressed: (e) async {
        emit(
          state.copyWith(
            isSubmitting: true,
            loginFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await authRepository.loginWithEmailAndPassword(
          email: state.email,
          password: state.password,
        );

        await failureOrSuccess.fold(
          (_) {
            emit(
              state.copyWith(
                isSubmitting: false,
                showErrorMessages: true,
                loginFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (auth) async {
            await authRepository.storeToken(token: auth.token);
            emit(
              state.copyWith(
                isSubmitting: false,
                showErrorMessages: false,
                loginFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
