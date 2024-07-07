part of 'list_agents_cubit.dart';

@freezed
class ListAgentsState with _$ListAgentsState {
  const factory ListAgentsState.initial() = _Initial;

  const factory ListAgentsState.actionFailure(UserFailure failure) =
      ActionFailure;
  const factory ListAgentsState.actionInProgress() = ActionInProgress;
  const factory ListAgentsState.actionSuccess(List<Account> accounts) =
      ActionSuccess;
}
