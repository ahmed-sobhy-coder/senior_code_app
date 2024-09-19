import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import 'do_not_have_acount_row_section.dart';
import 'signin_logo_and_signin_intro_text_section.dart';
import 'signin_text_form_field_section.dart';

class SigninScreenBodySection extends StatelessWidget {
  const SigninScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        0.42.vs,
        const SigninLogoAndSigninIntroTextSection(),
        32.vs,
        Column(
          children: [
            const SigninTextFormFieldSection(),
            184.vs,
            const DoNotHaveAcountRow(),
          ],
        ),
      ],
    );
  }
}
