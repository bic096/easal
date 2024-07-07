// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:easal/application/invoices/cubit/list_receipt_types_cubit.dart'
    as _i8;
import 'package:easal/application/users/bloc/auth_bloc.dart' as _i7;
import 'package:easal/application/users/list_agents_cubit.dart' as _i11;
import 'package:easal/application/users/manage_agent_cubit.dart' as _i12;
import 'package:easal/application/users/manage_supervisor_cubit.dart' as _i13;
import 'package:easal/domain/invoices/i_invoice_repo.dart' as _i9;
import 'package:easal/domain/users/i_users_repo.dart' as _i5;
import 'package:easal/infrastructure/core/pocketbase_service.dart' as _i15;
import 'package:easal/infrastructure/core/shared_prefs_services.dart' as _i14;
import 'package:easal/infrastructure/invoices/invoice_repo.dart' as _i10;
import 'package:easal/infrastructure/users/users_repo.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pocketbase/pocketbase.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPrefsModule = _$SharedPrefsModule();
    final pocketBaseModule = _$PocketBaseModule();
    await gh.singletonAsync<_i3.SharedPreferences>(
      () => sharedPrefsModule.sharedPrefs,
      preResolve: true,
    );
    gh.singleton<String>(
      pocketBaseModule.getHost(),
      instanceName: 'host',
    );
    gh.factory<_i4.AuthStore>(() => pocketBaseModule.store());
    gh.singleton<_i4.PocketBase>(pocketBaseModule.pocketBase());
    gh.singleton<_i5.IUsersRepo>(_i6.UserRepo(gh<_i4.PocketBase>()));
    gh.singleton<_i7.AuthBloc>(_i7.AuthBloc(gh<_i5.IUsersRepo>()));
    gh.singleton<_i8.ListReceiptTypesCubit>(_i8.ListReceiptTypesCubit());
    gh.singleton<_i9.IInvoiceRepo>(_i10.InvoiceRepo(gh<_i4.PocketBase>()));
    gh.singleton<_i11.ListAgentsCubit>(
        _i11.ListAgentsCubit(gh<_i5.IUsersRepo>()));
    gh.singleton<_i12.ManageAgentCubit>(
        _i12.ManageAgentCubit(gh<_i5.IUsersRepo>()));
    gh.singleton<_i13.ManageSupervisorCubit>(
        _i13.ManageSupervisorCubit(gh<_i5.IUsersRepo>()));
    return this;
  }
}

class _$SharedPrefsModule extends _i14.SharedPrefsModule {}

class _$PocketBaseModule extends _i15.PocketBaseModule {}
