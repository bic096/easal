part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(Account account) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;

  const factory AuthState.actionInProgress() = ActionInProgress;
  // const factory AuthState.actionSuccess() = ActionSuccess;
  const factory AuthState.actionFailure(UserFailure failure) = ActionFailure;
}
