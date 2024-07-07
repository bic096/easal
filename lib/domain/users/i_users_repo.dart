import 'package:easal/domain/users/account.dart';
import 'package:easal/domain/users/user_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class IUsersRepo {
  Either<UserFailure, Account> getSignedInUser();
  Future<Either<UserFailure, Account>> signIn(
    String userName,
    String password,
  );

  Either<UserFailure, Unit> signOut();

  Future<Either<UserFailure, Account>> superCreateAgentAccount(
    Account account,
    String password,
  );
  Future<Either<UserFailure, Account>> superUpdateSupervisorAccount(
    String accountId,
    Account? account,
    String? password,
  );
  Future<Either<UserFailure, Account>> superUpdateAgentAccount(
    String accountId,
    Account? account,
    String? password,
  );
  Future<Either<UserFailure, Account>> agentUpdateAgentPassword(
    String accountId,
    String oldPassword,
    String newPassword,
  );
  Future<Either<UserFailure, List<Account>>> superListAgentsAccounts();

  Future<Either<UserFailure, Unit>> superDeleteAgentAccount(
    String accountId,
  );
}
