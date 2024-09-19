import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import '../widgets/reset_password_screen_body_section.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.5.w),
            child: const ResetPasswordScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
