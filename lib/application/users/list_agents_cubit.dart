import 'package:easal/domain/users/account.dart';
import 'package:easal/domain/users/i_users_repo.dart';
import 'package:easal/domain/users/user_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_agents_state.dart';
part 'list_agents_cubit.freezed.dart';

@singleton
class ListAgentsCubit extends Cubit<ListAgentsState> {
  final IUsersRepo _repo;
  ListAgentsCubit(this._repo) : super(const ListAgentsState.initial());

  Future<void> listAgentsAccountsBySupervisor(Account current) async {
    emit(const ListAgentsState.actionInProgress());
    if (current.role == Role.supervisor) {
      final listOr = await _repo.superListAgentsAccounts();
      listOr.fold(
        (l) => emit(ListAgentsState.actionFailure(l)),
        (r) => emit(ListAgentsState.actionSuccess(r)),
      );
    } else {
      emit(const ListAgentsState.actionFailure(UnauthorizedOperation()));
    }
  }
}
