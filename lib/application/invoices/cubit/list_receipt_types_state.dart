part of 'list_receipt_types_cubit.dart';

@freezed
class ListReceiptTypesState with _$ListReceiptTypesState {
  const factory ListReceiptTypesState.initial() = _Initial;
  const factory ListReceiptTypesState.actionInProgress() = _ActionInProgress;
  const factory ListReceiptTypesState.actionSuccess(List<ReceiptType> types) =
      _ActionSuccess;
  const factory ListReceiptTypesState.actionFailure(InvoiceFailure failure) =
      _ActionFailure;
}
