import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/utils/app_colors.dart';

import '../../../../core/utils/app_styels.dart';

class HomeTopNameAndAboutUsBar extends StatelessWidget {
  const HomeTopNameAndAboutUsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 9.w, right: 5.w),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // The Column will be at the start, and the CircleAvatar will be at the
        // end, with space between them.
        children: [
          Text(
            "Hello, Ahmed",
            style: AppStyles.getBoldStyle(
              color: AppColors.primaryColor,
            ),
          ),
          const Spacer(),
          // This ensures that the space between the two widgets is
          // flexible and takes up all the remaining space.
          Text(
            "About Us",
            style: AppStyles.getMediumStyle(
              color: AppColors.skyBlue,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
