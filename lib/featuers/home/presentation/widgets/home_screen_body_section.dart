import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import 'category/home_category_and_text_dark_blue_stack_section.dart';
import 'category/home_category_list_view_section.dart';
import 'category/home_category_text_section.dart';
import 'home_see_all_section.dart';
import 'home_top_name_and_abours_us_bar.dart';
import 'portfolio/home_portfolio_list_view_section.dart';

class HomeScreenBodySection extends StatelessWidget {
  const HomeScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTopNameAndAboutUsBar(),
        17.vs,
        const WomanAndTextBlueStack(),
        24.vs,
        const CategoryText(),
        40.vs,
        const CategoryListView(),
        58.vs,
        const PortfolioSeeAll(),
        20.vs,
        const PortfolioListView(),
      ],
    );
  }
}
