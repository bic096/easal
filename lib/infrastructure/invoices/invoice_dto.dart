import 'package:easal/domain/invoices/invoice.dart';

import 'package:easal/infrastructure/users/account_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'invoice_dto.freezed.dart';
part 'invoice_dto.g.dart';

Map<String, dynamic> agentFromJson(Map<String, dynamic> json) {
  return json["agentId"] as Map<String, dynamic>;
}

Map<String, dynamic> invoiceFromJson(Map<String, dynamic> json) {
  return json["invoiceId"] as Map<String, dynamic>;
}

DateTime dateFromJson(String date) {
  return DateTime.parse(date).add(const Duration(hours: 2));
}

@freezed
sealed class InvoiceDto with _$InvoiceDto {
  const InvoiceDto._();

  /// this constructor should only be use to get data from the server see
  /// InvoiceDto.upload()
  const factory InvoiceDto({
    required String id,
    required int number,
    required int totalValue,
    required int totalReceipts,
    required String status,
    @JsonKey(name: "created", fromJson: dateFromJson) required DateTime date,
    @JsonKey(name: 'expand', fromJson: agentFromJson)
    required Map<String, dynamic> agent,
    required bool submited,
    required List<String> receipts,
  }) = _InvoiceDto;

  ///this constructor should be used for post or uploading data to the server
  const factory InvoiceDto.upload({
    @JsonKey(includeToJson: false) required String id,
    @JsonKey(includeToJson: false) required int number,
    @JsonKey(includeToJson: false) required int totalValue,
    @JsonKey(includeToJson: false) required int totalReceipts,
    required String status,
    required DateTime date,
    required String agentId,
    required bool submited,
    // @JsonKey(includeToJson: false) required List<String> receipts,
  }) = _InvoiceDtoUpload;

  factory InvoiceDto.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDtoFromJson(
          Map.of(json)..addEntries([const MapEntry("runtimeType", "default")]));

  factory InvoiceDto.fromDomain(Invoice invoice) => InvoiceDto.upload(
        id: invoice.id,
        number: invoice.number,
        totalValue: invoice.totalValue,
        totalReceipts: invoice.totalReceipts,
        status: invoice.status.name,
        date: invoice.date,
        agentId: invoice.agent.id,
        submited: invoice.submited,
      );

  Invoice toDomain() => Invoice(
      id: id,
      number: number,
      totalValue: totalValue,
      totalReceipts: totalReceipts,
      status: InvoiceStatus.values.byName(status),
      date: date,
      agent: AccountDto.fromJson(switch (this) {
        _InvoiceDto(:final agent) => agent,
        _ => null,
      }!)
          .toDomain(),
      submited: submited,
      receipts: []);
}
