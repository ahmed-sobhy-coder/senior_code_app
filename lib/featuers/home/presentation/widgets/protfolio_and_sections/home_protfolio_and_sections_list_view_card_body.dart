import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import 'home_protfolio_and_sections_list_view_card_buttons.dart';
import 'home_protfolio_and_sections_list_view_card_duration_and_location_texts.dart';
import 'home_protfolio_and_sections_list_view_card_image.dart';
import 'home_protfolio_and_sections_list_view_card_title_and_category.dart';

class ProtfolioAndSectionsListViewCardBody extends StatelessWidget {
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

  // Padding
  final double? imageRightPadding;

  // Spaces
  final double? spaceBetweenCategoryTitleAndProjectDuration;
  final double? spaceBetweenDuartionAndLocation;
  final double? spaceBeforeButtonsFromTop;
  final double? spaceBetweenButtons;

  const ProtfolioAndSectionsListViewCardBody({
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
    required this.showFirstButton,
    required this.showSecondButton,
    this.imageRightPadding,
    this.spaceBetweenCategoryTitleAndProjectDuration,
    this.spaceBetweenDuartionAndLocation,
    this.spaceBeforeButtonsFromTop,
    this.spaceBetweenButtons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: imageRightPadding?.w ?? 27.w,
          ),
          child: HomeListViewCardImage(
            projectImagePath: projectImagePath,
            projectImageWidth: projectImageWidth,
            projectImageHeight: projectImageHeight,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeProtfolioAndSectionsListViewCardTitleAndCategory(
                  title: title, // Dynamic title
                  categoryTitle: categoryTitle, // Dynamic category title
                  titleStyle: titleStyle, // Customizable title style
                  categoryTitleStyle:
                      categoryTitleStyle // Customizable category title style
                  ),
              spaceBetweenCategoryTitleAndProjectDuration?.vs ?? 16.vs,
              HomeProtfolioAndSectionsListViewCardDurationAndLocationTexts(
                projectDuration: projectDuration, // Dynamic project duration
                projectLocation: projectLocation, // Dynamic project location
                projectDurationStyle:
                    projectDurationStyle, // Customizable project duration style
                projectLocationStyle:
                    projectLocationStyle, // Customizable project location style
              ),
              spaceBeforeButtonsFromTop?.vs ?? 16.vs, // Space before buttons
              HomeProtfolioAndSectionsListViewCardButtons(
                onFirstButtonTap:
                    onFirstButtonTap, // Callback when first button is tapped
                onSecondButtonTap:
                    onSecondButtonTap, // Callback when second button is tapped
                firstButtonText:
                    firstButtonText, // Customizable first button text
                secondButtonText:
                    secondButtonText, // Customizable second button text
                showFirstButton: showFirstButton, // Show or hide first button
                showSecondButton:
                    showSecondButton, // Show or hide second button
                spaceBetweenButtons:
                    spaceBetweenButtons, // Space between buttons
              ),
            ],
          ),
        ),
      ],
    );
  }
}
