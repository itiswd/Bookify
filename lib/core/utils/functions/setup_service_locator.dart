import 'package:bookify/core/utils/api_service.dart';
import 'package:bookify/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookify/features/home/data/data_source/home_remote_data_source.dart';
import 'package:bookify/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      homeRemoteDataSource: HomeRemoteDataSourceImp(
        getIt.get<ApiService>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImp(),
    ),
  );
}
