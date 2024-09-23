import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/custome_svg_image.dart';
import '../../../../../exports.dart';

class StatisticsTitleAndIcon extends StatelessWidget {
    final String statisticstitle;
  final String statisticsIconPath;
  const StatisticsTitleAndIcon({super.key, required this.statisticstitle, required this.statisticsIconPath});

  @override
  Widget build(BuildContext context) {
    return             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  statisticstitle,
                  style: AppStyles.getSemiBoldStyle(
                    fontSize: 16,
                    color: AppColors.charcoal.withOpacity(0.7),
                    fontFamily: FontFamilies.fontFamilyNunitoSans,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 35.w,
                    height: 38.h,
                    child: CustomSVGImage(
                      asset: statisticsIconPath,
                    ),
                  ),
                ),
              ],
            );
  }
}