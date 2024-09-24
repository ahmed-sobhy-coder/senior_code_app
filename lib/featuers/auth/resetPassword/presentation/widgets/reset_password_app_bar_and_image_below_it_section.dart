import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../../exports.dart';

class ResetPasswordAppBarAndImageBelowItSection extends StatelessWidget {
  const ResetPasswordAppBarAndImageBelowItSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SeniorCodeAppBarArrow(
              height: 24,
              width: 24,
              backArrowIconColor: AppColors.black,
            ),
          ],
        ),
        32.vs,
        SizedBox(
          height: 220.h,
          width: 233.53.w,
          child: Image.asset(AppAssets.resetPasswordImage),
        ),
      ],
    );
  }
}
