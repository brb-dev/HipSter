part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const UserState._();

  const factory UserState({
    required List<UserEntity> users,
    required bool isFetching,
    required Option<Either<ApiFailure, dynamic>> userFailureOrSuccessOption,
  }) = _UserState;

  factory UserState.initial() => UserState(
    users: <UserEntity>[],
    isFetching: false,
    userFailureOrSuccessOption: none(),
  );
}
