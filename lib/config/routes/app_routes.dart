
import '../../exports.dart';
import 'routes_exports.dart';

class Routes {
  Routes._internal();
  static const String onBoardingRoute = "OnBoardingScreen";
  static const String signinRoute = "SigninScreen";
  static const String signupRoute = "SignupScreen";
  static const String verificationRoute = "VerificationScreen";
  static const String resetPasswordRoute = "ResetPasswordScreen";
    static const String homeRoute = "HomeScreen";
        static const String bottomNavigationBar = "BottomNavigationBar";


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
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        );
      //! Home Routes
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
        case Routes.bottomNavigationBar:
        return MaterialPageRoute(
          builder: (context) =>  BottomNivigationBar(),
        );
      // Default:
      default:
        return null;
    }
  }
}
