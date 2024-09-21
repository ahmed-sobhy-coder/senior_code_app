import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../exports.dart';
import 'otp_input_field_section.dart';

class VerificationFieldAndConfirmButton extends StatelessWidget {
  const VerificationFieldAndConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: OtpInputFieldSection(
            gap: 10.w,
            numberOfFields: 6,
            borderColor: Colors.black,
            focusedBorderColor: Colors.blue,
            onSubmit: (code) {
              //! Handle OTP submission
            },
          ),
        ),
        44.vs,
        AppTextButton(
          verticalPadding: 12.h,
          horizontalPadding: 10.w,
          backgroundColor: AppColors.lighterBlueColor,
          buttonText: "Confirm",
          textStyle: AppStyles.getSemiBoldStyle(
            fontSize: 16,
            color: AppColors.white,
          ),
          buttonWidth: 295.w,
          buttonHeight: 54.h,
          borderRadius: 10.r,
          onPressed: () {},
        ),
      ],
    );
  }
}
