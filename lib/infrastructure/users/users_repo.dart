import 'dart:convert';

import 'package:easal/domain/users/account.dart';
import 'package:easal/domain/users/i_users_repo.dart';
import 'package:easal/domain/users/user_failure.dart';
import 'package:easal/infrastructure/core/logger.dart';
import 'package:easal/infrastructure/users/account_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart' as inj;
import 'package:pocketbase/pocketbase.dart';

@inj.Singleton(as: IUsersRepo)
@inj.Order(-2)
class UserRepo implements IUsersRepo {
  final log = logger(UserRepo);
  final PocketBase _pocketBase;
  UserRepo(this._pocketBase);

  @override
  Future<Either<UserFailure, Account>> signIn(
      String userName, String password) async {
    log.i('signIn function call in the user repo impl');
    log.i('with param username $userName & password $password');
    try {
      final res = await _pocketBase
          .collection('users')
          .authWithPassword(userName, password);
      log.i('signIn success with data ${res.toJson()}');
      return right(AccountDto.fromJson(res.record!.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('exception accur with data ${e.toString()} ');
      if (e.statusCode == 400) {
        return left(const UserFailure.invalidUserNameOrPassword());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Either<UserFailure, Unit> signOut() {
    log.i('signOut function call in the user repo imp');
    try {
      _pocketBase.authStore.clear();
      log.i('signout success');
      return right(unit);
    } on ClientException catch (e) {
      log.e('error accur with data $e');
      rethrow;
    }
  }

  @override
  Future<Either<UserFailure, Account>> superCreateAgentAccount(
      Account account, String password) async {
    log.i('call function superCreateAgentAccount');
    try {
      final res = await _pocketBase.collection('users').create(
          body: AccountDto.fromDomain(account).toJson()
            ..addAll(
              {"password": password, "passwordConfirm": password},
            ));
      log.i('function execution success with data:${res..toJson()} ');
      return right(AccountDto.fromJson(res.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('exception accur with data ${e.toString()} ');
      if (e.statusCode == 400) {
        return left(const UserFailure.invalidOrMissingRequiredField());
      } else if (e.statusCode == 403) {
        return left(const UserFailure.unauthorizedOperation());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Future<Either<UserFailure, Account>> superUpdateAgentAccount(
      String accountId, Account? account, String? password) async {
    log.i('call function superUpdateAgentAccount');
    Map<String, dynamic> body = {};
    if (account != null) {
      body.addAll(AccountDto.fromDomain(account).toJson());
    }
    if (password != null) {
      body.addAll(
        {"password": password, "passwordConfirm": password},
      );
    }
    try {
      final res =
          await _pocketBase.collection('users').update(accountId, body: body);

      log.i('function execution success with data:${res..toJson()} ');
      return right(AccountDto.fromJson(res.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('exception accur with data ${e.toString()} ');
      if (e.statusCode == 400) {
        return left(const UserFailure.invalidOrMissingRequiredField());
      } else if (e.statusCode == 403) {
        return left(const UserFailure.unauthorizedOperation());
      } else if (e.statusCode == 404) {
        return left(const UserFailure.resourseNotFound());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Future<Either<UserFailure, Account>> superUpdateSupervisorAccount(
      String accountId, Account? account, String? password) async {
    log.i('call function superUpdateSupervisorAccount ');
    Map<String, dynamic> body = {};
    if (account != null) {
      body.addAll(AccountDto.fromDomain(account).toJson());
    }
    if (password != null) {
      body.addAll(
        {"password": password, "passwordConfirm": password},
      );
    }
    try {
      final res =
          await _pocketBase.collection('users').update(accountId, body: body);

      log.i('function execution success with data:${res..toJson()} ');
      return right(AccountDto.fromJson(res.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('exception accur with data ${e.toString()} ');
      if (e.statusCode == 400) {
        return left(const UserFailure.invalidOrMissingRequiredField());
      } else if (e.statusCode == 403) {
        return left(const UserFailure.unauthorizedOperation());
      } else if (e.statusCode == 404) {
        return left(const UserFailure.resourseNotFound());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Either<UserFailure, Account> getSignedInUser() {
    log.i('getSignedUser function called');
    try {
      log.i(_pocketBase.authStore.isValid);
      if (_pocketBase.authStore.isValid) {
        log.i('${_pocketBase.authStore.model}');
        return right(AccountDto.fromJson(
                jsonDecode(_pocketBase.authStore.model.toString()))
            .toDomain());
      } else {
        log.i('left ');
        return left(const UserFailure.noSignedInUser());
      }
    } catch (e) {
      log.i('exception accur $e');
      rethrow;
    }
  }

  @override
  Future<Either<UserFailure, Account>> agentUpdateAgentPassword(
      String accountId, String oldPassword, String newPassword) async {
    log.i('call function agentUpdateAgentPassword');
    try {
      final res = await _pocketBase.collection('users').update(
        accountId,
        body: {
          "oldPassword": oldPassword,
          "password": newPassword,
          "passwordConfirm": newPassword
        },
      );
      log.i('function execution success with data:${res..toJson()} ');
      return right(AccountDto.fromJson(res.toJson()).toDomain());
    } on ClientException catch (e) {
      log.e('exception accur with data ${e.toString()} ');
      if (e.statusCode == 400) {
        return left(const UserFailure.invalidOrMissingRequiredField());
      } else if (e.statusCode == 403) {
        return left(const UserFailure.unauthorizedOperation());
      } else if (e.statusCode == 404) {
        return left(const UserFailure.resourseNotFound());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> superDeleteAgentAccount(
      String accountId) async {
    log.i('call function superDeleteAgentAccount');
    try {
      await _pocketBase.collection('users').delete(accountId);
      return right(unit);
    } on ClientException catch (e) {
      log.e('exception accur with data ${e.toString()} ');
      if (e.statusCode == 400) {
        return left(const UserFailure.invalidOrMissingRequiredField());
      } else if (e.statusCode == 403) {
        return left(const UserFailure.unauthorizedOperation());
      } else if (e.statusCode == 404) {
        return left(const UserFailure.resourseNotFound());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }

  @override
  Future<Either<UserFailure, List<Account>>> superListAgentsAccounts() async {
    log.i('call function superListAgentsAccounts');
    try {
      final res = await _pocketBase
          .collection('users')
          .getList(perPage: 500, filter: 'role="agent"');
      log.d(res.toJson());
      List<Account> list = [];
      for (var element in res.items) {
        list.add(AccountDto.fromJson(element.toJson()).toDomain());
      }
      log.i('success ${list.toString()}');
      return right(list);
    } on ClientException catch (e) {
      log.e('exception accur with data ${e.toString()} ');
      if (e.statusCode == 400) {
        return left(const UserFailure.invalidOrMissingRequiredField());
      } else if (e.statusCode == 403) {
        return left(const UserFailure.unauthorizedOperation());
      } else if (e.statusCode == 404) {
        return left(const UserFailure.resourseNotFound());
      } else {
        return left(const UserFailure.serverError());
      }
    }
  }
}
