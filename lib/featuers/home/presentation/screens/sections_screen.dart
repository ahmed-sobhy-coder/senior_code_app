import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';

import '../widgets/sections/sections_screen_body_section.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: const SectionsScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
