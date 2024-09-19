import 'package:senior_code_app/exports.dart';

import 'config/routes/app_routes.dart';
import 'featuers/onBoarding/presentation/screens/onboarding_screen.dart';

class SeniorCodeApp extends StatelessWidget {
  const SeniorCodeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      onGenerateRoute: RouteGenerator.getRoute,
      home: const OnboardingScreen(),
    );
  }
}
