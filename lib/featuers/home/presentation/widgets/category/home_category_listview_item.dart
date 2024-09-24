import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/utils/app_styels.dart';

import '../../../../../exports.dart';

class CategoryListViewItem extends StatelessWidget {
  final int itemIndex;
  // The index of the item in the list, used to specify the padding .
  // The index of the currently selected item.

  const CategoryListViewItem({
    super.key,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0.w : 14.w,
      ),
      // Padding: Adds space around a widget. Here, it uses
      // EdgeInsetsDirectional.only to conditionally apply padding based
      // on the item's index. For the first item (index == 0), there is
      // no start padding, while subsequent items have a start padding of
      // 24.w units.
      child: Column(
        children: [
          CircleAvatar(
            radius: 48.r,
            backgroundColor: AppColors.lightBlue,
            child: Image.asset(
              AppAssets.firstHomeCategory,
              height: 90.h,
              width: 90.w,
            ),
          ),
          12.5.vs,
          Align(
            alignment: Alignment.center,
            child: Text(
              "Mobile Developer",
              style: AppStyles.getSemiBoldStyle(
                fontSize: 14,
                color: AppColors.steelBlue,
                fontFamily: FontFamilies.poppinsFamily,
              ),
            ),
          ),
          Text(
            "12,302 people",
            style: AppStyles.getRegularStyle(
              fontSize: 14,
              color: AppColors.grayishBlue,
              fontFamily: FontFamilies.poppinsFamily,
            ),
          ),
        ],
      ),
    );
  }
}
