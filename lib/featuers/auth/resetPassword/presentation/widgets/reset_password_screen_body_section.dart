import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import 'reset_password_app_bar_and_image_below_it_section.dart';
import 'reset_password_form_section.dart';

class ResetPasswordScreenBodySection extends StatelessWidget {
  const ResetPasswordScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.vs,
        const ResetPasswordAppBarAndImageBelowItSection(),
        68.vs,
        const ResetPasswordFormSection(),
      ],
    );
  }
}
