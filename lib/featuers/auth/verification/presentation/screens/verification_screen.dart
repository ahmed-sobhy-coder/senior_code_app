import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import '../widgets/verification_screen_body_section.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 38.w),
            child: const Center(
              child: VerificationScreenBodySection(),
            ),
          ),
        ),
      ),
    );
  }
}
