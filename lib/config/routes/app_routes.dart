import '../../exports.dart';
import 'routes_exports.dart';

class Routes {
  Routes._internal();
  static const String onBoardingRoute = "OnBoardingScreen";
  static const String signinRoute = "SigninScreen";
}

class RouteGenerator {
  RouteGenerator._internal();

  static Route<T>? getRoute<T>(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      case Routes.signinRoute:
        return MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        );

      // Default:
      default:
        return null;
    }
  }
}
