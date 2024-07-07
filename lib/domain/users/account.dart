import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required String id,
    required int number,
    required String userName,
    required String name,
    String? email,
    required Role role,
  }) = _Account;
}

enum Role { agent, supervisor }
