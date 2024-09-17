import '../../exports.dart';

class Routes {
  Routes._internal();
  // static const String onBoardingRoute = "On Boarding Screen";


}

class RouteGenerator {
  RouteGenerator._internal();
  // AnimationType? pageRouteAnimationGlobal;
  // static Duration pageRouteTransitionDurationGlobal = 400.milliseconds;
  static Route<T>? getRoute<T>(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    // switch (routeSettings.name) {
    //   case Routes.settingRoute:
    //     return buildPageRoute<T>(
    //         child: const SettingScreen(), routeSettings: routeSettings);

    //   default:
    return buildPageRoute<T>(
      child: const Center(
        child: Text("no route found"),
      ),
      routeSettings: routeSettings,
    );
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    // AnimationType? pageRouteAnimation = AnimationType.fade,
    Duration? duration,
    RouteSettings? routeSettings,
  }) {
    // if (pageRouteAnimation == AnimationType.rotate) {
    //   return PageRouteBuilder<T>(
    //     settings: routeSettings,
    //     pageBuilder: (context, a1, a2) => child,
    //     transitionsBuilder: (c, anim, a2, child) {
    //       return RotationTransition(
    //           turns: ReverseAnimation(anim),
    //           child: child);
    //     },
    //     transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
    //   );
    // } else if (pageRouteAnimation == AnimationType.scale) {
    //   return PageRouteBuilder<T>(
    //     settings: routeSettings,
    //     pageBuilder: (context, a1, a2) => child,
    //     transitionsBuilder: (c, anim, a2, child) {
    //       return ScaleTransition(scale: anim, child: child);
    //     },
    //     transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
    //   );
    // } else if (pageRouteAnimation == AnimationType.slide) {
    //   return PageRouteBuilder<T>(
    //     settings: routeSettings,
    //     pageBuilder: (context, a1, a2) => child,
    //     transitionsBuilder: (c, anim, a2, child) {
    //       return SlideTransition(
    //         position: Tween(
    //           begin: const Offset(1.0, 0.0),
    //           end: const Offset(0.0, 0.0),
    //         ).animate(anim),
    //         child: child,
    //       );
    //     },
    //     transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
    //   );
    // } else if (pageRouteAnimation == AnimationType.slideBottomTop) {
    //   return PageRouteBuilder<T>(
    //     settings: routeSettings,
    //     pageBuilder: (context, a1, a2) => child,
    //     transitionsBuilder: (c, anim, a2, child) {
    //       return SlideTransition(
    //         position: Tween(
    //           begin: const Offset(0.0, 1.0),
    //           end: const Offset(0.0, 0.0),
    //         ).animate(anim),
    //         child: child,
    //       );
    //     },
    //     transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
    //   );
    // }

    return PageRouteBuilder<T>(
      settings: routeSettings,
      // transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      reverseTransitionDuration: const Duration(milliseconds: 50),
      pageBuilder: (context, a1, a2) => child,
      transitionsBuilder: (c, anim, a2, child) {
        return FadeTransition(opacity: anim, child: child);
      },
    );
  }
}
