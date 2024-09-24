import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/custome_svg_image.dart';
import '../../../../../exports.dart';

class HomeProtfolioAndSectionsListViewCardDurationAndLocationTexts
    extends StatelessWidget {
  final String projectDuration;
  final TextStyle? projectDurationStyle;
  final double? spaceBetweenDuartionAndLocation;
  final String projectLocation;
  final TextStyle? projectLocationStyle;

  const HomeProtfolioAndSectionsListViewCardDurationAndLocationTexts(
      {super.key,
      required this.projectDuration,
      this.projectDurationStyle,
      this.spaceBetweenDuartionAndLocation,
      required this.projectLocation,
      this.projectLocationStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          projectDuration, // Dynamic duration
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: projectDurationStyle ??
              AppStyles.getMediumStyle(
                fontSize: 13,
                color: AppColors.black,
              ), // Customizable duration style
        ),
        spaceBetweenDuartionAndLocation?.hs ?? 20.hs,
        Row(
          children: [
            CustomSVGImage(
              asset: AppAssets.locationIcon,
              height: 24.h,
              width: 24.w,
            ),
            4.hs,
            Text(
              projectLocation, // Dynamic location
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: projectLocationStyle ??
                  AppStyles.getMediumStyle(
                    fontSize: 13,
                    color: AppColors.black,
                  ), // Customizable location style
            ),
          ],
        ),
      ],
    );
  }
}
