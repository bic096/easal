part of 'manage_agent_cubit.dart';

@freezed
class ManageAgentState with _$ManageAgentState {
  const factory ManageAgentState.initial() = _Initial;
  const factory ManageAgentState.actionFailure(UserFailure failure) =
      ActionFailure;
  const factory ManageAgentState.actionInProgress() = ActionInProgress;
  const factory ManageAgentState.actionSuccess(Option<Account> accountOption) =
      ActionSuccess;
}
