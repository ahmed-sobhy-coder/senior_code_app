import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/custome_svg_image.dart';
import '../../../../../exports.dart';

class StatisticsTrendIconAndPrecentageAndText extends StatelessWidget {
    final String statisticsPercentageAmount;

  const StatisticsTrendIconAndPrecentageAndText({super.key, required this.statisticsPercentageAmount});

  @override
  Widget build(BuildContext context) {
    return Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 14.18.w,
                    height: 24.h,
                    child: const CustomSVGImage(
                      asset: AppAssets.trendingUpIcon,
                    ),
                  ),
                  4.73.hs,
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: statisticsPercentageAmount,
                          style: AppStyles.getSemiBoldStyle(
                            fontFamily: FontFamilies.fontFamilyNunitoSans,
                            color: AppColors.turquoiseGreen,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: ' Up from\nlast month',
                          style: AppStyles.getSemiBoldStyle(
                            fontFamily: FontFamilies.fontFamilyNunitoSans,
                            color: AppColors.charcoal.withOpacity(0.7),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}