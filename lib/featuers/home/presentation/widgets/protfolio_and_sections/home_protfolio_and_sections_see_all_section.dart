import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../exports.dart';

class HomeSeeAll extends StatelessWidget {
  final String textData;
  const HomeSeeAll({super.key, required this.textData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textData,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: AppStyles.getSemiBoldStyle(
              fontSize: 20,
              color: AppColors.black,
              fontFamily: FontFamilies.poppinsFamily,
            ),
          ),
          Text(
            "See All",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: AppStyles.getSemiBoldStyle(
              fontSize: 16,
              color: AppColors.richBlack,
              fontFamily: FontFamilies.poppinsFamily,
            ),
          ),
        ],
      ),
    );
  }
}