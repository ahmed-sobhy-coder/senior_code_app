import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import 'did_not_receive_code_and_send_again_section.dart';
import 'verification_app_bar_and_image_and_timer_section.dart';
import 'verification_field_and_confirm_button_section.dart';
import 'verification_otp_code_texts_section.dart';

class VerificationScreenBodySection extends StatelessWidget {
  const VerificationScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerificationAppBarAndImageAndTimer(),
        44.vs,
        const VerificationTexts(),
        19.vs,
        const VerificationFieldAndConfirmButton(),
        24.vs,
        const DidNotReceiveCodeAndSendAgain(),
      ],
    );
  }
}
