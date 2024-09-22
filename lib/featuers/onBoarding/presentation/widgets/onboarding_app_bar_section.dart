import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import 'onboarding_slider.dart';

class OnBoardingAppBarWidget extends StatelessWidget {
  final int value;

  const OnBoardingAppBarWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.h,
      left: 0.w,
      right: 0.w,
      child: Padding(
        padding: EdgeInsets.only(top: 76.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: value > 0
                  ? () {
                      OnBoardingSlider.pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  : null,
            ),
            if (value < 2)
              TextButton(
                onPressed: () {
                  OnBoardingSlider.pageController.jumpToPage(2);
                },
                child: Text(
                  'Skip',
                  style:
                      AppStyles.getBoldStyle(fontSize: 20, color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
