import 'package:easal/domain/users/account.dart';
import 'package:easal/domain/users/i_users_repo.dart';
import 'package:easal/domain/users/user_failure.dart';
import 'package:easal/infrastructure/core/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
@Order(-2)
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IUsersRepo _repo;
  final log = logger(AuthBloc);

  AuthBloc(this._repo) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(authCheckStarted: (_) async {
        log.i('authCheck function');
        emit(const AuthState.actionInProgress());

        final accountOr = _repo.getSignedInUser();
        return accountOr.fold((l) {
          log.i('state unauthenticated');
          return emit(const AuthState.unauthenticated());
        }, (r) {
          log.i('state authenticated');
          emit(AuthState.authenticated(r));
        });
      }, signInStarted: (e) async {
        log.i('event signInStarted');
        emit(const AuthState.actionInProgress());
        log.i('state actionInProgress');
        final accountOr = await _repo.signIn(e.username, e.password);
        return await accountOr.fold((l) async {
          log.i('state ActionFailure $l');
          emit(AuthState.actionFailure(l));
        }, (r) async {
          log.i('state Authenticated $r');
          //i spend more than two weeks tring to fix a bug caused by
          // forggenting to emit the state 😂😭😭😭
          emit(AuthState.authenticated(r));
        });
      }, signOutStarted: (_) async {
        log.i('event signOutStarted');
        log.i('state ActionInProgress');
        emit(const AuthState.actionInProgress());

        final or = _repo.signOut();
        or.fold((l) {
          log.i('state ActionFailure $l');
          emit(AuthState.actionFailure(l));
        }, (r) {
          log.i('state ActionSuccess');
          emit(const Unauthenticated());
        });
      });
    });
  }
}
