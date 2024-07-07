import 'package:easal/domain/users/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
class AccountDto with _$AccountDto {
  const AccountDto._();
  const factory AccountDto({
    @JsonKey(includeToJson: false) required String id,
    @JsonKey(includeToJson: false) required int number,
    @JsonKey(name: 'username') required String userName,
    required String name,
    String? email,
    required String role,
  }) = _AccountDto;

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  factory AccountDto.fromDomain(Account account) => AccountDto(
      id: account.id,
      number: account.number,
      userName: account.userName,
      name: account.name,
      role: account.role.name,
      email: account.email);

  Account toDomain() => Account(
      id: id,
      number: number,
      userName: userName,
      name: name,
      email: email,
      role: Role.values.byName(role));
}
