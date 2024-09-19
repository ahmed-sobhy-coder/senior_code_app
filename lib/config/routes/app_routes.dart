import '../../exports.dart';
import 'routes_exports.dart';

class Routes {
  Routes._internal();
  static const String onBoardingRoute = "OnBoardingScreen";
  static const String signinRoute = "SigninScreen";
  static const String signupRoute = "SignupScreen";
  static const String verificationRoute = "VerificationScreen";
}

class RouteGenerator {
  RouteGenerator._internal();

  static Route<T>? getRoute<T>(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      //! Auth Routes
      case Routes.signinRoute:
        return MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        );
      case Routes.signupRoute:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        );
         case Routes.verificationRoute:
        return MaterialPageRoute(
          builder: (context) => const VerificationScreen(),
        );

      // Default:
      default:
        return null;
    }
  }
}
