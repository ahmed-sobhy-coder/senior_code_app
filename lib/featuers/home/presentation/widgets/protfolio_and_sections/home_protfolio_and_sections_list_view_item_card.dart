import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';

import 'home_protfolio_and_sections_list_view_card_body.dart';

class PortfolioAndSectionsListViewItemCard extends StatelessWidget {
  final String title;
  final String categoryTitle;
  final String projectDuration;
  final String projectLocation;
  final String projectImagePath;
  final VoidCallback? onFirstButtonTap;
  final VoidCallback? onSecondButtonTap;
  final String? firstButtonText;
  final String? secondButtonText;
  final double? elevation;

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
  // Padding
  final double? imageRightPadding;
  // Spaces
  final double? spaceBetweenCategoryTitleAndProjectDuration;
  final double? spaceBetweenDuartionAndLocation;
  final double? spaceBetweenIconAndLocation;
  final double? spaceBeforeButtonsFromTop;
  final double? spaceBetweenButtons;

  const PortfolioAndSectionsListViewItemCard({
    super.key,
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
    this.showFirstButton = true, // First button visibility (default is true)
    this.showSecondButton = true, // Second button visibility (default is true)
    this.imageRightPadding,
    this.spaceBetweenCategoryTitleAndProjectDuration,
    this.spaceBetweenDuartionAndLocation,
    this.spaceBetweenIconAndLocation,
    this.spaceBeforeButtonsFromTop,
    this.spaceBetweenButtons, this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h), // Flexible padding
      child: Card(
        elevation: elevation??4,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 14.w,
            top: 24.h,
            bottom: 21.h,
          ),
          child: ProtfolioAndSectionsListViewCardBody(
            title: title,
            categoryTitle: categoryTitle,
            projectDuration: projectDuration,
            projectLocation: projectLocation,
            projectImagePath: projectImagePath,
            firstButtonText: firstButtonText,
            secondButtonText: secondButtonText,
            onFirstButtonTap: onFirstButtonTap,
            onSecondButtonTap: onSecondButtonTap,
            showFirstButton: showFirstButton,
            showSecondButton: showSecondButton,
            imageRightPadding: imageRightPadding,
            spaceBetweenCategoryTitleAndProjectDuration:
                spaceBetweenCategoryTitleAndProjectDuration,
            spaceBetweenDuartionAndLocation: spaceBetweenDuartionAndLocation,
          ),
        ),
      ),
    );
  }
}
