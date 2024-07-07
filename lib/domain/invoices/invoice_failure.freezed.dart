// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() noCurrentInvoice,
    required TResult Function() noReceiptSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? noCurrentInvoice,
    TResult? Function()? noReceiptSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? noCurrentInvoice,
    TResult Function()? noReceiptSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(NoCurrentInvoice value) noCurrentInvoice,
    required TResult Function(NoReceiptSelected value) noReceiptSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult? Function(NoReceiptSelected value)? noReceiptSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult Function(NoReceiptSelected value)? noReceiptSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceFailureCopyWith<$Res> {
  factory $InvoiceFailureCopyWith(
          InvoiceFailure value, $Res Function(InvoiceFailure) then) =
      _$InvoiceFailureCopyWithImpl<$Res, InvoiceFailure>;
}

/// @nodoc
class _$InvoiceFailureCopyWithImpl<$Res, $Val extends InvoiceFailure>
    implements $InvoiceFailureCopyWith<$Res> {
  _$InvoiceFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkFailureCopyWith<$Res> {
  factory _$$NetworkFailureCopyWith(
          _$NetworkFailure value, $Res Function(_$NetworkFailure) then) =
      __$$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFailureCopyWithImpl<$Res>
    extends _$InvoiceFailureCopyWithImpl<$Res, _$NetworkFailure>
    implements _$$NetworkFailureCopyWith<$Res> {
  __$$NetworkFailureCopyWithImpl(
      _$NetworkFailure _value, $Res Function(_$NetworkFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkFailure with DiagnosticableTreeMixin implements NetworkFailure {
  const _$NetworkFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceFailure.networkFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'InvoiceFailure.networkFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() noCurrentInvoice,
    required TResult Function() noReceiptSelected,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? noCurrentInvoice,
    TResult? Function()? noReceiptSelected,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? noCurrentInvoice,
    TResult Function()? noReceiptSelected,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(NoCurrentInvoice value) noCurrentInvoice,
    required TResult Function(NoReceiptSelected value) noReceiptSelected,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult? Function(NoReceiptSelected value)? noReceiptSelected,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult Function(NoReceiptSelected value)? noReceiptSelected,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements InvoiceFailure {
  const factory NetworkFailure() = _$NetworkFailure;
}

/// @nodoc
abstract class _$$NoCurrentInvoiceCopyWith<$Res> {
  factory _$$NoCurrentInvoiceCopyWith(
          _$NoCurrentInvoice value, $Res Function(_$NoCurrentInvoice) then) =
      __$$NoCurrentInvoiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoCurrentInvoiceCopyWithImpl<$Res>
    extends _$InvoiceFailureCopyWithImpl<$Res, _$NoCurrentInvoice>
    implements _$$NoCurrentInvoiceCopyWith<$Res> {
  __$$NoCurrentInvoiceCopyWithImpl(
      _$NoCurrentInvoice _value, $Res Function(_$NoCurrentInvoice) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoCurrentInvoice
    with DiagnosticableTreeMixin
    implements NoCurrentInvoice {
  const _$NoCurrentInvoice();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceFailure.noCurrentInvoice()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'InvoiceFailure.noCurrentInvoice'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoCurrentInvoice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() noCurrentInvoice,
    required TResult Function() noReceiptSelected,
  }) {
    return noCurrentInvoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? noCurrentInvoice,
    TResult? Function()? noReceiptSelected,
  }) {
    return noCurrentInvoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? noCurrentInvoice,
    TResult Function()? noReceiptSelected,
    required TResult orElse(),
  }) {
    if (noCurrentInvoice != null) {
      return noCurrentInvoice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(NoCurrentInvoice value) noCurrentInvoice,
    required TResult Function(NoReceiptSelected value) noReceiptSelected,
  }) {
    return noCurrentInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult? Function(NoReceiptSelected value)? noReceiptSelected,
  }) {
    return noCurrentInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult Function(NoReceiptSelected value)? noReceiptSelected,
    required TResult orElse(),
  }) {
    if (noCurrentInvoice != null) {
      return noCurrentInvoice(this);
    }
    return orElse();
  }
}

abstract class NoCurrentInvoice implements InvoiceFailure {
  const factory NoCurrentInvoice() = _$NoCurrentInvoice;
}

/// @nodoc
abstract class _$$NoReceiptSelectedCopyWith<$Res> {
  factory _$$NoReceiptSelectedCopyWith(
          _$NoReceiptSelected value, $Res Function(_$NoReceiptSelected) then) =
      __$$NoReceiptSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoReceiptSelectedCopyWithImpl<$Res>
    extends _$InvoiceFailureCopyWithImpl<$Res, _$NoReceiptSelected>
    implements _$$NoReceiptSelectedCopyWith<$Res> {
  __$$NoReceiptSelectedCopyWithImpl(
      _$NoReceiptSelected _value, $Res Function(_$NoReceiptSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoReceiptSelected
    with DiagnosticableTreeMixin
    implements NoReceiptSelected {
  const _$NoReceiptSelected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceFailure.noReceiptSelected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'InvoiceFailure.noReceiptSelected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoReceiptSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() noCurrentInvoice,
    required TResult Function() noReceiptSelected,
  }) {
    return noReceiptSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? noCurrentInvoice,
    TResult? Function()? noReceiptSelected,
  }) {
    return noReceiptSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? noCurrentInvoice,
    TResult Function()? noReceiptSelected,
    required TResult orElse(),
  }) {
    if (noReceiptSelected != null) {
      return noReceiptSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(NoCurrentInvoice value) noCurrentInvoice,
    required TResult Function(NoReceiptSelected value) noReceiptSelected,
  }) {
    return noReceiptSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult? Function(NoReceiptSelected value)? noReceiptSelected,
  }) {
    return noReceiptSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(NoCurrentInvoice value)? noCurrentInvoice,
    TResult Function(NoReceiptSelected value)? noReceiptSelected,
    required TResult orElse(),
  }) {
    if (noReceiptSelected != null) {
      return noReceiptSelected(this);
    }
    return orElse();
  }
}

abstract class NoReceiptSelected implements InvoiceFailure {
  const factory NoReceiptSelected() = _$NoReceiptSelected;
}
