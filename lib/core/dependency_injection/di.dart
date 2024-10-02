import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_beauty_city/config/app_router/app_router.dart';

GetIt locator = GetIt.instance;

setUp() {
locator.registerSingleton<GoRouter>(AppRouter().router);
}
