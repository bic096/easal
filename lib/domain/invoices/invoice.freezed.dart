// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get totalValue => throw _privateConstructorUsedError;
  int get totalReceipts => throw _privateConstructorUsedError;
  InvoiceStatus get status => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Account get agent => throw _privateConstructorUsedError;
  bool get submited => throw _privateConstructorUsedError;
  List<Receipt> get receipts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      int number,
      int totalValue,
      int totalReceipts,
      InvoiceStatus status,
      DateTime date,
      Account agent,
      bool submited,
      List<Receipt> receipts});

  $AccountCopyWith<$Res> get agent;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? totalValue = null,
    Object? totalReceipts = null,
    Object? status = null,
    Object? date = null,
    Object? agent = null,
    Object? submited = null,
    Object? receipts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as int,
      totalReceipts: null == totalReceipts
          ? _value.totalReceipts
          : totalReceipts // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agent: null == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Account,
      submited: null == submited
          ? _value.submited
          : submited // ignore: cast_nullable_to_non_nullable
              as bool,
      receipts: null == receipts
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get agent {
    return $AccountCopyWith<$Res>(_value.agent, (value) {
      return _then(_value.copyWith(agent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$_InvoiceCopyWith(
          _$_Invoice value, $Res Function(_$_Invoice) then) =
      __$$_InvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int number,
      int totalValue,
      int totalReceipts,
      InvoiceStatus status,
      DateTime date,
      Account agent,
      bool submited,
      List<Receipt> receipts});

  @override
  $AccountCopyWith<$Res> get agent;
}

/// @nodoc
class __$$_InvoiceCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$_Invoice>
    implements _$$_InvoiceCopyWith<$Res> {
  __$$_InvoiceCopyWithImpl(_$_Invoice _value, $Res Function(_$_Invoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? totalValue = null,
    Object? totalReceipts = null,
    Object? status = null,
    Object? date = null,
    Object? agent = null,
    Object? submited = null,
    Object? receipts = null,
  }) {
    return _then(_$_Invoice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as int,
      totalReceipts: null == totalReceipts
          ? _value.totalReceipts
          : totalReceipts // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agent: null == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Account,
      submited: null == submited
          ? _value.submited
          : submited // ignore: cast_nullable_to_non_nullable
              as bool,
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ));
  }
}

/// @nodoc

class _$_Invoice with DiagnosticableTreeMixin implements _Invoice {
  const _$_Invoice(
      {required this.id,
      required this.number,
      required this.totalValue,
      required this.totalReceipts,
      required this.status,
      required this.date,
      required this.agent,
      required this.submited,
      required final List<Receipt> receipts})
      : _receipts = receipts;

  @override
  final String id;
  @override
  final int number;
  @override
  final int totalValue;
  @override
  final int totalReceipts;
  @override
  final InvoiceStatus status;
  @override
  final DateTime date;
  @override
  final Account agent;
  @override
  final bool submited;
  final List<Receipt> _receipts;
  @override
  List<Receipt> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Invoice(id: $id, number: $number, totalValue: $totalValue, totalReceipts: $totalReceipts, status: $status, date: $date, agent: $agent, submited: $submited, receipts: $receipts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Invoice'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('totalValue', totalValue))
      ..add(DiagnosticsProperty('totalReceipts', totalReceipts))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('agent', agent))
      ..add(DiagnosticsProperty('submited', submited))
      ..add(DiagnosticsProperty('receipts', receipts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.totalReceipts, totalReceipts) ||
                other.totalReceipts == totalReceipts) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            (identical(other.submited, submited) ||
                other.submited == submited) &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      number,
      totalValue,
      totalReceipts,
      status,
      date,
      agent,
      submited,
      const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      __$$_InvoiceCopyWithImpl<_$_Invoice>(this, _$identity);
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required final String id,
      required final int number,
      required final int totalValue,
      required final int totalReceipts,
      required final InvoiceStatus status,
      required final DateTime date,
      required final Account agent,
      required final bool submited,
      required final List<Receipt> receipts}) = _$_Invoice;

  @override
  String get id;
  @override
  int get number;
  @override
  int get totalValue;
  @override
  int get totalReceipts;
  @override
  InvoiceStatus get status;
  @override
  DateTime get date;
  @override
  Account get agent;
  @override
  bool get submited;
  @override
  List<Receipt> get receipts;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      throw _privateConstructorUsedError;
}
