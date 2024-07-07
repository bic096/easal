import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPrefsModule {
  @Singleton()
  @Order(-6)
  @preResolve
  Future<SharedPreferences> get sharedPrefs => SharedPreferences.getInstance();
}
