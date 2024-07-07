import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.invalidUserNameOrPassword() =
      IvalidUserNameOrPassword;
  const factory UserFailure.invalidOrMissingRequiredField() =
      IvalidOrMissingRequiredField;
  const factory UserFailure.resourseNotFound() = ResourseNotFound;
  const factory UserFailure.noSignedInUser() = NoSignedInUser;
  const factory UserFailure.unauthorizedOperation() = UnauthorizedOperation;
  const factory UserFailure.serverError() = ServerError;
}
