import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import '../widgets/home_screen_body_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 50.h,
            ),
            child: const HomeScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
