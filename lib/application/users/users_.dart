import 'dart:async';

import 'package:easal/application/users/bloc/auth_bloc.dart';
import 'package:easal/injectable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_.g.dart';

@Riverpod(keepAlive: true)
Future<AuthState> authState(AuthStateRef ref) async {
  return getIt<AuthBloc>().state;
}
