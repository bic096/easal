import 'package:easal/domain/invoices/receipt_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_type_dto.g.dart';
part 'receipt_type_dto.freezed.dart';

@freezed
class ReceiptTypeDto with _$ReceiptTypeDto {
  const ReceiptTypeDto._();
  const factory ReceiptTypeDto({
    @JsonKey(includeToJson: false) required String id,
    @JsonKey(includeToJson: false) required int number,
    required String name,
    required int value,
    // required String group,
  }) = _ReceiptTypeDto;

  factory ReceiptTypeDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptTypeDtoFromJson(json);

  factory ReceiptTypeDto.fromDomain(ReceiptType receiptType) => ReceiptTypeDto(
        id: receiptType.id,
        number: receiptType.number,
        name: receiptType.name,
        value: receiptType.value,
        //  group: receiptType.group.name,
      );

  ReceiptType toDomain() => ReceiptType(
        id: id,
        number: number,
        name: name,
        value: value,
        //   group: ReceiptGroup.values.byName(group),
      );
}
