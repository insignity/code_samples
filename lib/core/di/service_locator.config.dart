// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:erp_ipad/core/components/connection_checker.dart' as _i18;
import 'package:erp_ipad/core/services/api/api.dart' as _i3;
import 'package:erp_ipad/core/services/api/api_module.dart' as _i43;
import 'package:erp_ipad/core/services/database/tables/point_description_table.dart'
    as _i7;
import 'package:erp_ipad/core/services/database/tables/warehouse_product_table.dart'
    as _i15;
import 'package:erp_ipad/core/services/network_info.dart' as _i5;
import 'package:erp_ipad/core/services/session/session_service.dart' as _i13;
import 'package:erp_ipad/core/services/user/user_service.dart' as _i14;
import 'package:erp_ipad/features/cloud/data/data_sources/cloud_local_data_source.dart'
    as _i16;
import 'package:erp_ipad/features/cloud/data/data_sources/cloud_remote_data_source.dart'
    as _i17;
import 'package:erp_ipad/features/cloud/data/repositories/cloud_repository_impl.dart'
    as _i32;
import 'package:erp_ipad/features/cloud/domain/repository/cloud_repository.dart'
    as _i31;
import 'package:erp_ipad/features/cloud/domain/use_cases/cloud_check.dart'
    as _i38;
import 'package:erp_ipad/features/cloud/domain/use_cases/cloud_get_point.dart'
    as _i39;
import 'package:erp_ipad/features/cloud/domain/use_cases/cloud_login.dart'
    as _i40;
import 'package:erp_ipad/features/cloud/domain/use_cases/cloud_save_point.dart'
    as _i33;
import 'package:erp_ipad/features/cloud/ui/bloc/cloud_bloc.dart' as _i42;
import 'package:erp_ipad/features/lock/data/data_sources/lock_local_data_source.dart'
    as _i4;
import 'package:erp_ipad/features/lock/data/data_sources/lock_remote_data_source.dart'
    as _i19;
import 'package:erp_ipad/features/lock/data/repositories/lock_repository_impl.dart'
    as _i21;
import 'package:erp_ipad/features/lock/domain/repositories/lock_repository.dart'
    as _i20;
import 'package:erp_ipad/features/lock/domain/use_cases/lock_select_point.dart'
    as _i22;
import 'package:erp_ipad/features/lock/presentation/bloc/lock_bloc.dart'
    as _i34;
import 'package:erp_ipad/features/order/ui/bloc/order_bloc.dart' as _i6;
import 'package:erp_ipad/features/point/data/data_sources/point_local_data_source.dart'
    as _i8;
import 'package:erp_ipad/features/point/data/data_sources/point_remote_data_source.dart'
    as _i24;
import 'package:erp_ipad/features/point/data/repositories/point_repository_impl.dart'
    as _i26;
import 'package:erp_ipad/features/point/domain/repositories/point_repository.dart'
    as _i25;
import 'package:erp_ipad/features/point/ui/bloc/point_bloc.dart' as _i23;
import 'package:erp_ipad/features/quick_order/data/data_sources/quick_order_local_datasource.dart'
    as _i9;
import 'package:erp_ipad/features/quick_order/data/data_sources/quick_order_remote_datasource.dart'
    as _i10;
import 'package:erp_ipad/features/quick_order/data/repositories/quick_order_repository_impl.dart'
    as _i12;
import 'package:erp_ipad/features/quick_order/domain/repositories/quick_order_repository.dart'
    as _i11;
import 'package:erp_ipad/features/quick_order/domain/use_cases/quick_order_get_dishes.dart'
    as _i27;
import 'package:erp_ipad/features/quick_order/ui/bloc/quick_order_bloc.dart'
    as _i35;
import 'package:erp_ipad/features/warehouse/data/data_sources/warehouse_local_datasource.dart'
    as _i28;
import 'package:erp_ipad/features/warehouse/data/repositories/warehouse_repository_impl.dart'
    as _i30;
import 'package:erp_ipad/features/warehouse/domain/repositories/warehouse_repository.dart'
    as _i29;
import 'package:erp_ipad/features/warehouse/domain/use_cases/warehouse_add_product.dart'
    as _i36;
import 'package:erp_ipad/features/warehouse/domain/use_cases/warehouse_fetch_products.dart'
    as _i37;
