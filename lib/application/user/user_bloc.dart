import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hipstermeet/domain/user/entities/user_entity.dart';
import 'package:hipstermeet/domain/user/repositories/i_user_repository.dart';

import '../../domain/core/error/api_failure.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository userRepository;

  UserBloc({required this.userRepository}) : super(UserState.initial()) {
    on<UserEvent>(_onEvent);
  }

  Future<void> _onEvent(UserEvent event, Emitter<UserState> emit) async {
    switch (event) {
      case _Initialized():
        emit(UserState.initial());
        break;
      case _Fetch():
        emit(state.copyWith(isFetching: true, users: <UserEntity>[]));
        final failureOrSuccess = await userRepository.fetchUser();
        failureOrSuccess.fold(
          (failure) async => emit(
            state.copyWith(
              isFetching: false,
              userFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (users) async => emit(
            state.copyWith(
              isFetching: false,
              users: users,
              userFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
        );
        break;
    }
  }
}
