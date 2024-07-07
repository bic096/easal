// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptDto _$ReceiptDtoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ReceiptDto.fromJson(json);
    case 'upload':
      return _ReceiptDtoUpload.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ReceiptDto',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ReceiptDto {
  @JsonKey(includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get agentId => throw _privateConstructorUsedError;
  String get invoiceId => throw _privateConstructorUsedError;
  String get typeId => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get agentName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get canceled => throw _privateConstructorUsedError;
  @JsonKey(name: "created", fromJson: dateFromJson)
  DateTime get date => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)
        $default, {
    required TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)
        upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)?
        $default, {
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)?
        upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)?
        $default, {
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)?
        upload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReceiptDto value) $default, {
    required TResult Function(_ReceiptDtoUpload value) upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReceiptDto value)? $default, {
    TResult? Function(_ReceiptDtoUpload value)? upload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReceiptDto value)? $default, {
    TResult Function(_ReceiptDtoUpload value)? upload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptDtoCopyWith<ReceiptDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptDtoCopyWith<$Res> {
  factory $ReceiptDtoCopyWith(
          ReceiptDto value, $Res Function(ReceiptDto) then) =
      _$ReceiptDtoCopyWithImpl<$Res, ReceiptDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      int number,
      String agentId,
      String invoiceId,
      String typeId,
      String clientName,
      String agentName,
      String? description,
      int value,
      String type,
      bool canceled,
      @JsonKey(name: "created", fromJson: dateFromJson) DateTime date});
}

/// @nodoc
class _$ReceiptDtoCopyWithImpl<$Res, $Val extends ReceiptDto>
    implements $ReceiptDtoCopyWith<$Res> {
  _$ReceiptDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? agentId = null,
    Object? invoiceId = null,
    Object? typeId = null,
    Object? clientName = null,
    Object? agentName = null,
    Object? description = freezed,
    Object? value = null,
    Object? type = null,
    Object? canceled = null,
    Object? date = null,
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
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      canceled: null == canceled
          ? _value.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptDtoCopyWith<$Res>
    implements $ReceiptDtoCopyWith<$Res> {
  factory _$$_ReceiptDtoCopyWith(
          _$_ReceiptDto value, $Res Function(_$_ReceiptDto) then) =
      __$$_ReceiptDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      int number,
      String agentId,
      String invoiceId,
      String typeId,
      String clientName,
      String agentName,
      String? description,
      int value,
      String type,
      bool canceled,
      @JsonKey(name: "created", fromJson: dateFromJson) DateTime date});
}

