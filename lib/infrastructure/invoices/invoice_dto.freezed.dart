// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceDto _$InvoiceDtoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _InvoiceDto.fromJson(json);
    case 'upload':
      return _InvoiceDtoUpload.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'InvoiceDto',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$InvoiceDto {
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get totalValue => throw _privateConstructorUsedError;
  int get totalReceipts => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created", fromJson: dateFromJson)
  DateTime get date => throw _privateConstructorUsedError;
  bool get submited => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)
        $default, {
    required TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)
        upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)?
        $default, {
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)?
        upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)?
        $default, {
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)?
        upload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InvoiceDto value) $default, {
    required TResult Function(_InvoiceDtoUpload value) upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InvoiceDto value)? $default, {
    TResult? Function(_InvoiceDtoUpload value)? upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InvoiceDto value)? $default, {
    TResult Function(_InvoiceDtoUpload value)? upload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDtoCopyWith<InvoiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDtoCopyWith<$Res> {
  factory $InvoiceDtoCopyWith(
          InvoiceDto value, $Res Function(InvoiceDto) then) =
      _$InvoiceDtoCopyWithImpl<$Res, InvoiceDto>;
  @useResult
  $Res call(
      {String id,
      int number,
      int totalValue,
      int totalReceipts,
      String status,
      @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
      bool submited});
}

/// @nodoc
class _$InvoiceDtoCopyWithImpl<$Res, $Val extends InvoiceDto>
    implements $InvoiceDtoCopyWith<$Res> {
  _$InvoiceDtoCopyWithImpl(this._value, this._then);

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
    Object? submited = null,
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
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submited: null == submited
          ? _value.submited
          : submited // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceDtoCopyWith<$Res>
    implements $InvoiceDtoCopyWith<$Res> {
  factory _$$_InvoiceDtoCopyWith(
          _$_InvoiceDto value, $Res Function(_$_InvoiceDto) then) =
      __$$_InvoiceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int number,
      int totalValue,
      int totalReceipts,
      String status,
      @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
      @JsonKey(name: 'expand', fromJson: agentFromJson)
      Map<String, dynamic> agent,
      bool submited,
      List<String> receipts});
}

/// @nodoc
class __$$_InvoiceDtoCopyWithImpl<$Res>
    extends _$InvoiceDtoCopyWithImpl<$Res, _$_InvoiceDto>
    implements _$$_InvoiceDtoCopyWith<$Res> {
  __$$_InvoiceDtoCopyWithImpl(
      _$_InvoiceDto _value, $Res Function(_$_InvoiceDto) _then)
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
    return _then(_$_InvoiceDto(
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
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agent: null == agent
          ? _value._agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      submited: null == submited
          ? _value.submited
          : submited // ignore: cast_nullable_to_non_nullable
              as bool,
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceDto extends _InvoiceDto {
  const _$_InvoiceDto(
      {required this.id,
      required this.number,
      required this.totalValue,
      required this.totalReceipts,
      required this.status,
      @JsonKey(name: "created", fromJson: dateFromJson) required this.date,
      @JsonKey(name: 'expand', fromJson: agentFromJson)
      required final Map<String, dynamic> agent,
      required this.submited,
      required final List<String> receipts,
      final String? $type})
      : _agent = agent,
        _receipts = receipts,
        $type = $type ?? 'default',
        super._();

  factory _$_InvoiceDto.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDtoFromJson(json);

  @override
  final String id;
  @override
  final int number;
  @override
  final int totalValue;
  @override
  final int totalReceipts;
  @override
  final String status;
  @override
  @JsonKey(name: "created", fromJson: dateFromJson)
  final DateTime date;
  final Map<String, dynamic> _agent;
  @override
  @JsonKey(name: 'expand', fromJson: agentFromJson)
  Map<String, dynamic> get agent {
    if (_agent is EqualUnmodifiableMapView) return _agent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_agent);
  }

  @override
  final bool submited;
  final List<String> _receipts;
  @override
  List<String> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InvoiceDto(id: $id, number: $number, totalValue: $totalValue, totalReceipts: $totalReceipts, status: $status, date: $date, agent: $agent, submited: $submited, receipts: $receipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.totalReceipts, totalReceipts) ||
                other.totalReceipts == totalReceipts) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._agent, _agent) &&
            (identical(other.submited, submited) ||
                other.submited == submited) &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      number,
      totalValue,
      totalReceipts,
      status,
      date,
      const DeepCollectionEquality().hash(_agent),
      submited,
      const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDtoCopyWith<_$_InvoiceDto> get copyWith =>
      __$$_InvoiceDtoCopyWithImpl<_$_InvoiceDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)
        $default, {
    required TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)
        upload,
  }) {
    return $default(id, number, totalValue, totalReceipts, status, date, agent,
        submited, receipts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)?
        $default, {
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)?
        upload,
  }) {
    return $default?.call(id, number, totalValue, totalReceipts, status, date,
        agent, submited, receipts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)?
        $default, {
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)?
        upload,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, number, totalValue, totalReceipts, status, date,
          agent, submited, receipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InvoiceDto value) $default, {
    required TResult Function(_InvoiceDtoUpload value) upload,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InvoiceDto value)? $default, {
    TResult? Function(_InvoiceDtoUpload value)? upload,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InvoiceDto value)? $default, {
    TResult Function(_InvoiceDtoUpload value)? upload,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDtoToJson(
      this,
    );
  }
}

abstract class _InvoiceDto extends InvoiceDto {
  const factory _InvoiceDto(
      {required final String id,
      required final int number,
      required final int totalValue,
      required final int totalReceipts,
      required final String status,
      @JsonKey(name: "created", fromJson: dateFromJson)
      required final DateTime date,
      @JsonKey(name: 'expand', fromJson: agentFromJson)
      required final Map<String, dynamic> agent,
      required final bool submited,
      required final List<String> receipts}) = _$_InvoiceDto;
  const _InvoiceDto._() : super._();

