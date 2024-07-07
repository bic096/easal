// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedList<E> {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<E> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedListCopyWith<E, PaginatedList<E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedListCopyWith<E, $Res> {
  factory $PaginatedListCopyWith(
          PaginatedList<E> value, $Res Function(PaginatedList<E>) then) =
      _$PaginatedListCopyWithImpl<E, $Res, PaginatedList<E>>;
  @useResult
  $Res call(
      {int page, int perPage, int totalItems, int totalPages, List<E> items});
}

/// @nodoc
class _$PaginatedListCopyWithImpl<E, $Res, $Val extends PaginatedList<E>>
    implements $PaginatedListCopyWith<E, $Res> {
  _$PaginatedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalItems = null,
    Object? totalPages = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<E>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedListCopyWith<E, $Res>
    implements $PaginatedListCopyWith<E, $Res> {
  factory _$$_PaginatedListCopyWith(
          _$_PaginatedList<E> value, $Res Function(_$_PaginatedList<E>) then) =
      __$$_PaginatedListCopyWithImpl<E, $Res>;
  @override
  @useResult
  $Res call(
      {int page, int perPage, int totalItems, int totalPages, List<E> items});
}

/// @nodoc
class __$$_PaginatedListCopyWithImpl<E, $Res>
    extends _$PaginatedListCopyWithImpl<E, $Res, _$_PaginatedList<E>>
    implements _$$_PaginatedListCopyWith<E, $Res> {
  __$$_PaginatedListCopyWithImpl(
      _$_PaginatedList<E> _value, $Res Function(_$_PaginatedList<E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalItems = null,
    Object? totalPages = null,
    Object? items = null,
  }) {
    return _then(_$_PaginatedList<E>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<E>,
    ));
  }
}

/// @nodoc

class _$_PaginatedList<E> implements _PaginatedList<E> {
  const _$_PaginatedList(
      {required this.page,
      required this.perPage,
      required this.totalItems,
      required this.totalPages,
      required final List<E> items})
      : _items = items;

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalItems;
  @override
  final int totalPages;
  final List<E> _items;
  @override
  List<E> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PaginatedList<$E>(page: $page, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedList<E> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalItems,
      totalPages, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedListCopyWith<E, _$_PaginatedList<E>> get copyWith =>
      __$$_PaginatedListCopyWithImpl<E, _$_PaginatedList<E>>(this, _$identity);
}

abstract class _PaginatedList<E> implements PaginatedList<E> {
  const factory _PaginatedList(
      {required final int page,
      required final int perPage,
      required final int totalItems,
      required final int totalPages,
      required final List<E> items}) = _$_PaginatedList<E>;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalItems;
  @override
  int get totalPages;
  @override
  List<E> get items;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedListCopyWith<E, _$_PaginatedList<E>> get copyWith =>
      throw _privateConstructorUsedError;
}
