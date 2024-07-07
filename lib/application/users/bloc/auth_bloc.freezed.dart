// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckStarted,
    required TResult Function(String username, String password) signInStarted,
    required TResult Function() signOutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckStarted,
    TResult? Function(String username, String password)? signInStarted,
    TResult? Function()? signOutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckStarted,
    TResult Function(String username, String password)? signInStarted,
    TResult Function()? signOutStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStarted value) authCheckStarted,
    required TResult Function(SignInStarted value) signInStarted,
    required TResult Function(SignOutStarted value) signOutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStarted value)? authCheckStarted,
    TResult? Function(SignInStarted value)? signInStarted,
    TResult? Function(SignOutStarted value)? signOutStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStarted value)? authCheckStarted,
    TResult Function(SignInStarted value)? signInStarted,
    TResult Function(SignOutStarted value)? signOutStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthCheckStartedCopyWith<$Res> {
  factory _$$AuthCheckStartedCopyWith(
          _$AuthCheckStarted value, $Res Function(_$AuthCheckStarted) then) =
      __$$AuthCheckStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckStarted>
    implements _$$AuthCheckStartedCopyWith<$Res> {
  __$$AuthCheckStartedCopyWithImpl(
      _$AuthCheckStarted _value, $Res Function(_$AuthCheckStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckStarted implements AuthCheckStarted {
  const _$AuthCheckStarted();

  @override
  String toString() {
    return 'AuthEvent.authCheckStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckStarted,
    required TResult Function(String username, String password) signInStarted,
    required TResult Function() signOutStarted,
  }) {
    return authCheckStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckStarted,
    TResult? Function(String username, String password)? signInStarted,
    TResult? Function()? signOutStarted,
  }) {
    return authCheckStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckStarted,
    TResult Function(String username, String password)? signInStarted,
    TResult Function()? signOutStarted,
    required TResult orElse(),
  }) {
    if (authCheckStarted != null) {
      return authCheckStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStarted value) authCheckStarted,
    required TResult Function(SignInStarted value) signInStarted,
    required TResult Function(SignOutStarted value) signOutStarted,
  }) {
    return authCheckStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStarted value)? authCheckStarted,
    TResult? Function(SignInStarted value)? signInStarted,
    TResult? Function(SignOutStarted value)? signOutStarted,
  }) {
    return authCheckStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStarted value)? authCheckStarted,
    TResult Function(SignInStarted value)? signInStarted,
    TResult Function(SignOutStarted value)? signOutStarted,
    required TResult orElse(),
  }) {
    if (authCheckStarted != null) {
      return authCheckStarted(this);
    }
    return orElse();
  }
}

abstract class AuthCheckStarted implements AuthEvent {
  const factory AuthCheckStarted() = _$AuthCheckStarted;
}

/// @nodoc
abstract class _$$SignInStartedCopyWith<$Res> {
  factory _$$SignInStartedCopyWith(
          _$SignInStarted value, $Res Function(_$SignInStarted) then) =
      __$$SignInStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$SignInStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInStarted>
    implements _$$SignInStartedCopyWith<$Res> {
  __$$SignInStartedCopyWithImpl(
      _$SignInStarted _value, $Res Function(_$SignInStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignInStarted(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInStarted implements SignInStarted {
  const _$SignInStarted(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInStarted(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStarted &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStartedCopyWith<_$SignInStarted> get copyWith =>
      __$$SignInStartedCopyWithImpl<_$SignInStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckStarted,
    required TResult Function(String username, String password) signInStarted,
    required TResult Function() signOutStarted,
  }) {
    return signInStarted(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckStarted,
    TResult? Function(String username, String password)? signInStarted,
    TResult? Function()? signOutStarted,
  }) {
    return signInStarted?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckStarted,
    TResult Function(String username, String password)? signInStarted,
    TResult Function()? signOutStarted,
    required TResult orElse(),
  }) {
    if (signInStarted != null) {
      return signInStarted(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStarted value) authCheckStarted,
    required TResult Function(SignInStarted value) signInStarted,
    required TResult Function(SignOutStarted value) signOutStarted,
  }) {
    return signInStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStarted value)? authCheckStarted,
    TResult? Function(SignInStarted value)? signInStarted,
    TResult? Function(SignOutStarted value)? signOutStarted,
  }) {
    return signInStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStarted value)? authCheckStarted,
    TResult Function(SignInStarted value)? signInStarted,
    TResult Function(SignOutStarted value)? signOutStarted,
    required TResult orElse(),
  }) {
    if (signInStarted != null) {
      return signInStarted(this);
    }
    return orElse();
  }
}

