import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/widgets/custome_svg_image.dart';

import '../../config/routes/app_routes_helper.dart';
import '../../exports.dart';
import '../size_utils.dart';
import '../utils/app_styels.dart';
import 'custom_elevated_button.dart';

class PermissionDialog extends StatelessWidget {
  final String title;
  final String description;
  final String asset;
  const PermissionDialog({
    required this.title,
    required this.description,
    required this.asset,
    super.key,
  });

  onAllowPressed() async {
    pop(true);
  }

  //AHMED  SOBHY  WAS CODE  HERE
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        color: AppColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: getPadding(top: 25.h, bottom: 60.h),
              child: CustomSVGImage(asset: asset),
            ),
            Text(title, style: AppStyles.getBoldStyle(fontSize: 20)),
            16.vs,
            Text(
              description,
              style: AppStyles.getMediumStyle(fontSize: 16, color: AppColors.descriptionColor),
            ),
            62.vs,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(
                  onPressed: () => pop(true),
                  text: AppStrings().allow.trans,
                  radius: 36.h,
                ),
                17.vs,
                CustomElevatedButton(
                  onPressed: () => pop(false),
                  text: AppStrings().deny.trans,
                  style: AppStyles.getMediumStyle(color: AppColors.primaryColor, fontSize: 16.h),
                  color: AppColors.white,
                  radius: 36.h,
                  side: BorderSide(color: AppColors.primaryColor, width: 1.h),
                ),
                35.vs
                /*   ElevatedButton(
                    onPressed: () {
                      AppService().pop(false);
                    },
                    child: Text(AppStrings().allow.trans)),
                ElevatedButton(onPressed: onAllowPressed, child: Text("allow")),*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
