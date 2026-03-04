import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:countries_app/core/network/api_service.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: 'https://restcountries.com/v3.1/',
      ),
    ),
  );
  sl.registerLazySingleton<ApiService>(() => ApiService());
}