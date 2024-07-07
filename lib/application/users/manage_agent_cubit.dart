import 'package:easal/domain/users/account.dart';
import 'package:easal/domain/users/i_users_repo.dart';
import 'package:easal/domain/users/user_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_agent_state.dart';
part 'manage_agent_cubit.freezed.dart';

@singleton
class ManageAgentCubit extends Cubit<ManageAgentState> {
  final IUsersRepo _repo;
  ManageAgentCubit(this._repo) : super(const ManageAgentState.initial());

  void createAgentAccountBySupervisor(
    Account current,
    Account agentAccount,
    String agentPassword,
  ) async {
    emit(const ManageAgentState.actionInProgress());
    if (current.role == Role.supervisor) {
      final accountOr =
          await _repo.superCreateAgentAccount(agentAccount, agentPassword);
      accountOr.fold(
        (l) => emit(ManageAgentState.actionFailure(l)),
        (r) => emit(ManageAgentState.actionSuccess(some(r))),
      );
    } else {
      emit(const ManageAgentState.actionFailure(UnauthorizedOperation()));
    }
  }

  void updateAgentAccountBySupervisor(Account current, String agentId,
      {Account? agentAccount, String? agentPassword}) async {
    emit(const ManageAgentState.actionInProgress());
    if (current.role == Role.supervisor) {
      final accountOr = await _repo.superUpdateAgentAccount(
          agentId, agentAccount, agentPassword);
      accountOr.fold(
        (l) => emit(ManageAgentState.actionFailure(l)),
        (r) => emit(ManageAgentState.actionSuccess(some(r))),
      );
    } else {
      emit(const ManageAgentState.actionFailure(UnauthorizedOperation()));
    }
  }

  void deleteAgentAccountBySupervisor(
      Account current, Account agentAccount) async {
    emit(const ManageAgentState.actionInProgress());
    if (current.role == Role.supervisor) {
      final unitOr = await _repo.superDeleteAgentAccount(agentAccount.id);
      unitOr.fold(
        (l) => emit(ManageAgentState.actionFailure(l)),
        (r) => emit(ManageAgentState.actionSuccess(none())),
      );
    } else {
      emit(const ManageAgentState.actionFailure(UnauthorizedOperation()));
    }
  }

  Future<void> updateAgentPasswordByAgent(
      String accountId, String oldPass, String newPass) async {
    emit(const ManageAgentState.actionInProgress());

    final accountOr =
        await _repo.agentUpdateAgentPassword(accountId, oldPass, newPass);
    accountOr.fold(
      (l) => emit(ManageAgentState.actionFailure(l)),
      (r) => emit(ManageAgentState.actionSuccess(some(r))),
    );
  }
}
