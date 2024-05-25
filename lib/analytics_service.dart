import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getFirebaseAnalyticsObserver() {
    return FirebaseAnalyticsObserver(analytics: analytics);
  }

  Future<void> logEvent(
      {required String name, required Map<String, dynamic> parameters}) async {
    analytics.logEvent(name: name, parameters: parameters);
  }
}
