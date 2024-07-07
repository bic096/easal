import 'package:easal/domain/users/account.dart';
import 'package:easal/domain/users/i_users_repo.dart';
import 'package:easal/domain/users/user_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_supervisor_state.dart';
part 'manage_supervisor_cubit.freezed.dart';

@singleton
class ManageSupervisorCubit extends Cubit<ManageSupervisorState> {
  final IUsersRepo _repo;
  ManageSupervisorCubit(this._repo)
      : super(const ManageSupervisorState.initial());

  void updateSupervisorAccountBySupervisor(Account current,
      {Account? account, String? password}) async {
    emit(const ManageSupervisorState.actionInProgress());
    if (current.role == Role.supervisor) {
      final accountOr = await _repo.superUpdateSupervisorAccount(
          current.id, account, password);

      accountOr.fold(
        (l) => emit(ManageSupervisorState.actionFailure(l)),
        (r) => emit(ManageSupervisorState.actionSuccess(r)),
      );
    } else {
      emit(const ManageSupervisorState.actionFailure(UnauthorizedOperation()));
    }
  }
}
