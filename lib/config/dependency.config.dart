// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:medlao/config/module.dart' as _i7;
import 'package:medlao/feature/blood_stock/domain/repository/blood_stock_repository.dart'
    as _i5;
import 'package:medlao/feature/blood_stock/domain/use_case/get_blood_stock_by_id_use_case.dart'
    as _i4;
import 'package:medlao/feature/blood_stock/domain/use_case/get_blood_stocks_use_case.dart'
    as _i6;
import 'package:medlao/routes/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final module = _$Module();
    gh.lazySingleton<_i3.AppRouter>(() => module.router);
    gh.lazySingleton<_i4.GetBloodStockByIdUseCase>(
        () => _i4.GetBloodStockByIdUseCase(gh<_i5.BloodStockRepository>()));
    gh.lazySingleton<_i6.GetBloodStocksUseCase>(
        () => _i6.GetBloodStocksUseCase(gh<_i5.BloodStockRepository>()));
    return this;
  }
}

class _$Module extends _i7.Module {}
