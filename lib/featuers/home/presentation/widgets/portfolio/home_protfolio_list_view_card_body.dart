import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/custome_svg_image.dart';
import '../../../../../exports.dart';
import 'home_protfolio_button.dart';

class ProtfolioListViewCardBody extends StatelessWidget {
  final String title;
  final String categoryTitle;
  final String projectDuration;
  final String projectLocation;
  final String projectImagePath;
  final VoidCallback? onFirstButtonTap;
  final VoidCallback? onSecondButtonTap;
  final String? firstButtonText;
  final String? secondButtonText;

  // Sizes and padding
  final double? projectImageWidth;
  final double? projectImageHeight;

  // Styles
  final TextStyle? titleStyle;
  final TextStyle? categoryTitleStyle;
  final TextStyle? projectDurationStyle;
  final TextStyle? projectLocationStyle;

  // Button visibility
  final bool showFirstButton;
  final bool showSecondButton;
  const ProtfolioListViewCardBody(
      {super.key,
      required this.title,
      required this.categoryTitle,
      required this.projectDuration,
      required this.projectLocation,
      required this.projectImagePath,
      this.onFirstButtonTap,
      this.onSecondButtonTap,
      this.firstButtonText,
      this.secondButtonText,
      this.projectImageWidth,
      this.projectImageHeight,
      this.titleStyle,
      this.categoryTitleStyle,
      this.projectDurationStyle,
      this.projectLocationStyle,
      required this.showFirstButton,
      required this.showSecondButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 27.w),
          child: SizedBox(
            width: projectImageWidth?.w ?? 89.0.w, // Customizable image width
            height:
                projectImageHeight?.h ?? 92.0.h, // Customizable image height
            child: Image.asset(
              projectImagePath, // Dynamic image
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title, // Dynamic title
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: titleStyle ??
                      AppStyles.getSemiBoldStyle(
                        fontSize: 16,
                        color: AppColors.steelBlue,
                        fontFamily: FontFamilies.poppinsFamily,
                      ), // Customizable title style
                ),
              ),
              Text(
                categoryTitle, // Dynamic description
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: categoryTitleStyle ??
                    AppStyles.getRegularStyle(
                      fontSize: 14,
                      color: AppColors.grayishBlue,
                      fontFamily: FontFamilies.poppinsFamily,
                    ), // Customizable description style
              ),
              16.vs,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  33.vs,
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
              ),
              16.vs, // Space before buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (showFirstButton &&
                      firstButtonText != null &&
                      onFirstButtonTap != null) ...[
                    ProtfolioButton(
                      text: firstButtonText!, // Dynamic button text
                      onTap: onFirstButtonTap!, // Dynamic button action
                    ),
                    15.hs, // Space between buttons
                  ],
                  if (showSecondButton &&
                      secondButtonText != null &&
                      onSecondButtonTap != null) ...[
                    ProtfolioButton(
                      text: secondButtonText!, // Dynamic button text
                      onTap: onSecondButtonTap!, // Dynamic button action
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
