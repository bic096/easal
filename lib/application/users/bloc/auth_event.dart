part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckStarted() = AuthCheckStarted;
  const factory AuthEvent.signInStarted(String username, String password) =
      SignInStarted;
  const factory AuthEvent.signOutStarted() = SignOutStarted;
}
