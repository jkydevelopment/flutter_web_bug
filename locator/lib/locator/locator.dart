
// import 'package:account_data/account_data_library.dart';
// import 'package:account_domain/account_domain_library.dart';
import 'package:core/core_library.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  // Utils
  locator.registerFactory(() => GetStorage());
  // locator.registerFactory(() => PushNotificationsService());
  // locator.registerLazySingleton(() => RemoteConfig());

    
}
