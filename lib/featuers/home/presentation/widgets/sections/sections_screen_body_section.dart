import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import '../home_custom_app_bar.dart';
import 'home_sections_list_view_section.dart';

class SectionsScreenBodySection extends StatelessWidget {
  const SectionsScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        28.vs,
        const HomeCustomAppBar(
          homeCustomAppBarTextData: 'Sections',
        ),
        46.vs,
        const SectionListView(
          sectionListViewItemCount: 7,
        ),
      ],
    );
  }
}
