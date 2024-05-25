import 'package:get_it/get_it.dart';

import 'analytics_service.dart';

GetIt sl = GetIt.instance;

void init() {
  sl.registerLazySingleton(() => AnalyticsService());
}
