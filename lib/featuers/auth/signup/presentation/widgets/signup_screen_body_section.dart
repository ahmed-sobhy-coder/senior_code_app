import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';
import 'signup_back_arrow_and_app_logo_section.dart';
import 'signup_screen_form_section.dart';

class SignupScreenBodySection extends StatelessWidget {
  const SignupScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SignupBackArrowAndAppLogoSection(),
        47.vs,
        const SignupScreenFormSection(),
      ],
    );
  }
}
