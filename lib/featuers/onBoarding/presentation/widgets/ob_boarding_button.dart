import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
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
        child: CustomElevatedButton(
          onPressed: () {
            if (value < 2) {
              OnBoardingSlider.pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          },
          color: AppColors.lighBlueColor,
          width: double.infinity,
          height: 65,
          radius: 10.r,
          text: value == 2 ? 'Get Started' : 'Next',
          style:
              AppStyle.getBoldTextStyle(fontSize: 24, color: AppColors.white),
        ),
      ),
    );
  }
}
