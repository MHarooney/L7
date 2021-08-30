import 'package:l7/services/FirebaseServices.dart';
import 'package:get_it/get_it.dart';

import 'services/NavigationService.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  // locator.registerLazySingleton(() => FirebaseServices());
  // locator.registerFactory(() => SplashViewModel());
  // locator.registerFactory(() => HomeViewModel());
  // locator.registerLazySingleton(() => SlotViewModel());
  // locator.registerFactory(() => DeviceViewModel());
  // locator.registerFactory(() => SettingsViewModel());
}