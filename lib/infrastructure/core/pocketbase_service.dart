import 'dart:io';

import 'package:easal/injectable.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path/path.dart' as p;

@module
abstract class PocketBaseModule {
  @injectable
  @Order(-4)
  AuthStore store() => AsyncAuthStore(
        save: (String data) async =>
            getIt.get<SharedPreferences>().setString('pb_auth', data),
        initial: getIt.get<SharedPreferences>().getString('pb_auth'),
      );

  @singleton
  @Order(-3)
  PocketBase pocketBase() =>
      PocketBase(getIt.get<String>(instanceName: 'host'), authStore: store());

  @singleton
  @Order(-6)
  @Named('host')
  String getHost() {
    const fname = 'inv';
    File file =
        File(p.dirname(Platform.resolvedExecutable) + p.separator + fname);
    if (file.existsSync()) {
      final lines = file.readAsLinesSync();
      final host = lines[0].split('=')[1];
      return host;
    }
    return 'http://127.0.0.1:8090/';
  }
}
