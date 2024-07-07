import 'package:easal/domain/invoices/receipt.dart';
import 'package:easal/infrastructure/invoices/invoice_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'receipt_dto.freezed.dart';
part 'receipt_dto.g.dart';

// Map<String, dynamic> agentFromJson(Map<String, dynamic> json) {
//   return json["agentId"] as Map<String, dynamic>;
// }

// Map<String, dynamic> invoiceFromJson(Map<String, dynamic> json) {
//   return json["invoiceId"] as Map<String, dynamic>;
// }

@freezed
sealed class ReceiptDto with _$ReceiptDto {
  const ReceiptDto._();

  /// this constructor should only be use to get data from the server see
  /// ReceiptDto.upload()
  // const factory ReceiptDto({
  //   required InvoiceDto invoiceDtoRef,
  //   @JsonKey(includeToJson: false) required String id,
  //   @JsonKey(includeToJson: false, name: 'expand', fromJson: agentFromJson)
  //   required Map<String, dynamic> agent,
  //   @JsonKey(includeToJson: false, name: 'expand', fromJson: invoiceFromJson)
  //   required Map<String, dynamic> invoice,
  //   required String clientName,
  //   String? description,
  //   required int value,
  //   required String type,
  //   required bool canceled,
  //   required DateTime date,
  // }) = _ReceiptDto;
  const factory ReceiptDto({
    @JsonKey(includeToJson: false) required String id,
    required int number,
    required String agentId,
    required String invoiceId,
    required String typeId,
    required String clientName,
    required String agentName,
    String? description,
    required int value,
    required String type,
    required bool canceled,
    @JsonKey(name: "created", fromJson: dateFromJson) required DateTime date,
  }) = _ReceiptDto;

  ///this constructor should be used for post or uploading data to the server
  const factory ReceiptDto.upload({
    @JsonKey(includeToJson: false) required String id,
    @JsonKey(includeToJson: false) required int number,
    required String agentId,
    required String invoiceId,
    required String typeId,
    required String clientName,
    required String agentName,
    String? description,
    required int value,
    required String type,
    required bool canceled,
    required DateTime date,
  }) = _ReceiptDtoUpload;

  factory ReceiptDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptDtoFromJson(
          json..addEntries([const MapEntry("runtimeType", "default")]));

  factory ReceiptDto.fromDomain(Receipt receipt) => ReceiptDto.upload(
      id: receipt.id,
      number: receipt.number,
      agentId: receipt.agentId,
      invoiceId: receipt.invoiceId,
      typeId: receipt.typeId,
      clientName: receipt.clientName,
      agentName: receipt.agentName,
      value: receipt.value,
      type: receipt.type,
      description: receipt.description,
      canceled: receipt.canceled,
      date: receipt.date);

  Receipt toDomain() => Receipt(
      id: id,
      number: number,
      // agent: AccountDto.fromJson(switch (this) {
      //   _ReceiptDto(:final agent) => agent,
      //   _ => null,
      // }!)
      //     .toDomain(),
      // invoice: InvoiceDto.fromJson(switch (this) {
      //   _ReceiptDto(:final invoice) => invoice,
      //   _ => null,
      // }!)
      //     .toDomain(),
      agentId: agentId,
      invoiceId: invoiceId,
      typeId: typeId,
      clientName: clientName,
      agentName: agentName,
      value: value,
      type: type,
      description: description,
      canceled: canceled,
      date: date);
}

// class ReceiptDtoConverter
//     implements JsonConverter<ReceiptDto, Map<String, dynamic>> {
//   const ReceiptDtoConverter();

//   @override
//   ReceiptDto fromJson(Map<String, dynamic> json) {
//     return _ReceiptDto.fromJson(json);
//   }

//   @override
//   Map<String, dynamic> toJson(ReceiptDto data) => data.toJson();
// }