import 'package:erp_ipad/features/warehouse/presentation/bloc/warehouse_bloc.dart'
    as _i41;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.lazySingleton<_i3.Api>(() => apiModule.getClient);
    gh.lazySingleton<_i4.LockLocalDataSource>(
        () => _i4.CloudLocalDataSourceImpl());
    gh.lazySingleton<_i5.NetworkInfo>(() => _i5.NetworkInfoImp());
    gh.factory<_i6.OrderBloc>(() => _i6.OrderBloc());
    gh.lazySingleton<_i7.PointDescriptionTable>(
        () => _i7.PointDescriptionTable());
    gh.lazySingleton<_i8.PointLocalDataSource>(
        () => _i8.CloudLocalDataSourceImpl());
    gh.lazySingleton<_i9.QuickOrderLocalDataSource>(
        () => _i9.QuickOrderLocalDataSourceImpl());
    gh.lazySingleton<_i10.QuickOrderRemoteDataSource>(
        () => _i10.QuickOrderRemoteDataSourceImpl());
    gh.lazySingleton<_i11.QuickOrderRepository>(
        () => _i12.QuickOrderRepositoryImpl(
              gh<_i9.QuickOrderLocalDataSource>(),
              gh<_i10.QuickOrderRemoteDataSource>(),
            ));
    gh.lazySingleton<_i13.SessionService>(() => _i13.SessionService());
    gh.lazySingleton<_i14.UserService>(() => _i14.UserService());
    gh.lazySingleton<_i15.WarehouseProductTable>(
        () => _i15.WarehouseProductTable());
    gh.lazySingleton<_i16.CloudLocalDataSource>(
        () => _i16.CloudLocalDataSourceImpl(gh<_i7.PointDescriptionTable>()));
    gh.lazySingleton<_i17.CloudRemoteDataSource>(
        () => _i17.CloudRemoteDataSourceImpl(
              gh<_i3.Api>(),
              gh<_i13.SessionService>(),
            ));
    gh.lazySingleton<_i18.ConnectionChecker>(
        () => _i18.ConnectionChecker(gh<_i5.NetworkInfo>()));
    gh.lazySingleton<_i19.LockRemoteDataSource>(
        () => _i19.PointRemoteDataSourceImpl(
              gh<_i3.Api>(),
              gh<_i13.SessionService>(),
            ));
    gh.lazySingleton<_i20.LockRepository>(() => _i21.LockRepositoryImpl(
          gh<_i19.LockRemoteDataSource>(),
          gh<_i4.LockLocalDataSource>(),
          gh<_i5.NetworkInfo>(),
        ));
    gh.lazySingleton<_i22.LockSelectPoint>(
        () => _i22.LockSelectPoint(gh<_i20.LockRepository>()));
    gh.lazySingleton<_i23.PointBloc>(
        () => _i23.PointBloc(gh<_i14.UserService>()));
    gh.lazySingleton<_i24.PointRemoteDataSource>(
        () => _i24.PointRemoteDataSourceImpl(
              gh<_i3.Api>(),
              gh<_i13.SessionService>(),
            ));
    gh.lazySingleton<_i25.PointRepository>(() => _i26.PointRepositoryImpl(
          gh<_i24.PointRemoteDataSource>(),
          gh<_i8.PointLocalDataSource>(),
          gh<_i5.NetworkInfo>(),
        ));
    gh.factory<_i27.QuickOrderGetDishes>(
        () => _i27.QuickOrderGetDishes(gh<_i11.QuickOrderRepository>()));
    gh.lazySingleton<_i28.WarehouseLocalDataSource>(() =>
        _i28.WarehouseLocalDataSourceImpl(gh<_i15.WarehouseProductTable>()));
    gh.lazySingleton<_i29.WarehouseRepository>(() =>
        _i30.WarehouseRepositoryImpl(gh<_i28.WarehouseLocalDataSource>()));
    gh.lazySingleton<_i31.CloudRepository>(() => _i32.CloudRepositoryImpl(
          gh<_i17.CloudRemoteDataSource>(),
          gh<_i16.CloudLocalDataSource>(),
          gh<_i18.ConnectionChecker>(),
        ));
    gh.lazySingleton<_i33.CloudSavePoint>(
        () => _i33.CloudSavePoint(gh<_i31.CloudRepository>()));
    gh.lazySingleton<_i34.LockBloc>(() => _i34.LockBloc(
          gh<_i22.LockSelectPoint>(),
          gh<_i14.UserService>(),
        ));
    gh.lazySingleton<_i35.QuickOrderBloc>(
        () => _i35.QuickOrderBloc(gh<_i27.QuickOrderGetDishes>()));
    gh.lazySingleton<_i36.WarehouseAddProduct>(
        () => _i36.WarehouseAddProduct(gh<_i29.WarehouseRepository>()));
    gh.lazySingleton<_i37.WarehouseFetchProducts>(
        () => _i37.WarehouseFetchProducts(gh<_i29.WarehouseRepository>()));
    gh.lazySingleton<_i38.CloudCheck>(
        () => _i38.CloudCheck(gh<_i31.CloudRepository>()));
    gh.lazySingleton<_i39.CloudGetPoint>(
        () => _i39.CloudGetPoint(gh<_i31.CloudRepository>()));
    gh.lazySingleton<_i40.CloudLogin>(
        () => _i40.CloudLogin(gh<_i31.CloudRepository>()));
    gh.factory<_i41.WarehouseBloc>(() => _i41.WarehouseBloc(
          gh<_i37.WarehouseFetchProducts>(),
          gh<_i36.WarehouseAddProduct>(),
        ));
    gh.factory<_i42.CloudBloc>(() => _i42.CloudBloc(
          gh<_i40.CloudLogin>(),
          gh<_i38.CloudCheck>(),
          gh<_i13.SessionService>(),
          gh<_i39.CloudGetPoint>(),
          gh<_i33.CloudSavePoint>(),
        ));
    return this;
  }
}

class _$ApiModule extends _i43.ApiModule {}
