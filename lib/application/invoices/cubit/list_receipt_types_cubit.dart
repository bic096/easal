import 'package:easal/domain/invoices/invoice_failure.dart';
import 'package:easal/domain/invoices/receipt_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_receipt_types_state.dart';
part 'list_receipt_types_cubit.freezed.dart';

@Singleton()
class ListReceiptTypesCubit extends Cubit<ListReceiptTypesState> {
  ListReceiptTypesCubit() : super(const ListReceiptTypesState.initial());

  Future<void> listReceiptTypes() async {
    emit(const _ActionInProgress());
    await Future.delayed(const Duration(seconds: 5));
    emit(_ActionSuccess(List.generate(
        10,
        (index) => ReceiptType(
              id: '',
              number: index,
              name: 'name$index',
              value: index,
            ))));
  }
}
