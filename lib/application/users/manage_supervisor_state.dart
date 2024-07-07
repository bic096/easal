part of 'manage_supervisor_cubit.dart';

@freezed
class ManageSupervisorState with _$ManageSupervisorState {
  const factory ManageSupervisorState.initial() = _Initial;
  const factory ManageSupervisorState.actionFailure(UserFailure failure) =
      ActionFailure;
  const factory ManageSupervisorState.actionInProgress() = ActionInProgress;
  const factory ManageSupervisorState.actionSuccess(Account account) =
      ActionSuccess;
}
