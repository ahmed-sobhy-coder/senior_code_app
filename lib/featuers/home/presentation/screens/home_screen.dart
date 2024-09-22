import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import '../widgets/category_section/category_list_view.dart';
import '../widgets/category_section/category_and_text_dark_blue_stack.dart';
import '../widgets/portfolio/portfolio_list_view.dart';
import '../widgets/portfolio/portfolio_see_all.dart';
import '../widgets/home_top_name_and_abours_us_bar.dart';
import '../widgets/category_section/category_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 50.h,
            ),
            child: Column(
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
            ),
          ),
        ),
      ),
    );
  }
}