  factory _InvoiceDto.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDto.fromJson;

  @override
  String get id;
  @override
  int get number;
  @override
  int get totalValue;
  @override
  int get totalReceipts;
  @override
  String get status;
  @override
  @JsonKey(name: "created", fromJson: dateFromJson)
  DateTime get date;
  @JsonKey(name: 'expand', fromJson: agentFromJson)
  Map<String, dynamic> get agent;
  @override
  bool get submited;
  List<String> get receipts;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDtoCopyWith<_$_InvoiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvoiceDtoUploadCopyWith<$Res>
    implements $InvoiceDtoCopyWith<$Res> {
  factory _$$_InvoiceDtoUploadCopyWith(
          _$_InvoiceDtoUpload value, $Res Function(_$_InvoiceDtoUpload) then) =
      __$$_InvoiceDtoUploadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(includeToJson: false) int number,
      @JsonKey(includeToJson: false) int totalValue,
      @JsonKey(includeToJson: false) int totalReceipts,
      String status,
      DateTime date,
      String agentId,
      bool submited});
}

/// @nodoc
class __$$_InvoiceDtoUploadCopyWithImpl<$Res>
    extends _$InvoiceDtoCopyWithImpl<$Res, _$_InvoiceDtoUpload>
    implements _$$_InvoiceDtoUploadCopyWith<$Res> {
  __$$_InvoiceDtoUploadCopyWithImpl(
      _$_InvoiceDtoUpload _value, $Res Function(_$_InvoiceDtoUpload) _then)
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
    Object? agentId = null,
    Object? submited = null,
  }) {
    return _then(_$_InvoiceDtoUpload(
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
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      submited: null == submited
          ? _value.submited
          : submited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceDtoUpload extends _InvoiceDtoUpload {
  const _$_InvoiceDtoUpload(
      {@JsonKey(includeToJson: false) required this.id,
      @JsonKey(includeToJson: false) required this.number,
      @JsonKey(includeToJson: false) required this.totalValue,
      @JsonKey(includeToJson: false) required this.totalReceipts,
      required this.status,
      required this.date,
      required this.agentId,
      required this.submited,
      final String? $type})
      : $type = $type ?? 'upload',
        super._();

  factory _$_InvoiceDtoUpload.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDtoUploadFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  @JsonKey(includeToJson: false)
  final int number;
  @override
  @JsonKey(includeToJson: false)
  final int totalValue;
  @override
  @JsonKey(includeToJson: false)
  final int totalReceipts;
  @override
  final String status;
  @override
  final DateTime date;
  @override
  final String agentId;
  @override
  final bool submited;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InvoiceDto.upload(id: $id, number: $number, totalValue: $totalValue, totalReceipts: $totalReceipts, status: $status, date: $date, agentId: $agentId, submited: $submited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDtoUpload &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.totalReceipts, totalReceipts) ||
                other.totalReceipts == totalReceipts) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.submited, submited) ||
                other.submited == submited));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, totalValue,
      totalReceipts, status, date, agentId, submited);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDtoUploadCopyWith<_$_InvoiceDtoUpload> get copyWith =>
      __$$_InvoiceDtoUploadCopyWithImpl<_$_InvoiceDtoUpload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)
        $default, {
    required TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)
        upload,
  }) {
    return upload(
        id, number, totalValue, totalReceipts, status, date, agentId, submited);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)?
        $default, {
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)?
        upload,
  }) {
    return upload?.call(
        id, number, totalValue, totalReceipts, status, date, agentId, submited);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            int number,
            int totalValue,
            int totalReceipts,
            String status,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date,
            @JsonKey(name: 'expand', fromJson: agentFromJson)
            Map<String, dynamic> agent,
            bool submited,
            List<String> receipts)?
        $default, {
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            @JsonKey(includeToJson: false) int totalValue,
            @JsonKey(includeToJson: false) int totalReceipts,
            String status,
            DateTime date,
            String agentId,
            bool submited)?
        upload,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(id, number, totalValue, totalReceipts, status, date,
          agentId, submited);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InvoiceDto value) $default, {
    required TResult Function(_InvoiceDtoUpload value) upload,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InvoiceDto value)? $default, {
    TResult? Function(_InvoiceDtoUpload value)? upload,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InvoiceDto value)? $default, {
    TResult Function(_InvoiceDtoUpload value)? upload,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDtoUploadToJson(
      this,
    );
  }
}

abstract class _InvoiceDtoUpload extends InvoiceDto {
  const factory _InvoiceDtoUpload(
      {@JsonKey(includeToJson: false) required final String id,
      @JsonKey(includeToJson: false) required final int number,
      @JsonKey(includeToJson: false) required final int totalValue,
      @JsonKey(includeToJson: false) required final int totalReceipts,
      required final String status,
      required final DateTime date,
      required final String agentId,
      required final bool submited}) = _$_InvoiceDtoUpload;
  const _InvoiceDtoUpload._() : super._();

  factory _InvoiceDtoUpload.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDtoUpload.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  @JsonKey(includeToJson: false)
  int get number;
  @override
  @JsonKey(includeToJson: false)
  int get totalValue;
  @override
  @JsonKey(includeToJson: false)
  int get totalReceipts;
  @override
  String get status;
  @override
  DateTime get date;
  String get agentId;
  @override
  bool get submited;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDtoUploadCopyWith<_$_InvoiceDtoUpload> get copyWith =>
      throw _privateConstructorUsedError;
}
