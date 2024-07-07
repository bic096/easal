import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_list.freezed.dart';

@freezed
class PaginatedList<E> with _$PaginatedList<E> {
  const factory PaginatedList({
    required int page,
    required int perPage,
    required int totalItems,
    required int totalPages,
    required List<E> items,
  }) = _PaginatedList<E>;
}
