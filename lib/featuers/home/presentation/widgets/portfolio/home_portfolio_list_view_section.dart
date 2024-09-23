import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import 'home_protfolio_list_view_item_card.dart';

class PortfolioListView extends StatelessWidget {
  const PortfolioListView({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 3; // Number of list items

    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: Column(
        children: List.generate(
          itemCount,
          (index) {
            return PortfolioListViewItem(
              title: 'Khedmty',
              categoryTitle: 'Mobile App',
              projectDuration: '3 Weeks',
              projectLocation: 'Saudi Arabia',
              projectImagePath: AppAssets.khedmtyTestPortfolio,
              firstButtonText: "UI Design",
              secondButtonText: 'Admin Panel',
              onFirstButtonTap: () {},
              onSecondButtonTap: () {},
            );
          },
        ),
      ),
    );
  }
}
