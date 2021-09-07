import 'package:l7/screens/home/viewmodel/home_view_model.dart';
import 'package:l7/screens/main/view_model/main_view_model.dart';
import 'package:l7/services/firebase_services.dart';
import 'package:get_it/get_it.dart';

import 'services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  // locator.registerLazySingleton(() => FirebaseServices());
  // locator.registerFactory(() => SplashViewModel());
  locator.registerFactory(() => MainViewModel());
  locator.registerFactory(() => HomeViewModel());
  // locator.registerLazySingleton(() => SlotViewModel());
  // locator.registerFactory(() => DeviceViewModel());
  // locator.registerFactory(() => SettingsViewModel());
}