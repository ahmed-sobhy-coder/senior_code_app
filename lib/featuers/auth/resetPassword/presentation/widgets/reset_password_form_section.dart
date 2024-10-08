import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/text_form_field.dart';
import '../../../../../exports.dart';

class ResetPasswordFormSection extends StatelessWidget {
  const ResetPasswordFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Reset Password",
            style: AppStyles.getSemiBoldStyle(fontSize: 24),
          ),
        ),
        19.vs,
        AppTextFormField(
          labelText: "Password",
          labelStyle: AppStyles.getMediumStyle(
            fontSize: 15,
            color: AppColors.grey,
          ),
          radius: 5,
          enabledBorderSideColor: AppColors.grey,
          contentPadding: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 16.h),
          hintText: "****",
          hintStyle: AppStyles.getSemiBoldStyle(
            fontSize: 12,
          ),
        ),
        20.vs,
        AppTextFormField(
          labelText: "Confirm Password",
          labelStyle: AppStyles.getMediumStyle(
            fontSize: 15,
            color: AppColors.grey,
          ),
          radius: 5,
          enabledBorderSideColor: AppColors.grey,
          contentPadding: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 16.h),
          hintText: "****",
          hintStyle: AppStyles.getSemiBoldStyle(
            fontSize: 12,
          ),
        ),
        22.vs,
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
