// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_agent_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManageAgentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserFailure failure) actionFailure,
    required TResult Function() actionInProgress,
    required TResult Function(Option<Account> accountOption) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserFailure failure)? actionFailure,
    TResult? Function()? actionInProgress,
    TResult? Function(Option<Account> accountOption)? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserFailure failure)? actionFailure,
    TResult Function()? actionInProgress,
    TResult Function(Option<Account> accountOption)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionFailure value) actionFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionSuccess value) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionFailure value)? actionFailure,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionSuccess value)? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionFailure value)? actionFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageAgentStateCopyWith<$Res> {
  factory $ManageAgentStateCopyWith(
          ManageAgentState value, $Res Function(ManageAgentState) then) =
      _$ManageAgentStateCopyWithImpl<$Res, ManageAgentState>;
}

/// @nodoc
class _$ManageAgentStateCopyWithImpl<$Res, $Val extends ManageAgentState>
    implements $ManageAgentStateCopyWith<$Res> {
  _$ManageAgentStateCopyWithImpl(this._value, this._then);

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
    extends _$ManageAgentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ManageAgentState.initial()';
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
    required TResult Function(UserFailure failure) actionFailure,
    required TResult Function() actionInProgress,
    required TResult Function(Option<Account> accountOption) actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserFailure failure)? actionFailure,
    TResult? Function()? actionInProgress,
    TResult? Function(Option<Account> accountOption)? actionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserFailure failure)? actionFailure,
    TResult Function()? actionInProgress,
    TResult Function(Option<Account> accountOption)? actionSuccess,
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
    required TResult Function(ActionFailure value) actionFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionSuccess value) actionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionFailure value)? actionFailure,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionSuccess value)? actionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionFailure value)? actionFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ManageAgentState {
  const factory _Initial() = _$_Initial;
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
    extends _$ManageAgentStateCopyWithImpl<$Res, _$ActionFailure>
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
    return 'ManageAgentState.actionFailure(failure: $failure)';
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
    required TResult Function(UserFailure failure) actionFailure,
    required TResult Function() actionInProgress,
    required TResult Function(Option<Account> accountOption) actionSuccess,
  }) {
    return actionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserFailure failure)? actionFailure,
    TResult? Function()? actionInProgress,
    TResult? Function(Option<Account> accountOption)? actionSuccess,
  }) {
    return actionFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserFailure failure)? actionFailure,
    TResult Function()? actionInProgress,
    TResult Function(Option<Account> accountOption)? actionSuccess,
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
    required TResult Function(ActionFailure value) actionFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionSuccess value) actionSuccess,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionFailure value)? actionFailure,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionSuccess value)? actionSuccess,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionFailure value)? actionFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class ActionFailure implements ManageAgentState {
  const factory ActionFailure(final UserFailure failure) = _$ActionFailure;

  UserFailure get failure;
  @JsonKey(ignore: true)
  _$$ActionFailureCopyWith<_$ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionInProgressCopyWith<$Res> {
  factory _$$ActionInProgressCopyWith(
          _$ActionInProgress value, $Res Function(_$ActionInProgress) then) =
      __$$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressCopyWithImpl<$Res>
    extends _$ManageAgentStateCopyWithImpl<$Res, _$ActionInProgress>
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
    return 'ManageAgentState.actionInProgress()';
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
    required TResult Function(UserFailure failure) actionFailure,
    required TResult Function() actionInProgress,
    required TResult Function(Option<Account> accountOption) actionSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserFailure failure)? actionFailure,
    TResult? Function()? actionInProgress,
    TResult? Function(Option<Account> accountOption)? actionSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserFailure failure)? actionFailure,
    TResult Function()? actionInProgress,
    TResult Function(Option<Account> accountOption)? actionSuccess,
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
    required TResult Function(ActionFailure value) actionFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionSuccess value) actionSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionFailure value)? actionFailure,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionSuccess value)? actionSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionFailure value)? actionFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements ManageAgentState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class _$$ActionSuccessCopyWith<$Res> {
  factory _$$ActionSuccessCopyWith(
          _$ActionSuccess value, $Res Function(_$ActionSuccess) then) =
      __$$ActionSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Account> accountOption});
}

/// @nodoc
class __$$ActionSuccessCopyWithImpl<$Res>
    extends _$ManageAgentStateCopyWithImpl<$Res, _$ActionSuccess>
    implements _$$ActionSuccessCopyWith<$Res> {
  __$$ActionSuccessCopyWithImpl(
      _$ActionSuccess _value, $Res Function(_$ActionSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountOption = null,
  }) {
    return _then(_$ActionSuccess(
      null == accountOption
          ? _value.accountOption
          : accountOption // ignore: cast_nullable_to_non_nullable
              as Option<Account>,
    ));
  }
}

/// @nodoc

class _$ActionSuccess implements ActionSuccess {
  const _$ActionSuccess(this.accountOption);

  @override
  final Option<Account> accountOption;

  @override
  String toString() {
    return 'ManageAgentState.actionSuccess(accountOption: $accountOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionSuccess &&
            (identical(other.accountOption, accountOption) ||
                other.accountOption == accountOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionSuccessCopyWith<_$ActionSuccess> get copyWith =>
      __$$ActionSuccessCopyWithImpl<_$ActionSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserFailure failure) actionFailure,
    required TResult Function() actionInProgress,
    required TResult Function(Option<Account> accountOption) actionSuccess,
  }) {
    return actionSuccess(accountOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserFailure failure)? actionFailure,
    TResult? Function()? actionInProgress,
    TResult? Function(Option<Account> accountOption)? actionSuccess,
  }) {
    return actionSuccess?.call(accountOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserFailure failure)? actionFailure,
    TResult Function()? actionInProgress,
    TResult Function(Option<Account> accountOption)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(accountOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionFailure value) actionFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(ActionSuccess value) actionSuccess,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionFailure value)? actionFailure,
    TResult? Function(ActionInProgress value)? actionInProgress,
    TResult? Function(ActionSuccess value)? actionSuccess,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionFailure value)? actionFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class ActionSuccess implements ManageAgentState {
  const factory ActionSuccess(final Option<Account> accountOption) =
      _$ActionSuccess;

  Option<Account> get accountOption;
  @JsonKey(ignore: true)
  _$$ActionSuccessCopyWith<_$ActionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