/// @nodoc
class __$$_ReceiptDtoCopyWithImpl<$Res>
    extends _$ReceiptDtoCopyWithImpl<$Res, _$_ReceiptDto>
    implements _$$_ReceiptDtoCopyWith<$Res> {
  __$$_ReceiptDtoCopyWithImpl(
      _$_ReceiptDto _value, $Res Function(_$_ReceiptDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? agentId = null,
    Object? invoiceId = null,
    Object? typeId = null,
    Object? clientName = null,
    Object? agentName = null,
    Object? description = freezed,
    Object? value = null,
    Object? type = null,
    Object? canceled = null,
    Object? date = null,
  }) {
    return _then(_$_ReceiptDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      canceled: null == canceled
          ? _value.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiptDto extends _ReceiptDto {
  const _$_ReceiptDto(
      {@JsonKey(includeToJson: false) required this.id,
      required this.number,
      required this.agentId,
      required this.invoiceId,
      required this.typeId,
      required this.clientName,
      required this.agentName,
      this.description,
      required this.value,
      required this.type,
      required this.canceled,
      @JsonKey(name: "created", fromJson: dateFromJson) required this.date,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_ReceiptDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptDtoFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  final int number;
  @override
  final String agentId;
  @override
  final String invoiceId;
  @override
  final String typeId;
  @override
  final String clientName;
  @override
  final String agentName;
  @override
  final String? description;
  @override
  final int value;
  @override
  final String type;
  @override
  final bool canceled;
  @override
  @JsonKey(name: "created", fromJson: dateFromJson)
  final DateTime date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReceiptDto(id: $id, number: $number, agentId: $agentId, invoiceId: $invoiceId, typeId: $typeId, clientName: $clientName, agentName: $agentName, description: $description, value: $value, type: $type, canceled: $canceled, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.canceled, canceled) ||
                other.canceled == canceled) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, agentId, invoiceId,
      typeId, clientName, agentName, description, value, type, canceled, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptDtoCopyWith<_$_ReceiptDto> get copyWith =>
      __$$_ReceiptDtoCopyWithImpl<_$_ReceiptDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)
        $default, {
    required TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)
        upload,
  }) {
    return $default(id, number, agentId, invoiceId, typeId, clientName,
        agentName, description, value, type, canceled, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)?
        $default, {
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)?
        upload,
  }) {
    return $default?.call(id, number, agentId, invoiceId, typeId, clientName,
        agentName, description, value, type, canceled, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)?
        $default, {
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)?
        upload,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, number, agentId, invoiceId, typeId, clientName,
          agentName, description, value, type, canceled, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReceiptDto value) $default, {
    required TResult Function(_ReceiptDtoUpload value) upload,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReceiptDto value)? $default, {
    TResult? Function(_ReceiptDtoUpload value)? upload,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReceiptDto value)? $default, {
    TResult Function(_ReceiptDtoUpload value)? upload,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptDtoToJson(
      this,
    );
  }
}

abstract class _ReceiptDto extends ReceiptDto {
  const factory _ReceiptDto(
      {@JsonKey(includeToJson: false) required final String id,
      required final int number,
      required final String agentId,
      required final String invoiceId,
      required final String typeId,
      required final String clientName,
      required final String agentName,
      final String? description,
      required final int value,
      required final String type,
      required final bool canceled,
      @JsonKey(name: "created", fromJson: dateFromJson)
      required final DateTime date}) = _$_ReceiptDto;
  const _ReceiptDto._() : super._();

  factory _ReceiptDto.fromJson(Map<String, dynamic> json) =
      _$_ReceiptDto.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  int get number;
  @override
  String get agentId;
  @override
  String get invoiceId;
  @override
  String get typeId;
  @override
  String get clientName;
  @override
  String get agentName;
  @override
  String? get description;
  @override
  int get value;
  @override
  String get type;
  @override
  bool get canceled;
  @override
  @JsonKey(name: "created", fromJson: dateFromJson)
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptDtoCopyWith<_$_ReceiptDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReceiptDtoUploadCopyWith<$Res>
    implements $ReceiptDtoCopyWith<$Res> {
  factory _$$_ReceiptDtoUploadCopyWith(
          _$_ReceiptDtoUpload value, $Res Function(_$_ReceiptDtoUpload) then) =
      __$$_ReceiptDtoUploadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(includeToJson: false) int number,
      String agentId,
      String invoiceId,
      String typeId,
      String clientName,
      String agentName,
      String? description,
      int value,
      String type,
      bool canceled,
      DateTime date});
}

