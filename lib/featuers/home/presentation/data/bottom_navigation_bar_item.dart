import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/utils/app_styels.dart';
import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../exports.dart';

// Custom Bottom Navigation Bar Item builder
BottomNavigationBarItem buildBottomNavBarItem({
  required String asset,
  required String activeAsset,
  required double height,
  required double width,
  required String label,
  required bool isSelected,
}) {
  return BottomNavigationBarItem(
    icon: Column(
      mainAxisSize:
          MainAxisSize.min, // To Ensure the Column takes only necessary space
      children: [
        isSelected
            ? CircleAvatar(
                radius: 22.r,
                backgroundColor: AppColors.steelBlue
                    .withOpacity(0.82), // Blue background when selected
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 6.h,
                  ),
                  child: CustomSVGImage(
                    color: AppColors.white,
                    asset: activeAsset, // Show different image when selected
                    height: height,
                    width: width,
                  ),
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 6.h,
                ),
                child: CustomSVGImage(
                  asset: asset, // Default icon when not selected
                  height: height,
                  width: width,
                ),
              ),
        15.vs,
        Text(
          label,
          style: AppStyles.getMediumStyle(
            color: isSelected ? AppColors.steelBlue : AppColors.black,
            fontSize: 13,
          ),
        ),
      ],
    ),
    //! Keep label empty since we're adding a Text widget manually
    label: '',
  );
}
