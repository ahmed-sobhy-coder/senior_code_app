import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/custome_svg_image.dart';
import '../../../../../core/widgets/text_form_field.dart';
import '../../../../../exports.dart';
import '../../../verification/presentation/screens/verification_screen.dart';
import 'date_picker_text_field.dart';

class SignupScreenFormSection extends StatefulWidget {
  const SignupScreenFormSection({super.key});

  @override
  State<SignupScreenFormSection> createState() =>
      _SignupScreenFormSectionState();
}

class _SignupScreenFormSectionState extends State<SignupScreenFormSection> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  bool isObSecureText = true;

  void _onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = date; // Store the selected date
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign up",
          style: AppStyle.getBoldTextStyle(
            fontSize: 32,
            color: AppColors.white,
          ),
        ),
        12.vs,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: AppStyle.getMediumTextStyle(
                fontSize: 12,
                color: AppColors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Login",
                style: AppStyle.getSemiboldTextStyle(
                  fontSize: 12,
                  color: AppColors.secondPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        42.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Full Name",
            style: AppStyle.getMediumTextStyle(
              color: AppColors.white,
              fontSize: 12,
            ),
          ),
        ),
        2.vs,
        AppTextFormField(
          contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
          hintText: "Lois Becket",
          radius: 10,
          hintStyle: AppStyle.getMediumTextStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
        16.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Email",
            style: AppStyle.getMediumTextStyle(
              color: AppColors.white,
              fontSize: 12,
            ),
          ),
        ),
        2.vs,
        AppTextFormField(
          contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
          hintText: "Loisbecket@gmail.com",
          radius: 10,
          hintStyle: AppStyle.getMediumTextStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
        16.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Date of Birth",
            style: AppStyle.getMediumTextStyle(
              color: AppColors.white,
              fontSize: 12,
            ),
          ),
        ),
        2.vs,
        DatePickerTextField(
          hintStyle: AppStyle.getMediumTextStyle(fontSize: 14),
          controller: _dateController,
          initialDate: _selectedDate,
          onDateSelected: _onDateSelected,
          hintText: '18/03/2024',
          suffixIcon: CustomSVGImage(
            fit: BoxFit.scaleDown,
            asset: AppAssets().calendar,
          ),
        ),
        16.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Phone Number",
            style: AppStyle.getMediumTextStyle(
              color: AppColors.white,
              fontSize: 12,
            ),
          ),
        ),
        2.vs,
        AppTextFormField(
          prefixIcon: CustomSVGImage(
            fit: BoxFit.scaleDown,
            asset: AppAssets().arrowDown,
          ),
          contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
          hintText: "(454) 726-0592",
          radius: 10,
          hintStyle: AppStyle.getMediumTextStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
        16.vs,
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Set Password",
            style: AppStyle.getMediumTextStyle(
              color: AppColors.white,
              fontSize: 12,
            ),
          ),
        ),
        2.vs,
        AppTextFormField(
          radius: 10,
          contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
          isObscureText: isObSecureText,
          hintText: "*******",
          hintStyle: AppStyle.getMediumTextStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              isObSecureText ? Icons.visibility_off : Icons.visibility,
              color: AppColors.grey,
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
        24.vs,
        AppTextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VerificationScreen(),
              ),
            );
          },
          backgroundColor: AppColors.mainButtonBlueColor,
          buttonWidth: 327.w,
          buttonHeight: 65.h,
          borderRadius: 10.r,
          buttonText: "Register",
          textStyle: AppStyle.getMediumTextStyle(
            fontSize: 14,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
