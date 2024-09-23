import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';

import 'home_protfolio_list_view_card_body.dart';

class PortfolioListViewItem extends StatelessWidget {
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

  const PortfolioListViewItem({
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
    this.projectImageWidth, // Default width
    this.projectImageHeight, // Default height
    this.titleStyle,
    this.categoryTitleStyle,
    this.projectDurationStyle,
    this.projectLocationStyle,
    this.showFirstButton = true, // First button visibility (default is true)
    this.showSecondButton = true, // Second button visibility (default is true)
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h), // Flexible padding
      child: Card(
        elevation: 4,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 14.w,
            top: 24.h,
            bottom: 21.h,
          ),
          child: ProtfolioListViewCardBody(
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
          ),
        ),
      ),
    );
  }
}
