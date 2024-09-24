import '../../../../../core/utils/app_styels.dart';
import '../../../../../exports.dart';

class HomeProtfolioAndSectionsListViewCardTitleAndCategory
    extends StatelessWidget {
  final String title;
  final String categoryTitle;
  // Styles
  final TextStyle? titleStyle;
  final TextStyle? categoryTitleStyle;
  const HomeProtfolioAndSectionsListViewCardTitleAndCategory(
      {super.key,
      required this.title,
      required this.categoryTitle,
      this.titleStyle,
      this.categoryTitleStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
