import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import '../protfolio_and_sections/home_protfolio_and_sections_list_view_item_card.dart';

class SectionListView extends StatelessWidget {
  const SectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 1; // Number of list items

    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: Column(
        children: List.generate(
          itemCount,
          (index) {
            return const PortfolioAndSectionsListViewItemCard(
              elevation: 3,
              title: 'Real State',
              categoryTitle: 'Mobile App',
              projectDuration: '3 Weeks',
              projectLocation: 'Saudi Arabia',
              projectImagePath: AppAssets.realStateTestPortfolio,
              firstButtonText: "UI Design",
              secondButtonText: 'Admin Panel',
              showFirstButton: false,
              showSecondButton: false,
              imageRightPadding: 22,
              spaceBetweenCategoryTitleAndProjectDuration: 19,
              spaceBetweenDuartionAndLocation: 20,
            );
          },
        ),
      ),
    );
  }
}
