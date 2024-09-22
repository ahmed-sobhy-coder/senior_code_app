import 'package:senior_code_app/core/extensions.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/text_form_field.dart';
import '../../../../../exports.dart';
import 'remember_me_and_forget_password_row_section.dart';

class SigninTextFormFieldSection extends StatefulWidget {
  const SigninTextFormFieldSection({super.key});

  @override
  State<SigninTextFormFieldSection> createState() =>
      _SigninScreenBodySectionState();
}

class _SigninScreenBodySectionState extends State<SigninTextFormFieldSection> {
  bool isObSecureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Email",
            style: AppStyles.getMediumStyle(
              color: AppColors.white,
            ),
          ),
        ),
        2.vs,
        AppTextFormField(
          contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
          hintText: "Loisbecket@gmail.com",
          radius: 10,
          hintStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
        16.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Password",
            style: AppStyles.getMediumStyle(
              color: AppColors.white,
            ),
          ),
        ),
        2.vs,
        AppTextFormField(
          radius: 10,
          contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
          isObscureText: isObSecureText,
          hintText: "*******",
          hintStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              isObSecureText ? Icons.visibility_off : Icons.visibility,
              color: AppColors.darkBlue,
            ),
            onPressed: () {
              setState(
                () {
                  isObSecureText = !isObSecureText;
                },
              );
            },
          ),
        ),
        16.vs,
        const RememberMeAndForgetPasswordRowSection(),
        24.vs,
        AppTextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.homeRoute);
          },
          backgroundColor: AppColors.mainButtonBlueColor,
          buttonWidth: 327.w,
          buttonHeight: 65.h,
          borderRadius: 10.r,
          buttonText: "Log in",
          textStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
