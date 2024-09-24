import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import '../protfolio_and_sections/home_protfolio_and_sections_list_view_item_card.dart';

class SectionListView extends StatelessWidget {
  final int sectionListViewItemCount;
  const SectionListView({super.key, required this.sectionListViewItemCount});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: Column(
        children: List.generate(
          sectionListViewItemCount,
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
