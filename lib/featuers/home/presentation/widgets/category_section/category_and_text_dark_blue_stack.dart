import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';

import '../../../../../core/utils/app_styels.dart';

class WomanAndTextBlueStack extends StatelessWidget {
  const WomanAndTextBlueStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 3.w, right: 7.w),
      child: SizedBox(
        // To add a space that the doctor image can expand in it ...
        height: 181.h,
        child: Stack(
          // Uses a Stack widget to allow layering of children widgets.
          alignment: Alignment.bottomCenter,
          // Aligns the children of the stack to the bottom center.
          children: [
            Container(
              width: double.infinity,
              // Sets the container's width to fill its parent.
              height: 143.h,
              // Less height than the sizedbox to add a space that the woman
              // image can expand in it ...
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                image: const DecorationImage(
                  // Adds a background image to the container.
                  image: AssetImage(AppAssets.homeDarkBlueContainer),
                  fit: BoxFit.cover,
                  // Ensures the image covers the container.
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '20% off',
                    style: AppStyles.getMediumStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontFamily: FontFamilies.fontFamilyDMSans,
                    ),
                    textAlign: TextAlign.start,
                    // Aligns text to the start.
                  ),
                  Text(
                    'Any Services',
                    style: AppStyles.getRegularStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontFamily: FontFamilies.fontFamilyDMSans,
                    ),
                    textAlign: TextAlign.start,
                    // Aligns text to the start.
                  ),
                  16.vs,
                  Expanded(
                    // Expands the button to fill available space.
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90.w, 26.h),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      child: Text(
                        'Contact Us',
                        style: AppStyles.getMediumStyle(
                          fontSize: 13,
                          color: AppColors.steelBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              // Positions a widget relative to its parent stack.
              right: 8.w,
              top: 0.h,
              child: Image.asset(
                AppAssets.womanHome,
                height: 200.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
