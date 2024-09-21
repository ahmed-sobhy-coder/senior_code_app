import 'package:flutter/material.dart';
import 'package:senior_code_app/config/routes/app_routes.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'onboarding_slider.dart';

class NextButton extends StatelessWidget {
  final int value;

  const NextButton({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 60.h,
      left: 16.w,
      right: 16.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.5.w),
        child: AppTextButton(
          onPressed: () {
            if (value < 1) {
              OnBoardingSlider.pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else if (value == 2) {
              Navigator.pushReplacementNamed(context, Routes.signinRoute);
              // Routes.signinRoute.pushReplacement;
            }
          },
          backgroundColor: AppColors.lighterBlueColor,
          buttonWidth: double.infinity,
          buttonHeight: 65,
          borderRadius: 10.r,
          buttonText: 'Next',
          textStyle:
              AppStyles.getBoldStyle(fontSize: 24, color: AppColors.white),
        ),
      ),
    );
  }
}