/// @nodoc
class __$$_ReceiptDtoUploadCopyWithImpl<$Res>
    extends _$ReceiptDtoCopyWithImpl<$Res, _$_ReceiptDtoUpload>
    implements _$$_ReceiptDtoUploadCopyWith<$Res> {
  __$$_ReceiptDtoUploadCopyWithImpl(
      _$_ReceiptDtoUpload _value, $Res Function(_$_ReceiptDtoUpload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? agentId = null,
    Object? invoiceId = null,
    Object? typeId = null,
    Object? clientName = null,
    Object? agentName = null,
    Object? description = freezed,
    Object? value = null,
    Object? type = null,
    Object? canceled = null,
    Object? date = null,
  }) {
    return _then(_$_ReceiptDtoUpload(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      agentName: null == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      canceled: null == canceled
          ? _value.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiptDtoUpload extends _ReceiptDtoUpload {
  const _$_ReceiptDtoUpload(
      {@JsonKey(includeToJson: false) required this.id,
      @JsonKey(includeToJson: false) required this.number,
      required this.agentId,
      required this.invoiceId,
      required this.typeId,
      required this.clientName,
      required this.agentName,
      this.description,
      required this.value,
      required this.type,
      required this.canceled,
      required this.date,
      final String? $type})
      : $type = $type ?? 'upload',
        super._();

  factory _$_ReceiptDtoUpload.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptDtoUploadFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  @JsonKey(includeToJson: false)
  final int number;
  @override
  final String agentId;
  @override
  final String invoiceId;
  @override
  final String typeId;
  @override
  final String clientName;
  @override
  final String agentName;
  @override
  final String? description;
  @override
  final int value;
  @override
  final String type;
  @override
  final bool canceled;
  @override
  final DateTime date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReceiptDto.upload(id: $id, number: $number, agentId: $agentId, invoiceId: $invoiceId, typeId: $typeId, clientName: $clientName, agentName: $agentName, description: $description, value: $value, type: $type, canceled: $canceled, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptDtoUpload &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.canceled, canceled) ||
                other.canceled == canceled) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, agentId, invoiceId,
      typeId, clientName, agentName, description, value, type, canceled, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptDtoUploadCopyWith<_$_ReceiptDtoUpload> get copyWith =>
      __$$_ReceiptDtoUploadCopyWithImpl<_$_ReceiptDtoUpload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)
        $default, {
    required TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)
        upload,
  }) {
    return upload(id, number, agentId, invoiceId, typeId, clientName, agentName,
        description, value, type, canceled, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)?
        $default, {
    TResult? Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)?
        upload,
  }) {
    return upload?.call(id, number, agentId, invoiceId, typeId, clientName,
        agentName, description, value, type, canceled, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            @JsonKey(name: "created", fromJson: dateFromJson) DateTime date)?
        $default, {
    TResult Function(
            @JsonKey(includeToJson: false) String id,
            @JsonKey(includeToJson: false) int number,
            String agentId,
            String invoiceId,
            String typeId,
            String clientName,
            String agentName,
            String? description,
            int value,
            String type,
            bool canceled,
            DateTime date)?
        upload,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(id, number, agentId, invoiceId, typeId, clientName,
          agentName, description, value, type, canceled, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReceiptDto value) $default, {
    required TResult Function(_ReceiptDtoUpload value) upload,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReceiptDto value)? $default, {
    TResult? Function(_ReceiptDtoUpload value)? upload,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReceiptDto value)? $default, {
    TResult Function(_ReceiptDtoUpload value)? upload,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptDtoUploadToJson(
      this,
    );
  }
}

abstract class _ReceiptDtoUpload extends ReceiptDto {
  const factory _ReceiptDtoUpload(
      {@JsonKey(includeToJson: false) required final String id,
      @JsonKey(includeToJson: false) required final int number,
      required final String agentId,
      required final String invoiceId,
      required final String typeId,
      required final String clientName,
      required final String agentName,
      final String? description,
      required final int value,
      required final String type,
      required final bool canceled,
      required final DateTime date}) = _$_ReceiptDtoUpload;
  const _ReceiptDtoUpload._() : super._();

  factory _ReceiptDtoUpload.fromJson(Map<String, dynamic> json) =
      _$_ReceiptDtoUpload.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  @JsonKey(includeToJson: false)
  int get number;
  @override
  String get agentId;
  @override
  String get invoiceId;
  @override
  String get typeId;
  @override
  String get clientName;
  @override
  String get agentName;
  @override
  String? get description;
  @override
  int get value;
  @override
  String get type;
  @override
  bool get canceled;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptDtoUploadCopyWith<_$_ReceiptDtoUpload> get copyWith =>
      throw _privateConstructorUsedError;
}