abstract class SignInStarted implements AuthEvent {
  const factory SignInStarted(final String username, final String password) =
      _$SignInStarted;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInStartedCopyWith<_$SignInStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutStartedCopyWith<$Res> {
  factory _$$SignOutStartedCopyWith(
          _$SignOutStarted value, $Res Function(_$SignOutStarted) then) =
      __$$SignOutStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutStarted>
    implements _$$SignOutStartedCopyWith<$Res> {
  __$$SignOutStartedCopyWithImpl(
      _$SignOutStarted _value, $Res Function(_$SignOutStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutStarted implements SignOutStarted {
  const _$SignOutStarted();

  @override
  String toString() {
    return 'AuthEvent.signOutStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckStarted,
    required TResult Function(String username, String password) signInStarted,
    required TResult Function() signOutStarted,
  }) {
    return signOutStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckStarted,
    TResult? Function(String username, String password)? signInStarted,
    TResult? Function()? signOutStarted,
  }) {
    return signOutStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckStarted,
    TResult Function(String username, String password)? signInStarted,
    TResult Function()? signOutStarted,
    required TResult orElse(),
  }) {
    if (signOutStarted != null) {
      return signOutStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckStarted value) authCheckStarted,
    required TResult Function(SignInStarted value) signInStarted,
    required TResult Function(SignOutStarted value) signOutStarted,
  }) {
    return signOutStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckStarted value)? authCheckStarted,
    TResult? Function(SignInStarted value)? signInStarted,
    TResult? Function(SignOutStarted value)? signOutStarted,
  }) {
    return signOutStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckStarted value)? authCheckStarted,
    TResult Function(SignInStarted value)? signInStarted,
    TResult Function(SignOutStarted value)? signOutStarted,
    required TResult orElse(),
  }) {
    if (signOutStarted != null) {
      return signOutStarted(this);
    }
    return orElse();
  }
}

abstract class SignOutStarted implements AuthEvent {
  const factory SignOutStarted() = _$SignOutStarted;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() actionInProgress,
    required TResult Function(UserFailure failure) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? actionInProgress,
    TResult? Function(UserFailure failure)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? actionInProgress,
    TResult Function(UserFailure failure)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionFailure value) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionFailure value)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() actionInProgress,
    required TResult Function(UserFailure failure) actionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? actionInProgress,
    TResult? Function(UserFailure failure)? actionFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? actionInProgress,
    TResult Function(UserFailure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionFailure value) actionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionFailure value)? actionFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$Authenticated(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'AuthState.authenticated(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() actionInProgress,
    required TResult Function(UserFailure failure) actionFailure,
  }) {
    return authenticated(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? actionInProgress,
    TResult? Function(UserFailure failure)? actionFailure,
  }) {
    return authenticated?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? actionInProgress,
    TResult Function(UserFailure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionFailure value) actionFailure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionFailure value)? actionFailure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(final Account account) = _$Authenticated;

  Account get account;
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Unauthenticated>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() actionInProgress,
    required TResult Function(UserFailure failure) actionFailure,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? actionInProgress,
    TResult? Function(UserFailure failure)? actionFailure,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? actionInProgress,
    TResult Function(UserFailure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionFailure value) actionFailure,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionFailure value)? actionFailure,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class _$$ActionInProgressCopyWith<$Res> {
  factory _$$ActionInProgressCopyWith(
          _$ActionInProgress value, $Res Function(_$ActionInProgress) then) =
      __$$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ActionInProgress>
    implements _$$ActionInProgressCopyWith<$Res> {
  __$$ActionInProgressCopyWithImpl(
      _$ActionInProgress _value, $Res Function(_$ActionInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'AuthState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() actionInProgress,
    required TResult Function(UserFailure failure) actionFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? actionInProgress,
    TResult? Function(UserFailure failure)? actionFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? actionInProgress,
    TResult Function(UserFailure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionFailure value) actionFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionFailure value)? actionFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements AuthState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class _$$ActionFailureCopyWith<$Res> {
  factory _$$ActionFailureCopyWith(
          _$ActionFailure value, $Res Function(_$ActionFailure) then) =
      __$$ActionFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ActionFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ActionFailure>
    implements _$$ActionFailureCopyWith<$Res> {
  __$$ActionFailureCopyWithImpl(
      _$ActionFailure _value, $Res Function(_$ActionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ActionFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFailureCopyWith<$Res> get failure {
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ActionFailure implements ActionFailure {
  const _$ActionFailure(this.failure);

  @override
  final UserFailure failure;

  @override
  String toString() {
    return 'AuthState.actionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionFailureCopyWith<_$ActionFailure> get copyWith =>
      __$$ActionFailureCopyWithImpl<_$ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() actionInProgress,
    required TResult Function(UserFailure failure) actionFailure,
  }) {
    return actionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? actionInProgress,
    TResult? Function(UserFailure failure)? actionFailure,
  }) {
    return actionFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? actionInProgress,
    TResult Function(UserFailure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionFailure value) actionFailure,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionFailure value)? actionFailure,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class ActionFailure implements AuthState {
  const factory ActionFailure(final UserFailure failure) = _$ActionFailure;

  UserFailure get failure;
  @JsonKey(ignore: true)
  _$$ActionFailureCopyWith<_$ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
